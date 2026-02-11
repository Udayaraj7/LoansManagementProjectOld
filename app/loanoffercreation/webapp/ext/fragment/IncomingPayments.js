sap.ui.define([
    "sap/m/MessageToast"
], function (MessageToast) {
    "use strict";

    return {

        onPress: function () {
            MessageToast.show("Custom handler invoked.");
        },

        // For pre-selecting values when opening draft
        formatToKeys: function (sValue) {
            if (!sValue) {
                return [];
            }
            return sValue.split(",").map(function (s) {
                return s.trim();
            });
        },

        // When user selects items in MultiComboBox
        onSelectionFinish: function (oEvent) {
            var oMultiCombo = oEvent.getSource();

            // Get selected keys
            var aKeys = oMultiCombo.getSelectedKeys();

            // Convert to comma string
            var sCommaValue = aKeys.join(",");

            // Write back to entity field
            var oContext = oMultiCombo.getBindingContext();
            oContext.getModel().setProperty(
                oContext.getPath() + "/paymentMethod",
                sCommaValue
            );

            MessageToast.show("Stored: " + sCommaValue);
        }

    };
});
