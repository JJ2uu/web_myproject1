package com.multi.www.web04;

public class MainCar2 {

	public static void main(String[] args) {
		Car car;
		for (int i = 0; i < 1000; i++) {
			car = new Car("빨강" + i, 100000, 200);
			System.out.println(car);
		}
		System.out.println("메모리크기>> " + 12 * 1000);
	}

}
