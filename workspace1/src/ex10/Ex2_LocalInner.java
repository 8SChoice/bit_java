package ex10;

public class Ex2_LocalInner {
	private int a;
	public Ex2_LocalInner() {a=100;}
	//jdk 7 ���ϱ����� final�̶�� ���
	//8���� ���� ���ʹ� final�� ��� ���������� ������
	public void insertTest(final int num) {
		int b=200; // ��� : ����Ŭ�������� �����Ǵ� ���� ������ �ƴ� ����� �ȴ�.
		int c=num; // ���
		class Inner{
			public void getData() {
				System.out.println("����ʵ� ����:"+a);
				
			}
		}
		new Inner().getData();
		//�͸� ����Ŭ�������� �����ؼ� ������� ���� ���
		b=30;
		System.out.println("b:"+b);
	}
	public static void main(String[] args) {
		new Ex2_LocalInner().insertTest(200);
	}
}
