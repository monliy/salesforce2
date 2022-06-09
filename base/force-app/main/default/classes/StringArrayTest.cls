public class StringArrayTest {
    public static list<string> generateStringArray(integer n){
        list<string> lista = new list<string>();
        for(integer i = 0; i < n; i++){
            lista.add('Test ' + i);
        }
        return lista;
    }
    
    public void imprime(list<string> lista){
        system.debug(lista);
    }
}