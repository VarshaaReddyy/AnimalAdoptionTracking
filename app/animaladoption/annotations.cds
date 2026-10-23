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
        { Value : shelterType }
    ]
);

annotate CatalogService.AnimalsSrv with @(
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
        { Value : name },
        { Value : species },
        { Value : breed },
        { Value : age },
        { Value : animalStatus }
    ]
);

annotate CatalogService.AdoptionApplicationsSrv with @(
    UI.HeaderInfo : {
        TypeName : 'Application',
        TypeNamePlural : 'Applications'
    }

    
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

annotate CatalogService.HealthRecordsSrv with @(
    UI.HeaderInfo : {
        TypeName : 'Health Record',
        TypeNamePlural : 'Health Records'
    },

    UI.LineItem : [
        { Value : checkupDate },
        { Value : healthStatus },
        { Value : veterinarianName },
        { Value : weight }
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
        { Value : result }
    ]
);