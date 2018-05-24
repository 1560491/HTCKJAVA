
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
						<a  href="adm-page.jsp?pgprt=0"><h2>Thông tin</h2></a>
						<a href="adm-page.jsp?pgprt=2"><h2>Bài Thi</h2></a>
                                                <a class="active" href="adm-page.jsp?pgprt=3"><h2>Câu Hỏi</h2></a>
						<a href="adm-page.jsp?pgprt=1"><h2>Tài khoản</h2></a>
                                                <a href="adm-page.jsp?pgprt=5"><h2>Kết Quả</h2></a>
					</div>
				</div>
			</div>
            <!-- CONTENT AREA -->
            <div class="content-area" >
                            <div class="panel form-style-6" style="min-width: 300px;max-width: 790px;float: left">
            <form action="adm-page.jsp">
                <div class="title">Hiện Tất cả câu hỏi</div>
                <br><br>
                <label>Chọn Bài Thi</label>
                <input type="hidden" name="pgprt" value="4">
                <select name="coursename" class="text">
        <% 
            ArrayList list1=pDAO.getAllCourses();
            
            for(int i=0;i<list1.size();i=i+2){
        %>
        <option value="<%=list1.get(i)%>"><%=list1.get(i)%></option>
            <%
            }
            %>
            </select>
            <input type="submit" value="Hiện" class="form-button">
            </form>
                            </div>
        
        <div class="panel form-style-6" style="max-width: 720!important;float: left">   
               <form action="controller.jsp" >
                   <div class="title">Thêm Câu Hỏi Mới</div>
                   <table >
                       <tr>
                           <td><label>Tên Bài Thi</label></td>
                           <td colspan="3"> 
                               <select name="coursename" class="text">
        <% 
            ArrayList list=pDAO.getAllCourses();
            
            for(int i=0;i<list.size();i=i+2){
        %>
        <option value="<%=list.get(i)%>"><%=list.get(i)%></option>
            <%
            }
            %>
            </select>
                           </td>
                       </tr>
                       <tr>
                           <td><label>Câu Hỏi:</label></td>
                           <td colspan="4"><input type="text" name="question" class="text" placeholder="Nhap cau hoi vao day" style="width: 420px;" ></td><br>
                       </tr>
                       <tr>
                           <td><label>Lua chon</label></td>
                           <td><input type="text" name="opt1" class="text" placeholder="Lua chon A" style="width: 130px;" ></td>
                           <td><input type="text" name="opt2" class="text" placeholder="Lua chon B" style="width: 130px;" ></td>
                           <td><input type="text" name="opt3" class="text" placeholder="Lua chon C" style="width: 130px;" ></td>
                           <td><input type="text" name="opt4" class="text" placeholder="Lua chon D" style="width: 130px;" ></td>
                       </tr>
                       <tr>
                           <td><label>Câu trả lời đúng</label></td>
                           <td colspan="4"><center><input type="text" name="correct" class="text" placeholder="Cau Tra Loi Dung" style="width: 420px;" ></center></td>
                       <tr>
                           <td colspan="5"><input type="hidden" name="page" value="questions">
                    <input type="hidden" name="operation" value="addnew">
                       <center><input type="submit" class="form-button" value="Thêm" name="submit"></center></td>
                           
                   </tr>
                   </table>

                </form>
           
    
     </div>
                        </div>