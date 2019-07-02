package ex10;

public class Ex6_Lambda {
	public static void main(String[] args) {
		new MyInter1() {
			@Override
			public void myMethod(int argN) {
				int res = argN*2;
				System.out.println("Result1:"+res);
				
			}
			
		}.myMethod(100);
		MyInter1 myInter1 = (argN)->{
			int res= argN*2;
			System.out.println("Result12:"+res);
		};
		myInter1.myMethod(100);
		MyInter1 myInter2 = argN->
		System.out.println("Result3:"+argN*2);
		myInter2.myMethod(1000);
	}

}
