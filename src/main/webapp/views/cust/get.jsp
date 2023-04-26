<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<link href="https://fonts.googleapis.com/css2?family=Bitter:wght@600&family=Nanum+Myeongjo:wght@800&display=swap"
      rel="stylesheet">
<script>

    $(function () {
    });

</script>
<div class="col-sm-8 text-left">
    <div class="container">
        <div class="row content">
            <div class="col-sm-6 text-left">
                <div>
                    <h1>Detail Page</h1>
                </div>
                <br><br><br>
                <form class="form-horizontal" id="register_form" action="">
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="id">ID:</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="id" name="id" value="${gcust.id}">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="pwd">Password:</label>
                        <div class="col-sm-10">
                            <input type="pwd" class="form-control" id="pwd" name="pwd" value="${gcust.pwd}" readonly>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="name">Name:</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control"  name="name" id="name" value="${gcust.name}">
                        </div>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <div class="checkbox">
                                <label><input type="checkbox" name="remember">Remember Me!</label>
                            </div>
                        </div>
                    </div>
                    </div>
                </form>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <button type="button" id="update_btn" class="btn btn-default">Update</button>
                    </div>
                    <div class="col-sm-offset-2 col-sm-10">
                        <button type="button" id="remove_btn" class="btn btn-default">Remove</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>