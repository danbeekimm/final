<%@ page contentType="text/html;charset=utf-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="com.fastcampus.ch2.*" %>
<%
	Person person = new Person();     //person은 lv , 이건 el에서 쓸수없어서 request에 저장해야함. 
	request.setAttribute("person", person); //request객체에 저장(map)
	request.setAttribute("name", "남궁성");   
	request.setAttribute("list", new java.util.ArrayList());	//빈문자열
%>
<html>  
<head>   
	<title>EL</title>   
</head>  
<body>   
person.getCar().getColor()=<%=person.getCar().getColor()%> <br>
person.getCar().getColor()=${person.getCar().getColor()} <br> <!-- 위랑같음 -->
person.getCar().getColor()=${person.car.color} <br>    <!-- 위랑같음 -->
name=<%=request.getAttribute("name")%> <br>   
name=${requestScope.name} <br> <!-- Scope: 4가지기본객체(저장소)(좁->넓) page,reuqest,session,application -->
<!-- name은 request에 저장되어있음. map이름이 requestscope임. -->
name=${name} <br> <!-- 생략가능 없으면 ㅁ스콥을 하나하나 뒤진다. 그래서 생략가능해.. -->
id=<%=request.getParameter("id")%> <br> <!-- null -->
id=${pageContext.request.getParameter("id")} <br> <!-- 위랑같음 --><!-- null이없음 아무것도안나옴 -->
id=${param.id} <br> <!-- 위랑같음 -->
"1"+1 = ${"1"+1} <br> <!-- el은 숫자로바뀜 null도 빈문자도 다 0으로 바뀜 -->
"1"+="1" = ${"1"+="1"} <br><!-- 숫자싫으면 +=로 해야해 -->
"2">1 = ${"2">1} <br>   
null = ${null}<br>
null+1 = ${null+1} <br>
null+null = ${null+null} <br>
"" + null = ${""+null} <br>   
""-1 = ${""-1} <br> 
empty null=${empty null} <br><!-- null이나 빈문자이면 true -->
empty list=${empty list} <br> <!-- 비어있어서 true -->
null==0 = ${null==0} <br>
null eq 0 = ${null eq 0} <br>
name == "남궁성"=${name=="남궁성"} <br>
name != "남궁성"=${name!="남궁성"} <br>
name eq "남궁성"=${name eq "남궁성"} <br>  
name ne "남궁성"=${name ne "남궁성"} <br>  
name.equals("남궁성")=${name.equals("남궁성")} <br>   
</body>
</html>
