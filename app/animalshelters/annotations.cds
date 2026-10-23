using CatalogService as service from '../../srv/cat-service';
annotate service.SheltersSrv with @(
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
                Label : 'shelterName',
                Value : shelterName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'shelterCode',
                Value : shelterCode,
            },
            {
                $Type : 'UI.DataField',
                Label : 'addressLine1',
                Value : addressLine1,
            },
            {
                $Type : 'UI.DataField',
                Label : 'addressLine2',
                Value : addressLine2,
            },
            {
                $Type : 'UI.DataField',
                Label : 'city',
                Value : city,
            },
            {
                $Type : 'UI.DataField',
                Label : 'state',
                Value : state,
            },
            {
                $Type : 'UI.DataField',
                Label : 'postalCode',
                Value : postalCode,
            },
            {
                $Type : 'UI.DataField',
                Label : 'country',
                Value : country,
            },
            {
                $Type : 'UI.DataField',
                Label : 'contactNumber',
                Value : contactNumber,
            },
            {
                $Type : 'UI.DataField',
                Label : 'email',
                Value : email,
            },
            {
                $Type : 'UI.DataField',
                Label : 'website',
                Value : website,
            },
            {
                $Type : 'UI.DataField',
                Label : 'capacity',
                Value : capacity,
            },
            {
                $Type : 'UI.DataField',
                Label : 'currentOccupancy',
                Value : currentOccupancy,
            },
            {
                $Type : 'UI.DataField',
                Label : 'operatingTime',
                Value : operatingTime,
            },
            {
                $Type : 'UI.DataField',
                Label : 'closingTime',
                Value : closingTime,
            },
            {
                $Type : 'UI.DataField',
                Label : 'shelterType',
                Value : shelterType,
            },
            {
                $Type : 'UI.DataField',
                Label : 'licenseNumber',
                Value : licenseNumber,
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

