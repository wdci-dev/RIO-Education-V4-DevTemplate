/**
 * @author      WDCi ()
 * @date        Jan 2024
 * @group       
 * @description 
 * @changehistory
 * ISS-XXXXXX dd-mm-yyyy name - description
 */

public with sharing class JQH_<%= operationName %>_HANDLER implements JQH_JobHandler {
    
    /**
     * @description List of record ids
     */
    private List<Id> recordIds;

    /**
     * @description Map of params
     */
    private Map<String, Object> params;

    /**
     * @description Default constructor
     */
    public JQH_<%= operationName %>_HANDLER() {
        this.recordIds = new List<Id>();
        this.params = new Map<String, Object>();
    }

    /**
     * @description Return generator class name
     * @return String
     */
    public String getClassName() {
        return 'reduivy.JQH_<%= operationName %>_HANDLER';
    }

    /**
     * @description Return handler class instance details
     * @return String
     */
    public String getClassInstanceDetails() {
        return String.valueOf(this);
    }

    /**
     * @description Set record ids to be processed
     * @param recordIds List of record id
     * @return void
     */
    public void setRecordIds(List<Id> recordIds) {
        this.recordIds = recordIds;
    }

    /**
     * @description Set parameters for the handler
     * @param params Map of params in key value pair
     * @return void
     */
    public void setParams(Map<String, Object> params) {
        this.params = params;
    }

    //init the result monitor
    JQH_JobManager.HandlerResult resultMonitor = new JQH_JobManager.HandlerResult();

    /**
     * @description Operation description
     * @return JQH_JobManager.HandlerResult
     */
    public JQH_JobManager.HandlerResult execute() {
        
        //init the savepoint for rollback
        SavePoint sp = Database.setSavepoint();

        try {
            if (!this.recordIds.isEmpty()) {
                //build logic here to process the records
                

                //Process the records that need updating
                if(!recordsToUpdate.isEmpty()) {
                    //Can't use REDU_Database_UTIL to add errors because these aren't trigger records
                    List<Database.SaveResult> updateResults = Database.update(recordsToUpdate, false, AccessLevel.USER_MODE);
            
                    //Track success/failure
                    Integer counter = 0;
                    for (Database.SaveResult sr : updateResults){
                        if (!sr.isSuccess()) {
                            resultMonitor.addFailResult(recordsToUpdate.get(counter).Id, REDU_Database_UTIL.cleanseErrorMessage(sr.getErrors()[0].getMessage()));
                        }  else {
                            //add the success to the result monitor
                            resultMonitor.addSuccessResult(recordsToUpdate.get(counter).Id, Label.Success);
                        }

                        counter ++;
                    }
                }
            }
        } catch (Exception exp) {
            //rollback if there is an exception
            Database.rollback(sp);

            //add the error to the result monitor
            for (Id recordId : recordIds) {
                String errorMsg = String.format(Label.All_Changes_Have_Been_Rolled_Back_Due_To_Error, new List<String>{REDU_Database_UTIL.cleanseErrorMessage(exp.getMessage()), exp.getStackTraceString()});
                resultMonitor.addFailResult(recordId, errorMsg);
            }
        }

        // return the result monitor back to JQH_JobWorker_QUEUE
        return resultMonitor;
    }
}