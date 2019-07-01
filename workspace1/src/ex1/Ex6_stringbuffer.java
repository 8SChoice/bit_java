package ex1;

public class Ex6_stringbuffer {
	public static void main(String[] args) {
		String str="AB";
		str+="CD";
		str+="EF";
		System.out.println(str);
		System.out.println("----------");
		
		StringBuffer sb = new StringBuffer();
		sb.append("ABC").append("DEF").append("ZZZ");
		System.out.println(sb);
	}

}
