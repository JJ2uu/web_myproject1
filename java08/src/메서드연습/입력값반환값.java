package 메서드연습;

import java.util.Random;

import javax.swing.JOptionPane;

public class 입력값반환값 {

	public static void main(String[] args) {
		Random r = new Random();
		int data1 = r.nextInt(5); // 0~4 , return = int
		String data2 = JOptionPane.showInputDialog("이름 입력"); // return = String
		JOptionPane.showMessageDialog(null, data2); // return 값이 없어서 저장할 수 없음, void
	}

}
