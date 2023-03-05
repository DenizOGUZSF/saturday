public with sharing class AccountTriggerHandler {
   

/* Whenever a New Account Record is created, an associated Contact Record must be created
automatically. Contact record fields as below:
- Account name as Contact last name
- Account phone as contact phone */
public  static void Method1(List<Account> AccTrgNew) {
        List<Contact> ListCon=new List<Contact>();
        for (Account eachAcc: AccTrgNew) {
           Contact c=new Contact();
           c.AccountId=eachAcc.Id;
           c.LastName=eachAcc.Name;
           c.Phone=eachAcc.Phone;
           ListCon.add(c);
        }
         insert ListCon;
     }

/*  Write a trigger on the Account when the Account is updated, check all opportunities related to
the account. Update all Opportunity Stage to close lost if stage name not already set to closed
won */
     public static void Method2(List<Account> AccTrgnew2) {
        set<id> accid = new set<id>();
        for (Account acc : AccTrgnew2) {
            accid.add(acc.id);
        }
       List<Opportunity> AccOpp = [select id,StageName from Opportunity where AccountId in:accid and StageName!='Closed Won' and StageName!='Closed Lost'];
       for(opportunity opp : AccOpp){
         opp.StageName='Closed Lost';
       }
       update AccOpp;
    }

    /* Whenever an Account phone number is modified, update all the contacts of the Account as
    follows:
    - Contacts otherPhone as Old phone no of account
    - Contacts mobilePhone as New phone no of Account.
     */


    //EMRE METHOD3 ALTERNATIVE bu method3le ayni
    public static void updateRelatedContacts(Map<Id,Account> oldMap, Map<Id,Account> newMap){ 
        Set<Id> accs = new Set<Id>();
        for(Id key : oldMap.keySet()){
            Account old=oldMap.get(key);
            Account newAcc=newMap.get(key);
            if(old.Phone!=newacc.Phone){
                accs.add(key);  
            }
        }
        List<Contact> contactList=[select OtherPhone,MobilePhone,AccountId from Contact where accountId in:accs];
        for(Contact c: contactList){
            c.otherPhone=oldMap.get(c.accountId).Phone; 
            c.mobilePhone=newMap.get(c.accountId).phone; 
        }
        update contactList;
        
    }
    
//bu updateRelatedContacts ile ayni
    public static void Method3(List<Account> newList, Map<id,Account> newMap, Map<id,Account> oldMap){
        set<Id> AccId = new set<id>();
    for (account eachacc : newList) {
        if (eachacc.phone != oldMap.get(eachacc.Id).Phone) {
            AccId.add(eachacc.Id);
        }
    }
    List<Contact> Con = [SELECT Id, MobilePhone, OtherPhone, AccountId FROM Contact WHERE AccountId in : AccId];
    for (contact eachCon : Con) {
        eachCon.OtherPhone = oldMap.get(eachCon.AccountId).Phone;
        eachCon.MobilePhone = newMap.get(eachCon.AccountId).Phone;
    }
    update Con;
    }



    /* When the Annual revenue value of an Account is reduced from the previous value then show the
    following message:
    ‘Annual Revenue for an account cannot be reduced’. And do not allow the user to save the
    record */

    public static void method4(List<Account> acctrgnew, Map<id, Account> accoldmap) {
        for(Account eachacc: acctrgnew){
            if(eachacc.AnnualRevenue < accoldmap.get(eachacc.id).AnnualRevenue){
                eachacc.AnnualRevenue.addError('Annual Revenue for an account cannot be reduced');

            }
        }

        
    }


    




     
     

    }
