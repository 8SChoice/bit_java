package ex4;

public class Ex4_Main {
	public static void main(String[] args) {
		//Ex4 Member
		Ex4_Member m = new Ex4_Member();
		
		//ȸ���� �̸��� �Է��սô�.
		m.setName("��浿");
		System.out.println("�̸�:"+m.getName());
		//�޿�
		m.setPay(10000, "15");
		System.out.println("���:"+m.getPay());
	}

}
