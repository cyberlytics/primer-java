package de.fau.cs.inf6;

public class BewareAutoboxingWithMinus128To127 {

	public static void main(String[] args) {

		System.out.println("-- The root of it all: Integer.valueOf()");
		System.out.println("public static Integer valueOf(int i) {");
		System.out.println("  final int offset = 128;");
		System.out.println("  if (i >= -128 && i <= 127) { // must cache");
		System.out.println("    return IntegerCache.cache[i + offset];");
		System.out.println("  }");
		System.out.println("  return new Integer(i);");
		System.out.println("}");

		Integer i1;
		Integer i2;
		Integer i3;
		Integer i4;

		System.out.println("-- upper bound +127");

		System.out.println("w/o auto-boxing");
		i1 = new Integer(127);
		i2 = new Integer(127);
		i3 = new Integer(128);
		i4 = new Integer(128);
		System.out.println(i1 + " == " + i2 + " : " + (i1 == i2)); // false
		System.out.println(i3 + " == " + i4 + " : " + (i3 == i4)); // false

		System.out.println("w/ auto-boxing");
		i1 = 127;
		i2 = 127;
		i3 = 128;
		i4 = 128;
		System.out.println(i1 + " == " + i2 + " : " + (i1 == i2)); // true
		System.out.println(i3 + " == " + i4 + " : " + (i3 == i4)); // false

		System.out.println("-- lower bound -128");

		System.out.println("w/o auto-boxing");
		i1 = new Integer(-128);
		i2 = new Integer(-128);
		i3 = new Integer(-129);
		i4 = new Integer(-129);
		System.out.println(i1 + " == " + i2 + " : " + (i1 == i2)); // false
		System.out.println(i3 + " == " + i4 + " : " + (i3 == i4)); // false

		System.out.println("w/ auto-boxing");
		i1 = -128;
		i2 = -128;
		i3 = -129;
		i4 = -129;
		System.out.println(i1 + " == " + i2 + " : " + (i1 == i2)); // true
		System.out.println(i3 + " == " + i4 + " : " + (i3 == i4)); // false

		// Variation of this theme
		System.out.println("-- Variation of this theme");
		Integer iVar1;
		Integer iVar2;

		System.out.println("w/o auto-boxing");
		iVar1 = new Integer(127);
		iVar2 = new Integer(127);
		System.out.println("   ==    Check : " + (iVar1 == iVar2));
		System.out.println("Equality Check : " + (iVar1.equals(iVar2)));

		System.out.println("w/ auto-boxing");
		iVar1 = new Integer(127);
		iVar2 = 127;
		System.out.println("   ==    Check : " + (iVar1 == iVar2));
		System.out.println("Equality Check : " + (iVar1.equals(iVar2)));

		System.out.println("w/ auto-boxing");
		iVar1 = 127;
		iVar2 = 127;
		System.out.println("   ==    Check : " + (iVar1 == iVar2));
		System.out.println("Equality Check : " + (iVar1.equals(iVar2)));
	}
}