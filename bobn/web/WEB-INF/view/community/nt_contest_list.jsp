<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/common/reset.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/common/common.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/main/template_header.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/main/template_footer.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/community/nt_contest_list.css">
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>콘테스트_조회</title>
</head>
<body>
    <div class="j_wrap content">
        <div id="j_content">
            <section>
                <article id="j_ntcl_article0">
                    <p>콘테스트</p>
                </article>
                <article id="j_ntcl_article1">
                    <div>
                        <img src="<%=request.getContextPath()%>/resources/image/ntcc/contest.png" id="j_ntcl_concept">
                    </div>
                </article>
                 <article id="j_ntcl_article2">
                    <button type="button" id="j_ntcl_write_btn" onclick="location.href='어디로이동할지적어야함';">참여하기</button>
                </article>
                <article id="j_ntcl_article3">
                    <div>
                        <div class="j_ntcl_article3_img_id">member_id</div>
                        <div class="j_ntcl_article3_img">
                                <img src="https://via.placeholder.com/300" alt="" onclick="location.href='어디로이동할지적어야함';" id="j_ntcl_img_item">
                        </div>
                        <div class="j_ntcl_article3_text">ntclCnt / ntcrCnt</div>
                        <div class="j_ntcl_article3_text">ntcr_cb_title</div>
                    </div>
                </article>
                <article id="j_ntcl_article4">
                    <div class="j_ntcl_pagination">
                        <a href="#">&laquo;</a>
                        <a href="#" class="j_ntcl_active">1</a>
                        <a href="#">2</a>
                        <a href="#">3</a>
                        <a href="#">4</a>
                        <a href="#">&raquo;</a>
                    </div>
                </article>
            </section>
        </div>
    </div>
</body>
</html>