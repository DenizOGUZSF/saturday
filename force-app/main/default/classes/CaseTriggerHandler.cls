public with sharing class CaseTriggerHandler {
    
    public static void caseMethod(list<case> caseNewList, list<case> caseOldList, map<id, case> caseNewMap, map<id, case> caseOldMap) {
        for (case eachCase : caseNewList) {
            if (eachCase.Origin != caseOldMap.get(eachCase.Id).origin) {
                system.debug('Case origin is changed for ' + eachCase.CaseNumber);
            }
        }
    }


    public static void caseCreated (list<case> NewCase){
        list<case> listCase = new list<case>();
        for (case eachCase : NewCase) {
         if(eachcase.Description.containsIgnoreCase('password')){
             case c = new Case();
             c.Subject = 'Parent Case may contain secret info, do something NOW';
             c.ParentId = eachcase.Id;
             c.Priority = 'High';
             c.Description = 'Secret info not allowed in case';
             listCase.add(c);
         }
     
         
        }
        insert listCase;
     }
 
 
 
 }


    
