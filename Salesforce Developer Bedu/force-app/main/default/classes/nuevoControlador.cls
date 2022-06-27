public class nuevoControlador {
	private final sObject parent;
    public String codigo {get;set;}
    public List<Inventario__c> listInv {get;set;}
    
    public nuevoControlador(ApexPages.StandardController controller){
        parent = controller.getRecord();
    }
    
    public void buscar(){
        string query = 'SELECT id, CodigoProd__c, Cantidad_dis__c, Cantidad_apart__c FROM Inventario__c WHERE CodigoProd__c = :codigo';
        listInv = Database.query(query);
    }
    
    public void limpiar(){
        listInv.clear();
    }
}