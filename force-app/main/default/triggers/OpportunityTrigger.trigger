trigger OpportunityTrigger on Opportunity(after update, after insert){
    //ASSIGNEMNET SHET WEEK 7 PART 3 - A

    if(Trigger.isAfter&& Trigger.isInsert){
        //OpportunityTriggerHandler.future1(trigger.newMap.keySet());

        //OR id param pass etmek icin
        set<id> ac = new set<id>();
        if(trigger.isAfter) {
            if(trigger.isInsert) {
                for (Opportunity eachopp : trigger.new) {
                    ac.add(eachopp.AccountId);
                }
            }
            
        }
        OpportunityTriggerHandler.future1(ac);

    }

}





/* Print the new and old field values for (Opportunity Name and Amount) fields whenever
an opportunity is updated. */
/* trigger OpportunityTrigger on Opportunity(before update){
    OpportunityTriggerHandler.OOpMethod(trigger.new ,trigger.oldMap);

} */









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









/* When the StageName of an opportunity is updated, then print the value of description
field and opportunity name */
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