<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<style>
    #c1, #c2, #c3{
        width: 250px;
        height: 300px;
        border: 2px solid darkcyan;
        margin: 0 10px;
    }
</style>
<script>
    let chart03 = {
        init:function (){
            this.getdata1();
            this.getdata2();
            this.getdata3();
        },
        getdata1: function (){
            $.ajax({
                url:'/chart0301',
                success:function(result){
                    chart03.display1(result);
                }
            });
        },
        getdata2: function (){},
        getdata3: function (){},
        display1: function (result){
            Highcharts.chart('container', {
                chart: {
                    type: 'variablepie'
                },
                title: {
                    text: 'Countries compared by population density and total area, 2022.',
                    align: 'left'
                },
                tooltip: {
                    headerFormat: '',
                    pointFormat: '<span style="color:{point.color}">\u25CF</span> <b> {point.name}</b><br/>' +
                        'Area (square km): <b>{point.y}</b><br/>' +
                        'Population density (people per square km): <b>{point.z}</b><br/>'
                },
                series: [{
                    minPointSize: 10,
                    innerSize: '20%',
                    zMin: 0,
                    name: 'countries',
                    borderRadius: 5,
                    data: [{
                        name: 'Spain',
                        y: 505992,
                        z: 92
                    }, {
                        name: 'France',
                        y: 551695,
                        z: 119
                    }, {
                        name: 'Poland',
                        y: 312679,
                        z: 121
                    }, {
                        name: 'Czech Republic',
                        y: 78865,
                        z: 136
                    }, {
                        name: 'Italy',
                        y: 301336,
                        z: 200
                    }, {
                        name: 'Switzerland',
                        y: 41284,
                        z: 213
                    }, {
                        name: 'Germany',
                        y: 357114,
                        z: 235
                    }],
                    colors: [
                        '#4caefe',
                        '#3dc3e8',
                        '#2dd9db',
                        '#1feeaf',
                        '#0ff3a0',
                        '#00e887',
                        '#23e274'
                    ]
                }]
            });

        },
        display2: function (result){},
        display3: function (result){}
    };
    $(function(){
        chart03.init();
    })
</script>

<div class="col-sm-8 text-left">
      <div class="container">
      <h3>CHART03</h3>
          <div class="row">
              <div class="col-sm-4" id="c1">
              </div>
              <div class="col-sm-4" id="c2">
              </div>
              <div class="col-sm-4" id="c3">
              </div>
          </div>
  </div>
</div>