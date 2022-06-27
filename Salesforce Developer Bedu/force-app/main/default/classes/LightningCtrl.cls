public class LightningCtrl {
	@AuraEnabled
    public static list<Contact> getContacts(){
        return [SELECT Name, Phone, Email FROM Contact limit 5];
    }
}