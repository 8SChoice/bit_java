package ex1;

import java.util.Scanner;

public class Ex4_ScanEx {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.print("�̸�:");
		String name = sc.nextLine();
		System.out.print("����:");
		//Wrapper Ŭ������ �Ϲ��ڷ����� ���� Ŭ�����̴�.*************
		int age = Integer.parseInt(sc.nextLine());
		System.out.println("����� �Է��� ����:");
		System.out.println("Name:"+name);
		if(age>19) {
			System.out.println("����:"+age);
		}
		else {
			System.out.println("�̼���:"+age);
		}
	}

}
