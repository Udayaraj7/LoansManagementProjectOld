// // sap.ui.define([
// //     "sap/m/MessageToast"
// // ], function(MessageToast) {
// //     'use strict';

// //     return {
// //         /**
// //          * Generated event handler.
// //          *
// //          * @param oEvent the event object provided by the event provider.
// //          */
// //         onPress: function(oEvent) {
// //             MessageToast.show("Custom handler invoked.");
// //         }
// //     };
// // });

// sap.ui.define([
//     "sap/m/MessageToast"
// ], function (MessageToast) {
//     'use strict';
 
//     return {
//         getIconSrc: async function (oEvent) {
//             debugger
//             return sap.m.plugins.UploadSetwithTable.getIconForFileType(oEvent);
//         },
//         onPluginActivated: async function (oEvent) {
//             debugger
//             this.oUploadPluginInstance = oEvent.getParameter("oPlugin");
//         },
//         openPreview: async function (oEvent) {
//             debugger
//             // const oSource = oEvent.getSource();
//             // const oBindingContext = oSource.getBindingContext();
//             // if (oBindingContext && this.oUploadPluginInstance) {
//             //     this.oUploadPluginInstance.openFilePreview(oBindingContext);
//             var srvUrl = this._view.getModel().sServiceUrl
//             const oCtx = oEvent.getSource().getBindingContext().getPath();
//             let url= srvUrl + oCtx.slice(1);
//              url+="/Content";
//              if (url) {
//                 sap.m.URLHelper.redirect(url, true); // opens image directly
//             }
//         },
//         onRemoveHandler: async function (oEvent) {
//             debugger
//             const oItem = oEvent.getSource().getParent();
//             const oContext = oItem.getBindingContext();
//             try {
//                 await oContext.delete();
//             } catch (err) {
//                 console.error("Error deleting row:", err);
//             }
//         },
//         beforeInitiatingItemUpload: async function (oEvent) {
//             debugger
//             const oUploader = oEvent.getSource().getUploader();
//             oUploader.setUploadUrl("");
//         },
//         onBeforeUploadStart: function (oEvent) {
//             debugger
//             const oTable = oEvent.getSource().getParent();
//             const oModel = oTable.getModel();
//             const oItem = oEvent.getParameter("item");
//             const oBinding = oTable.getBinding("items");
//             const oFile = oItem.getFileObject();
//             oBinding.create({
//                 "FileName": oFile.name,
//                 "MediaType": oFile.type,
//                 "Size": oFile.size
//             });
//             debugger;
//             oModel.submitBatch("attachmentsGroup");
//             oBinding.attachEventOnce("createCompleted", function (oEvent) {
//                 debugger
//                 const oContext = oEvent.getParameter("context");
//                 const oUploadSetwithTable = oTable.getDependents()[0];
//                 const oUploader = oUploadSetwithTable.getUploader(); // Retrieve our uploader defined in the XML
//                 const sUploadUrlUrl = this.getModel().sServiceUrl + oContext.getPath().slice(1) + '/Content';
//                 oUploader.setUploadUrl(sUploadUrlUrl);
//                 oUploader.uploadItem(oItem);
//                 MessageToast.show("Attachments Added");
//                 oContext.setProperty("Url", sUploadUrlUrl).then(function () {
//                     oTable.getBindingContext().requestSideEffects([{ $NavigationPropertyPath: "Attachments" }]);
//                 });
//             });
//         },
//         isNotImage: function (oEvent) {
//             debugger
//             if (oEvent.contains('image') || oEvent.contains('IMAGE'))
//                 return true
//             return false
//         }
//     };
// });
 
