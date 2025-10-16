package de.fau.cs.inf6;

public class AutoboxingExamples {
	public static void main(String[] args) {
		Boolean b = false;
		if (!b)
			System.out.println("It's false!");

		Integer d = 2;
		Integer r = 65;
		System.out.println(d + r);

		Integer h = 322 << 2;
		System.out.println(h);

		@SuppressWarnings("unused")
		Short w = 11;
		@SuppressWarnings("unused")
		Short x = 22;
		// Short y = w + x; // Type mismatch: cannot convert form int to Short

		@SuppressWarnings("unused")
		Character zz = 'c';
		Character lk = '\u0055';
		System.out.println(lk);
	}
}
