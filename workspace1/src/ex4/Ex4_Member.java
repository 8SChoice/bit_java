package ex4;
//���� : ȸ���� ������ �����ϱ� ���� Ŭ����
public class Ex4_Member {
	//�������а� ĸ��ȭ
	//���������� ���� �ٽ����� �ڿ��� ����� �� �״�� ����ȭ �ϴ� ���̰�
	//ĸ��ȭ�� ���е� ������ �����ϴ� ����� �����ϴ� ���� ���Ѵ�.
	//Pojo : ���䵵 ����
	//�ڹ��� ����� private������ ����
	//���� ���� : setter , ���� ��ȯ : getter
	//Ŭ����, ������, �޼���, ����ʵ�
	//private : ���� Ŭ���� �������� ����
	//default: ���� ��Ű�� �������� ����
	//protected: default ����, �ٸ� ��Ű���� ��Ӱ��� ����
	//public : all
	private String name;
	private int age;
	private boolean agree;
	private int pay;
	//������ �� �ִ� �޼��带 ����
	//����� �� �ִ� �޼��带 ����
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public boolean isAgree() {//booleanŸ���� ����
		return agree;
	}
	public void setAgree(boolean agree) {
		this.agree = agree;
	}
	public int getPay() {
		return pay;
	}
	public void setPay(int pay, String pwd) {
		if(!pwd.equals("12")) {
			System.out.println("�ý��� ���� ������ �����ϴ�.");
			System.exit(0);
		}
		this.pay = pay;
	}

}
