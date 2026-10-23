using { db as my } from '../db/schema';

annotate CatalogService.UsersSrv with @odata.draft.enabled;
annotate CatalogService.AnimalsSrv with @odata.draft.enabled;
annotate CatalogService.SheltersSrv with @odata.draft.enabled;
annotate CatalogService.AdoptionApplicationsSrv with @odata.draft.enabled;
annotate CatalogService.AdoptionsSrv with @odata.draft.enabled;
annotate CatalogService.HealthRecordsSrv with @odata.draft.enabled;

using {
    db.common.GUID,
    db.common.Name,
    db.common.Address,
    db.common.Email,
    db.common.PhoneNumber,
    db.common.Website,
    db.common.PostalCode,
    db.common.City,
    db.common.State,
    db.common.Description,
    db.common.Weight,

    db.common.UserRole,
    db.common.UserStatus,
    db.common.AnimalStatus,
    db.common.VaccinationStatus,
    db.common.ApplicationStatus,
    db.common.AdoptionStatus,
    db.common.HealthStatus,
    db.common.InspectionType,
    db.common.InspectionResult,
    db.common.ShelterType,
    db.common.YesNo
} from '../db/common';

service CatalogService {

    entity UsersSrv                 as projection on my.Users;
    entity SheltersSrv              as projection on my.Shelters;
    entity AnimalsSrv               as projection on my.Animals;
    
    entity AdoptionsSrv             as projection on my.Adoptions;
    entity HealthRecordsSrv         as projection on my.HealthRecords;
    entity InspectionsSrv           as projection on my.Inspections;
    

    @readonly
    entity DashboardStats {
    key ID                : String;

    totalAnimals          : Integer;
    availableAnimals      : Integer;
    totalApplications     : Integer;
    approvedApplications  : Integer;
    pendingApplications   : Integer;
    totalShelters         : Integer;
}

@readonly
entity UserDashboardStats {
    key ID                  : String;

    myApplications          : Integer;
    pendingApplications     : Integer;
    approvedApplications    : Integer;
    
}

    @readonly
entity ApplicationStatusSummary {
    key status : String;
    count      : Integer;
}


@readonly
entity AdoptionTrend {
    key month  : String;
    count      : Integer;
}

@readonly
entity ShelterOccupancy {
    key shelterName      : String;

    capacity             : Integer;
    currentOccupancy     : Integer;
    occupancyPercentage  : Decimal(5,2);
}

@readonly
entity AnimalCategorySummary {
    key species : String;
    count       : Integer;
}

    entity AdoptionApplicationsSrv as projection on my.AdoptionApplications
    actions {

        action approveApplication() returns String;

        action rejectApplication() returns String;

    };
    

    action createUser(
        firstName    : Name,
        lastName     : Name,
        email        : Email,
        phoneNumber  : PhoneNumber,
        address      : Address,
        city         : City,
        state        : State,
        postalCode   : PostalCode,
        role         : UserRole,
        status       : UserStatus
    ) returns UsersSrv;

    action deleteUser(
        ID : GUID
    )returns String;

    action createShelter(
        shelterName       : Name,
        shelterCode       : String(20),
        addressLine1      : Address,
        addressLine2      : Address,
        city              : City,
        state             : State,
        postalCode        : PostalCode,
        country           : String(50),
        contactNumber     : PhoneNumber,
        email             : Email,
        website           : Website,
        capacity          : Integer,
        currentOccupancy  : Integer,
        operatingTime     : Time,
        closingTime       : Time,
        shelterType       : ShelterType,
        licenseNumber     : String(50)
    ) returns SheltersSrv;
    
    action deleteShelter(
        ID : GUID
    )returns String;


    action createAnimal(
        shelterID           : GUID,
        name                : Name,
        species             : String(100),
        breed               : String(100),
        gender              : String(20),
        age                 : Integer,
        arrivalDate         : Date,
        animalStatus        : AnimalStatus,
        vaccinationStatus   : VaccinationStatus,
        spayedOrNeutered    : YesNo,
        photo               : String(500),
        description         : Description
    ) returns AnimalsSrv;

    action deleteAnimal(
        ID : GUID
    )returns String;


    action createApplication(
        animalID            : GUID,
        applicantID         : GUID,
        applicationDate     : Date,
        reasonForAdoption   : Description,
        housingDetails      : Description,
        petExperience       : Description,
        status              : ApplicationStatus,
        reviewedByID        : GUID,
        staffRemarks        : Description
    ) returns AdoptionApplicationsSrv;

    action deleteApplication(
        ID : GUID
    )returns String;


    action createAdoption(
        applicationID       : GUID,
        animalID            : GUID,
        adoptionDate        : Date,
        status              : AdoptionStatus,
        completedByID       : GUID,
        remarks             : Description
    ) returns AdoptionsSrv;

    action deleteAdoption(
        ID : GUID
    )returns String;


    action createHealthRecord(
        animalID            : GUID,
        checkupDate         : Date,
        healthStatus        : HealthStatus,
        diagnosis           : Description,
        treatment           : Description,
        medication          : Description,
        veterinarianName    : Name,
        weight              : Weight,
        nextCheckupDate     : Date,
        remarks             : Description,
        medicalDocument     : String(500)
    ) returns HealthRecordsSrv;

    action deleteHealthRecord(
        ID : GUID
    )returns String;


    action createInspection(
        adoptionID          : GUID,
        inspectorID         : GUID,
        inspectionDate      : Date,
        inspectionType      : InspectionType,
        existingPetDetails  : Description,
        result              : InspectionResult,
        remarks             : Description,
        inspectionDocument  : String(500)
    ) returns InspectionsSrv;

    action deleteInspection(
        ID : GUID
    )returns String;

    
}