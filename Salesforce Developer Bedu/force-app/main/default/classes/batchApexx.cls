public class batchApexx /* implements Database.Batchable<sObject>, Database.Stateful */{

   /*  public integer contador = 0;
    global Database.QueryLocator start(Database.BatchableContext BC){
        String query = 'SELECT id, Name FROM Account WHERE Name = "BEDU"';
        return Database.QueryLocator(query);
    }
    global void execute(Database.BatchableContext BC, List<Account> accList){
        List<Account> lst = new List<Account>();
        for(Account item: accList){
            item.Name = 'Bedu';
            lst.add(item);
            contador++;
        }
        update lst;
    } */
    /* global void finish(Database.BatchableContext BC){
        System.debug('Resultado contado: '+contador); */
        /* BatchApexExample2 batch2 = new BatchApexExample2();
        Database.execute(batch2); */
    /* }  */
    /*public integer contador = 0;
    global Database.QueryLocator start(Database.BatchableContext BC){
        string query = 'SELECT id, Name FROM Account WHERE Name = "BEDU"';
        retur Database.QueryLocator(query);
    }
    
    global void execute(Database.BatchableContext BC, list<Account> accList){
        list<Account> lst  = new List<Account>();
        
        for(Account item: accList){
            item.Name = 'Bedu'	;
            lst.add(item);
            contador++;
        }
        update lst;
    }
    
    global void finish(Database.BatchableContext BC){
        system.debug('Resultado contado: ' + contador);
        BatchApexExample2 batch2 = new BatchApexExample2();
        Database.execute(batch2); 
    }*/
 }