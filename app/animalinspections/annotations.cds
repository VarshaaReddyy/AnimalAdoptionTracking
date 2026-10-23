using CatalogService as service from '../../srv/cat-service';
annotate service.InspectionsSrv with @(
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
                Label : 'inspectionDate',
                Value : inspectionDate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'inspectionType',
                Value : inspectionType,
            },
            {
                $Type : 'UI.DataField',
                Label : 'existingPetDetails',
                Value : existingPetDetails,
            },
            {
                $Type : 'UI.DataField',
                Label : 'result',
                Value : result,
            },
            {
                $Type : 'UI.DataField',
                Label : 'remarks',
                Value : remarks,
            },
            {
                $Type : 'UI.DataField',
                Label : 'inspectionDocument',
                Value : inspectionDocument,
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

annotate service.InspectionsSrv with {
    adoption @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'AdoptionsSrv',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : adoption_ID,
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
                ValueListProperty : 'adoptionDate',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'status',
            },
        ],
    }
};

annotate service.InspectionsSrv with {
    inspector @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'UsersSrv',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : inspector_ID,
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

