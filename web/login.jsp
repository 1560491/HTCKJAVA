<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<link rel="stylesheet" type="text/css" href="style.css">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
</head>
<body style="background-image: url(a.jpg);">
	<center>
		<div class="central-div">
			<form method='post' action="controller.jsp">
                             <input type="hidden" name="page" value="login"> 
				<table>
					<tr>
						<td colspan="2">
							<center><h2>Quizz</h2></center>
						</td>
					</tr>
					<tr>
						<td>
							<label>Người Dùng</label>
						</td>
						<td>
                                                    <input type="text" class="text" placeholder="User Name" name="username">
						</td>
					</tr>
					<tr>
						<td>
							<label>Mật Khẩu</label>
						</td>
						<td>
                                                    <input type="password" class="text" placeholder="Password" name="password">
						</td>
					</tr>
					<tr>
						<td>
							
						</td>
						<td>
                                                    <% 
                                                        if(request.getSession().getAttribute("userStatus")!=null){
                                                            System.out.println("Dang chay");
                                                      if(request.getSession().getAttribute("userStatus").equals("-1")){  
                                                          System.out.println("Da vao trong");
                                                    %>
                                                    <script>alert("Tên Đăng Nhập hoặc Mật Khẩu Sai!");</script>
                                                    <p style="color: rgba(255, 255, 51, 1);font-size: 17px">Tên Đăng Nhập hoặc Mật Khẩu Sai!</p>
                                                    <br>
                                                    <%
                                                      }
                                                        }
                                                          %>
                                                    
                                                    
                                                    
					</tr>
					<tr>
						<td>
						</td>
						<td>
							<center>
							<input type="submit" value="Đăng Nhập" class="button">
							</center>
						</td>
					</tr>
				</table>
			</form>
		</div>
	</center>
</body>
</html>