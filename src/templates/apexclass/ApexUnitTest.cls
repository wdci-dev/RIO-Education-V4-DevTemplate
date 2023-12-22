/**
 * @author      WDCi ()
 * @date        Nov 2023
 * @group       Test
 * @description Test class for 
 * @changehistory
 * ISS-XXXXXX dd-mm-yyyy name - description
 */
@IsTest
public inherited sharing class <%= apiName %> {

    /**
     * @description Initialise test environment
     */
    static REDU_TestData_FACTORY testFactory = new REDU_TestData_FACTORY();
	static User ADMIN_USER = testFactory.getReduAdminUser();
	static User FACULTY_USER = testFactory.getReduFacultyUser();

    /**
     * @description Default method to setup required data for automated test
     */
	@TestSetup
    static void makeData(){
        
        testFactory.setupDefaultSettings();

		System.runAs(ADMIN_USER) {
        	testFactory.initMasterData(null);
            testFactory.initOfferingData(null);
            testFactory.initStudentData(null, true);
		}
    }
	
    /**
     * @description Test as admin for xxx
     */
    @IsTest
    static void testForAdmin() {
	
        // TO DO: implement unit test run as admin
		System.runAs(ADMIN_USER){
		
		}
		
    }
	
    /**
     * @description Test as student for xxx
     */
	@IsTest
    static void testForStudent() {
        
		User studentUser = [SELECT Id, 
            ContactId, 
            ProfileId 
            FROM User 
            WHERE ProfileId = : REDU_AppSetting_UTIL.getStudentProfileId()
            LIMIT 1
        ];

        List<Contact> studentContacts = [SELECT Id, 
            reduivy__Sample_Record_Code__c 
            FROM Contact 
            WHERE Id =: studentUser.ContactId
        ];

        // TO DO: implement unit test run as student
		System.runAs(studentUser){
		
		}
		
    }
	
    /**
     * @description Test as faculty for xxx
     */
	@IsTest
    static void testForFaculty() {
		
        // TO DO: implement unit test run as faculty
		System.runAs(FACULTY_USER){
		
		}
		
    }
	
}