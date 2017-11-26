有两种分别用<bgsound>和<embed></embed>标签,当用<embed>插入背景音乐时可以设置宽度和高度为0，隐藏播放器。
非标准
该特性是非标准的，请尽量不要在生产环境中使用它！
<bgsound>是IE浏览器中设置网页背景音乐的元素。
不要使用它!想要在网页中嵌入音频，应当使用<audio>.

属性Edit

balance
该属性取值在-10,000到+10,000，它决定扬声器之间的音量如何分配。
loop
该属性表明音频被播放的次数，是一个数值或者关键字infinite。
src
该属性定义了音频文件的URL，必须是以下格式之一：.wav，.au，.mid
volume
该属性值域为-10,000到0，它决定背景音乐的音量大小。

参考文献：https://developer.mozilla.org/zh-CN/docs/Learn

■ <bgsound>：

　　<bgsound> 是用来插入背景音乐，但只适用于 ie，其参数设定不多。如下

　　<bgsound src="your.mid" autostart=true loop=infinite>

src="your.mid"
设定 midi 档案及路径，可以是相对或绝对。
autostart=true
是否在音乐档下载完之后就自动播放。true 是，false 否 (内定值)。
loop=infinite
是否自动反复播放。loop=2 表示重复两次，infinite 表示重复多次。

■ <embed>：

　　<embed> 是用来插入各种多媒体，格式可以是 midi、wav、aiff、au 等等，netscape 及 新版的 ie 都支持。其参数设定较多。如下下

　　<embed src="your.mid" autostart="true" loop="true" hidden="true">

src="your.mid"
设定 midi 档案及路径，可以是相对或绝对。
autostart=true
是否在音乐档下载完之后就自动播放。true 是，false 否 (内定值)。
loop="true"
是否自动反复播放。loop=2 表示重复两次，true 是， false 否。
hidden="true"
是否完全隐藏控制画面，true 为是，no 为否 (内定)。
starttime="分:秒"
设定歌曲开始播放的时间。如 starttime="00:30" 表示从第30秒处开始播放。
volume="0-100"
设定音量的大小，数值是0到100之间。内定则为使用系统本身的设定。
width="整数" 和 high="整数"
设定控制面板的高度和宽度。(若 hidden="no")
align="center"
设定控制面板和旁边文字的对齐方式，其值可以是 top、bottom、center、baseline、 left、right、texttop、middle、absmiddle、absbottom
controls="smallconsole"
设定控制面板的外观。预设值是 console。
console 一般正常面板 　　
smallconsole 较小的面板 　　
playbutton 只显示播放按钮 　　
pausecutton 只显示暂停按钮 　　
stopbutton 只显示停止按钮 　　
volumelever 只显示音量调节按钮

实例：

   1. <!doctype html public "-//w3c//dtd xhtml 1.0 transitional//en" "http://www.w3.org/tr/xhtml1/dtd/xhtml1-transitional.dtd">
   2. <html xmlns="http://www.w3.org/1999/xhtml">
   3. <head>
   4. <meta http-equiv="content-type" content="text/html; charset=gb2312" />
   5. <title>无标题文档</title>
   6. </head>
   7.
   8. <body>
   9. <bgsound src="http://sj.cpgl.net/sjbbs/midi/md01.mid " autostart=true loop=infinite>
  10. </body>
  11. </html>

复制代码

   1. <!doctype html public "-//w3c//dtd xhtml 1.0 transitional//en" "http://www.w3.org/tr/xhtml1/dtd/xhtml1-transitional.dtd">
   2. <html xmlns="http://www.w3.org/1999/xhtml">
   3. <head>
   4. <meta http-equiv="content-type" content="text/html; charset=gb2312" />
   5. <title>无标题文档</title>
   6. </head>
   7.
   8. <body>
   9. <embed src="http://www.bricklin.cn/zly/theone/2.wma" width="0" height="0"></embed>
  10. </body>
  11. </html>

复制代码

**********************************************************************************************************************************

（一）、基本语法：

　　embed src=url

　　说明：embed可以用来插入各种多媒体，格式可以是 midi、wav、aiff、au、mp3等等，

　　netscape及新版的ie 都支持。url为音频或视频文件及其路径，可以是相对路径或绝对路径。

　　示例：<embed src="your.mid">

　　（二）、属性设置：

　　1、自动播放：

　　语法：autostart=true、false

　　说明：该属性规定音频或视频文件是否在下载完之后就自动播放。

　　true：音乐文件在下载完之后自动播放；

　　false：音乐文件在下载完之后不自动播放。

　　示例：<embed src="your.mid" autostart=true>

　　<embed src="your.mid" autostart=false>

　　2、循环播放：

　　语法：loop=正整数、true、false

　　说明：该属性规定音频或视频文件是否循环及循环次数。

　　属性值为正整数值时，音频或视频文件的循环次数与正整数值相同；

　　属性值为true时，音频或视频文件循环；

　　属性值为false时，音频或视频文件不循环。

　　示例：<embed src="your.mid" autostart=true loop=2>

　　<embed src="your.mid" autostart=true loop=true>

　　<embed src="your.mid" autostart=true loop=false>

　　3、面板显示：

　　语法：hidden=ture、flase

　　说明：该属性规定控制面板是否显示，默认值为flase。

　　ture：隐藏面板；

　　flase：显示面板。

　　示例：<embed src="your.mid" hidden="ture">

　　<embed src="your.mid" hidden="no">

　　4、开始时间：

　　语法：starttime=mm:ss（分：秒）

　　说明：该属性规定音频或视频文件开始播放的时间。未定义则从文件开头播放。

　　示例：<embed src="your.mid" starttime="00:10">

　　5、音量大小：

　　语法：volume=0-100之间的整数

　　说明：该属性规定音频或视频文件的音量大小。未定义则使用系统本身的设定。

　　示例：<embed src="your.mid" volume="10">

　　6、容器属性：

　　语法：height=# width=#

　　说明：取值为正整数或百分数，单位为像素。该属性规定控制面板的高度和宽度。

　　height：控制面板的高度；

　　width：控制面板的宽度。

　　示例：<embed src="your.mid" height=200 width=200>

　　7、容器单位：

　　语法：units=pixels、en

　　说明：该属性指定高和宽的单位为pixels或en。

　　示例：<embed src="your.mid" units="pixels" height=200 width=200>

　　<embed src="your.mid" units="en" height=200 width=200>

　　8、外观设置：

　　语法：controls=console、smallconsole、playbutton、pausebutton、stopbutton、

　　volumelever 说明：该属性规定控制面板的外观。默认值是console。

　　console：一般正常面板；

　　smallconsole：较小的面板；

　　playbutton：只显示播放按钮；

　　pausebutton：只显示暂停按钮；

　　stopbutton：只显示停止按钮；

　　volumelever：只显示音量调节按钮。

　　示例：<embed src="your.mid" controls=smallconsole>

　　<embed src="your.mid" controls=volumelever>

　　9、对象名称：

　　语法：name=#

　　说明：#为对象的名称。该属性给对象取名，以便其他对象利用。

　　示例：<embed src="your.mid" name="sound1">

　　10、说明文字：

　　语法：title=#

　　说明：#为说明的文字。该属性规定音频或视频文件的说明文字。

　　示例：<embed src="your.mid" title="第一首歌">

　　11、前景色和背景色：

　　语法：palette=color|color

　　说明：该属性表示嵌入的音频或视频文件的前景色和背景色，第一个值为前景色，第二个值为背景

　　色，中间用 | 隔开。color可以是rgb色（rrggbb）也可以是颜色名，还可以是transparent

　　（透明）。 示例：<embed src="your.mid" palette="red|black">

　　12、对齐方式：

　　语法：align=top、bottom、center、baseline、 left、right、texttop、middle、

　　absmiddle、absbottom

　　说明：该属性规定控制面板和当前行中的对象的对齐方式。

　　center：控制面板居中；

　　left：控制面板居左；

　　right：控制面板居右；

　　top：控制面板的顶部与当前行中的最高对象的顶部对齐；

　　bottom：控制面板的底部与当前行中的对象的基线对齐；

　　baseline：控制面板的底部与文本的基线对齐；

　　texttop：控制面板的顶部与当前行中的最高的文字顶部对齐；

　　middle：控制面板的中间与当前行的基线对齐；

　　absmiddle：控制面板的中间与当前文本或对象的中间对齐；

　　absbottom：控制面板的底部与文字的底部对齐。

　　示例：<embed src="your.mid" align=top>

　　<embed src="your.mid" align=center>

************************************************************************************************************************************

 

将这段代码插入到您的<head></head>之间
当您打开网站时即可听到背景音乐：
<bgsound src=china.mid loop="-1">
这种当网页最小化之后，音乐会消失

网页背景音乐的代码：
<embed src="http://xxx.com/xxx.mp3" quality=high pluginspage="http://www.macromedia.com/shockwave/download/index.cgi?p1_prod_version=shockwaveflash" type="application/x-shockwave-flash" width="1" height="1"></embed>
1.mid表示音效文件
<embed src="1.swf" quality=high pluginspage="http://www.macromedia.com/shockwave/download/index.cgi?p1_prod_version=shockwaveflash" type="application/x-shockwave-flash" width="1" height="1"></embed>
上面的网页背景音乐代码可以加入flash动画的绝对地址（或相对地址）
<embed width=1 height=1 autostart="true" loop="true" controls=playbutton console=clip1 nolabels=true type="audio/x-pn-realaudio-plugin" src="1.ram"> </embed>
ram格式的音乐文件专用网页背景音乐代码：
<embed src="1.mid" align="center" border="0" width="1" height="1" width="100" autostart="true" loop="true">
指定播放器的大小（width、heigh）、是否自动（autostart标记）、是否循环播放（loop标记），而浏览者则可以自主地决定是否播放音乐。
此代码可以当作网页中插入flash动画的代码用。只要把1.mid替换为flash动画的相对地址或决对地址就ok了。
<embed src="1.mp3" align="center" border="0" width="1" height="1" width="100" autostart="true" loop="true">
此代码可以加mp3形式的音乐为网页背景音乐
<embed src="http://xxx.com/xxx.mp3" width="0" height="0" border=0 autostart="ture" loop="ture"></embed>
1.mid表示音效文件
<bgsound src="1.mid" loop=3>
表示将1.mid音效文件插入到页面为背景音乐，并循环播放3次。
<embed src="1.mid" hidden="true">
1.mid表示音效文件
<bgsound src="1.mid" loop="infinte">
1.mid表示音效文件
<embed src="1.mid" hidden="true" loop="true">
1.mid表示音效文件
<bgsound src=1.mid loop="-1">
1.mid表示音效文件

网页背景音乐  

第一种：在叶子代码中的<style></style>之间加入<bgsound src="音乐url" loop="-1"> 这段代码。

　　在这里要说的是，“loop”中的数值是音乐循环的次数，可设置为任意正整数，若设为“-1”的话，音乐将永远循环。

　　这种背景音乐是打开叶子后直接播放的，在叶子上不会有显示。这是最简单的一种。


　　第二种：这种方法则略微复杂一些，但可设置的参数也较多。仍是在叶子代码中的<style></style>标签之间加入一个“embed”标签，其最简形式就像这样：

<embed src="音乐url" autostart="true" loop="true" width="80" height="20">

　　不同的是，在这里我们可以设置更多内容，以下是具体的说明：

　　src 背景音乐的地址（即url）。
　　autostart 是否自动播放，“true”为音乐文件读取完后立即播放，“false”则不立即播放，默认值为“false”

　　loop 循环次数，设置为“true”为永远循环，“false”为仅播放一次，若设为任意一正整数，则循环所输入的次数。
　　volume 设置音量，取值范围是“0-100”，默认值为系统当前音量。
　　starttime 设置音乐开始播放的时间，格式是“分：秒”，
如：starttime＝"00:10"，就是从第10秒开始播放。
　　endtime 设置音乐结束播放的时间，具体格式同上。
　　width 设置音乐播放控制面板的宽度。
　　height 设置音乐播放控制面板的高度。
　　controls 设置音乐播放控制面板的外观，
“console”为通常面板；
“smallconsole”为小型面板。
“playbutton”为是否显示播放按钮；
“pausebutton”为是否显示暂停按钮；
“stopbutton”为是否显示停止按钮；
“volumelever”为是否显示音量调节按钮，

　　例如：
　　controls="console/smallconsole/playbutton/
　　pausebutton/stopbutton/volumelever"。
　　hidden 设置音乐播放控制面板的显示与否，
“false”为显示，“true”为隐藏。

　　现在，你可以试一试了。不过要注意，音乐文件的体积不要太大，否则页面已经打开了半天，音乐却还没有读出来。推荐使用wma格式的音乐文件。

　　下面是介绍如何在网页中播放电影，加入的方法仍和上面一样。

　　<embed src="[/color-red]影片url[/color]" autostart="true" loop="true" width="200" height="150">

　　有图像的rm格式：

<object classid='clsid:cfcdaa03-8be4-11cf-b84b-0020afbbccfa' height=288 id=video1 width=305 viewastext>
<param name='_extentx' value='5503'>
<param name='_extenty' value='1588'>
<param name='autostart' value='-1'>
<param name='shuffle' value='0'>
<param name='prefetch' value='0'>
<param name='nolabels' value='0'>
<param name='src' value='影片url'>
<param name='controls' value='imagewindow,statusbar,controlpanel'>
<param name='console' value='raplayer'>
<param name='loop' value='0'>
<param name='numloop' value='0'>
<param name='center' value='0'>
<param name='maintainaspect' value='0'>
<param name='backgroundcolor' value='#000000'>
</object>

　　如果是无图像的rm格式：如相声，歌曲……

<object id='video2' width='300' height='62' classid='clsid:cfcdaa03-8be4-11cf-b84b-0020afbbccfa'>
<param name='_extentx' value='9657'>
<param name='_extenty' value='847'>
<param name='autostart' value='-1'>
<param name='shuffle' value='0'>
<param name='prefetch' value='0'>
<param name='nolabels' value='0'>
<param name='src' value='影片url'>
<param name='controls' value='statusbar,controlpanel'>
<param name='console' value='clip1'>
<param name='loop' value='0'>
<param name='numloop' value='0'>
<param name='center' value='0'>
<param name='maintainaspect' value='0'>
<param name='backgroundcolor' value='#000000'>
</object>

　　最简单的media格式的播放器……自动识别有无图像，但是版本是你机器的！

<embed src='文件url' width=200 height=200 autostart=true loop=true></embed>

　　有图像的media播放器，自动调用网上的插件。

　　<object id=nstv classid='clsid:6bf52a52-394a-11d3-b153-00c04f79faa6' width=280 height=265 codebase=http://activex.microsoft.com/activex/controls/mplayer/en/nsmp2inf.cab#version=5,1,52
,701standby=loading microsoft? windows media? player components... type=application/x-oleobject>
<param name='url' value='文件url'>
<param name='uimode' value='full'><param name='autostart' value='true'>
<param name='enabled' value='true'>
<param name='enablecontextmenu' value='false'>
<param name='windowlessvideo' value='true'></object>

　　无图像的media播放器……同上。

<object id=nstv classid='clsid:6bf52a52-394a-11d3-b153-00c04f79faa6' width=280 height=60 codebase=http://activex.microsoft.com/activex/controls/mplayer/en/nsmp2inf.cab#version=5,1,52
,701standby=loading microsoft? windows media? player components... type=application/x-oleobject>
<param name='url' value='文件url'>
<param name='uimode' value='full'>
<param name='autostart' value='true'>
<param name='enabled' value='true'>
<param name='enablecontextmenu' value='false'>
</object>

　　只是界面不同的media的调插件播放器……建议不用这个，你可以看情况办吧。

<embed src='文件url' type='audio/x-pn-realaudio-plugin' console='clip1' controls='controlpanel,statusbar' height='60' width='275' autostart='true'></embed>



背景音乐代码
1. 如何贴rm,ra,ram类型的音乐，代码如下：
<embed width="0" height="0" type="audio/x-pn-realaudio-plugin" autostart="true" controls="controlpanel" src="http://guest.anyp.cn/uploads/01.rm";>

2. 如何贴midi,asf,wma,asx类型的音乐，代码如下：
<embed autostart="true" loop="-1" controls="controlpanel" width="0" height="0" src="http://guest.anyp.cn/uploads/01.mid";>

只需要把整段代码copy复制到文章中(编辑文章的时请先点击html代码模式再粘贴代码，否则这段代码会以文本形式显示出来，不能被执行)，用你喜欢及可用的音乐文件的url(网址)代替上面红色显示的音乐地址代码就可以了。

造成音乐不能成功播放的大多数原因：
a：音乐文件错误，有可能这个文件本身就不是音乐的文件，只是一个普通的html页面。
b：音乐文件地址错误，这个音乐文件根本不存在。
c：没有安装相关的播放软件。

测试的办法：请把音乐文件地址在ie栏输入，如果提示你保存，保存的文件类型是rm、ram、midi等的文件即是音乐文件。如果打开这个文件是自动播放音乐或显示其他内容的，则不是。

添加带音乐的flash，然后在弹出窗口输入你的flash地址，注意后戳名为：http://xxxxx.xxxx，大小可以调整为，1*1，这样可以在不显示falsh的情况下播放音乐，但是记住要为自动播放的，不要找那种需要按开始的flash

加入一段在线音乐播放代码，推荐使用：<iframe marginheight=0 src="http://www.yqchina.com/play.htm"; frameborder=0 noresize width=540 scrolling=no height=25> 将此代码放入网站合适地方，将24小时不间断放歌，次代码由清风网络电台提供

以下代码由[秋天的风]提供：首先打开我的文章，进入编辑状态，选择html格式然后就可以输入了，下面我们来看代码，首先来看第一种，比较简单的：

<bgsound src=”url” loop=-1>
“url”依然是路径名,loop表示循环数，-1表示始终循环

来看第二种：

<embed src="music.mid" autostart="bool" loop="n" width="m" height="k">

其中各个属性的含义如下：
src：音乐文件路径
（以下可选） autostart：音乐文件上传完后自动播放，true为播放，false为否
loop：设置循环true为自动循环，false为不循环，数值为次数
width，height为播放控制面板的宽和高，
其余的属性有：
volume：取值范围为"0-100"，设置音量，默认为系统本身的音量
starttime："分：秒"，设置歌曲开始播放的时间，如，starttime="00:10"，从第10秒开始播放
endtime： "分：秒"，设置歌曲结束播放的时间
controls ：控制面板的外观controls="console/smallconsole/playbutton/ pausebutton/stopbutton/volumelever" ·console 正常大小的面板
·smallconsole 较小的面板
·playbutton 显示播放按钮
·pausebutton 显示暂停按钮
·stopbutton 显示停止按钮
·volumelever 显示音量调节按钮
hidden： 为true时可以隐藏面板

——以下代码由[风之舞]提供：
背景音乐代码精简
1、<embed src="背景音乐网址" hidden="true" autostart="true" loop="true">

--------hidden="true"表示隐藏播放，即不显示播放器的外观，若要想显示，把"true" 替换为"false"即可，这样为默认是最小化播放，若还想具体显示播放器的大小，另加上height="高度值" width="宽度值" 就可以了。

-------autostart="true"表示当前页一载入则自动播放，若不希望播放改为autostart="false"
即可...

------ loop="true"表示无限次循环播放音乐直到当前页关闭为止，不想循环播放替换为 loop="false"就ok了

2、<embed src="背景音乐网址" autostart="true" loop="-1" controls="controlpanel" width="0" height="0" >

-----------loop="-1" 表示无限次循环播放，可设置播放次数，用具体数字代替即可，比如我希望它播放两次，则loop="2"

---------controls="controlpanel"这个控制选项可省略

--------width="0" height="0"表示隐藏播放，和前面的一样。
若欲设置播放器的外观，则替换为具体的数值就可以了，比如width="123" height="100"
--------------------------------------------------
其实要说最简化的播放背景音乐的代码，则下面的代码是最简单的了--->
<embed src="背景音乐网址" >
-----------------------------------------------------
另外:bgsound src="背景音乐路径" loop="-1">
这个只支持ie浏览器，而且是完全下载完后才开始播放，不像前面所说的格式那样可以一边缓冲一边播放。这个一般用于mid音乐或较小的mp3,wav格式的音乐. 若是较大的文件还是用前面所说的格式吧~~
<bgsound src="背景音乐路径" loop="-1">这个随浏览器的打开而播放，当最小化窗口时即停止播放，当最大化窗口时又开始播放。
而，<embed src="背景音乐网址" autostart="true" loop="-1" controls="controlpanel" width="0" height="0" >常用于mid，,wav,mp3类型的音乐类型.

这个则不管是否最小化窗口都始终播放，直至关闭当前窗口为止~~
支持的音乐文件类型：只支持mp播放器所支持的音乐格式，比如mp3,asf,wma,asx等等.
不支持rm,ram....
视频文件的插入方法也和上面所说的一样，设置好合适的
音乐代码解释
<embed autostart="true" loop="-1" controls="controlpanel" width="0" height="0" src="http://guest.anyp.cn/uploads/01.mid">
解释一下:

autostart="true / false"
是否要在音乐档传完之后，就自动播放音乐。 true 是要　
false 是不要，内定值是不要。
loop="true / false / 整数"
设定是否要自动反覆播放，loop=2 表示重复两次，若要无限次重复可用 loop="true"　
width 和 high="整数"
设定控制面版的宽度和高度　
controls="console / smallconsole /
playbutton / pausebutton / stopbutton /
volumelever"
设定控制面板的样子，预设值是 console　



　　console 一般正常的面板
　　smallconsole 较小的面板
　　playbutton 只显示播放按钮
　　pausebutton 只显示暂停按钮
　　stopbutton 只显示停止按钮
　　volumelever 只显示音量调整钮
