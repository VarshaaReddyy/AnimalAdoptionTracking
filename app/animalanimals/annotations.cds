using CatalogService as service from '../../srv/cat-service';
annotate service.AnimalsSrv with @(
    UI.HeaderInfo : {
        TypeName : 'Animal',
        TypeNamePlural : 'Animals'
    },

    UI.SelectionFields : [
        name,
        species,
        animalStatus
    ],

    UI.LineItem : [
    {
        $Type : 'UI.DataField',
        Value : name,
        Label : 'Name'
    },
    {
        $Type : 'UI.DataField',
        Value : species,
        Label : 'Species'
    },
    {
        $Type : 'UI.DataField',
        Value : breed,
        Label : 'Breed'
    },
    {
        $Type : 'UI.DataField',
        Value : age,
        Label : 'Age'
    },
    {
        $Type : 'UI.DataField',
        Value : animalStatus,
        Label : 'Status'
    },
    {
        $Type : 'UI.DataFieldForAction',
        Action : 'CatalogService.editAnimal',
        Label : 'Edit Animal'
    },
    {
        $Type : 'UI.DataFieldForAction',
        Action : 'CatalogService.EntityContainer/createAnimal',
        Label : 'Create Animal'
    }

],
    
);
annotate service.AnimalsSrv with @(
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
                Label : 'name',
                Value : name,
            },
            {
                $Type : 'UI.DataField',
                Label : 'species',
                Value : species,
            },
            {
                $Type : 'UI.DataField',
                Label : 'breed',
                Value : breed,
            },
            {
                $Type : 'UI.DataField',
                Label : 'gender',
                Value : gender,
            },
            {
                $Type : 'UI.DataField',
                Label : 'age',
                Value : age,
            },
            {
                $Type : 'UI.DataField',
                Label : 'arrivalDate',
                Value : arrivalDate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'animalStatus',
                Value : animalStatus,
            },
            {
                $Type : 'UI.DataField',
                Label : 'vaccinationStatus',
                Value : vaccinationStatus,
            },
            {
                $Type : 'UI.DataField',
                Label : 'spayedOrNeutered',
                Value : spayedOrNeutered,
            },
            {
                $Type : 'UI.DataField',
                Label : 'photo',
                Value : photo,
            },
            {
                $Type : 'UI.DataField',
                Label : 'description',
                Value : description,
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

annotate service.AnimalsSrv with {
    shelter @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'SheltersSrv',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : shelter_ID,
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
                ValueListProperty : 'shelterName',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'shelterCode',
            },
        ],
    }
};