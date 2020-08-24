<style type="text/css">

    .header-inner{
         display: none;
    }
    .sidebar{
        display: none;
    }
    .content{
        margin-bottom: 360px;
    }
    .content-wrap{
       width: 100%;
       // box-sizing: content-box;
       padding: initial !important;
       background:url('https://s2.ax1x.com/2019/09/07/nlL4pR.jpg');
    }
    
    .main-inner{
    	width: 100%;
    }
    .main {
        padding-bottom: 150px;
        margin-top: 0px;
        background:url('https://s2.ax1x.com/2019/09/07/nlL4pR.jpg');
    }
    .main-inner{
    	margin-top: unset;
    }
    .page-post-detail .post-meta{
    	display: none;
    }
    body {
    	background-image: unset;
    	background-attachment: unset;
    	background-size: 100%;
    	/*background-position: top left;*/
    }
    .header{
    	background: rgba(28, 25, 25, 0.6);
    	border-bottom: unset;
    }
    .menu .menu-item a{
    	    font-weight: 300;
    		color: #e6eaed;
    }
    .footer-inner {
    	 padding-left: 0px;
    }
    
    img:hover {
        //opacity:0.8; /*透明度*/
        //filter:alpha(opacity=100); /* For IE8 and earlier */
    }
    
    .imgbox{
        margin-top: 0px;
        margin-right: auto;
        margin-left: auto;
        padding: 1px 10px;
        width: 90%;
        overflow: hidden;
        height: 169px !important;
        border-right: 0px solid #bcbcbc;
        background:url('https://s2.ax1x.com/2019/09/07/nlL4pR.jpg');/*背景图片*/
    }
    .box{
    	visibility: visible;
    	overflow: auto; 
    	zoom: 1;
    }
    .box li{
        float: left;
        width: 25%;
        position: relative;
        overflow: hidden;
        text-align: center;
        list-style: none;
        margin: 0;
        /*display: inline;*/
        padding: 0;
        height: 300px;
    }
    .box li span{
        display: block;
        padding: 12% 7% 10% 7%;
        min-height: 80px;
        //background: #fff;
        color: #fff;
        font-size: 16px;
        font-weight: 600;
        line-height: 26px;
        -webkit-box-sizing: border-box;
        box-sizing: border-box;
    }
    
    img.imgitem{
    	padding: unset;
    	padding: unset;
    	border: unset;
    	position: relative;
    	padding: 0px;
    	height: auto;
    	width: 100%;
    }
    
    div#posts.posts-expand {
        border: unset;
        padding: unset;
        margin-bottom: 10px;
    }
    .posts-expand .post-body img{
        padding: 0px !important;
    }
    .box p{
        margin-top: -25px;
        display: block;
        background: #121212;
        color: #fff;
        font-size: 14px;
        -webkit-box-sizing: border-box;
        box-sizing: border-box;
        text-align: center;
    }
    
    .box span strong{
        background: rgba(0,0,0,0.4);
        padding: 20px;
    }
    
    .posts-expand .post-title {
        display: none;
    }
    
    .title{
        margin: 10px auto;
        display: inline-block;
        vertical-align: middle;
        //background: url(/images/beichen.jpg);
        font: 85px/250px 'ChaletComprimeMilanSixty';
        //background-position: left bottom !important;
        background-position: center center !important;
        color: #fff;
        background-size: 100% auto !important; 
        -webkit-background-size: cover; 
        -moz-background-size: cover;
        -o-background-size: cover;
        width: 100%;
        text-align: center;
        border: unset;
        height: 560px;
        cursor: unset !important;
        -webkit-box-sizing: border-box;
        box-sizing: border-box;
    }
    
    @media (max-width: 767px){
        .box li {
            width: 98%;
        }
        .title {
            height: 200px;
        }
        
        .box span {
            min-height: 80px;
            border-right: unset;
            font-size: 17px;
        }
        .box p{
            border-right: unset;
            font-size: 12px;
          
        }
        .posts-expand {
            margin: unset;
        }
    
    }
    
    @media (min-width: 1600px){
    
        .container .main-inner{
            width: 100%;
        }
    }

</style>

<div id="box" class="box"></div>

<script type="text/javascript">

   // 相册json
   var json = 
    [
    	[
            {
                'title': '七彩丹霞',
                'url': 'https://s2.ax1x.com/2019/09/07/nlRzZt.jpg'
            },
            {
                'title': '9月雨后',
                'url': 'https://s2.ax1x.com/2019/09/07/nlRvqI.jpg'
            },
            {
                'title': '五花肉',
                'url': 'https://s2.ax1x.com/2019/09/07/nlRbGD.jpg'
            },
            {
                'title': '五花肉+1',
                'url': 'https://s2.ax1x.com/2019/09/07/nlRHPO.jpg'
            },
            {
                'title': '别样的艳',
                'url': 'https://s2.ax1x.com/2019/09/07/nlRTIK.jpg'
            },
            {
                'title': '远处的城堡',
                'url': 'https://s2.ax1x.com/2019/09/07/nlRXMd.md.jpg'
            },
            {
                'title': '夕阳红',
                'url': 'https://s2.ax1x.com/2019/09/07/nlRqRe.md.jpg'
            },
            {
                'title': '卢浮宫',
                'url': 'https://s2.ax1x.com/2019/09/07/nlRIVx.md.jpg'
            },
            {
                'title': '景区一角',
                'url': 'https://s2.ax1x.com/2019/09/07/nlRhrR.md.jpg'
            },
            {
                'title': '夕阳🌇',
                'url': 'https://s2.ax1x.com/2019/09/07/nlRbGD.md.jpg'
            },
            {
                'title': '冰沟丹霞',
                'url': 'https://s2.ax1x.com/2019/09/07/nlRLxH.md.jpg'
            },
            {
                'title': '别样的雨后',
                'url': 'https://s2.ax1x.com/2019/09/07/nlRRxJ.md.jpg'
            },
            {
                'title': '卢浮宫',
                'url': 'https://s2.ax1x.com/2019/09/07/nlR4q1.md.jpg'
            }
    	],
    	
    	[
            {
                'title': '世界之巅',
                'url': 'https://s2.ax1x.com/2019/09/07/nl5540.md.jpg'
            },
            {
                'title': '一天的行程',
                'url': 'https://s2.ax1x.com/2019/09/07/nl56gS.md.jpg'
            },
            {
                'title': '珠峰国家公园',
                'url': 'https://s2.ax1x.com/2019/09/07/nl5RBj.md.jpg'
            },
            {
                'title': '盘山公路',
                'url': 'https://s2.ax1x.com/2019/09/07/nl54Nq.md.jpg'
            },
            {
                'title': '保护区',
                'url': 'https://s2.ax1x.com/2019/09/07/nl5LDJ.md.png'
            },
            {
                'title': '珠峰大本营',
                'url': 'https://s2.ax1x.com/2019/09/07/nlINGV.md.png'
            },
            {
                'title': '氧气瓶',
                'url': 'https://s2.ax1x.com/2019/09/07/nl5jER.md.jpg'
            },
            {
                'title': '珠峰日出',
                'url': 'https://s2.ax1x.com/2019/09/07/nl5cjg.md.jpg'
            },
            {
                'title': '海拔最高的寺庙—绒布寺',
                'url': 'https://s2.ax1x.com/2019/09/07/nl5hEn.md.jpg'
            }
    	]
    ]
    
    var content = json2Array(json);
        
    var wid = 250;
    if ((window.innerWidth) > 1200) {
        wid = (window.innerWidth*3)/18;
    }
    var box = document.getElementById('box');
    
    var i=0;
    for (var i = 0; i < content.length; i++) {
    	var conBox = document.createElement("div");
    	conBox.id = 'conBox'+i;
    	box.appendChild(conBox);
    	var item = document.createElement("div");
    	var title = content[i][0].title;
    	var url = content[i][0].url;
    	item.innerHTML = "<button class = 'title' style = 'background: url(" + url + ");'><span style = 'display: inline;'><strong style = 'color:#f0f3f6;' >" + title + "</strong></span></button>";
    	conBox.appendChild(item);
    
    	for (var j = 1; j < content[i].length ; j++) {
    		var _title = content[i][j].title;
    		var _url = content[i][j].url;
    		var item = document.createElement("li");
    		item.innerHTML="<div class = 'imgbox' id = 'imgbox' style = 'height: " + wid + "px;'><img class = 'imgitem' src='" + _url + "' alt='" + _url + "'></div><span>" + _title +"</span>";
    		conBox.appendChild(item);
    	}
    }
    
    //json转二维数组
    function json2Array(arr) {
        for (var i=0; i<arr.length; i++) {
            var tmpArr = []
            for (var attr in arr[i]) {
                tmpArr.push(arr[i][attr])
            }
            arr[i] = tmpArr
        }
        return arr
    }

</script>