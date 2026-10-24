using CatalogService as service from '../../srv/cat-service';
using UI from '@sap/cds/common';

annotate service.AnimalsSrv with @(
    UI.Identification : [
        {
            $Type : 'UI.DataFieldForAction',
            Action : 'CatalogService.applyForAdoption',
            Label : 'Apply for Adoption'
        }
    ]
    
);

