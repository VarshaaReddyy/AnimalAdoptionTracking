const cds = require("@sap/cds");

module.exports = cds.service.impl(async function () {

    const {
        AnimalsSrv,
        AdoptionApplicationsSrv,
        AdoptionsSrv,
        HealthRecordsSrv,
        SheltersSrv,
        UsersSrv
    } = this.entities;


    // ==========================================================
    // APPLY FOR ADOPTION
    // ==========================================================

    this.on("applyForAdoption", async (req) => {

        try {

            const animalID = req.params[0].ID;

            const {
                reasonForAdoption,
                housingDetails,
                petExperience
            } = req.data;


            // --------------------------------------------------
            // SAMPLE USER ID
            // Later this will come from authentication.
            // --------------------------------------------------

            const applicantID =
                "21390C66-6925-49F2-BDD5-AF0838C335A5";


            // --------------------------------------------------
            // Check animal exists
            // --------------------------------------------------

            const animal = await SELECT.one
                .from(AnimalsSrv)
                .where({
                    ID: animalID
                });


            if (!animal) {
                return req.error(
                    404,
                    "Animal not found"
                );
            }


            // --------------------------------------------------
            // Check animal availability
            // --------------------------------------------------

            if (animal.animalStatus !== "AVAILABLE") {

                return req.error(
                    400,
                    "This animal is not available for adoption."
                );

            }


            // --------------------------------------------------
            // Prevent duplicate active application
            // --------------------------------------------------

            const existingApplication =
                await SELECT.one
                    .from(AdoptionApplicationsSrv)
                    .where({
                        animal_ID: animalID,
                        applicant_ID: applicantID
                    });


            if (existingApplication) {

                return req.error(
                    400,
                    "You have already submitted an application for this animal."
                );

            }


            // --------------------------------------------------
            // Create application
            // --------------------------------------------------

            const applicationData = {

                animal_ID: animalID,

                applicant_ID: applicantID,

                applicationDate: new Date(),

                reasonForAdoption:
                    reasonForAdoption,

                housingDetails:
                    housingDetails,

                petExperience:
                    petExperience,

                status: "UNDER_REVIEW",

                createdAt: new Date(),

                modifiedAt: new Date()
            };


            await INSERT
                .into(AdoptionApplicationsSrv)
                .entries(applicationData);


            // --------------------------------------------------
            // Return created application
            // --------------------------------------------------

            const createdApplication =
                await SELECT.one
                    .from(AdoptionApplicationsSrv)
                    .where({
                        animal_ID: animalID,
                        applicant_ID: applicantID
                    })
                    .orderBy({
                        createdAt: "desc"
                    });


            return createdApplication;


        } catch (error) {

            console.error(
                "Apply for Adoption Error:",
                error
            );

            return req.error(
                500,
                error.message
            );
        }

    });


    // ==========================================================
    // USER DASHBOARD STATISTICS
    // ==========================================================

    this.on(
        "READ",
        "UserDashboardStats",
        async () => {

            const USER_ID =
                "21390C66-6925-49F2-BDD5-AF0838C335A5";


            const myApplications =
                await SELECT.one
                    .from(AdoptionApplicationsSrv)
                    .where({
                        applicant_ID: USER_ID
                    })
                    .columns`count(*) as count`;


            const pendingApplications =
                await SELECT.one
                    .from(AdoptionApplicationsSrv)
                    .where({
                        applicant_ID: USER_ID,
                        status: "UNDER_REVIEW"
                    })
                    .columns`count(*) as count`;


            const approvedApplications =
                await SELECT.one
                    .from(AdoptionApplicationsSrv)
                    .where({
                        applicant_ID: USER_ID,
                        status: "APPROVED"
                    })
                    .columns`count(*) as count`;


            return [{

                ID: "USER_DASHBOARD",

                myApplications:
                    Number(myApplications.count || 0),

                pendingApplications:
                    Number(pendingApplications.count || 0),

                approvedApplications:
                    Number(approvedApplications.count || 0)

            }];

        }
    );

});