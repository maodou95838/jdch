
//////////////////////////////////////////////////////////

function dhonload(){	
	jQuery(function(){
		jQuery(".stuMenu div").mouseenter(function(){
			index = jQuery(".stuMenu div").index(this);
			className= "navselect0"+index;
			jQuery(".stuMenu div").eq(index).addClass(className);
			jQuery(".stuMenu div ul").eq(index).slideDown();
		});
		
		jQuery(".stuMenu div").mouseleave(function(){
			index = jQuery(".stuMenu div").index(this);
			jQuery(".stuMenu div").eq(index).removeClass();
			jQuery(".stuMenu div ul").eq(index).slideUp();
		});
		
		jQuery(".stuMenu div").click(function(){
			index = jQuery(".stuMenu div").index(this);
			className= "navselect0"+index;
			jQuery(".stuMenu div").eq(index).addClass(className).siblings().removeClass();
			//jQuery(".stuMenu div ul").eq(index).slideUp();
		});
	});
}
	jQuery(function(){
		jQuery("#qlink").mouseenter(function(){
			jQuery(".linkcont").slideDown();
		});
		
		jQuery("#qlink").mouseleave(function(){
			jQuery(".linkcont").slideUp();
		});
	});	
	
function AutoScroll(obj){
    $(obj).find("ul:first").animate({
    marginTop:"-25px"//和上面的height一致.marginTop属性设置元素的上外边距。也就是初始显示位置在行的最下方
    },800,function(){
        $(this).css({marginTop:"0px"}).find("li:first").appendTo(this);//之后显示的位置在最上方
    });
}
$(function(){
    $t=setInterval('AutoScroll("#scrollid")',3000)//滚动轮显时间间隔，单位毫秒，下同
	//其中setInterval() 方法可按照指定的周期（以毫秒计）来调用函数或计算表达式。这里调用AutoScroll滚动函数
    $("#scrollid").hover(function(){clearInterval($t);},function(){$t=setInterval('AutoScroll("#scrollid")',3000);});
	//clearInterval() 方法可取消由 setInterval() 设置的 timeout。clearInterval() 方法的参数必须是由 setInterval() 返回的 ID 值,本例入$t。
});	


//二级页面菜单
/*
	jQuery(function(){
	jQuery(".stuSubTree li").click(function(){
	index = jQuery(".stuSubTree li").index(this);
	jQuery(".stuSubTree li").eq(index).next("div.stuSubNavList").show();
	jQuery(".stuSubTree li").eq(index).siblings().next("div.stuSubNavList").hide();
	jQuery(".stuSubTree li").eq(index).addClass("stuTreeSelected").siblings().removeClass("stuTreeSelected");
	
	});
	
	jQuery(".stuSubNavList a").click(function(){
	index = jQuery(".stuSubNavList a").index(this);
	jQuery(".stuSubNavList a").eq(index).addClass("subNavSelect").siblings().removeClass("subNavSelect");
	});
	

	});
*/