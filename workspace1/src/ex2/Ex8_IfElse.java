package ex2;

public class Ex8_IfElse {
	public static void main(String[] args) {
		//������� ��ü ��������� �ƴ� ������ ��ü������ ��쿡�� ���ڿ��� ���� ��� ���Ǯ�� ���� ������ �ּҸ� �Բ� �����ϱ� ������ �� ��ü�� �ּҰ��� �����ȴ�.
		String str1="Test";
		String str2="Test";
		if(str1==str2) {
			System.out.println("str1, str2 ����");
		}
		else {
			System.out.println("str1, str2 �ٸ���");
		}
		if(str1.equals(str2)) {
			System.out.println("����");
		}else {
			System.out.println("�ٸ���");
		}
	}

}
