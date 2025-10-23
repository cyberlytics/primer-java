import java.rmi.registry.LocateRegistry;
import java.rmi.registry.Registry;
import java.rmi.server.UnicastRemoteObject;

public class HelloServer implements Hello {
	public String sayHello() {
		return "Hello, world!";
	}

	public static void main(String args[]) {
		try {
			HelloServer servant = new HelloServer();
			Hello stub = (Hello) UnicastRemoteObject.exportObject(servant, 0);
			Registry registry = LocateRegistry.getRegistry();
			registry.bind("HelloServant", stub);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
