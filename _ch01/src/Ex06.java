
public class Ex06 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		MyMath mm= new MyMath();
		long result1=mm.add(5L,3L);
		long result2=mm.subract(5L,3L);
		long result3=mm.multiply(5L,3L);
		
		System.out.println(result1);
		System.out.println(result2);
		System.out.println(result3);
	}

	

}

class MyMath{
	long add(long a,long b) {
		long result = a+b;
		return result;
	}
}