<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="header">
		<div class="header-main">
			<div class="header-content">
				<div class="logo"><a href="http://www.u148.net/"><img src="u148.gif"></a></div>
				<div class="menu">
					<a href="http://www.u148.net/" class="selected">首页</a>
					<a href="http://www.u148.net/image/">图画</a>
					<a href="http://www.u148.net/game/">游戏</a>
					<a href="http://www.u148.net/text/">文字</a>
					<a href="http://www.u148.net/audio/">音频</a>
					<a href="http://www.u148.net/mix/">杂粹</a>
					<a href="http://www.u148.net/video/">影像</a>
					<a href="http://www.u148.net/fair/">集市</a>
					<a href="http://www.u148.net/union/">铺子</a>
				</div>
				<div class="welcome">
					<div class="search">
						<input type="text" placeholder="搜索内容">
						<input type="button" value="搜索">
					</div>				
				</div>
			</div>
		</div>
	</div>
	<!-- 正文部分省略。。。 -->
	<div style="height:800px">正在加载中...
	<% String key = request.getParameter("key"); %>
	<%=key %>
	</div>
	<div class="footer" align="center">
		<div><a href="http://www.u148.net/about/" target="_blank">关于我们</a>　<a href="http://www.u148.net/piao/" target="_blank">漂流本子</a>　<a href="http://www.u148.net/tag/%E6%88%90%E9%95%BF%E5%8F%91%E5%B1%95/1" target="_blank">成长发展</a>　<a href="http://www.u148.net/tag/%E5%AA%92%E4%BD%93%E6%8A%A5%E9%81%93/1" target="_blank">媒体报道</a>　<a href="http://www.u148.net/about/policy" target="_blank">隐私政策</a>　<a href="http://www.u148.net/about/ad" target="_blank">广告投放</a>　<a href="mailto:webmaster@u148.net" target="_blank">联系我们</a>　<a href="http://www.u148.net/links/" target="_blank">友情链接</a>　<a href="http://www.u148.net/about/help" target="_blank">帮助中心</a></div>
		<div>本站带宽由 <a target="_blank" href="http://www.wxdata.cn/">网信通信</a> 提供，特此鸣谢！</div>
		<div>© 2007-2015 有意思吧版权所有  <a href="http://www.miibeian.gov.cn/" target="_blank">鲁ICP备07012645号</a>  <a href="http://www.qdbeian.com/RecordDetail.aspx?WebID=16746" target="_blank">青岛公安备 37020020100013</a>  <a href="http://www.qdnet110.gov.cn/" target="_blank">违法不良信息举报</a></div>
	</div>

</body>
</html>