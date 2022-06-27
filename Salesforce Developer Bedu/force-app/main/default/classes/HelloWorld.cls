public class HelloWorld {
    integer num = 0;
    string cad = 'Esto es un texto';
    List<String> listStr;
    public void hello(){
        this.num = 7;
        system.debug('Hola Mundo' + num + cad);
       
    }
    
    @InvocableMethod(label = 'pruebaFlow')
    public static void pruebaFlow(){
        system.debug('prueba');
    }
	
}