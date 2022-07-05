package test;

import java.util.Scanner;

public class TestClass 
{
	// 변수
	private int num1; // 숫자를 담는 그릇
	private int num2;
	Scanner sc = new Scanner(System.in);
	// 메소드
	public void m1()
	{
		System.out.println("나는 m1메소드");
	}
	// 메소드르레 통해 num1과 num2의 데이터를 넣어보자
	public void setNum1(int num1) 
	{
		this.num1 = num1;
	}
	public void setNum2(int num2) 
	{
		this.num2 = num2;
	}
	
	// 두 수를 더하는 메소드를 만들어라
	public int sum() 
	{
		return num1 + num2;
	}
	public int sub() 
	{
		return num1 - num2;
	}
	public int mul() 
	{
		return num1 * num2;
	}
	public double div() 
	{
		return num1 / num2;
	}
	
	
	
}
