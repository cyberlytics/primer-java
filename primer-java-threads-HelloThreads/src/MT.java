class MyRunnable implements Runnable {
	public void run() {
		try {
			long tId = Thread.currentThread().getId();
			System.out.println("Thread " + tId + " is running");
		} catch (Exception e) {
			e.printStackTrace();
}	}	}

class Main {
	public static void main(String[] args) {
		int n = 8;
		for (int i = 0; i < n; i++) {
			Thread t = new Thread(new MyRunnable());
			t.start();
}	}	}