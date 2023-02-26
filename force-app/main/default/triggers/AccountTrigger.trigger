/* trigger AccountTrigger on Account (Before update) {

    AccountTriggerHandler.Method3(trigger.new, Trigger.newMap, trigger.oldMap);

} */






trigger AccountTrigger on Account (after update) {

    AccountTriggerHandler.Method2(Trigger.New);

}



/* trigger AccountTrigger on Account (After insert) {

    AccountTriggerHandler.Method1(Trigger.New);

} */