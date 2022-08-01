package ch01;

public class ex_1 {
	public static void main(String[] args) {
		//객체생성
		Tv t;  //tv인스턴스 참조변수 t 선언
		t = new Tv(); //tv 인스턴스 생성 후 t에 넣기
		//객체사용
		t.channel = 7; //멤버변수값 7  //변수사용
		t.channelDown(); //메서드 호출 //메서드사용
		System.out.println("채널은"+t.channel);
		
	}
}

class Tv {
	//멤버변수
	String color;
	boolean power;
	int channel;
	
	//메서드
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
