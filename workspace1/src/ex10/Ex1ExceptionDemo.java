package ex10;

import java.util.Scanner;

public class Ex1ExceptionDemo {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.println("���ڸ� �Է��ϼ���");
		try {
			int num = Integer.parseInt(sc.nextLine());
			System.out.println("�Է°�:"+num);
			//���� �߻��ϸ� try ���� �ȵǰ� �ٷ� catch�� ��
		} catch (Exception e) {
			System.out.println("���ڸ� �Է��ض�");
		}
		
	}

}
