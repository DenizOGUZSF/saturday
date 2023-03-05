public with sharing class OpportunityTriggerHandler {

   /*  When the StageName of an opportunity is updated, then print the value of description
    field and opportunity name
    */
    public static void OOpMethod(List<Opportunity> newOppList,
    Map<Id,Opportunity> oldOppMap) {
for (Opportunity Op : newOppList) {
if (op.StageName!= oldOppMap.get(op.id).StageName) {
System.debug(op.Description +' '+ op.Name);
}

}                          

}


//ASSIGNEMNET SHET WEEK 7 PART 3 - A

@future

    public static void future1(set<id> accId){
        /* List<Account> acc = [select id, Highest_Amount_Opportunity_Name__c,(select id, Name, Amount from Opportunities ORDER BY amount DESC LIMIT 1) from account where id in: accId];
      for (account eachacc : acc) {
        eachacc.Highest_Amount_Opportunity_Name__c = eachacc.Opportunities.Name; CALISMAZ SOQLde LIMIT 1 deyince NEDENSE 
      }
      update acc; */
      List<Account> acc = [select id, Highest_Amount_Opportunity_Name__c,(select id, Name, Amount from Opportunities ORDER BY amount DESC) from account where id in: accId];
      for (account eachacc : acc) {
        eachacc.Highest_Amount_Opportunity_Name__c = eachacc.Opportunities[0].Name;
      }
      update acc;
    }




    
}