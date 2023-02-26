public class AccConAndOppOperations {

    public static List<Account> method1() {

        List<Account> accList = [select name, annualRevenue, type, AccountSource from Account];
         return accList;
    } 

    public static List<Opportunity> method2(String stage, String source){

        List<Opportunity> oppList =[select id, name from opportunity where LeadSource  = :source or stageName = :stage];
        return oppList; 
    }

    public static void method3() {
        List<Account> accList =[Select name, annualRevenue, (select name, amount from opportunities where stageName ='Closed Won') from Account where type='Customer - Direct'];

        for(Account eachacc:accList){
            for (Opportunity eachopp : eachacc.Opportunities) {
                system.debug(eachopp.name+ ' is Opportunity for Account '+eachacc.name);
  
            }
        }  
    }
    

    public static void method4(String name, Decimal AnnualRevenue, String Type) {

        Account acc = new Account();
        if(name!=null){
        acc.Name =name;
        acc.AnnualRevenue =AnnualRevenue;
        acc.Type=Type;
        insert acc;
        }else{
            system.debug('Error');

        }


        
    }


    public static Decimal method5() {
        
        List<Opportunity> oppList = [SELECT id, amount from opportunity where StageName='Closed Won' and amount!=null];

        Decimal sum =0;
        for (Opportunity eachOpp : oppList) {
            sum+=eachOpp.Amount; 
        }
        return sum;
    }


    public static List<Account> method6(String stagename) {
        List<Account> accList = [SELECT id, name, (SELECT id from opportunities where stageNAme=:stagename ) from Account];
        return accList;

    }


    public static List<Account> accountWithOpp (String stgName){//EMRE HOCA PAYLASMISTI ORNEK     
        List<Account> accountList = new List<Account>();

        accountList = [SELECT Id, Name FROM Account WHERE Id IN (SELECT AccountId FROM Opportunity WHERE StageName = :stgName)];

        if(accountList != null &&accountList.size() > 0){
            return accountList;
        }else{
            System.debug('There are not any records with these criteria');
            return null;
        }
    }

    public static void method7() {
    /* List<Account> accList = [SELECT id, name ,(SELECT id , accountID from contacts where accountId!=null)from Account]; */
    List<Account> accountList = new List<Account>();
    accountList = [SELECT Id, Name, (select lastname from Contacts) FROM Account];
                 
            //System.debug(accountList);
           for (Account eachacc : accountList) {
            //System.debug('Account name: '+eachacc.name);
            for (Contact eachcon : eachacc.Contacts) {
                System.debug('Account name: '+eachacc.name+' Contact name is '+eachcon.lastName);
            }
           }
        
    }

    public static void method8(Id accountId) {
        Account acc = [SELECT id,name from Account where id=:accountId];

        Contact c = new COntact();
        c.LastName=acc.Name;
        c.AccountId = acc.id;
        insert c;
    }

    public static void method9() {
        List<Opportunity> oppList = [SELECT id,description, amount from opportunity where amount!=null order by Amount DESC limit 10 ];

        if(!oppList.isEmpty()){
        for (Opportunity eachopp : oppList) {
            eachopp.Description = 'This is one of the top 10 opportunities.Please work on this properly';  
        }
    }
        update oppList;
    }
 

    public static void method10(ID accountid, Integer n) {
         List<Opportunity> oppList = new List<Opportunity>();

        if(n>0){
            Account acc = [select id, name,AnnualRevenue from Account where id=:accountid];
             for (Integer i = 1; i <= n; i++) {
                Opportunity opp = new Opportunity();
                opp.CloseDate = date.today().addYears(3);
                opp.StageName = 'Prospecting';
                opp.Name= acc.Name;
                if (acc.AnnualRevenue!=null) 
                opp.amount= acc.AnnualRevenue/n;
                opp.AccountId = acc.id;//relation field
                oppList.add(opp);
            
             }
             insert oppList;

        }else{
            System.debug('“Please tell us how many opportunities needs to be created');
        }

        
    }


    public static void method11() {
        List<Account> accList = [SELECT id, name, (SELECT id, lastname from contacts where accountid=null) from Account];
        /* List<account> listAcc= [Select Id,name,(select id, name from account where  ) from Account] */

        List<contact> conList = new List<Contact>();
        if(!accList.isEmpty()){
           
            for (Account eachacc : accList) {
                Contact c= new Contact();
                c.LastName = eachacc.name;
                c.AccountId = eachacc.id;
                conList.add(c);  
            }
        }

        if(!conList.isEmpty())
        insert conList; 
    }
    



    


}





