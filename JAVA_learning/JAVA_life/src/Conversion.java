
public class Conversion {

	public static void main(String[] args) {
		//자동형 변환
		double a = 100.0F; //float형으로 쓰인 숫자가 더블로 바뀜
		float b = 100;//.0; //더 큰 범위인 더블을 플롯에 넣으려고 하여 오류
		
		int c = 10 ;
		float d = 11.1F;
		double e = c + d; //int형이  플롯으로 바뀌어서 더해진다.
		
		//명시적 형변환
		/*float a = 100.0;
		int b = 100.0F;*/   //여기서는 오류가 뜬다
		
		float a = (float)100.0;
		int b = (int)100.0F; //(데이터 타입)데이터 값
	}

}
