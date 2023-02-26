public with sharing class DummyDataCreation {


    public static List<Account> method1(integer n){

        List<Account> acclist = new List<Account>();
        for (Integer i = 1; i < n; i++) {
            Account acc = new Account();
            acc.Name = 'Week5'+i;
            acc.Rating ='Hot';
            acc.Phone ='123456789'+i;
            acc.ShippingStreet = 'Shipping address'+i;
            acc.BillingStreet ='Billing Address'+i;
            acclist.add(acc);
        }
        if(!acclist.isEmpty())
        insert acclist;
        return acclist;
        
    }

    public static List<Contact>  method2(integer n, List<Account> acclist){

        List<Contact> conlist = new List<Contact>();
        for (Account eachacc : acclist) {
            for (Integer i = 1; i <= n; i++){
                Contact con = new Contact();
                con.LastName = 'FirstName3'+i;
                con.FirstName= 'Lastname4'+i;
                con.Phone ='12345678'+i;
                con.MailingStreet = 'MailingStreet4'+i;
                con.OtherStreet = 'OtherMailing4';
                con.AccountId = eachacc.id;
                conlist.add(con);
            
        }

    }

    if(!conlist.isEmpty())
    insert conlist;

    return conlist;

}

public static List<Case>  method3(List<Contact> conlist){
    List<Case> caselist = new List<Case>();

    for (Contact eachcon : conlist) { 
            Case c = new Case();
            c.Status = 'New';
            c.Origin = 'Phone';
            c.Subject = 'subject';
            c.ContactId=eachcon.id;
            Id accid = eachcon.accountid;
            Account acc = [SELECT id, name from Account where id =:accid ];
            eachcon.AccountId = acc.id;
            caselist.add(c);
    }
    if(!caselist.isEmpty())
    insert caselist;

    return caselist;


    //SEDA
}public static void DummyDataCreation3(list<contact> listcontact) {
    list<case> caseList = new list<case>(); 
    for (contact eachCon : listcontact) {
        for (Integer i = 1; i <= listcontact.size(); i++) {
            case case1 = new case();
            case1.contactId = eachCon.Id;
            case1.accountId = eachCon.AccountId;
            case1.subject = 'Case Test1';
            case1.status = 'Working1';
            case1.origin = 'Phone1';
            caseList.add(case1);
        }
    }
    insert caseList;
}

//EMRE
public static List<Case> createCase(List<Contact> listCon){
    List<case> caseList = new List<Case>();
    for (Contact eachCon : listCon) {
        Case cs = new Case();
        cs.contactId = eachCon.Id;
        cs.accountId = eachCon.AccountId;
        cs.subject = 'Burası yorum';
        cs.status = 'Working';
        cs.origin = 'Phone';
        caseList.add(cs);
    }
    if(!caseList.isEmpty()) {
        insert caseList;
}
return caseList;
}

}