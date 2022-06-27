public class ContactSearch {
    public static Contact[] searchForContacts(string lname, string pcode){
        Contact[] cts = [SELECT Contact.ID,Contact.Name FROM Contact 
                   WHERE LastName = :lName AND MailingPostalCode= :pCode];
         return cts;
    }
}