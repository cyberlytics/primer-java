package de.fau.cs.inf6;

public class BewareTheTypes {
	public static void main(String[] args) {
		Long l1;

		l1 = new Long(0L);
		System.out.println("((Long)" + l1 + ")" + ".equals(0L): "
				+ l1.equals(0L)); // true
		System.out.println("((Long)" + l1 + ")" + ".equals(0):  "
				+ l1.equals(0)); // false

		// changing l1 to 'new Long(0)' is irrelevant:
		l1 = new Long(0);
		System.out.println("((Long)" + l1 + ")" + ".equals(0L): "
				+ l1.equals(0L)); // true
		System.out.println("((Long)" + l1 + ")" + ".equals(0):  "
				+ l1.equals(0)); // false

		// only changing the 0 in the equals(..) to 'new Long(0)' does:
		l1 = new Long(0);
		System.out.println("((Long)" + l1 + ")" + ".equals(0L): "
				+ l1.equals(0L)); // true
		System.out.println("((Long)" + l1 + ")" + ".equals(new Long(0)):  "
				+ l1.equals(new Long(0))); // false

		// auto-boxing is here irrelevant
		l1 = 0L;
		System.out.println("((Long)" + l1 + ")" + ".equals(0L): "
				+ l1.equals(0L)); // true
		System.out.println("((Long)" + l1 + ")" + ".equals(0):  "
				+ l1.equals(0)); // false

		// ... but does help a tiny little bit
		// because the compiler will not allow following:
//		l1 = 0;
	}
}