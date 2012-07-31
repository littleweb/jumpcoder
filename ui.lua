function string:split(delimiter)
  local result = { }
  local from  = 1
  local delim_from, delim_to = string.find( self, delimiter, from  )
  while delim_from do
    table.insert( result, string.sub( self, from , delim_from-1 ) )
    from  = delim_to + 1
    delim_from, delim_to = string.find( self, delimiter, from  )
  end
  table.insert( result, string.sub( self, from  ) )
  return result
end
function ui(any)--宽度设置
  --带参数的命令行输出分隔符判断
  x=any:split(",")
  --列表输出及标签指定输出分隔判断
  y=any:split(";")
  if x[1]== "" then
    return {""}
  else
	--b设置
		if y[1]=="b" then
			return {"bg:背景设置","br:边框设置"}
		end
	--背景设置
		if y[1]=="bgx" then--背景帮助
			return {"bg:基本背景项","bgi:背景图片","bgc:背景色","bgp:背景定位，支持参数计算,语法iuibgp,0+0;","bgf:背景是否滚动"}
		end
		if y[1]=="bg" then--基本背景项
			return {"background:;","background:url() left top no-repeat;"}
		end
		if y[1]=="bgc" then--背景色
			return {"background-color:;"}
		end
		if y[1]=="bgf" then--背景是否滚动
			return {"background-attachment:scroll;","background-attachment:fixed;","background-attachment:inherit;"}
		end
		if y[1]=="bgi" then--背景图片
			return {"background-image:url();"}
		end
		if x[1]=="bgp" then--背景定位，支持参数计算,语法iuibgp,0+0;
			x=x[2]:split(";")
			lt=x[1]:split("+")
			if x[1]== "" then
				return "background-position:;"
			else
				a=lt[1]
				b=lt[2]
				return "background-position:" .. a .. "px " .. b .. "px;"
			end
		end
		if y[1]=="bgr" then--背景铺展方式
			return {"background-repeat:no-repeat;","background-repeat:repeat-x;","background-repeat:repeat-y;"}
		end
	--背景设置结束
	--边框设置
		if y[1]=="brx" then--边框帮助
			return {"bgs:实体边框","brd:虚线边框","brdo:密虚线边框","brn:无边框设置"}
		end
		if y[1]=="brs" then--边框-实体线
			return {"border:1px solid ;","border-top:1px solid ;","border-right:1px solid ;","border-bottom:1px solid ;","border-left:1px solid ;"}
		end
		if y[1]=="brd" then--边框-虚线
			return {"border:1px dashed ;","border-top:1px dashed ;","border-right:1px dashed ;","border-bottom:1px dashed ;","border-left:1px dashed ;"}
		end
		if y[1]=="brdo" then--边框-密虚线
			return {"border:1px dotted ;","border-top:1px dotted ;","border-right:1px dotted ;","border-bottom:1px dotted ;","border-left:1px dotted ;"}
		end
		if y[1]=="brn" then--边框-无边框
			return {"border:none;","border-top:none;","border-right:none;","border-bottom:none;","border-left:none;"}
		end
	--边框设置结束
	--文本设置开始
		if y[1]=="tx" then--文本帮助
			return {"co:颜色设置","l:行高","ta:文本对齐","t:缩进","td:文字划线效果","ws:换行控制","wp:字条间距"}
		end
		if y[1]=="co" then--颜色设置
			return {"color:;"}
		end
		if x[1]=="l" then --行高
			x=x[2]:split(";")
			if x[1]== "" then
				return "设置您的行高吧！"
			else
				a=x[1]
				b=x[2]
				return {"line-height:" .. a .. "px;" .. b,"line-height:" .. a .. "em;" .. b}
			end
		end
		if y[1]=="ta" then--文本对齐
			return {"text-align:left;","text-align:center;","text-align:right;"}
		end
		if y[1]=="td" then--文字装饰效果
			return {"text-decoration:none;","text-decoration:underline;","text-decoration:overline;","text-decoration:line-through;","text-decoration:blink;"}
		end
		if y[1]=="ws" then--换行控制
			return {"white-space:nowrap","white-space:normal"}
		end
		if x[1]=="wp" then --字符间距
			x=x[2]:split(";")
			if x[1]== "" then
				return "设置您的字符间距吧！"
			else
				a=x[1]
				b=x[2]
				return {"word-spacing:" .. a .. "px;" .. b}
			end
		end
		if x[1]=="t" then --缩进
			x=x[2]:split(";")
			if x[1]== "" then
				return "设置您的缩进吧！"
			else
				a=x[1]
				b=x[2]
				return {"text-indent:" .. a .. "em;" .. b,"text-indent:" .. a .. "px;" .. b}
			end
		end
	--文本设置结束
	--字体设置开始
		if y[1]=="fx" then--字体设置帮助
			return {"fw:字号或字宽设置，支持参数计算，语法：iuif,500;","ff:字体设置","fs:字体样式设置"}
		end
		if x[1]=="fw" then--字号和字宽设置--支持参数传入，可以设置font-size和font-weight，100是分隔点，100以下是font-size，100以上为font-weight:
			x=x[2]:split(";")
			if x[1]== "" then
				return "这个可以设置font-size和font-weight！"
				else
				a=x[1]
				b=x[2]
				if tonumber(a)<100 then
					return "font-size:" .. a .. "px;" .. b
				else
					return "font-weight:" .. a .. ";" .. b
				end
			end
		end
		if y[1]=="ff" then--字体设置，提供了几种常用的默认字体
			return {'font-family:"";','font-family:"宋体";','font-family:"黑体";','font-family:"微软雅黑";','font-family:Arial;','font-family:Tahoma;','font-family:;'}
		end
		if y[1]=="fs" then--字体样式设置
			return {'font-style:;','font-style:italic;','font-style:oblique;'}
		end
	--字体设置结束
	--盒模型设置开始
		--盒模型帮助
		if y[1]=="cx" then
			return{"wh:设定宽高，语法：iuiwh,60+200;","mm:设定限定宽高","w:宽度设置","h:高度设置","m:margin设置","p:paddig设置",}
		end	
		--宽度
		if x[1]=="w" then--宽度设置--支持参数传入，命令行：iuiw,数字;
		x=x[2]:split(";")
			if x[1]== "" then
				return "width:;"
			else
				a=x[1]
				b=x[2]
				return "width:" .. a .. "px;" .. b
			end
		end
		--高度
		if x[1]=="h" then--高度设置--支持参数传入：命令行：iuih,数字;
			x=x[2]:split(";")
			if x[1]== "" then
				return "height:;"
			else
				a=x[1]
				b=x[2]
				return "height:" .. a .. "px;" .. b
			end
		end
		if x[1]=="wh" then--宽、高设置--支持参数传入：命令行：iuiwh,数字+数字;
			x=x[2]:split(";")
			wh=x[1]:split("+")
			if x[1]== "" then
				return "width:;height:;"
			else
				a=wh[1]
				b=wh[2]
				return "width:" .. a .. "px;height:" .. b .. "px;"
			end
		end
		--限定宽高
		if x[1]=="mm" then
			x=x[2]:split(";")
			wh=x[1]:split("+")
			if x[1]== "" then
				return {"min-height:px;-height:px;","min-width:px;-height:px;","max-width:px;","max-height:px;"}
			else
				a=wh[1]
				b=wh[2]
				return {"min-height:" .. b .. "px;-height:" .. b .. "px;","min-width:" .. a .. "px;-width:" .. a .. "px;","max-width:" .. a .. "px;","max-height:" .. b .. "px;"}
			end
		end
		--margin
		if x[1]=="m" then--margin设置--支持参数传入：命令行：iuim,数字;
			x=x[2]:split(";")
			wh=x[1]:split("+")
			if x[1]== "" then
				return {"margin:;","margin:0 auto;"}
			else
				return {"margin:" .. string.gsub(x[1],"+","px ") .. "px;","margin:" .. string.gsub(x[1],"+","px ") .. "px auto;","margin-top:" .. string.gsub(x[1],"+","px ") .. "px;","margin-right:" .. string.gsub(x[1],"+","px ") .. "px;","margin-bottom:" .. string.gsub(x[1],"+","px ") .. "px;","margin-left:" .. string.gsub(x[1],"+","px ") .. "px;",}
			end
		end
		--padding
		if x[1]=="p" then--padding设置--支持参数传入：命令行：iuip,数字;
			x=x[2]:split(";")
			wh=x[1]:split("+")
			if x[1]== "" then
				return "padding:;"
			else
				return {"padding:" .. string.gsub(x[1],"+","px ") .. "px;","padding-top:" .. string.gsub(x[1],"+","px ") .. "px;","padding-right:" .. string.gsub(x[1],"+","px ") .. "px;","padding-bottom:" .. string.gsub(x[1],"+","px ") .. "px;","padding-left:" .. string.gsub(x[1],"+","px ") .. "px;"}
			end
		end
	--盒模型设置结束
	--定位显示设置开始
		--overflow
		if y[1]=="ov" then
			return {"overflow:hidden;","overflow:visible;","overflow:auto;","overflow:scroll;"}
		end
		--显示属性
		if y[1]=="d" then
			return {"display:block;","display:inline;","display:inline-block;","display:none;","visibility:hidden;","visibility:visible;"}
		end
		--float浮动
		if y[1]=="fl" then
			return {"float:left;","float:right;","float:none;"}
		end
		--清除浮动
		if y[1]=="cr" then
			return {"clear:both;","clear:left;","clear:right;"}
		end		
		--垂直对齐设置
		if y[1]=="va" then
			return {"vertical-align:top;","vertical-align:middle;","vertical-align:bottom;"}
		end 
		--鼠标指针设置
		if y[1]=="cu" then
			return{'cursor:pointer;/*手形*/','cursor:auto;/*text*/','cursor:default;/*指针形*/','cursor:crosshair;/*十字形*/','cursor:move;/*移动形*/'}
		end
		--绝对定位
		if x[1]=="bs" then
			x=x[2]:split(";")
			lt=x[1]:split("+")
			if x[1]== "" then
				return "position:absolute;"
			else
				a=lt[1]
				b=lt[2]
				return {"position:absolute;left:" .. a .. "px;top:" .. b .."px","position:absolute;left:" .. a .. "px;bottom:" .. b .."px;","position:absolute;right:" .. a .. "px;top:" .. b .."px;","position:absolute;right:" .. a .. "px;bottom:" .. b .."px;"}
			end
		end
		--相对定位
		if x[1]=="rel" then
			x=x[2]:split(";")
			lt=x[1]:split("+")
			if x[1]== "" then
				return "position:relative;"
			else
				a=lt[1]
				b=lt[2]
				return {"position:relative;left:" .. a .. "px;top:" .. b .."px;","position:relative;"}
			end
		end
		if x[1]=="z" then
			x=x[2]:split(";")
			if x[1]== "" then
				return "z-index:;"
			else
				a=x[1]
				b=x[2]
				return "z-index:" .. a .. ";" .. b
			end
		end
	--定位显示设置结束
	--特殊样式设置开始
		--透明度
		if x[1]=="al" then--透明度兼容性设置--支持参数传入：命令行：iuial,数字;
			x=x[2]:split(";")
			if x[1]== "" then
				return "filter:alpha(opacity=0);opacity: 0.;"
			else
				a=x[1]
				b=x[2]
				return "filter:alpha(opacity=" .. a .. "0);opacity: 0." .. a .. ";"
			end
		end
		--兼容性容器清除浮动
		if y[1]=="clear" then
			return ".:after{content:'\\20';display:block;height:0;clear:both;}\n.{*zoom:1;}"
		end	
		--png背景图兼容性设置
		if y[1]=="png" then
			return 'background:url() no-repeat!important;/* 非IE6浏览器 */' .. '\n' .. '_background:none no-repeat;filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=image,src=""); /* IE6 */'
		end
		if y[1]=="reset" then--样式重设写法
			return 'html,body,h1,h2,h3,h4,h5,h6,hr,p,blockquote,dl,dt,dd,ul,ol,li,pre,form,fieldset,legend,button,input,textarea,th,td{margin:0;padding:0;}\nbody,button,input,select,textarea{font:12px/1.5 tahoma,arial,\\5b8b\\4f53,sans-serif;}\nh1,h2, h3, h4, h5, h6 {font-size:100%;}\nul,ol,li{list-style:none;}\na{text-decoration:none;}\na:hover{text-decoration:underline;}\nimg {border:0;}\nbutton,input,select,textarea{font-size:100%;}\n'
		end
	--特殊样式设置结束
	--html初始化设置开始
		if y[1]=="new" then
			return '<!DOCTYPE html>' .. '\n' .. '<html>' .. '\n' .. '<head>' .. '\n' .. '<meta content="text/html; charset=UTF-8" http-equiv="Content-Type" />' .. '\n' .. '<title></title>' .. '\n' .. '<meta name="description" content="" />' .. '\n' .. '<meta name="keywords" content="" />' .. '\n'  .. '<link rel="stylesheet" href="" />' ..  '\n' ..  '</head>' .. '\n'  .. '<body>' .. '\n'.. '\n' .. '<script type="text/javascript"></script>' .. '\n' .. '</body>' .. '\n' .. '</html>'
		end
		if y[1]=="css" then
			return '<style type="text/css">' .. '\n' .. '\n' .. '</style>'
		end 
		if y[1]=="cssrc" then
			return '<link rel="stylesheet" href="" />'
		end 
		if y[1]=="js" then
			return '<script type="text/javascript">' .. '\n' .. '\n' .. '</script>'
		end 
		if y[1]=="jsrc" then
			return '<script type="text/javascript" src=""></script>'
		end 	
	--html初始化设置结束
	--html标签输入开始
		--a标签
		if y[1]=="a" then
			return {'<a href=""></a>','<a href="" target="_blank"></a>'}
		end
		if x[1]=="ac" then
			x=x[2]:split(";")
			if x[1]== "" then
				return ""
			else
				a=x[1]
				b=x[2]
				return {'<a class="' .. a .. ' href=""></a>' .. b,'<a class=""' .. a .. ' href="" target="_blank"></a>' .. b}
			end
		end
		--br标签
		if y[1]=="br" then
			return "<br />"
		end
		--div标签
		if y[1]=="div" then
			return '<div></div>'
		end
		if x[1]=="divc" then
			x=x[2]:split(";")
			if x[1]== "" then
				return '<div class=""></div>'
			else
				a=x[1]
				b=x[2]
				return {'<div class="' .. a .. '"></div>' .. b}
			end
		end
		--dl列表标签
		if y[1]=="dl" then
			return '\t<dl>\n\t\t<dt></dt>\n\t\t<dd></dd>\n\t</dl>'
		end
		if x[1]=="dlc" then
			x=x[2]:split(";")
			if x[1]== "" then
				return '\t<dl class="">\n\t\t<dt></dt>\n\t\t<dd></dd>\n\t</dl>'
			else
				a=x[1]
				b=x[2]
				return '\t<dl class="' .. a .. '">\n\t\t<dt></dt>\n\t\t<dd></dd>\n\t</dl>'
			end
		end
		--em标签
		if y[1]=="em" then
			return "<em></em>"
		end
		--h(1-6)标签
		if y[1]=="ht" then
			return {"<h1></h1>","<h2></h2>","<h3></h3>","<h4></h4>","<h5></h5>","<h6></h6>"}
		end
		if x[1]=="htc" then
			x=x[2]:split(";")
			if x[1]== "" then
				return {'<h1 class=""></h1>','<h2 class=""></h2>','<h3 class=""></h3>','<h4 class=""></h4>','<h5 class=""></h5>','<h6 class=""></h6>'}
			else
				a=x[1]
				b=x[2]
				return {'<h1 class="' .. a .. '"></h1>','<h2 class="' .. a .. '"></h2>','<h3 class="' .. a .. '"></h3>','<h4 class="' .. a .. '"></h4>','<h5 class="' .. a .. '"></h5>','<h6 class="' .. a .. '"></h6>'}
			end
		end
		--hr标签
		if y[1]=="hr" then
			return "<hr />"
		end
		--iframe标签
		if y[1]=="ifr" then
			return '<iframe src="" frameborder="0"></iframe>'
		end
		--img标签
		if y[1]=="img" then
			return '<img src="" alt="" />'
		end
		if x[1]=="imgc" then
			x=x[2]:split(";")
			if x[1]== "" then
				return '<img src="" alt="" />'
			else
				a=x[1]
				b=x[2]
				return {'<img class="' .. a .. '" src="" alt="" />' .. b}
			end
		end
		--input标签
		--文本框
		if y[1]=="input" then
			return {'<input type="text" />','<input type="button" />','<input type="radio" />','<input type="checkbox" />'}
		end
		if y[1]=="txt" then
			return '<input type="text" />'
		end
		if x[1]=="txtc" then
			x=x[2]:split(";")
			if x[1]== "" then
				return '<input type="text" />'
			else
				a=x[1]
				b=x[2]
				return {'<input class="' .. a .. ' type="text" />' .. b}
			end
		end
	--html标准输入结束
  end
end
ime.register_command("ui","ui","css样式表","alpha",'jumpCoder:前端快捷命令行--By:{Hi:"小web",QQ:"124669653"}')
