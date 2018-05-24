
<%@page import="myPackage.classes.Answers"%>
<%@page import="myPackage.classes.Exams"%>
<%@page import="myPackage.classes.Result"%>
<%@page import="myPackage.classes.Questions"%>
<%@page import="java.util.ArrayList"%>
<jsp:useBean id="pDAO" class="myPackage.DatabaseClass" scope="page"/>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- SIDEBAR -->
			<div class="sidebar" style="background-image: url(sidebar-1.jpg)">
				<div class="sidebar-background" >
					<h2 class="logo-text">
						Bài Thi Online
					</h2>
					<div class="left-menu">
						<a  href="adm-page.jsp?pgprt=0"><h2>Thông Tin</h2></a>
						<a href="adm-page.jsp?pgprt=2"><h2>Bài Thi</h2></a>
                                                <a href="adm-page.jsp?pgprt=3"><h2>Câu Hỏi</h2></a>
						<a href="adm-page.jsp?pgprt=1"><h2>Tài Khoản</h2></a>
                                                <a class="active" href="adm-page.jsp?pgprt=5"><h2>Kết Quả</h2></a>
					</div>
				</div>
		
                       </div>
               <!-- CONTENT AREA -->
			<div class="content-area">
                            <div class="panel" style="float: left;max-width: 900px">
                                
        <%
            if(request.getParameter("eid")==null){
        %>
        <div class="title">Tất Cả Kết Quả asd</div>
           <table id="rounded-corner">
    <thead>
    	<tr>
            <th scope="col" class="rounded-company">Tên</th>
            <th scope="col" class="rounded-company">Tên Đăng Nhập</th>
        	<th scope="col" class="rounded-company">Ngày</th>
            <th scope="col" class="rounded-q1">Bài Thi</th>
            <th scope="col" class="rounded-q2">Thời Gian</th>
            <th scope="col" class="rounded-q3">Tình Trạng</th>
            <th scope="col" class="rounded-q4">Thao Tác</th>
        </tr>
    </thead>
        
    <tbody>
        
        <%
            //ArrayList list=pDAO.getAllResultsFromExams(Integer.parseInt(session.getAttribute("userId").toString()));
            ArrayList list=pDAO.getAllResultsFromExams3();            
            for(int i=0;i<list.size();i++){
                Result e=(Result)list.get(i);
            %>
    	<tr>
            <td><%=e.getFirstName()+" "+e.getLastName() %></td>
            <td><%=e.getUserName() %></td>
            <td><%=e.getDate() %></td>
            <td><%=e.getcName() %></td>
            <td><%=e.getStartTime()+" - "+e.getEndTime()%></td>
            <% if(e.getStatus()!=null){
                if(e.getStatus().equals("DAU")){%>
                <td style="background: #00cc33;color:white"><%=e.getStatus()%></td>
            <% }else{%>
            <td style="background: #ff3333;color:white"><%=e.getStatus()%></td>
            <% }
            }else{%>
            <td style="background: bisque ;">Bỏ giữa chừng</td>
            <% } %>
            <td><a href="adm-page.jsp?pgprt=5&eid=<%=e.getExamId()%>">Chi Tiết</a></td>
        </tr>
       
       <% }
       %>
    </tbody>
</table>
       <%
            }else{
                %>
                <div class="title">Chi Tiết Kết Quả</div>
                <table id="gradient-style" >
                
                <%
                ArrayList list=pDAO.getAllAnswersByExamId(Integer.parseInt(request.getParameter("eid")));
                for(int i=0;i<list.size();i++){
                    Answers a=(Answers) list.get(i);
                
            %>

            
                <tr>
                    <td rowspan="2"><%=i+1 %>)</td>
                    <td colspan="2"><%=a.getQuestion()%></td>
                    <td rowspan="2"><%=a.getStatus() %></td>
                </tr>
                <tr >
                    <td><%="HS trả lời: "+a.getAnswer()%></td>
                    <td><%="Câu trả lới ĐÚNG: "+a.getCorrectAns() %></td>
                </tr>
                <tr>
                    <td colspan="3" style="background: white"></td>
                <%
                }
                %>
            </table>
                    
            
            <%
            }
            %>
                            </div>