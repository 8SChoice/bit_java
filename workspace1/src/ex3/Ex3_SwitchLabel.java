package ex3;

public class Ex3_SwitchLabel {
	public static void main(String[] args) {
		ext:for(int i=0; i<5; i++) {
			//다중 for문처럼 바깥의 for문으로 탈출하고 싶을때 나갈곳에 라벨을 붙여서 break절에 표시해두면 된다. jdk 5부터 지원
			for(int j=0; j<5; i++) {
				if(j==3) {
					break ext;
				}
				System.out.println(j+","+i);
			}
		}	
	}
	

}
