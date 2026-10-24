using { db as my } from '../db/schema';

using {
    db.common.Description
} from '../db/common';


service UserCatalogService {

    // ==========================================================
    // ANIMALS
    // User can READ animals and use Apply for Adoption.
    // User cannot create, edit, or delete animals.
    // ==========================================================

    @readonly
    entity AnimalsSrv as projection on my.Animals
    actions {

        action applyForAdoption(
            reasonForAdoption : Description,
            housingDetails    : Description,
            petExperience     : Description
        ) returns AdoptionApplicationsSrv;

    };


    // ==========================================================
    // APPLICATIONS
    // User can create an application.
    // Admin will see the same application through CatalogService.
    // ==========================================================

    entity AdoptionApplicationsSrv
        as projection on my.AdoptionApplications;


    // ==========================================================
    // ADOPTIONS
    // User can only READ adoption information.
    // Admin manages adoptions.
    // ==========================================================

    @readonly
    entity AdoptionsSrv as projection on my.Adoptions;


    // ==========================================================
    // HEALTH RECORDS
    // User can only READ.
    // ==========================================================

    @readonly
    entity HealthRecordsSrv as projection on my.HealthRecords;


    // ==========================================================
    // SHELTERS
    // User can only READ shelter information.
    // ==========================================================

    @readonly
    entity SheltersSrv as projection on my.Shelters;


    // ==========================================================
    // USERS / PROFILE
    // Keep writable for now because we will later restrict
    // this to the logged-in user's own profile.
    // ==========================================================

    entity UsersSrv as projection on my.Users;


    // ==========================================================
    // USER DASHBOARD
    // ==========================================================

    @readonly
    entity UserDashboardStats {
        key ID                  : String;

        myApplications         : Integer;
        pendingApplications    : Integer;
        approvedApplications   : Integer;
    }

}