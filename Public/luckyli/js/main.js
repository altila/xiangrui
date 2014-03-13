$(function() {	
	// 在底部添加“至顶部按钮”
	$(".footer .container").append('<div class="gotop">至顶部</div>');
	$(".gotop").click(function() {
		$("html, body").animate({
			scrollTop : 0
		}, 1000);
	});

	// 产品分类目录导航切换效果
	if ($(".category_menu")) {
		$(".category_menu > li").each(function() {
			if ($(this).hasClass("active")) return false;
			$(this).hover(function() {
				$(this).addClass("hover").siblings().removeClass("hover");
			}, function() {
				$(this).removeClass("hover");
			});

		});
	}
});

