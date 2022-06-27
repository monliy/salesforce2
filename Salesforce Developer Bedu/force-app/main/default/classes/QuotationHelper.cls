public class QuotationHelper implements QuotationSync{
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

    public boolean confirmProductExistByCode(String codigo){
        list<Product2> prod = [SELECT ProductCode FROM Product2 WHERE ProductCode = :codigo];
       /*  Product2[] prod = [SELECT ProductCode FROM Product2]; */
        if (prod.isEmpty()) {
            System.debug('false');
            return false;
        } else {
            System.debug('true');
            return true;
        } 
    }
    
    public integer searchProductByCode(String codProducto){
        /* list<Inventario__c> prod = [SELECT Cantidad_dis__c FROM Inventario__c WHERE CodigoProd__c = :codProducto];
        integer rec = prod.get(0);
        if (rec >= 1 ) {
            System.debug('Si hay productos');
            return rec;
        } else {
            System.debug('No hay productos');
            return 0;
        } */
        return 0;
    }
    
    public void StockEmptyAlert(){
        /*List<productsInInventory> noEx = new List<productsInInventory>();*/
    }
}