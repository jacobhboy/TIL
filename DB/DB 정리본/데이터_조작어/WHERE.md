## WHERE
---
   
     출력할 데이터에 조건 달기  
---
### WHERE 안에 들어가는 것들
**1. 비교 연산자**
    
    - '부등호' (< , > , >= ... 등등)

    - 'BETWEEN': (BETWEEN A AND B 모양으로 사용 , 문자열도 가능 A ~ Z)
    - 'IN': : ( where name in('WARD', 'TURNER');) name에 WARD나 TURNER이 있는 것 , NOT IN 으로 안에 없는 것 찾기 가능
   
    - 'LIKE': 문자열 에서 비교할때 (%나 _사용하여 일정 부분만 들어간 데이터도 조회 가능)
   
    - 'ESCAPE': 이름에 %나 _들어간거 찾을 때 \사용한다.
   
    - 'IS NULL': NULL 인것 IS NOT NULL 가능 

    - '<>' : WHERE price <> 13000; 가격이 13000이 아닌 것

      

**2. 논리 연산자** 
    
    - 'AND' : 조건 여러개 달때  A = 20 and B > 2000;
    
    - 'OR' : 조건 여러개 중 하나만 만족해도 O

    - 'NOT' : 위에 나온 비교연산자와 결합하여 활용
    
    