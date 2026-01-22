using MyService as service from '../../srv/service';
annotate service.Loans with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'companyCode',
                Value : companyCode,
            },
            {
                $Type : 'UI.DataField',
                Label : 'productType',
                Value : productType,
            },
            {
                $Type : 'UI.DataField',
                Label : 'businessPartner',
                Value : businessPartner,
            },
            {
                $Type : 'UI.DataField',
                Label : 'loanIndicator',
                Value : loanIndicator,
            },
            {
                $Type : 'UI.DataField',
                Label : 'numberRange',
                Value : numberRange,
            },
            {
                $Type : 'UI.DataField',
                Label : 'divider',
                Value : divider,
            },
            {
                $Type : 'UI.DataField',
                Label : 'loanTypeNC',
                Value : loanTypeNC,
            },
            {
                $Type : 'UI.DataField',
                Label : 'loanTypeBD',
                Value : loanTypeBD,
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
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.CollectionFacet',
            Label : 'Basic Data',
            ID : 'BasicData',
            Facets : [
                {
                    $Type : 'UI.CollectionFacet',
                    Label : 'Number Components',
                    ID : 'NumberComponents',
                    Facets : [
                        {
                            $Type : 'UI.ReferenceFacet',
                            Label : '                ',
                            ID : '_',
                            Target : '@UI.FieldGroup#_1',
                        },
                    ],
                },
                {
                    $Type : 'UI.CollectionFacet',
                    Label : 'Basic Data',
                    ID : 'BasicData1',
                    Facets : [
                        {
                            $Type : 'UI.ReferenceFacet',
                            Label : 'Classification',
                            ID : 'Classification',
                            Target : '@UI.FieldGroup#Classification',
                        },
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
                    Label : 'Analysis Data',
                    ID : 'AnalysisData',
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
                    Label : 'Ref. Data',
                    ID : 'RefData',
                    Facets : [
                        {
                            $Type : 'UI.ReferenceFacet',
                            Label : 'Group Key',
                            ID : 'GroupKey',
                            Target : '@UI.FieldGroup#GroupKey',
                        },
                        {
                            $Type : 'UI.ReferenceFacet',
                            Label : 'Other References',
                            ID : 'OtherReferences',
                            Target : '@UI.FieldGroup#OtherReferences',
                        },
                    ],
                },
            ],
        },
        {
            $Type : 'UI.CollectionFacet',
            Label : 'Conditions',
            ID : 'Conditions1',
            Facets : [
                {
                    $Type : 'UI.CollectionFacet',
                    Label : 'Basic Data',
                    ID : 'BasicData2',
                    Facets : [
                        {
                            $Type : 'UI.ReferenceFacet',
                            Label : '   ',
                            ID : '_1',
                            Target : '@UI.FieldGroup#_2',
                        },
                        {
                            $Type : 'UI.ReferenceFacet',
                            Label : 'Term/Fixed period',
                            ID : 'TermFixedperiod',
                            Target : '@UI.FieldGroup#TermFixedperiod',
                        },
                        {
                            $Type : 'UI.ReferenceFacet',
                            Label : 'Interest calculation',
                            ID : 'Interestcalculation',
                            Target : '@UI.FieldGroup#Interestcalculation',
                        },
                    ],
                },
                {
                    $Type : 'UI.ReferenceFacet',
                    Label : 'Condition Items',
                    ID : 'ConditionItems',
                    Target : 'conditionLineItems/@UI.LineItem#ConditionItems',
                },
                {
                    $Type : 'UI.ReferenceFacet',
                    Label : 'Contract/Eff . int.',
                    ID : 'coedff',
                    Target : '@UI.FieldGroup#coedff',
                },
            ],
        },
        {
            $Type : 'UI.CollectionFacet',
            Label : 'Partner Tab',
            ID : 'PartnerTab',
            Facets : [
                {
                    $Type : 'UI.CollectionFacet',
                    Label : 'Partner List',
                    ID : 'Partnerlist',
                    Facets : [
                        {
                            $Type : 'UI.ReferenceFacet',
                            Label : '        ',
                            ID : '_2',
                            Target : 'partners/@UI.LineItem#_',
                        },
                    ],
                },
                {
                    $Type : 'UI.ReferenceFacet',
                    Label : 'Attributes for Selected Partner',
                    ID : 'AttributesforSelectedPartner',
                    Target : '@UI.FieldGroup#AttributesforSelectedPartner',
                },
            ],
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'Company Code',
            Value : companyCode,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Product Type',
            Value : productType,
        },
        {
            $Type : 'UI.DataField',
            Label : 'BPartner',
            Value : businessPartner,
        },
    ],
    UI.HeaderFacets : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Header Details',
            ID : 'HeaderDetails',
            Target : '@UI.FieldGroup#HeaderDetails1',
        },
    ],
    UI.FieldGroup #HeaderDetails : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : companyCode,
                Label : 'Company Code',
            },
            {
                $Type : 'UI.DataField',
                Value : productType,
                Label : 'Product Type',
            },
            {
                $Type : 'UI.DataField',
                Value : businessPartner,
                Label : 'BPartner',
            },
        ],
    },
    UI.FieldGroup #_ : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : businessPartner,
                Label : 'BPartner',
            },
            {
                $Type : 'UI.DataField',
                Value : arBillingJob,
                Label : 'arBillingJob',
            },
            {
                $Type : 'UI.DataField',
                Value : commitmentDate,
                Label : 'commitmentDate',
            },
        ],
    },
    UI.FieldGroup #BasicData : {
        $Type : 'UI.FieldGroupType',
        Data : [
        ],
    },
    UI.FieldGroup #Form : {
        $Type : 'UI.FieldGroupType',
        Data : [
        ],
    },
    UI.FieldGroup #for : {
        $Type : 'UI.FieldGroupType',
        Data : [
        ],
    },
    UI.FieldGroup #group22 : {
        $Type : 'UI.FieldGroupType',
        Data : [
        ],
    },
    UI.FieldGroup #formww : {
        $Type : 'UI.FieldGroupType',
        Data : [
        ],
    },
    UI.FieldGroup #_1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : loanIndicator,
                Label : 'Loan Indicator',
            },
            {
                $Type : 'UI.DataField',
                Value : numberRange,
                Label : 'Number Range',
            },
            {
                $Type : 'UI.DataField',
                Value : divider,
                Label : 'Divider',
            },
            {
                $Type : 'UI.DataField',
                Value : loanTypeNC,
                Label : 'Loan Type',
            },
        ],
    },
    UI.FieldGroup #Classification : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : loanTypeBD,
                Label : 'Loan Type',
            },
        ],
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
                Value : applicationCapital,
                Label : 'Application Capital',
            },
            {
                $Type : 'UI.DataField',
                Value : approvalDate,
                Label : 'Approval Date',
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
                Label : 'Purpose Of Loan',
            },
            {
                $Type : 'UI.DataField',
                Value : arBillingJob,
                Label : 'AR Billing Job',
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
    UI.FieldGroup #GroupKey : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : primaryIndustryCode,
                Label : 'Primary Industry',
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
                Label : 'Project No.',
            },
        ],
    },
    UI.FieldGroup #_2 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : conditionHeader.commitCapital,
                Label : 'Commit.Capital',
            },
            {
                $Type : 'UI.DataField',
                Value : conditionHeader.repaymentType,
                Label : 'Repayment Type',
            },
        ],
    },
    UI.FieldGroup #TermFixedperiod : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : conditionHeader.termStart,
                Label : 'Term Start',
            },
            {
                $Type : 'UI.DataField',
                Value : conditionHeader.fixedFrom,
                Label : 'Fixed From',
            },
            {
                $Type : 'UI.DataField',
                Value : conditionHeader.fixedUntil,
                Label : 'Fixed Unt.',
            },
            {
                $Type : 'UI.DataField',
                Value : conditionHeader.termEnd,
                Label : 'Term End',
            },
        ],
    },
    UI.FieldGroup #Interestcalculation : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : conditionHeader.intCalMethod,
                Label : 'Int.Cal.Mt',
            },
        ],
    },
    UI.FieldGroup #Contract : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : conditionHeader.fixedFrom,
                Label : 'fixedFrom',
            },
            {
                $Type : 'UI.DataField',
                Value : conditionHeader.fixedUntil,
                Label : 'fixedUntil',
            },
        ],
    },
    UI.FieldGroup #coedff : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : conditionHeader.contract,
                Label : 'Contract',
            },
            {
                $Type : 'UI.DataField',
                Value : conditionHeader.contracton,
                Label : 'Contract on',
            },
            {
                $Type : 'UI.DataField',
                Value : conditionHeader.Amtzdate,
                Label : 'Amtz Date',
            },
            {
                $Type : 'UI.DataField',
                Value : conditionHeader.maturitydate,
                Label : 'Maturity Date',
            },
        ],
    },
    UI.FieldGroup #dd : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : applicationDate,
                Label : 'applicationDate',
            },
            {
                $Type : 'UI.DataField',
                Value : approvalDate,
                Label : 'approvalDate',
            },
            {
                $Type : 'UI.DataField',
                Value : arBillingJob,
                Label : 'arBillingJob',
            },
        ],
    },
    UI.FieldGroup #AttributesforSelectedPartner : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : partnerattr.roleType,
                Label : 'Role Type',
            },
            {
                $Type : 'UI.DataField',
                Value : partnerattr.customer,
                Label : 'Customer',
            },
            {
                $Type : 'UI.DataField',
                Value : partnerattr.bankDetailsID,
                Label : 'Bank Details ID',
            },
            {
                $Type : 'UI.DataField',
                Value : partnerattr.dunnChargesPyr,
                Label : 'Dunn.Charges Pyr',
            },
            {
                $Type : 'UI.DataField',
                Value : partnerattr.dunningLetter,
                Label : 'Dunning Letter',
            },
            {
                $Type : 'UI.DataField',
                Value : partnerattr.paymentMethod,
                Label : 'Pymt Method',
            },
        ],
    },
    UI.FieldGroup #HeaderDetails1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : companyCode,
            },
            {
                $Type : 'UI.DataField',
                Value : productType,
                Label : 'Product Type',
            },
            {
                $Type : 'UI.DataField',
                Value : businessPartner,
            },
        ],
    },
    UI.HeaderInfo : {
        TypeName : '',
        TypeNamePlural : '',
    },
);

annotate service.conditionLineItems with @(
    UI.LineItem #ConditionItems : [
        {
            $Type : 'UI.DataField',
            Value : loan.conditionLineItems.condTypeText,
            Label : 'Cond.Type Text',
        },
        {
            $Type : 'UI.DataField',
            Value : loan.conditionLineItems.effFrom,
            Label : 'Eff. From',
        },
        {
            $Type : 'UI.DataField',
            Value : loan.conditionLineItems.percent,
            Label : 'Percent',
        },
        {
            $Type : 'UI.DataField',
            Value : loan.conditionLineItems.conditionAmount,
            Label : 'Condition Amount',
        },
        {
            $Type : 'UI.DataField',
            Value : loan.conditionLineItems.currency,
            Label : 'Currency',
        },
        {
            $Type : 'UI.DataField',
            Value : loan.conditionLineItems.lvl,
            Label : 'Lvl',
        },
        {
            $Type : 'UI.DataField',
            Value : loan.conditionLineItems.pf,
            Label : 'PF',
        },
        {
            $Type : 'UI.DataField',
            Value : loan.conditionLineItems.pe,
            Label : 'PE',
        },
        {
            $Type : 'UI.DataField',
            Value : loan.conditionLineItems.frequency,
            Label : 'Frequency',
        },
        {
            $Type : 'UI.DataField',
            Value : loan.conditionLineItems.dueOn,
            Label : 'Due on',
        },
        {
            $Type : 'UI.DataField',
            Value : loan.conditionLineItems.calcDate,
            Label : 'Calc.date',
        },
        {
            $Type : 'UI.DataField',
            Value : loan.conditionLineItems.mc,
            Label : 'MC',
        },
        {
            $Type : 'UI.DataField',
            Value : loan.conditionLineItems.formula,
            Label : 'Formula',
        },
        {
            $Type : 'UI.DataField',
            Value : Is,
            Label : 'IS',
        },
    ]
);

annotate service.partners with @(
    UI.LineItem #t : [
    ],
    UI.LineItem #_ : [
        {
            $Type : 'UI.DataField',
            Value : title,
            Label : 'Title',
        },
        {
            $Type : 'UI.DataField',
            Value : nameAddress,
            Label : 'Name/Address',
        },
        {
            $Type : 'UI.DataField',
            Value : startRel,
            Label : 'Strt rel.',
        },
        {
            $Type : 'UI.DataField',
            Value : endRel,
            Label : 'End relat.',
        },
        {
            $Type : 'UI.DataField',
            Value : addressType,
            Label : 'Addr. Type',
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
);

