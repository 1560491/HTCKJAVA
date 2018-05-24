<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
<title>1560491-Minh Tâm</title>
<link href="web1.css" rel="stylesheet" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
</head>
<body>
<style>
    .carPic, .title {
        margin: 0 auto;
        text-align: center;
    } 
    </style>
<div id="nav">
<ul>
<li><a href="login.jsp">START</a></li>
</ul>
</div>
<div id="d">
<script type="text/javascript">
    var i=0;
    count =0;
    for(var j =0;j<10 ;j++){
    for (i=1;i<=9;i++)
    {
    document.write("<img class='carPic' src=\"./Pic/" +"00"+i+ ".jpg\"/>");
   
    }
    for (i=10;i<=99;i++)
    {
    document.write("<img class='carPic' src=\"./Pic/" +"0"+i+ ".jpg\"/>");
   
    }
    for (i=100;i<=144;i++)
    {
    document.write("<img class='carPic' src=\"./Pic/" +i+ ".jpg\"/>");
    
    }
    for (i=144;i>=100;i--)
    {
    document.write("<img class='carPic' src=\"./Pic/" +i+ ".jpg\"/>");
    
    }
    for (i=99;i>=10;i--)
    {
    document.write("<img class='carPic' src=\"./Pic/" +"0"+i+ ".jpg\"/>");
   
    }
    for (i=9;i>=2;i--)
    {
    document.write("<img class='carPic' src=\"./Pic/" +"00"+i+ ".jpg\"/>");
   
    }
    }
    count++;
    </script>

<script>
    var myIndex = 0;
    carousel();
    
    function carousel() {
        var i;
        var x = document.getElementsByClassName("carPic");
        for (i = 0; i < x.length; i++) {
           x[i].style.display = "none";  
        }
        myIndex++;
        if (myIndex > x.length) {myIndex = 1}    
        x[myIndex-1].style.display = "block";  
        setTimeout(carousel, 55); // chạy millisecond
    }
    </script>

</div>


</body>
</html>