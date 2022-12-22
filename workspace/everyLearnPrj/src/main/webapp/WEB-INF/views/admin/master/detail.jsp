<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>에브리런 - 강사회원</title>
<link rel="stylesheet" href="/el/resources/css/admin/menu.css">
<link rel="stylesheet" href="/el/resources/css/admin/master/detail.css">

</head>
<body>
	<div class="wrap">
        <%@include file="/WEB-INF/views/admin/menu.jsp" %>
        <main>
            <h1>관리자정보</h1>
            <div id="line"></div>
            <div class="main-wrap">
                <form action="">
                    <div class="info-wrap">
                        <div class="info-items">
                            <div class="title-wrap" id="profile-wrap">
                                <label for="profile">프로필</label>
                            </div>
                            <div class="input-wrap">
                                <img src="/el/resources/upload/${vo.profileName }" alt="관리자사진" width="150px" height="200px">
                            </div>
                        </div>
                        <div class="info-items">
                            <div class="title-wrap">
                                <label for="name">이름</label>
                            </div>
                            <div class="input-wrap">
                                <input type="text" name="name" value="${vo.name }" readonly>
                            </div>
                        </div>
                        <div class="info-items">
                            <div class="title-wrap">
                                <label for="id">아이디</label>
                            </div>
                            <div class="input-wrap">
                                <input type="text" name="id" value="${vo.id }" readonly>
                            </div>
                        </div>

                        <div class="info-items">
                            <div class="title-wrap">
                                <label for="nick">닉네임</label>
                            </div>
                            <div class="input-wrap">
                                <input type="text" name="nick" value="${vo.nick }" readonly>
                            </div>
                        </div>
                        <div class="info-items">
                            <div class="title-wrap">
                                <label for="phone">전화번호</label>
                            </div>
                            <div class="input-wrap">
                                <input type="text" name="phone" value="${vo.phone }" readonly>
                            </div>
                        </div>
                        <div class="info-items">
                            <div class="title-wrap">
                                <label for="enrollDate">가입일</label>
                            </div>
                            <div class="input-wrap">
                                <input type="text" name="enrollDate" value="${vo.enrollDate }" readonly>
                            </div>
                        </div>
                        <div class="info-items">
                            <div class="title-wrap">
                                <label for="position">직급</label>
                            </div>
                            <div class="input-wrap">
                                <select name="position">
                                    <option class="position" value="1">사원</option>
                                    <option class="position" value="2">대리</option>
                                    <option class="position" value="3">팀장</option>
                                </select>
                            </div>
                        </div>
                        <div class="info-items">
                            <div class="title-wrap">
                                <label for="permission">권한</label>
                            </div>
                            <div class="input-wrap">
                                <select name="permission">
                                    <option class="permission" value="1">마스터</option>
                                    <option class="permission" value="2">일반</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="btn-area">
                        <button>수정</button>
                    </div>
                </form>
            </div>
        </main>
    </div>
    <script>
        let position = '${vo.position}'
        let positionArr = $('.position');
        
        for(let i = 0; i < positionArr.length; i++){
        	const check = positionArr[i].value;

        	if(check == position){
        		positionArr[i].selected = true;
        	}
        }
        
        let permission = '${vo.permission}'
        let permissionArr = $('.permission');
        
        for(let i = 0; i < permissionArr.length; i++){
        	const check = permissionArr[i].value;
        	
        	if(check == permission){
        		permissionArr[i].selected = true;
        	}
        }
    </script>
</body>
</html>