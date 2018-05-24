
<%@page import="java.util.ArrayList"%>
<jsp:useBean id="pDAO" class="myPackage.DatabaseClass" scope="page"/>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
//Quản lý bài thi
<!-- SIDEBAR -->
			<div class="sidebar" style="background-image: url(sidebar-1.jpg)">
				<div class="sidebar-background" >
					<h2 class="logo-text">
						Kiểm Tra Online
					</h2>

					<div class="left-menu">
						<a  href="adm-page.jsp?pgprt=0"><h2>Thông tin</h2></a>
						<a class="active" href="adm-page.jsp?pgprt=2"><h2>Bài Thi</h2></a>
                                                <a href="adm-page.jsp?pgprt=3"><h2>Câu Hỏi</h2></a>
						<a href="adm-page.jsp?pgprt=1"><h2>Tài Khoản</h2></a>
                                                <a href="adm-page.jsp?pgprt=5"><h2>Kết Quả</h2></a>
					</div>
				</div>
			</div>
            <!-- CONTENT AREA -->
			<div class="content-area">
                            
                            <div class="panel" style="max-width: 420px;float:right">
                                <div class="title">
                                   Tất cả bài thi
                                </div>
                                <table id="one-column-emphasis" style="min-width: 400px;margin: 5px; margin-top: 35px" >
    <colgroup>
    	<col class="oce-first" />
    </colgroup>
    <thead>
    	<tr>
        	<th scope="col">Bài Thi</th>
                
            <th scope="col">Số Câu</th>
            <th scope="col">Thao Tác</th>
            
        </tr>
    </thead>
    
                                       
        <% 
            ArrayList list=pDAO.getAllCourses();
            for(int i=0;i<list.size();i=i+2){
        %>
        <tr>
        <td><%=list.get(i)%></td>
        <td><%=list.get(i+1)%></td>
        <td ><a  href="controller.jsp?page=courses&operation=del&cname=<%=list.get(i)%>" 
                onclick="return confirm('Bạn có chắc làm muốn xóa bài này ?');" class="del">
                <div class="delete-btn" style="max-width: 40px;font-size: 17px; padding: 3px">X</div>
            </a></td>
    </tr>
            <%
            }
            %>
            </table>
        </div>
        <div  class="panel form-style-6" style="max-width: 450px" >
           <div class="title">
                                   Thêm bài thi mới
                                </div>
            <center>
               <form action="controller.jsp" >
                   <br>
                   <table >
                       <tr>
                           <td><label>Tên Bài</label></td>
                           <td> <input type="text" name="coursename" class="text" placeholder="Toan Cao Cap"  style="width: 230px;"></td>
                       </tr>
                       <tr>
                           <td><label>Số câu hỏi</label></td>
                           <td><input type="text" name="totalmarks" class="text" placeholder="69" style="width: 230px;" ></td>
                       </tr>
                       <tr>
                           <td><label>Thời gian</label></td>
                           <td>
                                <input type="text" name="time" class="text" placeholder="Phút" style="width: 230px;" >
                           </td>
                           
                       </tr>
                       <tr>
                           <td colspan="2"><input type="hidden" name="page" value="courses">
                    <input type="hidden" name="operation" value="addnew">
                       <center><input type="submit" class="form-button" value="Thêm" name="submit"></center></td>
                       </tr>
                   </table>

                </form>
            </center>
           
    </div>
     </div>
                       