using MyService as service from '../../srv/service';
annotate service.Contract with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : companyCode,
            },
            {
                $Type : 'UI.DataField',
                Value : loanNumber,
            },
            {
                $Type : 'UI.DataField',
                Value : productType,
            },
            {
                $Type : 'UI.DataField',
                Value : loanType,
            },
            {
                $Type : 'UI.DataField',
                Value : loanPartner,
            },
            {
                $Type : 'UI.DataField',
                Label : 'applicationDate',
                Value : applicationDate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'applicationCapital',
                Value : applicationCapital,
            },
            {
                $Type : 'UI.DataField',
                Label : 'approvalDate',
                Value : approvalDate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'commitmentDate',
                Value : commitmentDate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'loanPurpose',
                Value : loanPurpose,
            },
            {
                $Type : 'UI.DataField',
                Label : 'arBillingJob',
                Value : arBillingJob,
            },
            {
                $Type : 'UI.DataField',
                Label : 'country',
                Value : country,
            },
            {
                $Type : 'UI.DataField',
                Label : 'orgDistrict',
                Value : orgDistrict,
            },
            {
                $Type : 'UI.DataField',
                Label : 'agentDistrict',
                Value : agentDistrict,
            },
            {
                $Type : 'UI.DataField',
                Label : 'primaryIndustryCode',
                Value : primaryIndustryCode,
            },
            {
                $Type : 'UI.DataField',
                Label : 'legacyNumber',
                Value : legacyNumber,
            },
            {
                $Type : 'UI.DataField',
                Label : 'projectNumber',
                Value : projectNumber,
            },
            {
                $Type : 'UI.DataField',
                Label : 'commitCapital',
                Value : commitCapital,
            },
            {
                $Type : 'UI.DataField',
                Label : 'repaymentType',
                Value : repaymentType,
            },
            {
                $Type : 'UI.DataField',
                Label : 'fixedFrom',
                Value : fixedFrom,
            },
            {
                $Type : 'UI.DataField',
                Label : 'fixedUntil',
                Value : fixedUntil,
            },
            {
                $Type : 'UI.DataField',
                Label : 'include',
                Value : include,
            },
            {
                $Type : 'UI.DataField',
                Label : 'intCalMt',
                Value : intCalMt,
            },
            {
                $Type : 'UI.DataField',
                Label : 'postAdjustmentFlag',
                Value : postAdjustmentFlag,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.CollectionFacet',
            Label : 'Tracking',
            ID : 'Tracking',
            Facets : [
                {
                    $Type : 'UI.CollectionFacet',
                    Label : 'Application/Approval',
                    ID : 'BasicData',
                    Facets : [
                        {
                            $Type : 'UI.ReferenceFacet',
                            Label : 'Application/Approval',
                            ID : 'ApplicationApproval',
                            Target : '@UI.FieldGroup#ApplicationApproval',
                        },
                    ],
                },
                {
                    $Type : 'UI.CollectionFacet',
                    Label : 'Offer/Accept',
                    ID : 'OfferAccept',
                    Facets : [
                        {
                            $Type : 'UI.ReferenceFacet',
                            Label : 'Offer',
                            ID : 'Offer',
                            Target : '@UI.FieldGroup#Offer',
                        },
                        {
                            $Type : 'UI.ReferenceFacet',
                            Label : 'Acceptance',
                            ID : 'Acceptance',
                            Target : '@UI.FieldGroup#Acceptance',
                        },
                    ],
                },
                {
                    $Type : 'UI.ReferenceFacet',
                    Label : 'Contract',
                    ID : 'Contract',
                    Target : '@UI.FieldGroup#Contract',
                },
            ],
        },
        {
            $Type : 'UI.CollectionFacet',
            Label : 'Basic data',
            ID : 'Basicdata',
            Facets : [
                {
                    $Type : 'UI.CollectionFacet',
                    Label : 'Analysis Data',
                    ID : 'AnalyssData',
                    Facets : [
                        {
                            $Type : 'UI.ReferenceFacet',
                            Label : 'Information',
                            ID : 'Information',
                            Target : '@UI.FieldGroup#Information',
                        },
                    ],
                },
                {
                    $Type : 'UI.CollectionFacet',
                    Label : 'Organization',
                    ID : 'Organization',
                    Facets : [
                        {
                            $Type : 'UI.ReferenceFacet',
                            Label : 'Agent Data',
                            ID : 'AgentData',
                            Target : '@UI.FieldGroup#AgentData',
                        },
                    ],
                },
                {
                    $Type : 'UI.CollectionFacet',
                    Label : 'Reference Data',
                    ID : 'ReferenceData',
                    Facets : [
                        {
                            $Type : 'UI.ReferenceFacet',
                            Label : 'Other References',
                            ID : 'OtherReferences',
                            Target : '@UI.FieldGroup#OtherReferences',
                        },
                        {
                            $Type : 'UI.ReferenceFacet',
                            Label : 'Group Key',
                            ID : 'Group',
                            Target : '@UI.FieldGroup#Group',
                        },
                    ],
                },
            ],
        },
        {
            $Type : 'UI.CollectionFacet',
            Label : 'Conditons',
            ID : 'Conditons',
            Facets : [
                {
                    $Type : 'UI.CollectionFacet',
                    Label : 'Conditions',
                    ID : 'Conditions',
                    Facets : [
                        {
                            $Type : 'UI.ReferenceFacet',
                            Label : '      ',
                            ID : '_',
                            Target : '@UI.FieldGroup#_',
                        },
                    ],
                },
                {
                    $Type : 'UI.ReferenceFacet',
                    Label : 'Term/Fixed Period',
                    ID : 'TermFixedPeriod',
                    Target : '@UI.FieldGroup#TermFixedPeriod',
                },
                {
                    $Type : 'UI.ReferenceFacet',
                    Label : 'Interest Calculation',
                    ID : 'InterestCalculation',
                    Target : '@UI.FieldGroup#InterestCalculation',
                },
                {
                    $Type : 'UI.ReferenceFacet',
                    Label : 'Notice',
                    ID : 'Notice',
                    Target : '@UI.FieldGroup#Notice',
                },
                {
                    $Type : 'UI.ReferenceFacet',
                    Label : 'Condition Items',
                    ID : 'ConditionItems',
                    Target : 'contractToCondition/@UI.LineItem#ConditionItems',
                },
            ],
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'FM Details',
            ID : 'FMDetails',
            Target : 'contractTofmdetails/@UI.LineItem#FMDetails',
        },
        {
            $Type : 'UI.CollectionFacet',
            Label : 'Partner',
            ID : 'Partners',
            Facets : [
                {
                    $Type : 'UI.ReferenceFacet',
                    Label : 'Partners',
                    ID : 'Partners1',
                    Target : 'contractToPartner/@UI.LineItem#Partners',
                },
            ],
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : loanNumber,
        },
        {
            $Type : 'UI.DataField',
            Value : productType,
        },
        {
            $Type : 'UI.DataField',
            Value : loanType,
        },
        {
            $Type : 'UI.DataField',
            Value : loanPartner,
        },
    ],
    UI.HeaderInfo : {
        TypeName : '',
        TypeNamePlural : '',
    },
    UI.FieldGroup #ApplicationApproval : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : applicationDate,
                Label : 'Application Date',
            },
            {
                $Type : 'UI.DataField',
                Value : approvalDate,
                Label : 'Approval Date',
            },
            {
                $Type : 'UI.DataField',
                Value : applicationCapital,
                Label : 'Application Capital',
            },
            {
                $Type : 'UI.DataField',
                Value : commitmentDate,
                Label : 'Commitment Date',
            },
        ],
    },
    UI.FieldGroup #Information : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : loanPurpose,
                Label : 'Purpose of Loan',
            },
            {
                $Type : 'UI.DataField',
                Value : designation,
                Label : 'Designation',
            },
            {
                $Type : 'UI.DataField',
                Value : pledgedStatus,
                Label : 'Pledged Status',
            },
        ],
    },
    UI.FieldGroup #AgentData : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : country,
                Label : 'County',
            },
            {
                $Type : 'UI.DataField',
                Value : orgDistrict,
                Label : 'Organiz.District',
            },
            {
                $Type : 'UI.DataField',
                Value : agentDistrict,
                Label : 'Agent District',
            },
        ],
    },
    UI.FieldGroup #Group : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : primaryIndustryCode,
                Label : 'Primary Industry ',
            },
        ],
    },
    UI.FieldGroup #OtherReferences : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : legacyNumber,
                Label : 'Legacy Number',
            },
            {
                $Type : 'UI.DataField',
                Value : projectNumber,
                Label : 'Project Number',
            },
        ],
    },
    UI.FieldGroup #_ : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : commitCapital,
                Label : 'Commit Capital',
            },
        ],
    },
    UI.FieldGroup #TermFixedPeriod : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : fixedFrom,
                Label : 'Fixed From',
            },
            {
                $Type : 'UI.DataField',
                Value : fixedUntil,
                Label : 'Fixed Until',
            },
            {
                $Type : 'UI.DataField',
                Value : include,
                Label : 'Inclusive Indicator',
            },
        ],
    },
    UI.FieldGroup #InterestCalculation : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : intCalMt,
                Label : 'Int.Cal.Mt',
            },
        ],
    },
    UI.FieldGroup #Offer : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : offerOn,
                Label : 'Offer On',
            },
            {
                $Type : 'UI.DataField',
                Value : offerUntil,
                Label : 'Offer Until',
            },
            {
                $Type : 'UI.DataField',
                Value : reservedOn,
                Label : 'Reserved On',
            },
            {
                $Type : 'UI.DataField',
                Value : reservedUntil,
                Label : 'Reserved Until',
            },
        ],
    },
    UI.FieldGroup #Acceptance : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : acceptance,
                Label : 'Acceptance',
            },
            {
                $Type : 'UI.DataField',
                Value : acceptedOn,
                Label : 'Accepted On',
            },
            {
                $Type : 'UI.DataField',
                Value : acceptancedType,
                Label : 'Acceptance Type',
            },
            {
                $Type : 'UI.DataField',
                Value : reservation,
                Label : 'Reservation',
            },
        ],
    },
    UI.FieldGroup #Contract : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : contract,
                Label : 'Contract',
            },
            {
                $Type : 'UI.DataField',
                Value : contractOn,
                Label : 'Contract On',
            },
            {
                $Type : 'UI.DataField',
                Value : amtzDate,
                Label : 'Amtz Date',
            },
            {
                $Type : 'UI.DataField',
                Value : maturityDate,
                Label : 'Maturity Date',
            },
            {
                $Type : 'UI.DataField',
                Value : datePaidOff,
                Label : 'Date Paid Off',
            },
        ],
    },
    UI.FieldGroup #Status : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : designation,
                Label : 'Designation',
            },
            {
                $Type : 'UI.DataField',
                Value : pledgedStatus,
                Label : 'Pledged Status',
            },
            {
                $Type : 'UI.DataField',
                Value : datePaidOff,
                Label : 'Date Paid Off',
            },
        ],
    },
    UI.FieldGroup #Notice : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : intresetRateResetType,
                Label : 'Interest Rate Reset Type',
            },
            {
                $Type : 'UI.DataField',
                Value : intresetRateResetDate,
                Label : 'Interest Rate Reset Date',
            },
        ],
    },
    UI.FieldGroup #IncomingPayments : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : contractToPartner.partnerToContract.contractToPartner.arBillingJob,
                Label : 'arBillingJob',
            },
            {
                $Type : 'UI.DataField',
                Value : contractToPartner.partnerToContract.contractToPartner.paymentMethod,
                Label : 'paymentMethod',
            },
            {
                $Type : 'UI.DataField',
                Value : contractToPartner.partnerToContract.contractToPartner.payoffLock,
                Label : 'payoffLock',
            },
        ],
    },
    UI.FieldGroup #IncomingPayments1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : contractToPartner.arBillingJob,
                Label : 'arBillingJob',
            },
            {
                $Type : 'UI.DataField',
                Value : contractToPartner.paymentMethod,
                Label : 'paymentMethod',
            },
            {
                $Type : 'UI.DataField',
                Value : contractToPartner.payoffLock,
                Label : 'payoffLock',
            },
        ],
    },
);

annotate service.ConditionItemsNew with @(
    UI.LineItem #ConditionItems : [
        {
            $Type : 'UI.DataField',
            Value : conditionTypeText,
            Label : 'Cond.Type Text',
        },
        {
            $Type : 'UI.DataField',
            Value : effectiveFrom,
            Label : 'Eff. From',
        },
        {
            $Type : 'UI.DataField',
            Value : percentage,
            Label : 'Percentage',
        },
        {
            $Type : 'UI.DataField',
            Value : conditionAmt,
            Label : 'Condition Amnt',
        },
        {
            $Type : 'UI.DataField',
            Value : paymentFromExactDay,
            Label : 'Payment From Exact Day',
        },
        {
            $Type : 'UI.DataField',
            Value : frequencyInMonths,
            Label : 'Frequency in Months',
        },
        {
            $Type : 'UI.DataField',
            Value : dueDate,
            Label : 'Due Date',
        },
        {
            $Type : 'UI.DataField',
            Value : calculationDate,
            Label : 'Calculation Date',
        },
    ]
);

annotate service.Partners with @(
    UI.LineItem #Partners : [
        {
            $Type : 'UI.DataField',
            Value : title,
            Label : 'Role Name',
        },
        {
            $Type : 'UI.DataField',
            Value : nameAddress,
            Label : 'Name',
        },
        {
            $Type : 'UI.DataField',
            Value : startRel,
            Label : 'Start Rel.',
        },
        {
            $Type : 'UI.DataField',
            Value : endRel,
            Label : 'End Rel.',
        },
        {
            $Type : 'UI.DataField',
            Value : partner,
            Label : 'Partner',
        },
        {
            $Type : 'UI.DataField',
            Value : bpRole,
            Label : 'BP Role',
        },
    ],
    UI.HeaderInfo : {
        TypeName : '',
        TypeNamePlural : '',
    },
    UI.Facets : [
        {
            $Type : 'UI.CollectionFacet',
            Label : 'Associated BP Roles',
            ID : 'section1',
            Facets : [
                {
                    $Type : 'UI.ReferenceFacet',
                    Label : 'Attributes for Selected Partner',
                    ID : 'AttributesforSelectedPartner',
                    Target : '@UI.FieldGroup#AttributesforSelectedPartner',
                },
                
            ],
        },
        {
            $Type : 'UI.CollectionFacet',
            Label : 'Incoming Payments',
            ID : 'section2',
            Facets : [
                {
                    $Type : 'UI.ReferenceFacet',
                    Label : 'form2',
                    ID : 'form2',
                    Target : '@UI.FieldGroup#form2',
                },
            ],
        },
    ],
    UI.FieldGroup #AttributesforSelectedPartner : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : title,
                Label : 'Role Name',
            },
            {
                $Type : 'UI.DataField',
                Value : nameAddress,
                Label : 'Name',
            },
            {
                $Type : 'UI.DataField',
                Value : partner,
                Label : 'Partner',
            },
            {
                $Type : 'UI.DataField',
                Value : startRel,
                Label : 'Start Rel.',
            },
            {
                $Type : 'UI.DataField',
                Value : addressType,
                Label : 'Address',
            },
            {
                $Type : 'UI.DataField',
                Value : endRel,
                Label : 'End Rel.',
            },
            {
                $Type : 'UI.DataField',
                Value : bpRole,
                Label : 'BP Role',
            },
            {
                $Type : 'UI.DataField',
                Value : customer,
                Label : 'Customer',
            },
            {
                $Type : 'UI.DataField',
                Value : bankDetailsID,
                Label : 'Bank Details ID',
            },
            {
                $Type : 'UI.DataField',
                Value : dunningLetter,
                Label : 'Dunning Letter',
            },
        ],
    },
    UI.FieldGroup #form2 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : paymentMethod,
                Label : 'Incoming Payment Method',
            },
            {
                $Type : 'UI.DataField',
                Value : arBillingJob,
                Label : 'AR Billing Job',
            },
            {
                $Type : 'UI.DataField',
                Value : payoffLock,
                Label : 'Payoff Lock',
            },
        ],
    },
);

annotate service.Partners with {
    addressType @UI.MultiLineText : true
};

annotate service.Partners with {
    arBillingJob @(
        Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'ARBillingJobSearchHelp',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : arBillingJob,
                    ValueListProperty : 'value',
                },
            ],
            Label : 'Search Help',
        },
        Common.ValueListWithFixedValues : true,
)};

annotate service.Partners with {
    paymentMethod @(
        Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'PaymentMethodSearchHelp',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : paymentMethod,
                    ValueListProperty : 'value',
                },
            ],
            Label : 'Search Help',
        },
        Common.ValueListWithFixedValues : true,
)};

annotate service.FMDetails with @(
    UI.LineItem #FMDetails : [
        {
            $Type : 'UI.DataField',
            Value : fmdetailsToContract.contractTofmdetails.budgetPd,
            Label : 'budgetPd',
        },
        {
            $Type : 'UI.DataField',
            Value : fmdetailsToContract.contractTofmdetails.companyInd,
            Label : 'companyInd',
        },
        {
            $Type : 'UI.DataField',
            Value : fmdetailsToContract.contractTofmdetails.costCenter,
            Label : 'costCenter',
        },
        {
            $Type : 'UI.DataField',
            Value : fmdetailsToContract.contractTofmdetails.DocumentItem,
            Label : 'DocumentItem',
        },
        {
            $Type : 'UI.DataField',
            Value : fmdetailsToContract.contractTofmdetails.WBSelement,
            Label : 'WBSelement',
        },
        {
            $Type : 'UI.DataField',
            Value : fmdetailsToContract.contractTofmdetails.text,
            Label : 'text',
        },
        {
            $Type : 'UI.DataField',
            Value : fmdetailsToContract.contractTofmdetails.originalAmount,
            Label : 'originalAmount',
        },
        {
            $Type : 'UI.DataField',
            Value : fmdetailsToContract.contractTofmdetails.orders,
            Label : 'orders',
        },
        {
            $Type : 'UI.DataField',
            Value : fmdetailsToContract.contractTofmdetails.loanCategory,
            Label : 'loanCategory',
        },
        {
            $Type : 'UI.DataField',
            Value : fmdetailsToContract.contractTofmdetails.GLaccount,
            Label : 'GLaccount',
        },
        {
            $Type : 'UI.DataField',
            Value : fmdetailsToContract.contractTofmdetails.fund,
            Label : 'fund',
        },
    ]
);

