
sap.ui.define([
    'sap/ui/core/mvc/ControllerExtension'
], function (ControllerExtension) {
    'use strict';

    function formatDisplayDate(oField) {
        if (!oField || oField._dateDelegateAttached) return;

        oField.addEventDelegate({
            onAfterRendering: function () {
                const sRawValue = oField.getText();
                if (!sRawValue) return;

                const oDate = new Date(sRawValue);
                if (isNaN(oDate.getTime())) return;

                const dd = String(oDate.getDate()).padStart(2, "0");
                const mm = String(oDate.getMonth() + 1).padStart(2, "0");
                const yyyy = oDate.getFullYear();

                oField.setText(`${mm}/${dd}/${yyyy}`);
            }
        });

        oField._dateDelegateAttached = true; // prevent duplicate delegates
    }

    function fixDatePicker(oDatePicker, sPath) {
        if (!oDatePicker) return;

        oDatePicker.unbindProperty("value");
        oDatePicker.bindProperty("dateValue", { path: sPath });
        oDatePicker.setDisplayFormat("MM/dd/yyyy");
        oDatePicker.setValueFormat("yyyy/MM/dd");
    }

    return ControllerExtension.extend('loanoffercreation.ext.controller.PartnerObjectPage', {
        override: {

            onInit: function () {
                this.base.getExtensionAPI().getModel();
            },

            routing: {
                onAfterBinding: function () {

                    // ---- startRel ----
                    const oStartEdit = sap.ui.getCore().byId(
                        "loanoffercreation::PartnersObjectPage--fe::FormContainer::AttributesforSelectedPartner::FormElement::DataField::startRel::Field-edit"
                    );

                    const oStartDisplay = sap.ui.getCore().byId(
                        "loanoffercreation::PartnersObjectPage--fe::FormContainer::AttributesforSelectedPartner::FormElement::DataField::startRel::Field-display"
                    );

                    fixDatePicker(oStartEdit, "startRel");
                    formatDisplayDate(oStartDisplay);


                    // ---- endRel ----
                    const oEndEdit = sap.ui.getCore().byId(
                        "loanoffercreation::PartnersObjectPage--fe::FormContainer::AttributesforSelectedPartner::FormElement::DataField::endRel::Field-edit"
                    );

                    const oEndDisplay = sap.ui.getCore().byId(
                        "loanoffercreation::PartnersObjectPage--fe::FormContainer::AttributesforSelectedPartner::FormElement::DataField::endRel::Field-display"
                    );

                    fixDatePicker(oEndEdit, "endRel");
                    formatDisplayDate(oEndDisplay);


					
                }
            }
        }
    });
});