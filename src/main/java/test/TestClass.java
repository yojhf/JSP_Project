package test;

import java.util.Scanner;

public class TestClass 
{
	// ����
	private int num1; // ���ڸ� ��� �׸�
	private int num2;
	Scanner sc = new Scanner(System.in);
	// �޼ҵ�
	public void m1()
	{
		System.out.println("���� m1�޼ҵ�");
	}
	// �޼ҵ帣�� ���� num1�� num2�� �����͸� �־��
	public void setNum1(int num1) 
	{
		this.num1 = num1;
	}
	public void setNum2(int num2) 
	{
		this.num2 = num2;
	}
	
	// �� ���� ���ϴ� �޼ҵ带 ������
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
