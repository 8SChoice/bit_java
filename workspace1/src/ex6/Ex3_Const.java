package ex6;

public class Ex3_Const {
	//�ٽ�����Ʈ : ���� ��ü�� ���� �ʱ�ȭ �� �������� ����Ѵ�.
	private String msg;
	public Ex3_Const(String msg) {
		//System.out.println("���ڸ� ���ڷ� ���� ������ ȣ��"+str);
		//��ó��
		this.msg=msg;
		//��ó��
		
	}
	public void print() {
		System.out.println(msg);
	}
	public void print(String str) {
		System.out.println(msg);
	}
	public static void main(String[] args) {
		Ex3_Const ref = new Ex3_Const("hi");
	}

}
