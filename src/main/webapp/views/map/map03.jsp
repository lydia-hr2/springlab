<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<style>
    #map03 > #map{
        width: 600px;
        height: 600px;
        border: 2px solid red;
    }
</style>
<script>
    let map03 = {
        map:null,
        init:function (){
            this.display();
            $('#s_btn').click(function (){
                map02.go(37.5722099, 126.9768146, 's');
            });
            $('#b_btn').click(function (){
                map02.go(37.5722099, 126.9768146, 'b');
            });
            $('#j_btn').click(function (){
                map02.go(37.5722099, 126.9768146, 'j');
            });
        },
        display:function (){
            var mapContainer = document.querySelector('#map03>#map');
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

    go:function go(lat, lng,loc){
        var moveLatLon = new kakao.maps.LatLng(lat, lng);
        map.panTo(moveLatLon);


        var markerPosition  = new kakao.maps.LatLng(lat, lng);
        var marker = new kakao.maps.Marker({
            position: markerPosition
        });
        marker.setMap(map);
    }
    markers:function loc(loc){
        $.ajax({
            url:'/markers',
            data:{'loc':loc},
            success:function(data){
                map03.displaymarkers(data);
            }
        });
    }
    displaymarkers: function data(positions){

    }
    $(function(){
        function displaymarkers(positions){

            var imageSrc = "https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png";
            for (var i = 0; i < positions.length; i ++) {
                var imageSize = new kakao.maps.Size(20, 30);
                var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize);
                var markerPosition = new kakao.maps.LatLng(positions[i].lat, positions[i].lng);

                var marker = new kakao.maps.Marker({
                    map: map,
                    position: markerPosition,
                    title : positions[i].title,
                    image : markerImage
                });
                // infoWindow
                var iwContent = '<h2>'+positions[i].title+'</h2>';
                iwContent += '<img src="/img/'+positions[i].img+'" style="width:50px">';

                var infowindow = new kakao.maps.InfoWindow({
                    position : positions[i].latlng,
                    content : iwContent
                });

                kakao.maps.event.addListener(marker, 'mouseover', mouseoverListener(marker, infowindow));
                kakao.maps.event.addListener(marker, 'mouseout', mouseoutListener(marker, infowindow));
                kakao.maps.event.addListener(marker, 'click', mouseclickListener(positions[i].target));


                function mouseoverListener(marker, infowindow) {
                    return function(){
                        infowindow.open(map, marker);
                    };
                }
                function mouseoutListener(marker, infowindow) {
                    return function(){
                        infowindow.close();
                    };
                }
                function mouseclickListener(target) {
                    return function(){
                        location.href = target;
                    };
                }

            } // end for

        } // end function
    })
</script>

<div class="col-sm-8 text-left">
      <div class="container" id="map03">
      <h3>MAP03</h3>
          <button id="s_btn" type="button" class="btn btn-primary">Seoul</button>
          <button id="b_btn" type="button" class="btn btn-primary">Busan</button>
          <button id="j_btn" type="button" class="btn btn-primary">Jeju</button>
          <div id="map"></div>
      </div>

  </div>
</div>