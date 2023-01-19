<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>에브리런 -  알림</title>
<link rel="stylesheet" href="/el/resources/css/alert/list.css">
<link rel="stylesheet" href="/el/resources/css/common/reset.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
<script src="https://ajax.googleapis.com/ajax/libs/jtitlery/3.6.1/jtitlery.min.js"></script>
</head>

<body>
    <%@ include file="/WEB-INF/views/common/header.jsp" %>

    <main id="container">
        <div id="sidebar">
            <%@ include file="/WEB-INF/views/member/member_sidebar.jsp"%>
        </div>
        <div class="main-wrap">
            <div class="list-box">
                <div class="header-section">
                    <div>
                        읽지 않은 알림 
                        <span id="cnt">${map.cnt }</span>
                        개
                    </div>
                    <div>

                    </div>
                </div>
                <ul class="list-section">
                	<c:if test="${!empty map.voList }">
						<c:forEach items="${map.voList }" var="list">
							<li>
								<c:if test="${list.clickYn=='Y' }">
									<div class="list-items title" onclick="btn('${list.no}','${list.clickYn}');">
			                            <div>
			                                <span><i class="bi bi-check-circle-fill"></i></span>
			                                <span>
			                                    [${list.category}]
			                                    <span>${list.title}</span>
			                                </span>
			                            </div>
			                            <div>
			                                <span>${list.sendDate }</span>
			                            </div>
			                        </div>
								</c:if>
								<c:if test="${list.clickYn=='N' }">
									<div class="list-items title color" onclick="btn('${list.no}','${list.clickYn}');">
			                            <div>
			                                <span><i class="bi bi-check-circle-fill"></i></span>
			                                <span>
			                                    [${list.category}]
			                                    <span>${list.title}</span>
			                                </span>
			                            </div>
			                            <div>
			                                <span>${list.sendDate }</span>
			                            </div>
			                        </div>
								</c:if>
		                        <div class="content">
		                            <span>${list.content}</span>
		                        </div>
		                    </li>
						</c:forEach>
                	</c:if>
					<c:if test="${empty map.voList }">
						<p>받은 알림이 없습니다.</p>
					</c:if>
                </ul>
            </div>
        </div>

    </main>
        <%@ include file="/WEB-INF/views/common/footer.jsp" %>

    <script>
        $(".title").click(function() {
            // 아코디언효과
            $(this).next(".content").stop().slideToggle(300);
            $(this).toggleClass('on').siblings().removeClass('on');
            $(this).next(".content").siblings(".content").slideUp(300); // 1개씩 펼치기
            // 클릭하면 읽음 처리를 위해 class color지우기
            $(this).removeClass("color");
        });

        // list 중 하나 클릭 시 읽음 처리해주는 ajax
        function btn(no, click){
            const cnt = $("#cnt").text();
            // 클릭 n 과 읽지 않은 글 0이 아니라면 ajax 실행
            if(click == 'N' && cnt != '0'){
                console.log("ajax감");
                $.ajax({
                    url : "/el/my/alert/check",
                    method : "post",
                    data : {"no" : no},
                    success : function(data){
                        if(data != ""){
                            // cnt도 세어주고 있다.
                            $("#cnt").text(data);
                        }
                    },
                    error : function(){
                        console.log("ajax오류");
                    }
                });

            }
        }
        

    </script>

</body>

</html>