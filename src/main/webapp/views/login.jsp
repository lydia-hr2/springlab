<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href="https://fonts.googleapis.com/css2?family=Bitter:wght@600&family=Nanum+Myeongjo:wght@800&display=swap"
      rel="stylesheet">
<script>


    // 화면 로딩
    $(function () {
        login_form.init();
    });

</script>
<div class="col-sm-8 text-left">
    <div class="container">
        <div class="row content">
            <div class="col-sm-6 text-left">
                <div>
                    <h2 style="text-align: center">Login</h2>
                </div>
                <br><br><br>
                <form class="form-horizontal" id="login_form" action="">
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="id">ID:</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="id" placeholder="Enter id" name="id">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="pwd">Password:</label>
                        <div class="col-sm-10">
                            <input type="pwd" class="form-control" id="pwd" placeholder="Enter password"
                                   name="pwd">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <div class="checkbox">
                                <label><input type="checkbox" name="remember">Remember Me!</label>
                            </div>
                        </div>
                    </div>
                </form>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <button type="button" id="login_btn" class="btn btn-primary">Login</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>