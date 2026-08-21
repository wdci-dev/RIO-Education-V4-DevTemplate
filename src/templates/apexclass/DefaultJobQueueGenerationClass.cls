/**
 * @author      WDCi ()
 * @date        Jan 2024
 * @group       
 * @description 
 * @changehistory
 * ISS-XXXXXX dd-mm-yyyy name - description
 */

public with sharing class JQH_<%= operationName %>_GENERATOR implements JQH_JobGenerator {
    
    List<Id> recordIds;
    Map<String, Object> params;
    reduivy__Job_Queue_Config__mdt jobConfig;

    public JQH_<%= operationName %>_GENERATOR () {

    }

    /**
     * @description Set record ids to be queried
     * @param recordIds List of record id
     * @return void
     */
    public void setRecordIds(List<Id> recordIds) {
        this.recordIds = recordIds;
    }

    /**
     * @description Set parameters for the generator
     * @param params Map of params in key value pair
     * @return void
     */
    public void setParams(Map<String, Object> params) {
        this.params = params;
    }

    /**
     * @description Set job config for the generator
     * @param params Map of params in key value pair
     * @return void
     */
    public void setJobConfig(reduivy__Job_Queue_Config__mdt jobConfig) {
        this.jobConfig = jobConfig;
    }

    /**
     * @description Return generator class name
     * @return String
     */
    public String getClassName() {
        return 'reduivy.JQH_<%= operationName %>_GENERATOR';
    }

    /**
     * @description Return generator class instance details
     * @return String
     */
    public String getClassInstanceDetails() {
        return String.valueOf(this);
    }

    /**
     * @description Execute
     */
    public List<JQH_JobManager.GeneratorResult> execute() {
        //init the results list
        List<JQH_JobManager.GeneratorResult> results = new List<JQH_JobManager.GeneratorResult>();

        //get the job operation context as we need it to invoke the job handler later
        String jobOperationContext = this.params.containsKey(JQH_JobQueue_OBJ.PARAM_JOB_OPERATION_CONTEXT) ? String.valueOf(this.params.get(JQH_JobQueue_OBJ.PARAM_JOB_OPERATION_CONTEXT)) : null;
        
        //build logic here to get the child records required for job handler based on the paginated parent records
        

        //return the generator result back to JQH_JobGenerator_QUEUE
        if(!childRecordsByParent.isEmpty()) {
            for(reduivy__Parent__c parent : parentRecords) {
                JQH_JobManager.GeneratorResult result = new JQH_JobManager.GeneratorResult();
                
                result.params.put(JQH_JobQueue_OBJ.PARAM_SOURCE_RECORD_ID, parent.Id);
                result.params.put(JQH_JobQueue_OBJ.PARAM_SOURCE_RECORD_NAME, parent.Name);
                if (String.isNotBlank(jobOperationContext)) {
                    result.params.put(JQH_JobQueue_OBJ.PARAM_JOB_OPERATION_CONTEXT, jobOperationContext);
                }
                
                //additional params for your handler
                result.recordIds = childRecordsByParent.containsKey(parent.Id) ? childRecordsByParent.get(parent.Id) : new List<Id>();
                result.params.put('anyparam', anyparam);
                
                results.add(result);   
            }
        }

        return results;
    }

}