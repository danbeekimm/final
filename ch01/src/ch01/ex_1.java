package ch01;

public class ex_1 {
	public static void main(String[] args) {
		//��ü����
		Tv t;  //tv�ν��Ͻ� �������� t ����
		t = new Tv(); //tv �ν��Ͻ� ���� �� t�� �ֱ�
		//��ü���
		t.channel = 7; //��������� 7  //�������
		t.channelDown(); //�޼��� ȣ�� //�޼�����
		System.out.println("ä����"+t.channel);
		
	}
}

class Tv {
	//�������
	String color;
	boolean power;
	int channel;
	
	//�޼���
	void power() {
		power = !power;
	}
	
	void channelUp() {
		++channel;
	}
	
	void channelDown() {
		--channel;
	}
}