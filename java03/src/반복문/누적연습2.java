package 반복문;

import javax.swing.JOptionPane;

public class 누적연습2 {

	public static void main(String[] args) {
		// 1. 숫자누적
		// 5부터 300까지 5의 배수만 모두 더해보세요.
		// i % 5 == 0
		int sum = 0;
		for (int i = 5; i <= 300; i++) {
			if (i % 5 == 0) {
				sum = sum + i;
			}
		}
		System.out.println("5의 배수만 더한 값 = " + sum);
		
		// 2. 문자누적
		String sum2 = "";
		for (int i = 0; i < 4; i++) {
			String data = JOptionPane.showInputDialog("먹고싶은 디저트 " + (i + 1 ) + "번째" );
			sum2 = sum2 + data + ", ";
		}
		System.out.println("지금 먹고싶은 디저트는 " + sum2 + "입니다.");
	}

}
