
<%@page import="myPackage.classes.User"%>
<%@page import="java.util.ArrayList"%>
<jsp:useBean id="pDAO" class="myPackage.DatabaseClass" scope="page"/>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
Trang admin chung
 Thanh điều hướng
			<div class="sidebar" style="background-image: url(sidebar-1.jpg)">
				<div class="sidebar-background" >
					<h2 class="logo-text">
						Bài Thi online
					</h2>

					<div class="left-menu">
						<a  href="adm-page.jsp?pgprt=0"><h2>Thông tin</h2></a>
						<a href="adm-page.jsp?pgprt=2"><h2>Bài Thi</h2></a>
                                                <a href="adm-page.jsp?pgprt=3"><h2>Câu Hỏi</h2></a>
						<a class="active" href="adm-page.jsp?pgprt=1"><h2>Tài khoản</h2></a>
                                                <a href="adm-page.jsp?pgprt=5"><h2>Kết Quả</h2></a>
					</div>
				</div>
			</div>
             Vùng đổ dữ liệu
			<div class="content-area">
                            <div class="inner" style="margin-top: 50px">
                                <div class="title" style="margin-top: -30px">Danh Sách Học Sinh</div>
       
                                <br>
                                <br>
                                <br/>
<!--                                <a href="register.html" class="button"><span class="add-btn" style="margin-left: 80px;">Thêm Học Sinh</span></a>-->
           <br>
           
           
                       <table id="one-column-emphasis" >
    <colgroup>
    	<col class="oce-first" />
    </colgroup>
    <thead>
    	<tr>
        	<th scope="col">Tên</th>
                
            <th scope="col">Email</th>
            <th scope="col">Thành Phố</th>
            <th scope="col">Địa Chỉ</th>
            <th scope="col">Thao Tác</th>
            <th scope="col">Chi tiết</th>
            
        </tr>
    </thead>
    <tbody>
           <%
              ArrayList list=pDAO.getAllUsers();
              User user;
              for(int i=0;i<list.size();i++){
                  user=(User)list.get(i);
                  if(user.getUserId()!= Integer.parseInt(session.getAttribute("userId").toString())){
               %>
   
    	<tr>
        	<td><%=user.getFirstName()+" "+user.getLastName() %></td>
            <td><%=user.getEmail() %></td>
            <td><%=user.getCity() %></td>
            <td><%=user.getAddress() %></td>
            <td><a href="controller.jsp?page=accounts&operation=del&uid=<%=user.getUserId() %>" 
                  onclick="return confirm('Bạn có chắc chắn muốn xóa Học Sinh này ?');">
                <div class="delete-btn" style="max-width: 40px;font-size: 17px; padding: 3px">X</div>
                </a></td>
            <td><%=user.getAddress() %></td>
            
        </tr>
         
               
               
               <%
                  }
                  } %>
               
                </tbody>
</table>
           
    
                            </div>
                        </div>
                  