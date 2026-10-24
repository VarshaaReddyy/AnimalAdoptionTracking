using CatalogService as service from '../../srv/cat-service';


annotate service.AdoptionApplicationsSrv with @(

    UI.HeaderInfo : {
        TypeName : 'Application',
        TypeNamePlural : 'Applications'
    },
    UI.LineItem : [

    {
        $Type : 'UI.DataField',
        Value : applicationDate
    },

    {
        $Type : 'UI.DataField',
        Value : status
    },

    {
        $Type : 'UI.DataField',
        Value : reasonForAdoption
    },

    {
        $Type : 'UI.DataFieldForAction',
        Action : 'CatalogService.approveApplication',
        Label : 'Approve',
        Inline :true

    },
    {
        $Type : 'UI.DataFieldForAction',
        Action : 'CatalogService.rejectApplication',
        Label : 'Reject',
        Inline : true
    },
    
],
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'createdAt',
                Value : createdAt,
            },
            {
                $Type : 'UI.DataField',
                Label : 'modifiedAt',
                Value : modifiedAt,
            },
            {
                $Type : 'UI.DataField',
                Label : 'applicationDate',
                Value : applicationDate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'reasonForAdoption',
                Value : reasonForAdoption,
            },
            {
                $Type : 'UI.DataField',
                Label : 'housingDetails',
                Value : housingDetails,
            },
            {
                $Type : 'UI.DataField',
                Label : 'petExperience',
                Value : petExperience,
            },
            {
                $Type : 'UI.DataField',
                Label : 'status',
                Value : status,
            },
            {
                $Type : 'UI.DataField',
                Label : 'staffRemarks',
                Value : staffRemarks,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
    ],
  

    Capabilities.InsertRestrictions : {
        Insertable : false
    },


    Capabilities.DeleteRestrictions : {
        Deletable : false
    }


);

annotate service.AdoptionApplicationsSrv with {
    animal @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'AnimalsSrv',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : animal_ID,
                ValueListProperty : 'ID',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'createdAt',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'modifiedAt',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'name',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'species',
            },
        ],
    }
};

annotate service.AdoptionApplicationsSrv with {
    applicant @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'UsersSrv',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : applicant_ID,
                ValueListProperty : 'ID',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'createdAt',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'modifiedAt',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'firstName',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'lastName',
            },
        ],
    }
};

annotate service.AdoptionApplicationsSrv with {
    reviewedBy @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'UsersSrv',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : reviewedBy_ID,
                ValueListProperty : 'ID',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'createdAt',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'modifiedAt',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'firstName',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'lastName',
            },
        ],
    }
};

