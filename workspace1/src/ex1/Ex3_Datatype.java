package ex1;

public class Ex3_Datatype {
	public static void main(String[] args) {
		//4byte �̻��� ������ JVM�� ����� �ڵ����� 4byte�� �°ݽ��Ѽ� �����Ѵ�.
		//���� : ū �ڷ����� ���� ���� �ڷ������� ����� �ݵ�� ĳ������ ��������� �ؾ��Ѵ�.
		//���θ�� : ������ �ݴ�, ĳ������ ���������� �Ͼ��.
		byte n1 = 10;
		byte n2 = 20;
		//ĳ����
		byte n3 = (byte) (n1+n2);
		int res = n1+n2;
		//short�ε� �غ���
		short sh1 = 100;
		short sh2 =200;
		short sh3 =(short) (sh1+sh2);
		System.out.println("sh3:"+sh3);
		int resOper =(100*2/3%5);
		System.out.println(resOper);
		float m =(float) 3.14;
		System.out.println(m);
		char ch1 ='A';
		System.out.println("ch1:"+ch1);
		//����� ���� 65��� 66�� �ڽ� ��
		//��� ���� �˰��� ���
		//A:�θ�� B:���
		char ch2=65;
		System.out.println("ch2:"+ch2);
	}

}
