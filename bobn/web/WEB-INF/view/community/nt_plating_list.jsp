<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/common/reset.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/common/common.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/main/template_header.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/main/template_footer.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/community/nt_plating_list.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<%@page import="kh.semi.bobn.community.model.vo.NtPlatingListVo"%>
<%@page import="java.util.ArrayList"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>플레이팅_조회</title>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>
</head>
<body>
	<%@ include file="/WEB-INF/view/common/template_header.jsp"%>
	<%
		ArrayList<NtPlatingListVo> ntpcVolist = (ArrayList<NtPlatingListVo>) request.getAttribute("ntpcVolist");
	%>
	<div class="j_wrap content">
		<div id="j_content">
			<section>
				<article id="j_ntpl_article1">
					<!-- 컨셉버튼 -->
					<div class="j_ntpl_concept_btn_wrap">
						<button type="button" class="j_ntpl_concept_btn" id="j_ntpl_total"
							<c:if test="${pbConcept eq '4'}">style="background-color : #F54748; color : white;"</c:if>>전체</button>
						<button type="button" class="j_ntpl_concept_btn" id="j_ntpl_birth"
							<c:if test="${pbConcept eq '1'}">style="background-color : #F54748; color : white;"</c:if>>생일</button>
						<button type="button" class="j_ntpl_concept_btn" id="j_ntpl_party"
							<c:if test="${pbConcept eq '2'}">style="background-color : #F54748; color : white;"</c:if>>홈파티</button>
						<button type="button" class="j_ntpl_concept_btn" id="j_ntpl_snack"
							<c:if test="${pbConcept eq '3'}">style="background-color : #F54748; color : white;"</c:if>>안주</button>
					</div>
				</article>
				<article id="j_ntpl_article2">
					<button type="button" id="j_ntpl_write_btn"
						onclick="location.href='<%=request.getContextPath()%>/ntpcwrite'">글쓰기</button>
				</article>
				<article id="j_ntpl_article3">
					<!--db받아온 ntpcVolist를 vo에 담아서 반복문 돌리기  -->
					<%
						for (NtPlatingListVo vo : ntpcVolist) {
					%>
					<div id="j_ntpl_contentItem">
						<div class="j_ntpl_article3_img_id"><%=vo.getMemberId()%></div>
						<div class="j_ntpl_article3_img">
							<img src=<%=vo.getPiFile()%>
								onclick="location.href='ntpcdetail?pbNo=<%=vo.getPbNo()%>';"
								id="j_ntpl_img_item">
						</div>
						<div class="j_ntpl_article3_text"><%=vo.getPbTitle()%></div>
					</div>
					<%
						}
					%>
				</article>
				<article id="j_ntpl_article4">
					<!-- 페이징 -->
					<div class="j_ntpl_pagination">

						<c:if test="${startPage > 1}">
							<a href="ntpclist?pageNum=${startPage-1}&pbConcept=${pbConcept}">&laquo;</a>
						</c:if>

						<c:forEach begin="${startPage}" end="${endPage}" step="1" var="i">
							<c:if test="${currentPage eq i}">
								<a href="ntpclist?pageNum=${i}&pbConcept=${pbConcept}"
									class="j_ntpl_active">${i}</a>
							</c:if>

							<c:if test="${currentPage ne i}">
								<a href="ntpclist?pageNum=${i}&pbConcept=${pbConcept}">${i}</a>
							</c:if>
						</c:forEach>

						<c:if test="${endPage < pageCnt}">
							<a href="ntpclist?pageNum=${endPage+1}&pbConcept=${pbConcept}">&raquo;</a>
						</c:if>

					</div>
				</article>
			</section>
		</div>
	</div>
	<script>
		//컨셉별 화면 조회
		$("#j_ntpl_total").on("click", function() {
			location.href = "/bobn/ntpclist?pbConcept=4";
		});

		$("#j_ntpl_birth").on("click", function() {
			location.href = "/bobn/ntpclist?pbConcept=1";
		});

		$("#j_ntpl_party").on("click", function() {
			location.href = "/bobn/ntpclist?pbConcept=2";
		});

		$("#j_ntpl_snack").on("click", function() {
			location.href = "/bobn/ntpclist?pbConcept=3";
		});
	</script>
	<%@ include file="/WEB-INF/view/common/template_footer.jsp"%>
</body>
</html>