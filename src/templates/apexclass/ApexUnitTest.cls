/**
 * @author      WDCi ()
 * @date        Aug 2023
 * @group       Test
 * @description Test class for 
 * @changehistory
 * 
 */
@isTest
public with sharing class <%= apiName %> {

	@TestSetup
    static void makeData(){
        
		REDU_TestData_FACTORY testFactory = new REDU_TestData_FACTORY();
        testFactory.setupDefaultSettings();
		
		testFactory.initMasterData(null);
    }
	
    @isTest
    static void testForAdmin() {
	
        // TO DO: implement unit test run as admin
		System.runAs(adminUser){
		
		}
		
    }
	
	@isTest
    static void testForStudent() {
		
        // TO DO: implement unit test run as student
		System.runAs(studentUsers[0]){
		
		}
		
    }
	
	@isTest
    static void testForFaculty() {
		
        // TO DO: implement unit test run as faculty
		System.runAs(facultyUsers[0]){
		
		}
		
    }
	
}