<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 - 아이디 찾기</title>
<link rel="stylesheet" href="/el/resources/css/admin/find/id.css">
<link rel="stylesheet" href="/el/resources/css/common/reset.css">
</head>
<body>
    <div class="container">
        <div class="main">
            <div class="logo-wrap">
                <img src="/el/resources/img/admin/logo2.png" alt="로고" width="100%" height="100%">
            </div>
            <div class="find-wrap">
                <div class="title">
                    <h1>아이디(이메일) 찾기</h1>
                    <p>계정에 등록된 휴대폰 번호를 입력하시면
                        <br>
                        계정의 이메일 주소를 알려드립니다.
                    </p>
                </div>
                <form>
                    <section class="phone-area input-area">
                        <div>
                            <label for="phone">휴대폰 번호</label>
                            <div class="input-area">
                                <input type="tel" id="phone" name="phone" placeholder="숫자만 입력해주세요.">
                            </div>
                        </div>
                        <p class="hidden">휴대폰 번호를 입력해주세요.</p>
                    </section>
                    <section class="auth-area input-area hidden">
                        <div>
                            <div class="left">
                                <label>인증번호</label>
                                <div class="input-area">
                                    <input type="tel" placeholder="인증번호를 입력">
                                </div>
                            </div>
                            <div class="right">
                                <button>
                                    <span>재발송</span>
                                </button>
                            </div>
                        </div>
                        <p class="hidden">인증번호를 입력해주세요.</p>
                    </section>
                    <section class="btn-area">
                        <button>
                            <span>인증번호 받기</span>
                        </button>
                    </section>
                </form>
            </div>
        </div>
    </div>
</body>
</html>