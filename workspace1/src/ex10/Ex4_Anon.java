package ex10;

public class Ex4_Anon implements MyTest {
	MyTest test = new MyTest() {
		
	@Override
	public void printData() {
	
	}
	}
	public void mytest() {
		new MyTest() {

			@Override
			public void printData() {
				// TODO Auto-generated method stub
				
			}
			
			
		}.printData();
	}
	public static void main(String[] args) {
		new Ex4_Anon().mytest();
	}
	@Override
	public void printData() {
		// TODO Auto-generated method stub
		
	}

}
