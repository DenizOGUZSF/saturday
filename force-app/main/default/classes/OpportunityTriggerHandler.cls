public with sharing class OpportunityTriggerHandler {

    public static void OOpMethod(List<Opportunity> newOppList,
    Map<Id,Opportunity> oldOppMap) {
for (Opportunity Op : newOppList) {
if (op.StageName!= oldOppMap.get(op.id).StageName) {
System.debug(op.Description +' '+ op.Name);
}

}                          



}

    
}