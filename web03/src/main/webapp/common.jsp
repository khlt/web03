<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="csspt" value="${pageContext.request.contextPath }/css" />
<c:set var="imgpt" value="${pageContext.request.contextPath }/img" /> 
<link rel="stylesheet" href="${csspt }/common.css" />
<script src="https://code.jquery.com/jquery-latest.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.4/css/bulma.min.css" />
<link rel="stylesheet" href="datatables.min.css">
<script src="datatables.min.js"></script>
<script>
$(document).ready( function () {
    $('#lst_tb').DataTable();
});
</script>
<style>
#lst_tb, .frm_fr { max-width:1280px; min-width:800px; margin:0 auto; }
#gnb .navbar-link::after { display:none; }
.con_wrap { width:1280px; margin:0 auto; } 
.frm_fr { width:800px; }
#logo img { display:block; width:180px; height:30px; min-height:30px; max-height:30px; }
#gnb .navbar-link { font-size:18px; }
.ft_left { float:left; padding:14px;	 }
.ft_right { float:right; padding:14px; }
.ft_tit { font-size:24px; font-weight:bold; padding-top:24px; }
.ft_tel { font-size: 32px;   font-weight: 600;   color: #918c00; padding-top:12px; }
.ft_ico_lst { clear:both; }
.ft_ico_lst li {float:left; margin-top:24px; margin-right:24px; }
.ft_ico_lst li a { display:block; width:50px; height:50px; overflow:hidden; 
border-radius:50%; background-image:url("${imgpt }/sp_ico.png");
background-position: 0px -160px; background-repeat:no-repeat; } 
.ft_ico_lst li a.utb { background-position: -50px -160px; }
.ft_ico_lst li a.blog { background-position: -100px -160px; }
.ft_ico_lst li a.talk { background-position: -150px -160px; }
</style>