package ex5;

public class PaintFactory {
	//�빮 ���� ��ü�� �ּҸ� �˰� �־����.
	//has a ���� : A�� B�� �ּҸ� �������ִ� ����
	private Ex3_Home home;
	//���ڷ� ���������� ���޹���(���Թ޴´�.)
	public void usesPaint(Ex3_Home home, String color) {
		this.home=home;
		this.home.setDoorColor(color);
	}

}
