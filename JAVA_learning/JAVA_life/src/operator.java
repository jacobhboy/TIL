
public class operator {

	public static void main(String[] args) {
		// result 의 값은 3
        int result = 1 + 2;
        System.out.println(result);
  
        // result 의 값은 2
        result = result - 1;
        System.out.println(result);
  
        // result 의 값은 4
        result = result * 2;
        System.out.println(result);
  
        // result 의 값은 2
        result = result / 2;
        System.out.println(result);
  
        // result 의 값은 10
        result = result + 8;
        // result 의 값은 3
        result = result % 7;
        System.out.println(result);
        
        //나머지는 순환하는 값 만들 수 있다
        int a = 3;
        System.out.println(0%a);
        System.out.println(1%a);
        System.out.println(2%a);
        System.out.println(3%a);
        System.out.println(4%a);
        System.out.println(5%a);
        System.out.println(6%a);
        
        //문자열 결합할때도 + 연산자 사용됨
        String firstString = "This is";
        String secondString = " a concatenated string.";
        String thirdString = firstString+secondString;
        System.out.println(thirdString);
        
        float fir1 = 10.0f;
        float sec1 = 3.0f;
        System.out.println(fir1/sec1); //3 출력 정수의 범위 내에서만
        
        float fir2 = 10.0f;
        float sec2 = 3.0f;
        System.out.println(fir2/sec2); //3.3333333 출력 실수 범위 내에서
        
	}

}
