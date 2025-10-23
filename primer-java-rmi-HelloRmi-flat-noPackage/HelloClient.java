import java.rmi.registry.LocateRegistry;
import java.rmi.registry.Registry;

public class HelloClient {
 public static void main(String[] args) {
   String host = (args.length < 1) ? null : args[0];
   try {
     Registry registry = LocateRegistry.getRegistry(host);
     Hello stub = (Hello) registry.lookup("HelloServant");
     String response = stub.sayHello();
     System.out.println("response: " + response);
   } catch (Exception e) {
     e.printStackTrace();
}} }
