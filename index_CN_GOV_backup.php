<?php

    $result=<<<EOF
    <head>
    <title>个人开发使用</title>
    </head>
    
    <body>
    <style type="text/css">
        * {
            padding: 0;
            margin: 0;
        }
    
        .think_default_text {
            padding: 4px 48px;
        }
    
        a {
            color: #2E5CD5;
            cursor: pointer;
            text-decoration: none
        }
    ls
        a:hover {
            text-decoration: underline;
        }
    
        body {
            background: #fff;
            font-family: "Century Gothic", "Microsoft yahei";
            color: #333;
            font-size: 18px
        }
    
        h1 {
            font-size: 100px;
            font-weight: normal;
            margin-bottom: 12px;
        }
    
        p {
            line-height: 1.6em;
            font-size: 42px
        }
    </style>
    <div style="padding: 24px 48px;">
        <h1>:)</h1>
        <p> ThinkPHP V5<br /><span style="font-size:30px">十年磨一剑 - 为API开发设计的高性能框架</span></p><span
            style="font-size:22px;">[ V5.0 版本由 <a href="http://www.qiniu.com" target="qiniu">七牛云</a> 独家赞助发布 ]</span>
    </div>
    
    <hr style="margin:0 auto;width:760px; height:1px;background:#ccc;border:0px; ">
    
    <div style="text-align:center;font-size:12px;font-weight:bold;">
        本网站已备案 备案号: <a href="http://www.beian.miit.gov.cn/" target="_blank" class="text">京ICP备19057052号<br></a><br>
    </div>
    </body>';
    EOF;
    echo $result;