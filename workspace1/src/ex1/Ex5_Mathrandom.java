package ex1;

import java.util.Scanner;

public class Ex5_Mathrandom {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.print("1~10������ ���� �� �ϳ��� �Է��ϼ���:");
		int userNum =Integer.parseInt(sc.nextLine());
		int cpuNum=(int)(Math.random()*10+1);
		System.out.println("----------");
		System.out.println("CPU�� ��:"+cpuNum+"/�Է��� ��:"+userNum+"/");
	}

}
