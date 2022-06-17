public with sharing class contactController {
    @AuraEnabled(cacheable=true)
    public static List<Contact> getContactList(){
        return[
            SELECT Id, Name, Title, Phone, Email
            FROM Contact
            WITH SECURITY_ENFORCED
            LIMIT 10
        ];
    }
}