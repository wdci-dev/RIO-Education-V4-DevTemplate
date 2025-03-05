/**
 * @author      WDCi ()
 * @date        Jan 2024
 * @group       
 * @description 
 * @changehistory
 * ISS-XXXXXX dd-mm-yyyy name - description
 */

/** Please note that the template contains 2 parts. Please remove the irrelevant parts. **/
/** Part 1: Template for trigger EXE **/
/** Part 2: Template for lightning web component controller **/

/*---------------------- Part 2 -----------------------*/
public with sharing class <%= apiName %> {

    /**
     * @description The description
     * @param param The description
     * @return REDU_LightningResponse
     */
    @AuraEnabled(cacheable=true)
    public static REDU_LightningResponse getMethodName(String param){

        try {
            //your logic here

            return new REDU_LightningResponse(true, REDU_LightningResponse.SUCCESS, JSON.serialize(responseData));

        } catch (QueryException qex) {
            String errorMsg = REDU_ObjectSecurity_UTIL.handleQueryException(qex, false);
            throw REDU_Exception_UTIL.auraException(errorMsg);

        } catch (Exception exp) {
            throw REDU_Exception_UTIL.auraException(exp.getMessage());
        }
    }

    /**
     * @description The description
     * @param param The description
     * @return REDU_LightningResponse
     */
    @AuraEnabled
    public static REDU_LightningResponse saveMethodName(String param){

        Savepoint sp = Database.setSavePoint();

        try {
            //your logic here

            return new REDU_LightningResponse(true, REDU_LightningResponse.SUCCESS, JSON.serialize(responseData));

        } catch (QueryException qex) {
            Database.rollback(sp);

            String errorMsg = REDU_ObjectSecurity_UTIL.handleQueryException(qex, false);
            throw REDU_Exception_UTIL.auraException(errorMsg);

        } catch (Exception exp) {
            Database.rollback(sp);
            
            throw REDU_Exception_UTIL.auraException(exp.getMessage());
        }
    }
}

/*---------------------- Part 1 -----------------------*/
public inherited sharing class <%= apiName %> extends REDU_TriggerExecutable {
    
	/**
     * @description BeforeInsert
     * @param operationType Trigger operation type enum
     * @param newList Trigger new list
     * @param newMap Trigger new map
     * @param oldList Trigger old list
     * @param oldMap Trigger old map
     * @param sobjResult DescribeSObjectResult for the trigger object
     */
    public override void executeBeforeInsert(System.TriggerOperation operationType, List<SObject> newList, Map<Id, SObject> newMap, List<SObject> oldList, Map<Id, SObject> oldMap, Schema.DescribeSObjectResult sobjResult) {
        
        //TODO change the permission
        if (REDU_Permission_UTIL.hasPermission(REDU_Permission_UTIL.UserPermission.REDUUSER)) {

            //TODO change the SObject
            List<SObject> workingList = new List<SObject>();
            for (SObject objNew : (List<SObject>) newList) {


                workingList.add(objNew);
            }

            doSomething(workingList);
        }
    }

    /**
     * @description BeforeUpdate
     * @param operationType Trigger operation type enum
     * @param newList Trigger new list
     * @param newMap Trigger new map
     * @param oldList Trigger old list
     * @param oldMap Trigger old map
     * @param sobjResult DescribeSObjectResult for the trigger object
     */
    public override void executeBeforeUpdate(System.TriggerOperation operationType, List<SObject> newList, Map<Id, SObject> newMap, List<SObject> oldList, Map<Id, SObject> oldMap, Schema.DescribeSObjectResult sobjResult) {

        //TODO change the permission
        if (REDU_Permission_UTIL.hasPermission(REDU_Permission_UTIL.UserPermission.REDUUSER)) {

            //TODO change the SObject
            List<SObject> workingList = new List<SObject>();
            for (SObject objNew : (List<SObject>) newList) {
                SObject objOld = (SObject) oldMap.get(objNew.Id);

                if (objNew.reduivy__Field__c != objOld.reduivy__Field__c) {
                    workingList.add(objNew);
                }
            }

            doSomething(workingList);
        }
    }

    /**
     * @description BeforeDelete
     * @param operationType Trigger operation type enum
     * @param newList Trigger new list
     * @param newMap Trigger new map
     * @param oldList Trigger old list
     * @param oldMap Trigger old map
     * @param sobjResult DescribeSObjectResult for the trigger object
     */
    public override void executeBeforeDelete(System.TriggerOperation operationType, List<SObject> newList, Map<Id, SObject> newMap, List<SObject> oldList, Map<Id, SObject> oldMap, Schema.DescribeSObjectResult sobjResult) {

        //TODO change the permission
        if (REDU_Permission_UTIL.hasPermission(REDU_Permission_UTIL.UserPermission.REDUUSER)) {

            //TODO change the SObject
            List<SObject> workingList = new List<SObject>();
            for (SObject objOld : (List<SObject>) oldList) {


                workingList.add(objOld);
            }

            doSomething(workingList);
        }
    }

    /**
     * @description AfterInsert
     * @param operationType Trigger operation type enum
     * @param newList Trigger new list
     * @param newMap Trigger new map
     * @param oldList Trigger old list
     * @param oldMap Trigger old map
     * @param sobjResult DescribeSObjectResult for the trigger object
     */
    public override void executeAfterInsert(System.TriggerOperation operationType, List<SObject> newList, Map<Id, SObject> newMap, List<SObject> oldList, Map<Id, SObject> oldMap, Schema.DescribeSObjectResult sobjResult) {

        //TODO change the permission
        if (REDU_Permission_UTIL.hasPermission(REDU_Permission_UTIL.UserPermission.REDUUSER)) {

            //TODO change the SObject
            List<SObject> workingList = new List<SObject>();
            for (SObject objNew : (List<SObject>) newList) {


                workingList.add(objNew);
            }

            doSomething(workingList);
        }
    }

    /**
     * @description AfterUpdate
     * @param operationType Trigger operation type enum
     * @param newList Trigger new list
     * @param newMap Trigger new map
     * @param oldList Trigger old list
     * @param oldMap Trigger old map
     * @param sobjResult DescribeSObjectResult for the trigger object
     */
    public override void executeAfterUpdate(System.TriggerOperation operationType, List<SObject> newList, Map<Id, SObject> newMap, List<SObject> oldList, Map<Id, SObject> oldMap, Schema.DescribeSObjectResult sobjResult) {

        //TODO change the permission
        if (REDU_Permission_UTIL.hasPermission(REDU_Permission_UTIL.UserPermission.REDUUSER)) {

            //TODO change the SObject
            List<SObject> workingList = new List<SObject>();
            for (SObject objNew : (List<SObject>) newList) {
                SObject objOld = (SObject) oldMap.get(objNew.Id);

                if (objNew.reduivy__Field__c != objOld.reduivy__Field__c) {
                    workingList.add(objNew);
                }
            }

            doSomething(workingList);
        }
    }

    /**
     * @description AfterDelete
     * @param operationType Trigger operation type enum
     * @param newList Trigger new list
     * @param newMap Trigger new map
     * @param oldList Trigger old list
     * @param oldMap Trigger old map
     * @param sobjResult DescribeSObjectResult for the trigger object
     */
    public override void executeAfterDelete(System.TriggerOperation operationType, List<SObject> newList, Map<Id, SObject> newMap, List<SObject> oldList, Map<Id, SObject> oldMap, Schema.DescribeSObjectResult sobjResult) {

        //TODO change the permission
        if (REDU_Permission_UTIL.hasPermission(REDU_Permission_UTIL.UserPermission.REDUUSER)) {

            //TODO change the SObject
            List<SObject> workingList = new List<SObject>();
            for (SObject objOld : (List<SObject>) oldList) {


                workingList.add(objOld);
            }

            doSomething(workingList);
        }
    }

    /**
     * @description AfterUndelete
     * @param operationType Trigger operation type enum
     * @param newList Trigger new list
     * @param newMap Trigger new map
     * @param oldList Trigger old list
     * @param oldMap Trigger old map
     * @param sobjResult DescribeSObjectResult for the trigger object
     */
    public override void executeAfterUndelete(System.TriggerOperation operationType, List<SObject> newList, Map<Id, SObject> newMap, List<SObject> oldList, Map<Id, SObject> oldMap, Schema.DescribeSObjectResult sobjResult) {

        //TODO change the permission
        if (REDU_Permission_UTIL.hasPermission(REDU_Permission_UTIL.UserPermission.REDUUSER)) {

            //TODO change the SObject
            List<SObject> workingList = new List<SObject>();
            for (SObject objNew : (List<SObject>) newList) {


                workingList.add(objNew);
            }

            doSomething(workingList);
        }
    }
	
    /**
     * @description
     * @param
     * @return void
     */
    private void doSomething(List<SObject> objList) {
        //TODO write your logic here
    }
}