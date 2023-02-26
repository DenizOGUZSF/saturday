
trigger ContactTrigger on Contact (After insert) {


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



