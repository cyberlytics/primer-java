import java.util.stream.IntStream;

public class MTStreams {
	public static void main(String[] args) {
		IntStream range = IntStream.rangeClosed(1, 100);
		range.parallel().forEach(x -> {
			String tName = Thread.currentThread().getName();
			System.out.println("Thread: " + tName +", value: " + x);
		});
}	}