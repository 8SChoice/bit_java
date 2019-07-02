package ex8;

public class Circle extends Draw{
	private String resource;
	public Circle() {
		resource="자식의 자원";
	}
	//resource 적용
	@Override
	public void draw() {
		System.out.println("원을 그린다."+resource);
		
	}
	
	
}
