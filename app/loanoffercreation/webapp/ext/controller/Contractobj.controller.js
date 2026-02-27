sap.ui.define(['sap/ui/core/mvc/ControllerExtension'], function (ControllerExtension) {
	'use strict';

	return ControllerExtension.extend('loanoffercreation.ext.controller.Contractobj', {
		// this section allows to extend lifecycle hooks or hooks provided by Fiori elements
		override: {
			/**
             * Called when a controller is instantiated and its View controls (if available) are already created.
             * Can be used to modify the View before it is displayed, to bind event handlers and do other one-time initialization.
             * @memberOf loanoffercreation.ext.controller.Contractobj
             */
			onInit: function () {
				// you can access the Fiori elements extensionAPI via this.base.getExtensionAPI
				var oModel = this.base.getExtensionAPI().getModel();
			}
			// routing :{
			// 	onBeforeBinding : async function () {

			// 		debugger
					
			// 	}
			// }
		}
	});
});


sap.ui.define([
    "sap/ui/core/mvc/ControllerExtension",
    "sap/ui/core/Element",
    "sap/ui/model/json/JSONModel",
    "sap/m/RadioButton",
    "sap/m/HBox",
    "sap/m/ToolbarSpacer",
    "sap/ui/model/Filter",
    "sap/ui/model/FilterOperator"
], function (
    ControllerExtension,
    Element,
    JSONModel,
    RadioButton,
    HBox,
    ToolbarSpacer,
    Filter,
    FilterOperator
) {
    "use strict";

    return ControllerExtension.extend("loanoffercreation.ext.controller.Contractobj", {

        /* ======================================================= */
        /* LIFECYCLE                                               */
        /* ======================================================= */

        override: {

            onInit: function () {
                const oModeModel = new JSONModel({
                    mode: "Msg"
                });
                this.base.getView().setModel(oModeModel, "mode");
            },

            onAfterRendering: function () {
                this._attachTableDelegate();
            }

        },

        /* ======================================================= */
        /* TABLE ATTACHMENT                                        */
        /* ======================================================= */

        _attachTableDelegate: function () {

            const sTableId =
                "project1::CustomerObjectPage--fe::table::CustomerToOrders::LineItem::Orders-innerTable";

            const oTable = Element.getElementById(sTableId);

            if (!oTable) {
                setTimeout(this._attachTableDelegate.bind(this), 400);
                return;
            }

            if (oTable._toolbarEnhanced) {
                return;
            }

            oTable._toolbarEnhanced = true;

            const oToolbar = oTable.getHeaderToolbar?.();

            if (oToolbar) {
                this._addRadiosToToolbar(oToolbar, oTable);
            }

            oTable.attachEvent("updateFinished", () => {
                this._applyDropdownFilter(oTable);
            });
        },

        /* ======================================================= */
        /* TOOLBAR RADIO BUTTONS                                   */
        /* ======================================================= */

        _addRadiosToToolbar: function (oToolbar, oTable) {

            const sCurrentMode =
                this.getView().getModel("mode").getProperty("/mode");

            const oRadioBox = new HBox({
                alignItems: "Center",
                items: [
                    new RadioButton({
                        text: "Msg",
                        groupName: "modeGroup",
                        selected: sCurrentMode === "Msg",
                        select: (oEvent) => {
                            if (oEvent.getParameter("selected")) {
                                this._onRadioChange("Msg", oTable);
                            }
                        }
                    }),
                    new RadioButton({
                        text: "Valuefit",
                        groupName: "modeGroup",
                        selected: sCurrentMode === "Valuefit",
                        select: (oEvent) => {
                            if (oEvent.getParameter("selected")) {
                                this._onRadioChange("Valuefit", oTable);
                            }
                        }
                    })
                ]
            });

            // Push radios to right side
            oToolbar.addContent(new ToolbarSpacer());
            oToolbar.addContent(oRadioBox);
        },

        _onRadioChange: function (sMode, oTable) {
            this.getView().getModel("mode").setProperty("/mode", sMode);
            this._applyDropdownFilter(oTable);
        },

        /* ======================================================= */
        /* MULTICOMBOBOX FILTER LOGIC                              */
        /* ======================================================= */

        _applyDropdownFilter: function (oTable) {

            const sMode =
                this.getView().getModel("mode").getProperty("/mode");

            const sPrefix = (sMode === "Msg") ? "msg" : "vfit";

            const oFilter = new Filter(
                "value",
                FilterOperator.StartsWith,
                sPrefix
            );

            oTable.getItems().forEach((oRow) => {

                let oMCB = null;

                // Find MultiComboBox inside row (direct or inside VBox)
                oRow.getCells().forEach((oCell) => {

                    if (oCell.isA("sap.m.MultiComboBox")) {
                        oMCB = oCell;
                    } else if (oCell.isA("sap.m.VBox")) {
                        oMCB = oCell.getItems()
                            .find(ctrl => ctrl.isA("sap.m.MultiComboBox"));
                    }

                });

                if (oMCB) {

                    const oBinding = oMCB.getBinding("items");

                    if (oBinding) {
                        oBinding.filter([oFilter]);
                    } else {
                        // Handle lazy V4 binding
                        oMCB.attachEventOnce("open", () => {
                            const oLazyBinding =
                                oMCB.getBinding("items");
                            if (oLazyBinding) {
                                oLazyBinding.filter([oFilter]);
                            }
                        });
                    }

                }

            });

        }

    });
});
