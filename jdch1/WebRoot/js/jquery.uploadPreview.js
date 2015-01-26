
//**********************图片上传预览插件*************************
(function($) {
    jQuery.fn.extend({
        uploadPreview: function(opts) {
            opts = jQuery.extend({
                width: 0,
                height: 0,
                imgDiv: "#imgDiv",
                imgType: ["gif", "jpeg", "jpg", "bmp", "png"],
                callback: function() { return false; }
            }, opts || {});
            var _self = this;
            var _this = $(this);
            var imgDiv = $(opts.imgDiv);
            imgDiv.width(opts.width);
            imgDiv.height(opts.height);

            autoScaling = function() {
                if ($.browser.version == "7.0" || $.browser.version == "8.0") imgDiv.get(0).filters.item("DXImageTransform.Microsoft.AlphaImageLoader").sizingMethod = "image";
                var img_width = imgDiv.width();
                var img_height = imgDiv.height();
                if (img_width > 0 && img_height > 0) {
                    var rate = (opts.width / img_width < opts.height / img_height) ? opts.width / img_width : opts.height / img_height;
                    if (rate <= 1) {
                        if ($.browser.version == "7.0" || $.browser.version == "8.0") imgDiv.get(0).filters.item("DXImageTransform.Microsoft.AlphaImageLoader").sizingMethod = "scale";
                        imgDiv.width(img_width * rate);
                        imgDiv.height(img_height * rate);
                    } else {
                        imgDiv.width(img_width);
                        imgDiv.height(img_height);
                    }
                    var left = (opts.width - imgDiv.width()) * 0.5;
                    var top = (opts.height - imgDiv.height()) * 0.5;
                    imgDiv.css({ "margin-left": left, "margin-top": top });
                    imgDiv.show();
                }
            }
            _this.change(function() {
               if(this.type=='file'){
                if (this.value) {
                    if (!RegExp("\.(" + opts.imgType.join("|") + ")$", "i").test(this.value.toLowerCase())) {
                        alert("图片类型必须是" + opts.imgType.join("，") + "中的一种");
                        this.value = "";
                        return false;
                    }
                    imgDiv.hide();
                    if($.browser.msie=='undefined'){
                        var img = $("<img />");
                        imgDiv.replaceWith(img);
                        imgDiv = img;
                        imgDiv.attr('src', window.URL.createObjectURL(this.files.item(0)));
                        imgDiv.css({ "vertical-align": "middle" });
                        setTimeout("autoScaling()", 100);
                    }
                   else  if ($.browser.msie) {
                        if ($.browser.version == "6.0") {
                            var img = $("<img />");
                            imgDiv.replaceWith(img);
                            imgDiv = img;

                            var image = new Image();
                            image.src = 'file:///' + this.value;

                            imgDiv.attr('src', image.src);
                            autoScaling();
                        }else {
                        	var file_upl = document.getElementById('upfile');
							file_upl.select();
							var realpath = document.selection.createRange().text;
                            imgDiv.css({ filter: "progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=image)" });
                            imgDiv.get(0).filters.item("DXImageTransform.Microsoft.AlphaImageLoader").sizingMethod = "image";
                            try {
                                imgDiv.get(0).filters.item('DXImageTransform.Microsoft.AlphaImageLoader').src=realpath;
                            } catch (e) {
                                alert("无效的图片文件！");
                                return;
                            }
                            setTimeout("autoScaling()", 100);

                        }
                    }else{
                    	var img = $("<img />");
                        imgDiv.replaceWith(img);
                        imgDiv = img;
                        if($.browser.chrome){
                        	if($.browser.version<"25.0.0000.0"){
                       		 imgDiv.attr('src', window.webkitURL.createObjectURL(this.files.item(0)));
                        		
                        	}else{
                       		 imgDiv.attr('src', window.URL.createObjectURL(this.files.item(0)));
                        	}
                        }else{
                        	imgDiv.attr('src', window.URL.createObjectURL(this.files.item(0)));
                        }
                        imgDiv.css({ "vertical-align": "middle" });
                        setTimeout("autoScaling()", 100);
                    	
                    }
                }
               imgDiv.parent('div').css('display','block');
                }
            });
        }
    });
})(jQuery);
