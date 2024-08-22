/**
 * @author      WDCi ()
 * @date        Sept 2024
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

    /**
     * @description Default method to setup required data for automated test
     */
	@TestSetup
    static void makeData(){
        
        // Create settings
        testFactory.setupDefaultSettings();

        // Create test data
		System.runAs(ADMIN_USER) {
            Test.startTest();
        	
            //please adjust the data according to your needs
            testFactory.initSampleData(null, null, null, null, true, true);
            
            Test.stopTest();
		}

    }
	
    /**
     * @description Test as admin for xxx
     */
    @IsTest
    static void testForAdmin() {

        //get the student record if you need one for testing using student.ContactId
        User studentUser = testFactory.getStudentUser();

        Test.startTest();
        
        // TO DO: implement unit test run as admin
		System.runAs(ADMIN_USER){
		
		}

        Test.stopTest();
		
    }
	
    /**
     * @description Test as student for xxx
     */
	@IsTest
    static void testForStudent() {

        //get the student record if you need one for testing using student.ContactId
		User studentUser = testFactory.getStudentUser();

        Test.startTest();

        // TO DO: implement unit test run as student
		System.runAs(studentUser){
		
		}

        Test.stopTest();
		
    }
	
    /**
     * @description Test as faculty for xxx
     */
	@IsTest
    static void testForFaculty() {
		
        //get the faculty with allocation for testing, if you don't need the one with allocation, you can simplify the code to use testFactory.getReduFacultyUser()
        User facultyUser = testFactory.getAllocatedFacultyUser();
        if (facultyUser == null) {
            facultyUser = testFactory.getReduFacultyUser();
        }

        //get the student record if you need one for testing using student.ContactId
        User studentUser = testFactory.getStudentUser();
        
        Test.startTest();

        // TO DO: implement unit test run as faculty
		System.runAs(facultyUser){
		
		}

        Test.stopTest();
		
    }
	
}