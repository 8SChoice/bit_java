package ex4;

//Ŭ������ ���� : ���赵��, �����ϱ� ���ؼ� Heap������ ������ �ؼ� ���������� �����Ͽ� ����Ѵ�.
//this �ڱ� �ڽ��� Ŭ���� �ּҸ� �����Ѵ�.
public class Ex3_Remocon {
	//�Ӽ�
	boolean power; //true:on false:off
	int chNum;//ä���� ���� : 1~100
	//setPower�� ȣ��� �� ���ڰ����� boolean ���� �޾Ƽ� ����ʵ� power�� �����ϰ� �� ���� �Ǻ��� �� ������ ����� ���
	public void setPower(boolean p) {
		//this�� Ű���带 ����ؼ� ������ ��������� ����
		this.power=power;
		if(p==true) { //���α׷����� ����
			System.out.println("������ �������ϴ�.");
		}else {
			System.out.println("������ �������ϴ�.");
		}
	}
	//����ʵ� chNum�� ���ý�Ŵ
	public void setChNum(int ch) {
		chNum=ch;
	}
	public String viewControl() {
		return "���� ä���� :"+chNum+"�Դϴ�.";
	}

}
