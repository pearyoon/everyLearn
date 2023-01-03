<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/el/resources/css/emp/empMain.css">
<link rel="stylesheet" href="/el/resources/css/emp/resume.css">
<link rel="stylesheet" href="/el/resources/css/common/font.css">
<link rel="icon" type="image/png" sizes="16x16" href="/el/resources/img/logo/favicon-16x16.png">
</head>
<body>

	<%@ include file="/WEB-INF/views/common/emp-header.jsp"%>

	<main id="container">
		<article class="article">
			<div class="title">
				<h5>정확하게 입력했는지 다시 한번 확인해주세요!</h5>
			</div>
			<form action="/el/emp/resume" method="POST" enctype="multipart/form-data">
				<div class="main">
					<div class="main-wrapper">
						<section class="section">
							<div class="title">
								<h3>기본정보</h3>
							</div>
							<div class="content">
								<div class="basic-info">
									<div class="list">
										<p>이름</p>
										<div>
											<input type="text" name="name" class="input">
										</div>
									</div>
									<div class="list">
										<p>전화번호</p>
										<div>
											<input type="text" name="phone" class="input">
										</div>
									</div>
									<div class="list">
										<p>이메일</p>
										<div>
											<input type="text" name="email" class="input">
										</div>
									</div>
									<!-- 드롭다운으로 변경 예정 -->
									<div class="list">
										<p>관심 직군</p>
										<div class="dropdown">
											<select name="category" class="input">
												<option value="1">IT직군</option>
												<option value="2">경영/사무</option>
												<option value="3">디자인</option>
												<option value="4">마케팅</option>
												<option value="5">교육</option>
											</select>
										</div>
									</div>
									<!-- 주소 api -->
									<div class="list expand">
										<p>주소</p>
										<div>
											<input type="text" name="address" class="input additional">
										</div>
									</div>
									<div class="list expand">
										<p>상세주소</p>
										<div>
											<input type="text" name="address-deatail"
												class="input additional">
										</div>
									</div>
								</div>
							</div>
						</section>
						<section class="section">
							<div class="title">
								<h3>경력</h3>
							</div>
							<div class="content">
								<div class="content-wrapper">
									<div class="wrapper">
										<div class="list-wrapper">
											<div class="list-title">
												<h4>학력</h4>
											</div>
											<div class="grid">
												<div class="list">
													<p>학력</p>
													<div>
														<input type="text" name="evList[0].education" class="input">
													</div>
												</div>
												<div class="list">
													<p>학교명</p>
													<div>
														<input type="text" name="evList[0].schoolName" class="input">
													</div>
												</div>
												<div class="list">
													<p>전공</p>
													<div>
														<input type="text" name="evList[0].major" class="input">
													</div>
												</div>
												<!-- 드롭다운 변경 예정 -->
												<div class="list">
													<p>졸업 여부</p>
													<div>
														<input type="text" name="evList[0].status" class="input">
													</div>
												</div>
												<div class="list">
													<p>교육기간</p>
													<div class="date-wrapper">
														<div class="date-input start">
															<input type="text" name="evList[0].enterSchool" class="input small year">년
															<input type="text" name="evList[0].graduate" class="input small">월
														</div>
														<div class="tilde"> ~ </div>
														<div class="date-input finish">
															<input type="text" name="evList[0].enterSchool" class="input small">년
															<input type="text" name="evList[0].graduate" class="input small">월
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="company-wrapper">
										<div class="wrapper">
											<div class="list-wrapper">
												<div class="list-title">
													<h4>업무 경험</h4>
												</div>
												<div class="grid">
													<div class="list">
														<p>회사명</p>
														<div>
															<input type="text" name="company" class="input">
														</div>
													</div>
													<div class="list">
														<p>부서명</p>
														<div>
															<input type="text" name="team" class="input">
														</div>
													</div>
													<div class="list">
														<p>직책</p>
														<div>
															<input type="text" name="position" class="input">
														</div>
													</div>
													<div class="list">
														<p>재직기간</p>
														<div class="date-wrapper">
															<div class="date-input start">
																<input type="text" name="evList[0].enterSchool" class="input small year">년
																<input type="text" name="evList[0].graduate" class="input small">월
															</div>
															<div class="tilde"> ~ </div>
															<div class="date-input finish">
																<input type="text" name="evList[0].enterSchool" class="input small">년
																<input type="text" name="evList[0].graduate" class="input small">월
															</div>
														</div>
													</div>
													<!-- 드롭 다운 -->
													<div class="list">
														<p>근무유형</p>
														<div>
															<input type="text" name="type" class="input">
														</div>
													</div>
													<!-- 드롭 다운 -->
													<div class="list">
														<p>재직 여부</p>
														<div>
															<input type="text" name="status" class="input">
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</section>
						<section class="section">
							<div class="title">
								<h3>보유 역량</h3>
							</div>
							<div class="content">
								<div class="content-wrapper">
									<div class="award-wrapper">
										<div class="wrapper">
											<div class="list-wrapper">
												<div class="list-title">
													<h4>수상</h4>
												</div>
												<div class="grid">
													<div class="list">
														<p>수상내역</p>
														<div>
															<input type="text" name="award" class="input">
														</div>
													</div>
													<div class="list">
														<p>수상년도</p>
														<div>
															<input type="text" name="award-date" class="input">
														</div>
													</div>
													<!-- textarea -->
													<div class="list">
														<p>수상기관</p>
														<div>
															<input type="text" name="award-detail" class="input">
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="certificate-wrapper">
										<div class="wrapper">
											<div class="list-wrapper">
												<div class="list-title">
													<h4>자격증</h4>
												</div>
												<div class="grid">
													<div class="list">
														<p>자격증명</p>
														<div>
															<input type="text" name="certificate" class="input">
														</div>
													</div>
													<!-- textarea -->
													<div class="list">
														<p>취득일</p>
														<div>
															<input type="text" name="certificate-detail"
																class="input">
														</div>
													</div>
													<div class="detail">
														<p>발급기관</p>
														<div>
															<input type="text" name="certificate-date" class="input">
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="language-wrapper">
										<div class="wrapper">
											<div class="list-wrapper">
												<div class="list-title">
													<h4>언어</h4>
												</div>
												<div class="grid">
													<div class="list">
														<p>언어명</p>
														<div>
															<input type="text" name="language" class="input">
														</div>
													</div>
													<!-- 드롭다운 -->
													<div class="list">
														<p>수준</p>
														<div>
															<input type="text" name="level" class="input">
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</section>
						<section class="section">
							<div class="title">
								<h3>자기소개</h3>
							</div>
							<div class="content-wrapper">
								<div class="wrapper">
									<div class="list-wrapper">
										<div class="introduce-title">
											<h4>자기소개</h4>
											<span>최대 5000자</span>
										</div>
										<div class="textarea">
											<textarea type="text" name="introduce" class="introduce"
												maxlength="5000"></textarea>
										</div>
									</div>
								</div>
						</section>
						<section class="section">
							<div class="title">
								<h3>추가정보</h3>
							</div>
							<div class="content">
								<div class="content-wrapper">
									<div class="list">
										<p>링크</p>
										<div>
											<input type="text" name="link" class="input additional">
										</div>
									</div>
									<div class="list">
										<p>첨부파일</p>
										<div>
											<input type="text" name="attachments"
												class="input additional">
										</div>
									</div>
								</div>
							</div>
						</section>
					</div>
					<c:if test="${not empty loginMember }">
					<div class="button-wrapper">
						<button type="submit">제출하기</button>
					</div>
					</c:if>
			</form>
		</article>
	</main>

	<%@ include file="/WEB-INF/views/common/footer.jsp"%>
	<script src="/el/resources/js/emp/resume.js"></script>
</body>
</html>