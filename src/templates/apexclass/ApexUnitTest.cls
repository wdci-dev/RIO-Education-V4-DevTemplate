/**
 * @author      WDCi ()
 * @date        Nov 2023
 * @group       Test
 * @description Test class for 
 * @changehistory
 * ISS-XXXXXX dd-mm-yyyy name - description
 */
@isTest
public inherited sharing class <%= apiName %> {

    /**
     * @description Default method to setup required data for automated test
     */
	@TestSetup
    static void makeData(){
        
		REDU_TestData_FACTORY testFactory = new REDU_TestData_FACTORY();
        testFactory.setupDefaultSettings();
		
		testFactory.initMasterData(null);
    }
	
    /**
     * @description Test as admin for xxx
     */
    @isTest
    static void testForAdmin() {
	
        // TO DO: implement unit test run as admin
		System.runAs(adminUser){
		
		}
		
    }
	
    /**
     * @description Test as student for xxx
     */
	@isTest
    static void testForStudent() {
		
        // TO DO: implement unit test run as student
		System.runAs(studentUsers[0]){
		
		}
		
    }
	
    /**
     * @description Test as faculty for xxx
     */
	@isTest
    static void testForFaculty() {
		
        // TO DO: implement unit test run as faculty
		System.runAs(facultyUsers[0]){
		
		}
		
    }
	
}