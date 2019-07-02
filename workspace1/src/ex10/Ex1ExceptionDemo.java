package ex10;

import java.util.Scanner;

public class Ex1ExceptionDemo {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.println("숫자만 입력하세요");
		try {
			int num = Integer.parseInt(sc.nextLine());
			System.out.println("입력값:"+num);
			//예외 발생하면 try 실행 안되고 바로 catch로 감
		} catch (Exception e) {
			System.out.println("숫자만 입력해라");
		}
		
	}

}
