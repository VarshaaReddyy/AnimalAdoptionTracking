using CatalogService as service from '../../srv/cat-service';
annotate service.HealthRecordsSrv with @(
    UI.HeaderInfo : {
        TypeName : 'Health Record',
        TypeNamePlural : 'Health Records'
    },

    UI.LineItem : [
        { Value : checkupDate },
        { Value : healthStatus },
        { Value : veterinarianName },
        { Value : weight },
        {
    $Type : 'UI.DataFieldForAction',
    Action : 'CatalogService.editHealthRecord',
    Label : 'Edit Health Record'
},
        {
    $Type : 'UI.DataFieldForAction',
    Action : 'CatalogService.EntityContainer/createHealthRecord',
    Label : 'Create Health Record'
}
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
                Label : 'checkupDate',
                Value : checkupDate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'healthStatus',
                Value : healthStatus,
            },
            {
                $Type : 'UI.DataField',
                Label : 'diagnosis',
                Value : diagnosis,
            },
            {
                $Type : 'UI.DataField',
                Label : 'treatment',
                Value : treatment,
            },
            {
                $Type : 'UI.DataField',
                Label : 'medication',
                Value : medication,
            },
            {
                $Type : 'UI.DataField',
                Label : 'veterinarianName',
                Value : veterinarianName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'weight',
                Value : weight,
            },
            {
                $Type : 'UI.DataField',
                Label : 'nextCheckupDate',
                Value : nextCheckupDate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'remarks',
                Value : remarks,
            },
            {
                $Type : 'UI.DataField',
                Label : 'medicalDocument',
                Value : medicalDocument,
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
);

annotate service.HealthRecordsSrv with {
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

