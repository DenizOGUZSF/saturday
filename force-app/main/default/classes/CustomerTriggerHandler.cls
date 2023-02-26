public with sharing class CustomerTriggerHandler {
    

    public static void method1(List<Customer2__c> lstcus) {
        List<Payment2__c> paylist = new  List<Payment2__c>();

        for (Customer2__c eachcus : lstcus) {
            Payment2__c p = new Payment2__c();
            p.Amount__c = 0.1;


            
        }


        
    }
}