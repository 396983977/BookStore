<%@ page language="java" contentType="text/html; charset=Utf-8"
    pageEncoding="Utf-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>briup安全中心</title>
<link rel="stylesheet" href="css/common.css"/>
<link rel="stylesheet" href="css/style.css" />
<link rel="stylesheet" href="css/icons.css" />
<link rel="stylesheet" href="css/table.css" />
<link rel="stylesheet" href="css/newmain.css" />
<script type="text/javascript" src="js/jquery-1.4.2.js"></script>
</head>
<body>
	<!--顶部-->
	<div class="top">
    	<div class="top_center">
            <ul class="top_bars">
            	<!-- <li><a href="#">退出</a>|</li> -->
            	<c:if test="${not empty user.name }" >
            	<li ><a >  欢迎用户：  ${user.name }</a></li>
            		<li><a href="loginout">退出</a>|</li>
            	</c:if>
            	<c:if test="${ empty user.name }" >
            		<li><a href="tologin">登陆</a>|</li>
            	</c:if>
                <li><a href="#">我的订单<span class="jt_down"></span></a>|</li>
                <li><a href="#">关注杰普<span class="jt_down"></span></a>|</li>
                <li><a href="#">网站导航<span class="jt_down"></span></a></li>
            </ul>
        </div>
    </div>
    <!--头部-->
    <div class="header3">
    	<a href="index"><img src="images/logo.png"></a>
    	<div class="h3_center">
        	<div class="search_box">
            	<input id="searchName" type="text" name="name"/>
                <span id="search">搜索</span>  
                <script type="text/javascript"> 
               		$("#search").click(function(){
               		var a=	$("#searchName").val();
               		jQuery.ajax({
                        type: "get",
                        url: "tolist?pname=" + a,//页面地址和传递的URL参数    
                        async:false,
                        });
               		});
                </script>
            </div>
            <p>
              <c:forEach items="${clist }" var="iteam"> <a href="tolist?cid=${iteam.id }">${iteam.name}</a>|</c:forEach> 
            </p>
        </div>
        <div class="h3_right">
        	<div class="myyy">
            	<a href="touserinfo">个人信息</a>
                <span class="sj_down"></span>
             </div>
            <div class="tsc">
            	<a href="toshopcart">去购物车结算</a>
                <span class="sj_right"></span>
            </div>
        </div>
    </div>
    <!--头部导航-->
    <div class="nav_top">
    	<div class="nav_top_center">
            <div>
                全部图书分类
            </div>
            <ul>
               <c:forEach items="${clist }" var="iteam"> <li><a href="tolist?cid=${iteam.id }">${iteam.name}</a></li></c:forEach> 
            </ul>
        </div>
    </div>
    <div class="container4">
    	<div class="register_box">
    			<div class="head">
    				<h3>个人信息</h3>
    			</div>
    			<div class="security">
    				<form action="updateuserinfo" method="post">
    					<ul class="list">
    						<li>
    								<input id="J_euserName" class="long" readonly="readonly" name="name" value="${user.name}" type="text" />
    								<div class="name">用户名:</div>
    								<span id="J_eUserNameTipImg" class="icon"></span>
    								<div id="J_eUserNameTipInfo" class="ltip"></div>
    								<span class="placeholder" style="position: absolute;z-index: 20;color: rgb(153,153,153);top: 14px;left: 345px;line-height: 37px;"></span>
    						</li>
    						<li>
    								<input id="J_euserName" class="long" name="oldpassword" value="" type="password" />
    								<div class="name">旧密码:</div>
    								<span id="J_eUserNameTipImg" class="icon"></span>
    								<div id="J_eUserNameTipInfo" class="ltip"></div>
    								<span class="placeholder" style="position: absolute;z-index: 20;color: rgb(153,153,153);top: 14px;left: 345px;line-height: 37px;"></span>
    								 * 不能为空
    						</li>
    						<li>
    								<input id="J_euserName" class="long" name="newpassword" value="" type="password" />
    								<div class="name">新密码:</div>
    								<span id="J_eUserNameTipImg" class="icon"></span>
    								<div id="J_eUserNameTipInfo" class="ltip"></div>
    								<span class="placeholder" style="position: absolute;z-index: 20;color: rgb(153,153,153);top: 14px;left: 345px;line-height: 37px;"></span>
    								 * 为空不修改密码
    						</li>
    						<li>
    								<input id="J_euserName" onkeyup="value=value.replace(/[^\d]/g,'')" class="long" name="zip" value="${user.zip}" type="text" />
    								<div class="name">邮编:</div>
    								<span id="J_eUserNameTipImg" class="icon"></span>
    								<div id="J_eUserNameTipInfo" class="ltip"></div>
    								<span class="placeholder" style="position: absolute;z-index: 20;color: rgb(153,153,153);top: 14px;left: 345px;line-height: 37px;"></span>
    						</li>
    						<li>
    								<input id="J_euserName" class="long" name="address" value="${user.address}" type="text" />
    								<div class="name">地址:</div>
    								<span id="J_eUserNameTipImg" class="icon"></span>
    								<div id="J_eUserNameTipInfo" class="ltip"></div>
    								<span class="placeholder" style="position: absolute;z-index: 20;color: rgb(153,153,153);top: 14px;left: 345px;line-height: 37px;"></span>
    						</li>
    						<li>
    								<input id="J_euserName" class="long" name="telephone" value="${user.phone}" type="text"  onkeyup="value=value.replace(/[^\d]/g,'')"/>
    								<div class="name">电话:</div>
    								<span id="J_eUserNameTipImg" class="icon"></span>
    								<div id="J_eUserNameTipInfo" class="ltip"></div>
    								<span class="placeholder" style="position: absolute;z-index: 20;color: rgb(153,153,153);top: 14px;left: 345px;line-height: 37px;"></span>
    						</li>
    						<li>
    								<input id="J_euserName" class="long" name="email" value="${user.email}" type="text" />
    								<div class="name">电子邮箱:</div>
    								<span id="J_eUserNameTipImg" class="icon"></span>
    								<div id="J_eUserNameTipInfo" class="ltip"></div>
    								<span class="placeholder" style="position: absolute;z-index: 20;color: rgb(153,153,153);top: 14px;left: 345px;line-height: 37px;"></span>
    						</li>
    						<li>
    								<input id="J_euserName" class="long" style="width:70px;font-size: large;cursor: pointer;text-align: center;line-height: 40px;"  value="修改" type="submit" />
    								<div class="name">&nbsp;</div>
    								<span id="J_eUserNameTipImg" class="icon"></span>
    								<div id="J_eUserNameTipInfo" class="ltip"></div>
    								<span class="placeholder" style="position: absolute;z-index: 20;color: rgb(153,153,153);top: 14px;left: 345px;line-height: 37px;"></span>
    						</li>
    						
    					</ul>
    				</form>
    			</div>
    	</div>
    </div>
 
    <!--脚部-->
    <div class="footer3">
    	<div class="f3_top">
        	<div class="f3_center">
                <div class="ts1">品目繁多 愉悦购物</div>
                <div class="ts2">正品保障 天天低价</div>
                <div class="ts3">极速物流 特色定制</div>
                <div class="ts4">优质服务 以客为尊</div>
            </div>
        </div>
        <div class="f3_middle">
        	<ul class="f3_center">
            	<li class="f3_mi_li01">
                	<h1>购物指南</h1>
                    <p>常见问题</p>
                    <p>找回密码</p>
                    <p>会员介绍</p>
                    <p>购物演示</p>
                </li>
                <li class="f3_mi_li01">
                	<h1>配送方式</h1>
                    <p>常见问题</p>
                    <p>找回密码</p>
                    <p>会员介绍</p>
                    <p>购物演示</p>
                </li>
                <li class="f3_mi_li01">
                	<h1>支付方式</h1>
                    <p>常见问题</p>
                    <p>找回密码</p>
                    <p>会员介绍</p>
                    <p>购物演示</p>
                </li>
                <li class="f3_mi_li01">
                	<h1>售后服务</h1>
                    <p>常见问题</p>
                    <p>找回密码</p>
                    <p>会员介绍</p>
                    <p>购物演示</p>
                </li>
                <li class="f3_mi_li01">
                	<h1>服务保障</h1>
                    <p>常见问题</p>
                    <p>找回密码</p>
                    <p>会员介绍</p>
                    <p>购物演示</p>
                </li>
                <li class="f3_mi_li06">
                	<h1>客服中心</h1>
                    <img src="images/qrcode_jprj.jpg" width="80px" height="80px">
                    <p>抢红包、疑问咨询、优惠活动</p>
                </li>
            </ul>
        </div>
         <div class="f3_bottom">
        	<p class="f3_links">
                <a href="#">关于我们</a>|
                <a href="#">联系我们</a>|
                <a href="#">友情链接</a>|
                <a href="#">供货商入驻</a> 
           	</p>
            <p>沪ICP备14033591号-8 杰普briup.com版权所有 杰普软件科技有限公司 </p>
          	<img src="images/police.png">
        </div>
    </div>

</body>
</html>