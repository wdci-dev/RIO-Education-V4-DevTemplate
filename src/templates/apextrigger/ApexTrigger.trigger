/**
 * @author      WDCi ()
 * @date        Aug 2023
 * @group       Trigger
 * @description Trigger for <%= sobject %>
 * @changehistory
 * 
 */
trigger <%= triggername %> on <%= sobject %> (before insert, before update, before delete, 
    after insert, after update, after delete, after undelete
) {    
    REDU_TriggerManager.execute(Trigger.operationType, Trigger.new, Trigger.old, Schema.SobjectType.<%= sobject %>);
}