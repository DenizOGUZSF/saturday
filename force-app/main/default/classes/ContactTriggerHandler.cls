public with sharing class ContactTriggerHandler {


    //Week 6 extra part 2-2  
    //When a new contact is created for an existing account then set contact other phone as account  phone
    public static void contactPhonefromAccount(List<Contact> contrgnew) {

        Set<Id> accIdSet = new Set<Id>();

        for(Contact con : contrgnew){
            if(String.isNotBlank(con.AccountId)){
                 accIdSet.add(con.AccountId);
            }
       }

       if(accIdSet.size() > 0){
        Map<Id,Account> accMap = new Map<Id,Account>([Select Id,Phone From Account where id in:accIdSet]);
   
        for(Contact con : contrgnew){
             if(con.AccountId != null && accMap.containskey(con.AccountId)){
                    if(accMap.get(con.AccountId).Phone != null){
                            con.OtherPhone = accMap.get(con.AccountId).Phone;
                    }
             }
        }


        }
    
   }



    }


    
