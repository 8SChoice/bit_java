package ex8;

public class Circle extends Draw{
	private String resource;
	public Circle() {
		resource="�ڽ��� �ڿ�";
	}
	//resource ����
	@Override
	public void draw() {
		System.out.println("���� �׸���."+resource);
		
	}
	
	
}
