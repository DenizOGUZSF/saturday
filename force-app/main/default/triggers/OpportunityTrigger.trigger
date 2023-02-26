trigger OpportunityTrigger on Opportunity(before update){
    OpportunityTriggerHandler.OOpMethod(trigger.new ,trigger.oldMap);

}







/* trigger OpportunityTrigger on opportunity (before update, after update){
    if (trigger.isUpdate) {
        if (trigger.isBefore) {
            for (opportunity oldOpp : trigger.old) {
                system.debug(oldOpp.Name + ' ' + oldOpp.amount);
            }
        }
        if (trigger.isAfter) {
            for (opportunity newOpp : trigger.new) {
                system.debug(newOpp.Name + ' ' + newOpp.amount);
            }
        }
    }


    //ALTERNATIVE WAY 
    Map<Id, Opportunity> oppOldRecsMap = Trigger.oldMap;
        for(Opportunity opp : Trigger.new){
            System.debug('New Opportunity Name  ' + opp.Name);
            System.debug('Old Opportunity Name  ' + oppOldRecsMap.get(opp.Id).Name);
            System.debug('New Opportunity Amount ' + opp.Amount);
            System.debug('Old Opportunity Amount ' +  oppOldRecsMap.get(opp.Id).Amount);

        }
    
} */










/* trigger OpportunityTrigger on Opportunity (after insert) {

    if(trigger.isAfter && trigger.isInsert)
    for (Opportunity eachOpp : trigger.new) {
        System.debug('Opportunity name is '+eachOpp.name+' stageName is '+eachOpp.StageName+' and ADescription is '+eachOpp.Description);

    }

} */






/* trigger OpportunityTrigger on Opportunity (after insert) {

    if(trigger.isAfter && trigger.isInsert)
    for (Opportunity eachOpp : trigger.new) {
       
        System.debug('Opportunity name is '+eachOpp.name+' ClodeDate is '+eachOpp.CloseDate+' and Amount is '+eachOpp.Amount);
        System.debug(trigger.new.size());

    }

} */