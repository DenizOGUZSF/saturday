public with sharing class CustomerTriggerHandler {
    

    public static void method1(List<Customer2__c> lstcus) {
        List<Payment2__c> paylist = new  List<Payment2__c>();

    
        for (Customer2__c eachcus : lstcus) {
            Payment2__c p1 = new Payment2__c();
            p1.Amount__c = 0.1;
            p1.Mode__c = 'Online';
            p1.Customer2__c = eachcus.id;
            Payment2__c p2 = new Payment2__c();
            p2.Amount__c = 1;
            p2.Mode__c = 'Crypto';
            p2.Customer2__c = eachcus.id;
            paylist.add(p1);
            paylist.add(p2);
 
        }
        insert paylist;

    }


    public static void method2(List<Customer2__c> oldlstcus) {

        Set<id> activecus = new Set<id>();
        Set<id> deactivecus = new Set<id>();

        for(Customer2__c eachcus:oldlstcus){
            if(eachcus.active__c == true){
                activecus.add(eachcus.id);
            }else{
                deactivecus.add(eachcus.id);
            }
        }

        List<Payment2__c> activepaylist = [Select id from Payment2__c where Customer2__c in:activecus];

        delete activepaylist;

        List<Payment2__c> deactivepaylist = [Select id, Mode__c from Payment2__c where Customer2__c in:deactivecus and Mode__c ='Online'];

        delete deactivepaylist;
    }



    

}