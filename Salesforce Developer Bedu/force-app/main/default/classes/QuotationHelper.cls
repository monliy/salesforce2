public with sharing class QuotationHelper {
    public QuotationHelper() {}

    public void initialConfig(){
        try{ 
        	Account c1 = new Account(Name = 'Compumundo');
        	Account c2 = new Account(Name = 'Compuworld');
        	insert c1;
        	insert c2;
            System.debug('Cuentas creadas correctamente');
		} catch (DMLException exc){
            System.debug('DML Exception occured.' + exc.getMessage());
        }
    }
    
    public list<Inventario__c> productsInInventory(){
        list<Inventario__c> consulta = [SELECT Inventario__C.Name, Inventario__C.CodigoProd__c, 
        Inventario__C.Cantidad_dis__c, Inventario__C.Cantidad_apart__c FROM Inventario__C];
         return consulta;
    }
}