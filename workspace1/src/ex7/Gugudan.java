package ex7;

import java.util.Scanner;

public class Gugudan {
	  public static void main(String[] args) {

	        Scanner n = new Scanner(System.in);

	        System.out.println("���� �Է��ϼ��� : ");

	        int dan = n.nextInt();

	        int r = dan/2;

	        for(int i=r+1; i<=dan+r; i++){

	            System.out.print(i+"��\t");

	        }

	        System.out.println();

	        for(int j=1; j<=9; j++){

	            for(int i=r+1; i<=dan+r; i++) {

	                System.out.print(i + "*" + j + "=" + i * j+"\t");

	            }

	            System.out.println();

	        }

	    }

}
