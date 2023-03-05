@isTest
public with sharing class CaseTriggerHandlerTEST {
    
    //LATER ASSIGMENT
/* [Trigger you did in last week>>>this method trigger] Write Apex TEST for it.
When a case is created, check the description field of the newly created case - if the description
field contains the word ‘password’, then create a child case with the following field values
- subject = ‘Parent Case may contain secret info, do something NOW’
- parentId = _______ (newly create case id)
- priority = ‘High’
- Description = ‘Secret info not allowed in case’ */

//caseCreated (list<case> NewCase) TEST METHODU

    @isTest
    private static void Method1() {
        Case c= new Case();
        c.Status='New';
        c.Origin='Email';
        c.Description='password';
        insert c;

        List<Case> cs= [select id from Case];
       system.assertEquals(2, cs.size());
}
    @isTest
    private static void Method2() {
        List<Case> cs1= new List<Case>();
        for (Integer i = 0; i < 200; i++) {
            Case c= new Case();
        c.Status='New';
        c.Origin='Email';
        c.Description='Selam';
        cs1.add(c);
            
        }
        
        insert cs1;

        List<Case> cs= [select id from Case];
       system.assertEquals(200, cs.size());

 }


}