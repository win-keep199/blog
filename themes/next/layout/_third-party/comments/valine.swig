{% if theme.valine.enable and theme.valine.appid and theme.valine.appkey %}
  <script type="text/javascript" src="//cdn1.lncld.net/static/js/3.0.4/av-min.js"></script>
  <script type="text/javascript" src="/js/src/Valine.min.js"></script>
  <!-- 评论框美化 -->
  <style type="text/css">
      #veditor {
        background-image: url({{theme.valine.background}});
        background-size: contain;
        background-repeat: no-repeat;
        background-position: right;
        background-color: rgba(255, 255, 255, 0);
        resize: vertical
      }
      #veditor:focus{
        background-position-y: 200px;
        transition: all 0.2s ease-in-out 0s;
      }

      /*鼠标放置头像旋转*/
      img.vimg {
          transition: all 1s   /* 旋转时间为 1s */
      }

      img.vimg:hover {
          transform: rotate(360deg);
          -webkit-transform: rotate(360deg);
          -moz-transform: rotate(360deg);
          -o-transform: rotate(360deg);
          -ms-transform: rotate(360deg);
      }

      #comments .vcards .vcard {
        padding: 15px 20px 0 20px;
        border-radius: 10px;
        margin-bottom: 15px;
        box-shadow: 0 0 4px 1px rgba(0, 0, 0, .12);
        transition: all .3s
      }

      #comments .vcards .vcard:hover {
        box-shadow: 0 0 8px 3px rgba(0, 0, 0, .12)
      }

      #comments .vcards .vcard .vh .vcard {
        border: none;
        box-shadow: none;
      }


  </style>
  <!-- https://deserts.io/diy-a-comment-system/ -->
  <script type="text/javascript">
    new Valine({
        lang: 'zh-cn',
        admin_email: '18762590320@163.com', //博主邮箱
        el: '#comments' ,
        appId: '{{ theme.valine.appid }}',
        appKey: '{{ theme.valine.appkey }}',
        placeholder: "你是我一生只会遇见一次的惊喜 ...",
        master: '1594eadfd88c23c436e1d293db4b442c',   //博主邮箱md5
        tagMeta: ["博主","小伙伴","访客"],     //标识字段名
        friends:  ["089932bfa601a5061a13f41e49075495"],  //小伙伴邮箱Md5
        enableQQ: true,
  });
  </script>

<!-- 今日诗词：随机返回一句古诗词名句的接口，宅到用来做 Valine 的 placeholder 显示内容 -->
<script src="https://sdk.jinrishici.com/v2/browser/jinrishici.js" charset="utf-8"></script>
<script type="text/javascript">
    jinrishici.load(function(result) {
        var jrsc_plac =  result.data.content + "\n「" + result.data.origin.title + "」" + result.data.origin.dynasty + " · " + result.data.origin.author;
        document.getElementById("veditor").setAttribute("placeholder",jrsc_plac);
    })
</script>

{% endif %}