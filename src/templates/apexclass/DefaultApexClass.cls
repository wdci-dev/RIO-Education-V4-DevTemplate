/**
 * @author      WDCi ()
 * @date        Jan 2024
 * @group       
 * @description 
 * @changehistory
 * ISS-XXXXXX dd-mm-yyyy name - description
 */
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