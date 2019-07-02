package ex10;

public class Ex5_Lambda {
	public static void main(String[] args) {
		MyInter myInter = new MyInter() {

			@Override
			public void myMethod() {
				System.out.println("MyTest");
				
			}
			
		};

	myInter.myMethod();
	System.out.println("------------------");
	MyInter myInter1=()->{
		System.out.println("MyTest!");
	};
	myInter1.myMethod();
		
	}

}
