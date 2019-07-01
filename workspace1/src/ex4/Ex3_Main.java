package ex4;

public class Ex3_Main {
	public static void main(String[] args) {
		Ex3_Remocon r = new Ex3_Remocon();
		r.setPower(true);
		r.setChNum(5);
		String chMsg = r.viewControl();
		System.out.println("Msg:"+chMsg);
	}

}
