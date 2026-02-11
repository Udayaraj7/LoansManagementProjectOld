const cds = require('@sap/cds');
const { SELECT } = require('@sap/cds/lib/ql/cds-ql');


module.exports = cds.service.impl( function (srv) {

  
   const { Partners ,Contract

   } = this.entities;

//  const formatDate = (value) => {
//     debugger
//     if (!value) return null;

//     const dt = new Date(value);
//     const mm = String(dt.getMonth() + 1).padStart(2, '0');
//     const dd = String(dt.getDate()).padStart(2, '0');
//     const yyyy = dt.getFullYear();

//     return `${mm}-${dd}-${yyyy}`;
//   };

  // 🔹 CREATE & UPDATE
  this.before('UPDATE', Contract, async req => {
    debugger
    console.log("---------000000000000000000000")
    
    const partners = req.data.contractToPartner;
    console.log(partners)
  

//   partners.forEach(p => {
   
//     if(p._old )
//   {
//  p.nameAddress = 'auto'+Math.floor(1000 + Math.random() * 9000);
//   }
   
//   });

  // const dbPartners = await SELECT.from(Partners)
  //   .where({ id: partners[0].id });

  //   console.log(dbPartners);

  // partners.forEach(p => {
  //   const old = dbPartners.find(d => d.partnerId === p.partnerId);
  //   if (old && old.title !== p.title) {
  //     p.nameAddress = 'auto'+Math.floor(1000 + Math.random() * 9000);
  //   }
  // });

  
  });
 

});







   





  