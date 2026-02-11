sap.ui.define(['sap/ui/core/mvc/ControllerExtension'], function (ControllerExtension) {
    'use strict';

    return ControllerExtension.extend('loanoffercreation.ext.controller.PartnerSelect', {
        override: {
            		onInit: function () {

                        this._wireLiveTypingAutoFill();

				var oTable = sap.ui.core.Element.getElementById(
					"loanoffercreation::ContractObjectPage--fe::table::contractToPartner::LineItem::Partners-innerTable"
				);

				//  MultiSelect (checkbox)
				oTable.addEventDelegate({
					onAfterRendering: function () {
						oTable.setMode(sap.m.ListMode.MultiSelect);
					}
				});

				sap.ui.core.Element.getElementById(
					"loanoffercreation::ContractObjectPage--fe::CustomSubSection::IncomingPayments"
				).setVisible(false);

				var that = this;
				that._sLastSelectedKey = null;
				oTable.attachSelectionChange(function (oEvent) {
					debugger
					var oTable = oEvent.getSource();
					var oItem = oEvent.getParameter("listItem");
					if (!oItem) return;

					var sCurrentKey = oItem.getBindingContext()?.getPath();
					var bWasSelected = oItem.getSelected();


					// Toggle logic: clicked the already selected row → deselect it                   
					// if (bWasSelected && sCurrentKey === that._sLastSelectedKey) {

					//         oItem.setSelected(false);
					//         oTable.removeSelections(true); 
					//         that._sLastSelectedKey = null;

					//         // Hide your subsection
					//         sap.ui.core.Element.getElementById(
					//             "loanoffercreation::ContractObjectPage--fe::CustomSubSection::IncomingPayments"
					//         ).setVisible(false);

					//     return;
					// }


					// New selection → keep only this one selected
					if (bWasSelected) {
						oTable.removeSelections(true);
						oItem.setSelected(true);

						//  that._sLastSelectedKey = sCurrentKey;


						var oSubSection = sap.ui.core.Element.getElementById(
							"loanoffercreation::ContractObjectPage--fe::CustomSubSection::IncomingPayments"
						);
						oSubSection.setVisible(true);
						oSubSection.setBindingContext(oItem.getBindingContext());

						var oRowData = oItem.getBindingContext().getObject();
						console.log("Selected row data:", oRowData);
					}

					else {
						// that._sLastSelectedKey = null;
						sap.ui.core.Element.getElementById(
							"loanoffercreation::ContractObjectPage--fe::CustomSubSection::IncomingPayments"
						).setVisible(false);
					}
				});
			},
          routing :{
				onAfterBinding: function () {
                    debugger;
 
                    const aTableIds = [
                        "loanoffercreation::ContractObjectPage--fe::table::contractToPartner::LineItem::Partners-innerTable",
                        "loanoffercreation::ContractObjectPage--fe::table::contractToCondition::LineItem::ConditionItems-innerTable",
                        
                    ];
 
                    function formatDateColumn() {
 
                        aTableIds.forEach(function (sTableId) {
 
                            const oInnerTable = sap.ui.core.Element.getElementById(sTableId);
 
                            console.log(
                                sTableId,
                                oInnerTable ? oInnerTable.getMetadata().getName() : "Table not found"
                            );
 
                            if (!oInnerTable) {
                                setTimeout(formatDateColumn, 500);
                                return;
                            }
 
                            if (!oInnerTable._dateFormattingAttached) {
                                oInnerTable.attachUpdateFinished(function () {
                                    updateRows(oInnerTable);
                                });
                                oInnerTable._dateFormattingAttached = true;
                            }
 
                            updateRows(oInnerTable);
                        });
                    }
 
                    function updateRows(oInnerTable) {
                        debugger;
 
                        const aItems = oInnerTable.getItems();
                        if (!aItems || aItems.length === 0) return;
 
                        const sTableId = oInnerTable.getId();
 
                        aItems.forEach(function (oItem) {
                            const aCells = oItem.getCells();
 
                            /* ========= Partner Table ========= */
                            if (sTableId.includes("contractToPartner")) {
                                formatDateCell(aCells[2], "startRel");
                                formatDateCell(aCells[3], "endRel");
                            }
 
                            /* ========= Condition Table ========= */
                            if (sTableId.includes("contractToCondition")) {
                                formatDateCell(aCells[1], "effectiveFrom");
                                formatDateCell(aCells[6], "dueDate");
                            }
 
                        });
                    }
 
 
                    function formatDateCell(oCell, sPath) {
                        if (!oCell) return;
 
                        // Edit mode (DatePicker)
                        const oDatePicker =
                            oCell?.mAggregations?.content?.mAggregations?.contentEdit?.[0];
 
                        if (oDatePicker && oDatePicker.setDisplayFormat) {
                            oDatePicker.unbindProperty("value");
                            oDatePicker.bindProperty("dateValue", { path: sPath });
                            oDatePicker.setDisplayFormat("MM/dd/yyyy");
                            oDatePicker.setValueFormat("yyyy/MM/dd");
                        }
 
                        // Display mode (Text)
                        const oTextDisplay =
                            oCell?.mAggregations?.content?.mAggregations?.contentDisplay;
 
                        if (oTextDisplay && oTextDisplay.setText) {
                            let sDate = oTextDisplay.getText();
 
                            if (!sDate) {
                                const oBinding = oTextDisplay.getBinding("text");
                                if (oBinding) {
                                    sDate = oBinding.getValue();
                                }
                            }
 
                            if (sDate) {
                                const oDate = new Date(sDate);
                                if (!isNaN(oDate.getTime())) {
                                    const dd = String(oDate.getDate()).padStart(2, "0");
                                    const mm = String(oDate.getMonth() + 1).padStart(2, "0");
                                    const yyyy = oDate.getFullYear();
                                    oTextDisplay.setText(`${mm}/${dd}/${yyyy}`);
                                } else {
                                    oTextDisplay.setText("");
                                }
                            } else {
                                oTextDisplay.setText("");
                            }
                        }
                    }
 
                    // 🔥 Start formatting
                    formatDateColumn();
                }
			}
        },

        ////// auto fill
        _wireLiveTypingAutoFill: function () {
    const fnAttach = () => {
        const oTable = sap.ui.core.Element.getElementById(
            "loanoffercreation::ContractObjectPage--fe::table::contractToPartner::LineItem::Partners-innerTable"
        );
        if (!oTable) {
            setTimeout(fnAttach, 500);
            return;
        }

        // Every time rows recreated by FE
        oTable.attachUpdateFinished(() => {
            oTable.getItems().forEach(oItem => {
                const aCells = oItem.getCells();

                // 👉 Role Name column index (check yours)
                const oRoleCell = aCells[0];

                const oInput =
                    oRoleCell?.mAggregations?.content
                        ?.mAggregations?.contentEdit?.[0];

                if (oInput && !oInput._liveAttached) {
                    oInput.attachLiveChange(this._onRoleTyping.bind(this));
                    oInput._liveAttached = true;
                }
            });
        });
    };

    fnAttach();
},


_onRoleTyping: function (oEvent) {
    const oInput = oEvent.getSource();
    const sTyped = oEvent.getParameter("value");

    const oContext = oInput.getBindingContext();

    let sName = "";

    if (sTyped === "1") sName = "value1";
    else if (sTyped === "2") sName = "value2";
    else if (sTyped === "3") sName = "value3";
    else sName = "default";

    // if(sTyped !== "")
    // {
    //     // sName="default"+Math.floor(100 + Math.random() * 900);
    //     sName="defaultValue";

    // }


    oContext.setProperty("nameAddress", sName);
}


    });
});