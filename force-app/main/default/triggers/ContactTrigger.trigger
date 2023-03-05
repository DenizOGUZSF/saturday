
//Week 6 extra part 2-2  
    //When a new contact is created for an existing account then set contact other phone as account  phone
trigger ContactTrigger on Contact (before insert) {

    ContactTriggerHandler.contactPhonefromAccount(trigger.new);



}





/* trigger ContactTrigger on Contact (After insert) {

   
        if(trigger.isAfter && trigger.isInsert){
            for(contact c1 : trigger.new) {
                if(c1.AccountId != null) {
                    System.debug(c1.Lastname  + ' contact created WITH Account');
                } else {
                    System.debug(c1.Lastname + ' contact create WITHOUT Account');
                }
            }
        }
    } */



