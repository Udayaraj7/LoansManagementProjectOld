using {db} from '../db/schema';

service MyService {
    @odata.draft.enabled
    entity Contract                       as projection on db.Contract;
    entity ConditionItemsNew              as projection on db.ConditionItemsNew;
    entity Partners                       as projection on db.Partners;
    entity ConditionTypeTextSearchHelpNew as projection on db.ConditionTypeTextSearchHelpNew;
     entity Attachments                    as projection on db.Attachments;
    entity EntityAuditLogs                as projection on db.EntityAuditLogs;
    entity Changes                        as projection on db.Changes;
    entity PaymentMethodSearchHelp as projection on db.PaymentMethodSearchHelp;
    entity ARBillingJobSearchHelp as projection on db.ARBillingJobSearchHelp;

    entity Disbursement as projection on db.Disbursement;
    entity FMDetails as projection on db.FMDetails;
    entity DisburstmentPaymentMethodSearchHelp as projection on db.DisburstmentPaymentMethodSearchHelp;
    entity BankDetailsSearchHelp as projection on db.BankDetailsSearchHelp;
    entity HouseBankSearchHelp as projection on db.HouseBankSearchHelp;


}


