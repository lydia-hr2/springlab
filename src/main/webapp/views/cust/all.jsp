<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="col-sm-8 text-left">
      <div class="container">
          <div class="row content">
              <div class="col-sm-7">
                  <h3>JSP03</h3>
                  <table class="table">
                      <thead>
                      <tr>
                          <th>ID</th>
                          <th>PWD</th>
                          <th>NAME</th>
                      </tr>
                      </thead>
                      <tbody>

                      <c:forEach var="c" items="${clist}">

                          <tr class="success">
                              <td>${c.id}</td>
                              <td>${c.pwd}</td>
                              <td>${c.name}</td>
                          </tr>
                      </c:forEach>
                      </tbody>
                  </table>
              </div>
  </div>
</div>
</div>