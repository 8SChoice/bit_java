package ex6;

public class DemoConst {
	//2. ���� ��ü�� �����ڷ����� ����
	private static DemoConst dc;
	//1. �ܺο��� new ���� ���ϰ� �Ѵ�.
	private DemoConst() {
		System.out.println("������ ȣ��!");
	}
	//3. �̱��� �޼��带 ����
	public static DemoConst getDc() {
		//null�� heap������ �����ϴ� Ű����
		//1.�������� �ʴ� ��ü�� �ּҰ�, 2.������ �ߴµ� ������ ���� ���� ����
		//Scanner sc : ����(null�� �����ϰ� �ִ� ����)
		//����sc.nextLine(); //nullpointException ���ܰ� �߻�
		if(dc==null) {
			dc = new DemoConst();
		}
		return dc;
	}

}
