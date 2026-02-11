namespace db;
 
 
using {
    cuid,
    managed
} from '@sap/cds/common';
 
/* =========================
   ROOT LOAN ENTITY
========================= */
entity Contract : managed {
        /* ---------- Step 1 : Initial Screen ---------- */
    key ID                     : UUID;
        companyCode            : String  @Common.Label: 'Company Code';
    key loanNumber             : String  @mandatory  @Common.Label: 'Loan Number';
    key productType            : String  @mandatory  @Common.Label: 'Product Type';
    key loanType               : String  @mandatory  @Common.Label: 'Loan Type';
    key loanPartner            : String  @mandatory  @Common.Label: 'Loan Partner';
 
        status                 : String;
        disbursementStatus     : String;
 
        /* ---------- Number Composition ---------- */
        // loanIndicator       : String(1);
        // numberRange         : String(10);
        // divider             : String(1);
 
 
        /* ---------- Basic Data ---------- */
        // //classification
        // loanTypeBD          : String(3);
        // Application/approval
        applicationDate        : Date;
        applicationCapital     : Decimal(15, 2);
        approvalDate           : Date;
        commitmentDate         : Date;
 
        /* ---------- Analysis Data ---------- */
        // Information
        loanPurpose            : String;
        arBillingJob           : String;
 
        /* ---------- Organization ---------- */
        // agentdata
        country                : String;
        orgDistrict            : String;
        agentDistrict          : String;
 
        /* ---------- Reference Data ---------- */
        // groupkey
        primaryIndustryCode    : String;
        // other references
        legacyNumber           : String;
        projectNumber          : String;
 
 
        //conditions
        commitCapital          : String  @mandatory;
        repaymentType          : String;
 
        //term/fixed Period
        fixedFrom              : Date    @mandatory;
        fixedUntil             : Date    @mandatory;
        include                : Boolean;
 
        //PENNVEST
        designation            : String;
        pledgedStatus          : String;
        datePaidOff            : Date;
 
        //Comments Tab From Data
 
        //Offer
        offerOn                : Date;
        offerUntil             : Date;
        reservedOn             : Date;
        reservedUntil          : Date;
 
        //Acceptance
        acceptance             : Integer;
        acceptedOn             : Date;
        acceptancedType        : Integer;
        reservation            : Integer;
 
        //Contract/Eff.int
 
        contract               : String;
        contractOn             : Date;
        amtzDate               : Date;
        maturityDate           : Date;
 
 
        //Interest Calculation
        intCalMt               : String  @mandatory;
        postAdjustmentFlag     : Boolean;
 
        //notice
 
        intresetRateResetType  : Integer;
        intresetRateResetDate  : Date;
        //capital amount
        contractCapital        : Decimal;
        disbursementOblig      : Decimal;
        valueDatedCapital      : Decimal;
        effectCapital          : Decimal;
 
        /* ---------- Associations ---------- */
 
        contractToCondition    : Composition of many ConditionItemsNew
                                     on contractToCondition.contractId = ID;
        contractToPartner      : Composition of many Partners
                                     on contractToPartner.id = ID;
        contracttoAttachments  : Composition of many Attachments
                                     on contracttoAttachments.contraid = ID;
        contractTodisburstment : Composition of many Disbursement
                                     on contractTodisburstment.disbursementId = ID;
        contractTofmdetails    : Composition of many FMDetails
                                     on contractTofmdetails.fmDetailsId = ID;
}
 
 
//condition items according to cash flow
entity ConditionItemsNew : managed {
    key conditionId         : UUID;
        contractId          : UUID;
        conditionTypeText   : String(20);
        effectiveFrom       : Date;
        percentage          : String(4);
        conditionAmt        : String(15);
        paymentFromExactDay : String(20);
        frequencyInMonths   : String(4);
        dueDate             : Date;
        calculationDate     : Date;
        sequence            : Integer;
        conditionToContract : Association to Contract;
}
 
entity ConditionTypeTextSearchHelpNew {
    key ID    : UUID;
        value : String;
}
 
entity FMDetails : managed {
    key DocumentItem        : Integer;
    fmDetailsId :UUID;
        loanCategory        : String;
        originalAmount      : Decimal(15, 2);
        text                : String;
        fund                : Integer;
        budgetPd            : String;
        GLaccount           : Integer;
        costCenter          : Integer;
        orders              : String;
        WBSelement          : String;
        companyInd          : Boolean;
        fmdetailsToContract : Association to Contract;
}
 
entity Partners : managed {
    key partnerId         : UUID;
        id                : UUID;
        title             : String(15);

        
        nameAddress       : String(30);
 
        
        startRel          : Date;
        endRel            : Date;

        startRelText          : String;
        endRelText            : String;
 
        addressType       : String(15);
        partner           : String(10);
        bpRole            : String(10);
 
        roleType          : String;
        customer          : String;
        bankDetailsID     : String;
 
        dunningLetter     : String;
        dunnChargesPyr    : Boolean;
        paymentMethod     : String;
        payoffLock        : Boolean;
        arBillingJob      : String;
        partnerToContract : Association to Contract;
}
 
entity Attachments : cuid, managed {
    contraid              : UUID;
 
    @Core.MediaType  : MediaType
    Content               : LargeBinary;
 
    @Core.IsMediaType: true
    MediaType             : String;
    FileName              : String;
    Size                  : Integer;
    Url                   : String;
 
    AttachmentsToContract : Association to Contract;
}
 
entity EntityAuditLogs {
    key id            : UUID;
        DateTime      : String;
        User          : String;
        OperationType : String;
        Entity        : String;
        Changes       : String;
        toChanges     : Composition of many Changes
                            on toChanges.toEntityAuditLogs = $self;
 
}
 
entity Changes {
    key Field             : String;
    key id                : UUID;
        OldValue          : String;
        NewValue          : String;
        toEntityAuditLogs : Association to one EntityAuditLogs
                                on toEntityAuditLogs.id = id;
}
 
entity PaymentMethodSearchHelp {
    key id    : UUID;
        value : String;
 
}
 
entity ARBillingJobSearchHelp {
    key id    : UUID;
        value : String;
}
 
 
entity Disbursement {
 
    key ID                     : UUID;
    disbursementId:UUID;
 
        /* --- Disbursement Basic Data --- */
        disbursementSeqNo      : Integer;
        flowType               : String(4);
        lineItem               : String(40); //Text field as lineItem
        paymentDate            : Date;
        effectiveDate          : Date;
        includeInterest        : Boolean; //checkbox For Incl.
        monthEnd               : Boolean; //checkbox For M.E
        withholdingUpTo        : Date;
 
        /* --- Customer Data --- */
        buisnessPartner        : String(10); //Customer as buisnessPartner
        paymentMethod          : String(5);
 
        /* --- Bank Details --- */
        houseBank              : String(10);
        bankDetails            : String(20);
 
        /* --- Capital Data --- */
        currentContractCapital : Decimal(15, 2);
        nominalCapital         : Decimal(15, 2);
        disbursementPercent    : Decimal(9, 6);
        grossPaymentAmount     : Decimal(15, 2);
        netPaymentAmount       : Decimal(15, 2);
        fixedPeriodStart       : Date;
        disbursementRate       : Decimal(9, 6);
 
        disburstmentTocontract : Association to one Contract;
}
 
entity DisburstmentPaymentMethodSearchHelp {
    key id    : UUID;
        value : String;
 
}
 
entity BankDetailsSearchHelp {
    key id    : UUID;
        value : String;
}
 
entity HouseBankSearchHelp {
    key id    : UUID;
        value : String;
}