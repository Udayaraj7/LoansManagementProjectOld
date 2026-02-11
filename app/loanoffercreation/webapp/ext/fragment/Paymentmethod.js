sap.ui.define([], function () {
    "use strict";

    return {

        /**
         * Called when user (de)selects one or more items in the MultiComboBox
         * @param {sap.ui.base.Event} oEvent 
         */

 
formatStringToKeys: function (sValue) {
    if (!sValue) {
        return [];
    }
    // Split by comma and trim each value to remove extra spaces
    return sValue.split(",").map(function(s) {
        return s.trim();
    });
},


onSelectionFinish: function (oEvent) {
            debugger
            var oMCB = oEvent.getSource();
 
            // get selected items (not keys)
            var aItems = oMCB.getSelectedItems();
            
 
            // extract text values
            var aValues = aItems.map(function (item) {
                return item.getText();
            });
 
            var sConcatenated = aValues.join(",");
 
            var oContext = oMCB.getBindingContext();
            if (!oContext) return;
 
            oContext.setProperty("paymentMethod", sConcatenated);
        },

      


    };
});