<%-- <%@page import="model.EvalBookBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.MemberBean"%>
<%@page import="java.util.List"%>
<%@page import="dao.AppleDao"%> --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="function" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EDIT CLIENT INFO</title>
</head>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<script type="text/javascript"
   src=" https://code.jquery.com/jquery-3.5.0.min.js"></script>
<script>

 /* function sendData(){
    var obj=document.form;
   if(!obj.password1.value){
      alert("비밀번호를 입력하세요");
      obj.password1.focus();
      return false;
   }else if(obj.password1.value!=obj.password2.value){
      alert("비밀번호가 서로 다릅니다!!");
      obj.password2.focus();
      return false;
   }else if(obj.password1.value==obj.password2.value){
      obj.pw.value=obj.password1.value;
   }else if(!obj.email.value){
      alert("email을 입력하세요");
      obj.email.focus();
      return false;
   }else if(!obj.nickname.value){
      alert("닉네임을 입력하세요");
      obj.nickname.focus();
      return false;
   }else if(!obj.tel.value){
      alert("전화번호을 입력하세요");
      obj.tel.focus();
      return false;
   }else if(!obj.checkbox.value){
      alert("개인정보 수집체크를 동의해주세요");
      
      return false; 
   //체크박스처리 다시하기
   } 
 } */
   
   $(function(){
      $("#commit").click(function(){
         if($("#id").val().length==0){
            alert("id를 확인해주세요");
            $("#id").focus();
            return false;
         }else if($("#pw").val().length==0 || $("#pw2").val().length==0 ||
                                       $("#pw").val()!=$("#pw2").val()){
            alert("패스워드를 정확히 입력해주세요");
            $("#pw").val('');
            $("#pw2").val('');
            $("#pw").focus();
            return false;
         }else if($("#nickname").val().length==0){
            alert("닉네임을 입력해주세요");
            $("#nickname").focus();
            return false;
         }else if($("#email").val().length==0){
            alert("이메일을 입력해주세요");
            $("#email").focus();
            return false;
         }else if($("#phonenumber").val().length==0){
            alert("전화번호를 입력해주세요");
            $("#phonenumber").focus();
            return false;
         }else if($("#pw").val()==$("#pw2").val()){
            $("#signpassword").val($("#pw").val());
         }
         $("form").submit();
      });
   });

   
</script>
<body>
<br>
<br>  




   
   
 <form action="updateInfo.do" method="post">
      <div class="w3-container" style="margin-left: 10px">
         <div style="line-height: 6px;">
            <p>
            <label>아이디 *(변경불가)</label>
            <input class="w3-input w3-border w3-round" name="id" id="id" type="text"   value="${info.id}" readonly > 
               <%-- **${info.id} --%>
            </p>   
         </div>
         
         <br> 
         <div style="line-height: 6px;">
            <p>
               <label>비밀번호</label> 
               <input class="w3-input w3-border w3-round" name="pw" id="pw" type="password" value="${info.pw}">
            </p>
            <p class="w3-text-blue" style="font-size: 10px; margin-top: 5px;">영문,숫자를 포함한 8~16자 조합으로 입력해주세요.</p>
         </div>
         <br>
         
         
         <div style="line-height: 6px;">
            <p>
               <label>비밀번호 확인</label> 
               <input class="w3-input w3-border w3-round" name="pw2" id="pw2" type="password" value="${info.pw}">
               <input class="w3-input w3-border w3-round" name="signpassword" id="signpassword" type="hidden" value="${info.pw}">
            </p>
            <p class="w3-text-blue" style="font-size: 10px; margin-top: 5px;">비밀번호 확인을 위해 비밀번호를 다시 한번 입력해 주세요.</p>
         </div>
         <br>
         <div style="line-height: 6px;">
            <p>
               <label>이름 *(변경불가)</label> 
               <input class="w3-input w3-border w3-round" name="name" type="text" value="${info.name}" readonly>
               <%-- **${info.name} --%>
            </p>
         </div>
         <br>
         <div style="line-height: 6px;">
            <p>
               <label>닉네임</label> 
               <input class="w3-input w3-border w3-round" name="nickname" type="text" value="${info.nickname}" >
            </p>
         </div>
         <br>

         <div style="line-height: 6px;">
            <p>
               <label>전화번호</label> <input class="w3-input w3-border w3-round"
                  name="phonenumber" type="text" value="${info.phonenumber}" >
            </p>
         </div>
         <br>
         <div style="line-height: 6px;">
            <p>
               <label>이메일</label> <input class="w3-input w3-border w3-round"
                  name="email" type="text" value="${info.email}" >
            </p>
         </div>
         <br>
         <div style="line-height: 6px;">
            <p>
               <label>생년월일 *(변경불가)</label> <input class="w3-input w3-border w3-round"
                  name="birth" type="text" value="${info.birth}" readonly>
                  <%-- **${info.birth} --%>
            </p>
         </div>
         <br>
         <div style="line-height: 6px;">
            <p>
               <label>나의 구독권 *(변경불가)</label> <input class="w3-input w3-border w3-round"
                  name="subscribecode" type="text" value="${info.subscribecode}" readonly>
                  <%-- **${info.subscribecode} --%>
            </p>
         </div>
         <hr>
         <hr>
         <br><br>

         <!-- <div style="line-height: 8px;">
            <input class="w3-check" type="checkbox" id="checkbox" >
            <label>개인정보수집 및 이용 동의</label>
            
            <div style="font-size: 10px; line-height: 4px">
               <p>＊개인정보 수집 목적 : 원활한 밀리의 서재 서비스 이용을 위해 수집합니다.</p>
               <p>＊개인정보 수집 항목 : 프로필 이미지, 필명,휴대폰 번호, 이메일</p>
               <p>＊개인정보 이용기간 : 회원 탈퇴 시 또는 개인정보처리방침에 따라 보유 및 파기 됩니다.</p>
            </div>
         </div> -->
      <button class="w3-button w3-yellow w3-round " style="width: 100%;"><a id="commit">수정완료</a></button>               
         <!-- <input type="submit" value="수정완료" ><a href="javascript:sendData()" id="editSuccess"> </a> -->
      <br>
      </div>
      
      <br><br>
   </form> 

</body>
</html>