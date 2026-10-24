using CatalogService as service from '../../srv/cat-service';

using UI from '@sap/cds/common';


annotate CatalogService.UsersSrv with @(
    UI.HeaderInfo : {
        TypeName : 'User',
        TypeNamePlural : 'Users'
    },

    UI.SelectionFields : [
        firstName,
        lastName,
        role,
        status
    ],

    UI.LineItem : [
        { Value : firstName },
        { Value : lastName },
        { Value : email },
        { Value : role },
        { Value : status }
    ]
);

annotate CatalogService.SheltersSrv with @(
    UI.HeaderInfo : {
        TypeName : 'Shelter',
        TypeNamePlural : 'Shelters'
    },

    UI.SelectionFields : [
        shelterName,
        city,
        shelterType
    ],

    UI.LineItem : [
        { Value : shelterName },
        { Value : city },
        { Value : state },
        { Value : capacity },
        { Value : shelterType },
        {
    $Type : 'UI.DataFieldForAction',
    Action : 'CatalogService.editShelter',
    Label : 'Edit shelter'
},
        {
    $Type : 'UI.DataFieldForAction',
    Action : 'CatalogService.EntityContainer/createShelter',
    Label : 'Create Shelter'
}
    ]
);




annotate CatalogService.AdoptionsSrv with @(
    UI.HeaderInfo : {
        TypeName : 'Adoption',
        TypeNamePlural : 'Adoptions'
    },

    UI.LineItem : [
        { Value : adoptionDate },
        { Value : status },
        { Value : remarks }
    ]
);



annotate CatalogService.InspectionsSrv with @(
    UI.HeaderInfo : {
        TypeName : 'Inspection',
        TypeNamePlural : 'Inspections'
    },

    UI.LineItem : [
        { Value : inspectionDate },
        { Value : inspectionType },
        { Value : result },
        {
    $Type : 'UI.DataFieldForAction',
    Action : 'CatalogService.editInspection',
    Label : 'Edit Inspection'
},
        {
    $Type : 'UI.DataFieldForAction',
    Action : 'CatalogService.EntityContainer/createInspection',
    Label : 'Create Inspection'
}
    ]
);