package ex7;
import exam.BoardVO;
public class Ex3_Varargs {
	//Varargs : ���� ���� ���� ���� ���
	//���� : �޼��� �����ε��� �ѹ��� �ذ�
	//���� : ���� �ڷ����� �ش�
	//jdk 5.0���� �ش�
	public void test(BoardVO ... str) {
		for(BoardVO e : str) {
			System.out.println(e.getNumber());
			System.out.println(e.getWriter());
		}
	}
	public static void main(String[] args) {
		Ex3_Varargs ref = new Ex3_Varargs();
		BoardVO v1=new BoardVO();
		v1.setWriter("��浿");
		v1.setNumber(1);
		BoardVO v2 = new BoardVO();
		v2.setWriter("�����");
		v2.setNumber(2);
		BoardVO v3 = new BoardVO();
	}

}
