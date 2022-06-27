public class AccountProcessor {
	@future
 	public static void countContacts(list<id> listaID){
      List<Account> lstAccount = [select id,Number_Of_Contacts__c , (select id from contacts ) from account where id in :listaID ];
      for( Account acc : lstAccount )
      {
          List<Contact> lstCont = acc.contacts ;
          
          acc.Number_Of_Contacts__c = lstCont.size();
      }
      update lstAccount;
  }  
}