@isTest
public class QuotationHelperTest {
    @isTest
    public static void pruebaUno(){
        Inventario__c inv = new Inventario__c();
        inv.Name = 'Test1';
        inv.Cantidad_dis__c  = 10;
        inv.Cantidad_apart__c = 1;
        inv.CodigoProd__c = 'PRO0001';
        insert inv;
        
        Test.startTest();
        QuotationHelper qh = new QuotationHelper();
        boolean res = qh.confirmProductExistbyCode('PRO0001');
        Test.stopTest();
        
        system.assertEquals(true, res);
    }
}