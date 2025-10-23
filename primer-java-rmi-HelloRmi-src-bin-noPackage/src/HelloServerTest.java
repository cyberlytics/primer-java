import static org.junit.jupiter.api.Assertions.*;

import java.rmi.RemoteException;
import java.rmi.registry.LocateRegistry;
import java.rmi.registry.Registry;
import java.rmi.server.UnicastRemoteObject;

import org.junit.jupiter.api.Test;

class HelloServerTest {

	@Test
	void testSayHello() {
		Registry registry = null;
		// 1) Registry
		try {
			// Try to get existing registry
			registry = LocateRegistry.getRegistry(1099);
			registry.list(); // Test if it's running
			System.out.println("rmiregistry existed");

		} catch (RemoteException e) {
			// Registry doesn't exist, create it
			try {
				registry = LocateRegistry.createRegistry(1099);
			} catch (RemoteException e1) {
				System.err.println("rmiregistry exception: " + e.toString());
				e1.printStackTrace();
			}
			System.out.println("rmiregistry was created");
		}
		if (registry == null)
			fail();
		// 2) HelloServer
		try {
			HelloServer obj = new HelloServer();
			Hello stub = (Hello) UnicastRemoteObject.exportObject(obj, 0);
			registry.bind("HelloServant", stub);
			System.err.println("HelloServer ready");
		} catch (Exception e) {
			System.err.println("HelloServer exception: " + e.toString());
			e.printStackTrace();
		}
		// 3) Client
		try {
			Hello stub = (Hello) registry.lookup("HelloServant");
			String response = stub.sayHello();
			System.out.println("Client recieved response from HelloServer: " + response);
			assertEquals("Hello, world!", response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
