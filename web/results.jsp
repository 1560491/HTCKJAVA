
<%@page import="myPackage.classes.Answers"%>
<%@page import="myPackage.classes.AnswersU"%>
<%@page import="myPackage.classes.Exams"%>
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
						<a  href="std-page.jsp?pgprt=0"><h2>Thông Tin</h2></a>
						<a href="std-page.jsp?pgprt=1"><h2>Bài Thi</h2></a>
						<a class="active" href="std-page.jsp?pgprt=2"><h2>Kết Quả</h2></a>
					</div>
				</div>
		
                       </div>
               <!-- CONTENT AREA -->
			<div class="content-area">
                            <div class="panel" style="float: left;max-width: 900px">
                                
        <%
            if(request.getParameter("eid")==null){
        %>
        <div class="title">KẾT QUẢ</div>
           <table id="rounded-corner">
    <thead>
    	<tr>
        	<th scope="col" class="rounded-company">Ngày</th>
            <th scope="col" class="rounded-q1">Bài Thi</th>
            <th scope="col" class="rounded-q2">Thời Gian</th>
            <th scope="col" class="rounded-q3">Tình Trạng</th>
            <th scope="col" class="rounded-q4">Thao Tác</th>
        </tr>
    </thead>
        
    <tbody>
        
        <%
            ArrayList list=pDAO.getAllResultsFromExams(Integer.parseInt(session.getAttribute("userId").toString()));
           // ArrayList list=pDAO.getAllResultsFromExams2();            
            for(int i=0;i<list.size();i++){
                Exams e=(Exams)list.get(i);
            %>
    	<tr>
            <td><%=e.getDate() %></td>
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
            <td><a href="std-page.jsp?pgprt=2&eid=<%=e.getExamId()%>">Chi Tiết</a></td>
        </tr>
       
       <% }
       %>
    </tbody>
</table>
       <%
            }else{
                %>
                <div class="title">Chi Tiết Kết Quả</div>
<!--                                    <form action="controller.jsp">-->
                <table id="gradient-style" >
                
                <%
                ArrayList list=pDAO.getAllAnswersByExamId2(Integer.parseInt(request.getParameter("eid")));
                for(int i=0;i<list.size();i++){
                    AnswersU a=(AnswersU) list.get(i);
                
            %>

                <form action="controller.jsp">
                    <input type="hidden" name="page" value="answerUpdate"> 
                    <input type="hidden" name="answer_id" value="<%=a.getAnswer_id() %>">
                    <input type="hidden" name="exam_id" value="<%=Integer.parseInt(request.getParameter("eid")) %>">
                    
                <tr>
                    <td rowspan="2"><%=i+1 %>)</td>
                    <td colspan="5"><%=a.getQuestion()%></td>
<!--                    <td rowspan="2"><%=a.getStatus() %></td>-->
<!--                    <td rowspan="2"><%=a.getAnswer_id() %></td>-->
                </tr>
                <tr >

          
			<td>Câu trả lời của bạn:<input type="text" name="answer" value="<%=a.getAnswer() %>" class="text" placeholder="answer"></td>

<!--                    <td><%="Câu Trả lời đúng: "+a.getCorrectAns() %></td>-->
                        <td><%="a): "+a.getOpt1()%></td>
                        <td><%="b): "+a.getOpt2()%></td>
                        <td><%="c): "+a.getOpt3()%></td>
                        <td><%="d): "+a.getOpt4()%></td>
                        <td colspan="1" style="background: white"></td>
                                					<tr>
						<td>
						</td>
						<td>
							<center>
							
							<input type="submit" value="Done" class="button">
							</center>
						</td>
					</tr>
                    </form>    
                </tr>
                <td colspan="1" style="background: white"></td>
                <tr>               
                <%
                }
                %>
            </table>
<!--            					<tr>
						<td>
						</td>
						<td>
							<center>
							
							<input type="submit" value="Done" class="button">
							</center>
						</td>
					</tr>
                    </form>-->
            
            <%
            }
            %>
                            </div>