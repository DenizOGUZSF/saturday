trigger LeadTriggger on Lead (before insert, after insert) {

if(trigger.isAfter && trigger.isInsert)
    for (lead eaclead : trigger.new) {
        if(eaclead.leadSource == 'web' )
        System.debug('Rating should be Cold');
        else {
            System.debug('Rating should be hot');
        }
    }
    }