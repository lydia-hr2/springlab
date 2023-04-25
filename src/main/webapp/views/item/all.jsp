<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<style>
    #item_img{
        width:80px;
    }
</style>
<div class="col-sm-8 text-left">
      <div class="container">
          <div class="row content">
              <div class="col-sm-7">
                  <h3>JSP03</h3>
                  <table class="table">
                      <thead>
                      <tr>
                          <th>IMG</th>
                          <th>ID</th>
                          <th>NAME</th>
                          <th>PRICE</th>
                          <th>REGDATE</th>
                      </tr>
                      </thead>
                      <tbody>

                      <c:forEach var="c" items="${itemList}">
                          <tr>
                              <td>${c.id}</td>
                              <td><img class="image" src="/img/${c.imgName}"></td>
                              <td>${c.name}</td>
                              <td><fmt:formatNumber value="${c.price}" type="currency" /></td>
                              <td>${c.regdate}</td>
                          </tr>
                      </c:forEach>
                      </tbody>
                  </table>
              </div>
          </div>
  </div>
</div>