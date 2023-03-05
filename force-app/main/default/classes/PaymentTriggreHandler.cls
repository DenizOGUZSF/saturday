public with sharing class PaymentTriggreHandler {
 //INSERT
public static void createMethod(List<Payment2__c> newpaylist) {
    Set<id> idpay = new Set<id>();
    for(Payment2__c eachpay:newpaylist){
        idpay.add(eachpay.id);
    } 
    totalAmount(idpay);
}
//UPDATE
public static void updateMethod(List<Payment2__c> newpaylist, Map<id, Payment2__c> oldpaymap) {
    Set<id> idpay = new Set<id>();
    for(Payment2__c eachpay: newpaylist){
        if(eachpay.Amount__c!=oldpaymap.get(eachpay.id).Amount__c){//update
            idpay.add(eachpay.id);
        }
    } 
    totalAmount(idpay);  
}
//DELETE
public static void deleteMethod(List<Payment2__c> oldpaylist) {
    Set<id> idpay = new Set<id>();
    for(Payment2__c eachpay:oldpaylist){
        idpay.add(eachpay.id);
    } 
    totalAmount(idpay);
}

public static void totalAmount(Set<id> myid){
    List<Customer2__c> custList = [SELECT id, Total_Amount__c,(Select id, Amount__c  from Payments2__r) from Customer2__c WHERE id IN :myid];


      
    for (Customer2__c eachcus : custList) {
        eachcus.Total_Amount__c = 0;
        for(Payment2__c eachpay: eachcus.Payments2__r){
            if(eachpay.Amount__c!=null){
                eachcus.Total_Amount__c+=eachpay.Amount__c;
            }   
        }
      
       system.debug('#####'+amount);
    }

    update custList;
    system.debug('#####'+custList);



   







}

}