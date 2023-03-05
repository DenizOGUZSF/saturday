/* trigger CaseTrigger on Case (after insert){
    CaseTriggerHandler.caseCreated(trigger.new);
}
 */


 /* Show the message as 'Case origin is changed for [Case Number]' whenever case origin
field value is changed. */
/* trigger CaseTrigger on Case (before update){
    if (trigger.isBefore && trigger.isUpdate) {
        CaseTriggerHandler.caseMethod(trigger.new, trigger.old, trigger.newMap, trigger.oldMap);
    }
} */






trigger CaseTrigger on Case (before insert){
    CaseTriggerHandler.SameRecordUpdateCase(trigger.new);
}







/* trigger CaseTrigger on Case (after insert) {
    if(trigger.isAfter && trigger.isInsert)
    for (case c1 : trigger.new) {
       System.debug('Case# ' + c1.CaseNumber + 'ID ' + c1.Id + 'Created Date ' + c1.CreatedDate);
    }
}
 */





/* trigger CaseTrigger on Case (before insert, after insert, before update, after update) {

    System.debug('We are in the triggers');
    if(Trigger.isBefore){
        System.debug('We are in the before triggers');
        if(Trigger.isInsert){
            System.debug('We are in the before-Insert triggers');
        }
        if(Trigger.isUpdate){
            System.debug('"We are in the before-Update triggers');
        }
    }

    if(Trigger.isAfter){
        System.debug('We are in the after triggers');
        if(Trigger.isInsert){
            System.debug('We are in the after-Insert triggers');
        }
        if(Trigger.isUpdate){
            System.debug('We are in the after-Update triggers');   
        }
    }

} */