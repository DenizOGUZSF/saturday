/* trigger CustomerTrigger on Customer2__c (before delete) {
    CustomerTriggerHandler.method2(trigger.old);

} */




trigger CustomerTrigger on Customer2__c (after insert) {
    CustomerTriggerHandler.method1(trigger.new);

}