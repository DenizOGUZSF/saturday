public with sharing class CaseTriggerHandler {
    
    //Whenever a case is created with origin as email then set status as new and Priority as Medium.
    public static void SameRecordUpdateCase(List<Case> casetrgnew) {
        for(Case eaccase: casetrgnew){
            if(eaccase.Origin=='Email'){
                eaccase.Status = 'New';
                eaccase.Priority = 'Medium';
            }
           
        }

    }
    


/* Show the message as 'Case origin is changed for [Case Number]' whenever case origin
field value is changed. */

    public static void caseMethod(list<case> caseNewList, list<case> caseOldList, map<id, case> caseNewMap, map<id, case> caseOldMap) {
        for (case eachCase : caseNewList) {
            if (eachCase.Origin != caseOldMap.get(eachCase.Id).origin) {
                system.debug('Case origin is changed for ' + eachCase.CaseNumber);
            }
        }
    }



/* When a case is created, check the description field of the newly created case - if the description
field contains the word ‘password’, then create a child case with the following field values
- subject = ‘Parent Case may contain secret info, do something NOW’
- parentId = _______ (newly create case id)
- priority = ‘High’
- Description = ‘Secret info not allowed in case */


//LATER ASSIGMENT
/* [Trigger you did in last week>>>this method trigger] Write Apex TEST for it.
When a case is created, check the description field of the newly created case - if the description
field contains the word ‘password’, then create a child case with the following field values
- subject = ‘Parent Case may contain secret info, do something NOW’
- parentId = _______ (newly create case id)
- priority = ‘High’
- Description = ‘Secret info not allowed in case’ */

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


    
