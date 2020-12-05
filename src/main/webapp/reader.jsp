<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">

    <title>简易网页阅读器</title>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="WebSite Reader">
    <style type="text/css">
        pre {
            white-space: pre-wrap;
            white-space: -moz-pre-wrap;
            white-space: -pre-wrap;
            white-space: -o-pre-wrap;
            *word-wrap: break-word;
            *white-space: normal;
        }

        .chaper {
            display: none;
        }

        .header {
            border-color: read;
            border: solid 2px;
            height: 40px;
            width: auto;
            overflow-y: scroll;
        }

        .chaper_div {
            border-color: red;
            height: 100%;
            width: auto;
            overflow-y: scroll;
            display: none;
            margin: 0 auto;
        }

        .chapter_content {
            border-color: red;
            border: solid 2px;
            height: 100%;
            width: auto;
            overflow-y: scroll;
            display: none;
            margin: 0 auto 45px;
        }

        .catagory_div {
            width: 210px;
            float: left;
            height: 100%;
            border: solid 2px;
            border-color: red;
            overflow-y: scroll;
        }

        .content_area {
            min-height: 80%;
            padding: 15px 10px 10px 15px;
        }

        .page_bar {
            position: fixed;
            left: 250px;
            bottom: 0px;
            height: 40px;
            border-style: solid 1px;
            border-color: #FF0000;
        }

        .rightcontent {
            margin-left: 220px;
            border: solid 2px;
            border-color: red;
            height: 100%;
        }
    </style>
    <script src="https://cdn.bootcss.com/jquery/1.10.2/jquery.min.js"></script>
    <script src="scripts/tools.js"></script>
    <script src="scripts/reader.js"></script>
</head>

<body>
<div id="wapper">
    <div class="header">
        <input type="file" id="files" style="display: none" /> <input
            type="button" id="import" value="导入阅读" /> <select id="encode">
        <option value="utf-8">utf-8</option>
        <option value="gb2312">gb2312</option>

    </select>
    </div>
    <div id="catalog" class="catagory_div"></div>
    <div class="rightcontent">
        <div id="content" class="content_area"></div>
        <div class="page_bar">
            <input type="button" chapterId="book_preface_chapter" id="lastPage"
                   value="上一页" disabled /> <input type="button"
                                                  chapterId="book1_chapter" id="nextPage" value="下一页" /> <input
                type="hidden" value="" id="selectedChapterId" /> <input
                type="hidden" value="" id="maxChapterIndex" />
        </div>
    </div>
</div>

</body>
</html>
