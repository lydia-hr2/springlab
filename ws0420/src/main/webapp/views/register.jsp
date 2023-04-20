<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href="https://fonts.googleapis.com/css2?family=Bitter:wght@600&family=Nanum+Myeongjo:wght@800&display=swap"
      rel="stylesheet">
<script>
  let register_form = {
    init: function () {
      $("#register_btn").click(function () {
        register_form.send(); // this.send() 안됨! 유의
      });
    },
    // 서버로 보내기
    send: function () {
      $("#register_form").attr({
        'action': '/registerimpl',
        'method': 'post'
      });
      $("#register_form").submit();
    }
  };

  // 화면 로딩
  $(function () {
    register_form.init();
  });
  
</script>
<div class="col-sm-8 text-left">
  <div class="container">
    <div class="row content">
      <div class="col-sm-6 text-left">
        <div>
          <h2 style="text-align: center">로그인</h2>
        </div>
        <br><br><br>
        <form class="form-horizontal" id="login_form" action="">
          <div class="form-group">
            <label class="control-label col-sm-2" for="id">아이디:</label>
            <div class="col-sm-10">
              <input type="text" class="form-control" id="id" placeholder="Enter id" name="id">
            </div>
          </div>
          <div class="form-group">
            <label class="control-label col-sm-2" for="password">패스워드:</label>
            <div class="col-sm-10">
              <input type="password" class="form-control" id="password" placeholder="Enter password"
                     name="password">
            </div>
          </div>
          <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
              <div class="checkbox">
                <label><input type="checkbox" name="remember">기억하기</label>
              </div>
            </div>
          </div>
        </form>
        <div class="form-group">
          <div class="col-sm-offset-2 col-sm-10">
            <button type="button" id="login_btn" class="btn btn-primary">로그인</button>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>