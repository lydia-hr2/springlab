<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<style>
    #map02 > #map{
        width: 400px;
        height: 400px;
        border: 2px solid red;
    }
</style>
<script>
    let map02 = {
      map:null,
      init:function (){
          this.display();
          $('#s_btn').click(function (){
              map02.go(37.5722099, 126.9768146);
          });
          $('#b_btn').click(function (){

          });
          $('#j_btn').click(function (){

          });
      },
        display:function (){
            var mapContainer = document.querySelector('#map02>#map');
            var mapOption = {
                center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
                level: 5 // 지도의 확대 레벨
            };
            map: new kakao.maps.Map(mapContainer, mapOption)
        },
    };
    // 마커가 표시될 위치입니다
    var markerPosition  = new kakao.maps.LatLng(33.450701, 126.570667);
    var marker = new kakao.maps.Marker({
        position: markerPosition
    });

    // 마커가 지도 위에 표시되도록 설정합니다

        go:function go(lat, lng){
            var moveLatLon = new kakao.maps.LatLng(lat, lng);
            map.panTo(moveLatLon);
            var markerPosition  = new kakao.maps.LatLng(lat, lng);
            var marker = new kakao.maps.Marker({
                position: markerPosition
        });
            marker.setMap(map);
    };
    $(function(){
    })
</script>
<div class="col-sm-8 text-left">
      <div class="container" id="map02">
      <h3>MAP02</h3>
          <button id="s_btn" type="button" class="btn btn-primary">Seoul</button>
          <button id="b_btn" type="button" class="btn btn-primary">Busan</button>
          <button id="j_btn" type="button" class="btn btn-primary">Jeju</button>
          <div id="map"></div>
  </div>
</div>