<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/common/reset.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/common/common.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/main/template_header.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/main/template_footer.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/shopping/shopping_best.css">
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="kh.semi.bobn.shopping.model.vo.ShoppingVo"%>
<%@page import="java.util.ArrayList"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BEST페이지</title>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
</head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>
<body>
<%
ArrayList<ShoppingVo> volist = (ArrayList<ShoppingVo>)request.getAttribute("volist");
%>
<%@ include file="/WEB-INF/view/common/template_header.jsp" %>
<!-- c_warp 대신 warp으로 대체함.   -->
     <div class="wrap section">   
        <div id="c_content">
            <section>
                <article id="c_best_article0">
                    <p>BEST상품</p>
                </article>
                <article id="c_best_article1">
                	<div class="c_best_concept_btn_wrap">
						<button type="button" class="c_best_country_btn" id="c_best_kr" 
						<c:if test="${pCountry eq '1'}">style="background-color : #F54748; color : white;"</c:if>>한식</button>
						<button type="button" class="c_best_country_btn" id="c_best_west" 
						<c:if test="${pCountry eq '2'}">style="background-color : #F54748; color : white;"</c:if>>양식</button>
						<button type="button" class="c_best_country_btn" id="c_best_chi" 
						<c:if test="${pCountry eq '3'}">style="background-color : #F54748; color : white;"</c:if>>중식</button>
						<button type="button" class="c_best_country_btn" id="c_best_ja" 
						<c:if test="${pCountry eq '4'}">style="background-color : #F54748; color : white;"</c:if>>일식</button>
						<button type="button" class="c_best_country_btn" id="c_best_east" 
						<c:if test="${pCountry eq '5'}">style="background-color : #F54748; color : white;"</c:if>>동남아</button>
						<button type="button" class="c_best_country_btn" id="c_best_etc" 
						<c:if test="${pCountry eq '6'}">style="background-color : #F54748; color : white;"</c:if>>기타</button>
					</div>
                </article>
                <c:if test="${pCountry eq '1'}">
                <article id="c_best_article2">
                    <table>
                        <tr>
                            <td class="c_best_article2_img">
                                <object data="<%=request.getContextPath()%>/resources/image/product/seaweedsoup.png" alt="" width="290"
                                onclick="location.href='/bobn/shopdetail';"></object>
                            </td>
                            <td class="c_best_article2_img">
                                <object data="<%=request.getContextPath()%>/resources/image/product/tofustew.png" alt="" width="300"
                                onclick="location.href='/bobn/shopdetail1';"></object>
                            </td>
                            <td class="c_best_article2_img">
                                <object data="<%=request.getContextPath()%>/resources/image/product/dackdori.png" alt="" width="267"
                                onclick="location.href='/bobn/shopdetail2';"></object>
                            </td>
                        </tr>
                        <tr>
                            <td class="c_best_article2_text">소고기 미역국 / &#8361;5,000</td>
                            <td class="c_best_article2_text">순두부찌개 / &#8361;5,000</td>
                            <td class="c_best_article2_text">닭볶음탕 / <strike>&#8361;15,000</strike>&nbsp;&#8361;10,500</td>
                        </tr>
                        <tr>
                            <td class="c_best_article2_text"style="color:#F54748">BEST</td>
                            <td class="c_best_article2_text" style= "color:#F54748";>BEST</td>
                            <td class="c_best_article2_text"style="color:#F54748">BEST | 품절되었습니다.</td>
                        </tr>
                        <tr>
                            <td colspan="3"><br></td>
                        </tr>
                        <tr>
                            <td class="c_best_article2_img">
                               <object data="<%=request.getContextPath()%>/resources/image/product/bulgogi.png" alt="" width="275"
                                onclick="location.href='/bobn/shopdetail3';"></object>
                            </td>
                            <td class="c_best_article2_img">
                               <object data="<%=request.getContextPath()%>/resources/image/product/forkkimchi.png" alt="" width="285"
                                onclick="location.href='/bobn/shopdetail4';"></object>
                            </td>
                            <td class="c_best_article2_img">
                                <object data="<%=request.getContextPath()%>/resources/image/product/grilledeel.png" alt="" width="300"
                                onclick="location.href='/bobn/shopdetail5';"></object>
                            </td>
                        </tr>
                        <tr>
                            <td class="c_best_article2_text">불고기 전골 / &#8361;20,000</td>
                            <td class="c_best_article2_text">돼지김치찌개 / &#8361;10,000</td>
                            <td class="c_best_article2_text">장어구이 / &#8361;15,000</td>
                        </tr>
                        <tr>
                            <td class="c_best_article2_text"style="color:#F54748">BEST</td>
                            <td class="c_best_article2_text" style= "color:#F54748";>BEST | 품절되었습니다.</td>
                            <td class="c_best_article2_text"style="color:#F54748">BEST</td>
                        </tr>
                        <tr>
                            <td colspan="3"><br></td>
                        </tr>
                        <tr>
                            <td class="c_best_article2_img">
                                <object data="<%=request.getContextPath()%>/resources/image/product/suckju.png" alt="" width="300"
                                onclick="location.href='/bobn/shopdetail6';"></object>
                            </td>
                            <td class="c_best_article2_img">
                                <object data="<%=request.getContextPath()%>/resources/image/product/jeyuk.png" alt="" width="300"
                                onclick="location.href='/bobn/shopdetail7';"></object>
                            </td>
                            <td class="c_best_article2_img">
                               <object data="<%=request.getContextPath()%>/resources/image/product/potatosuzebee.png" alt="" width="300"
                                onclick="location.href='/bobn/shopdetail8';"></object>
                            </td>
                        </tr>
                        <tr>
                            <td class="c_best_article2_text">차돌박이 숙주볶음 / &#8361;3,000</td>
                            <td class="c_best_article2_text">제육볶음 / &#8361;6,000</td>
                            <td class="c_best_article2_text">감자수제비 / &#8361;5,000</td>
                        </tr>
                        <tr>
                            <td class="c_best_article2_text"style="color:#F54748">BEST</td>
                            <td class="c_best_article2_text" style= "color:#F54748";>BEST | 품절되었습니다.</td>
                            <td class="c_best_article2_text"style="color:#F54748">BEST</td>
                        </tr>
                    </table>
                </article>
                <br>
                <!-- 페이징 -->
                <article id="c_best_article3">
					<div class="c_best_pagination">
					
						<!--<c:if test="${startPage > 1}">
						<a href="shopblist?pageNum=${startPage-1}&pCountry=${pCountry}">&laquo;</a>
						</c:if>-->
						
						<c:forEach begin="${startPage}" end="${endPage}" step="1" var="i">
						<c:if test="${currentPage eq i}">
						<a href="shopblist?pageNum=${i}&pCountry=${pCountry}" class="c_best_active">1</a>
						</c:if>
						</c:forEach>
						
						<!--<c:if test="${currentPage ne i}">
						<a href="shopblist?pageNum=${i}&pCountry=${pCountry}">${i}</a>
						</c:if>-->
						
						
						<!--<c:if test="${endPage < pageCnt}">
						<a href="shopblist?pageNum=${endPage+1}&pCountry=${pCountry}">&raquo;</a>
						</c:if>-->
					</div>
				</article>
				</c:if>
				<c:if test="${pCountry eq '2'}">
                <article id="c_best_article2">
                    <table>
                        <tr>
                            <td class="c_best_article2_img">
                               <object data="<%=request.getContextPath()%>/resources/image/product/steak.png" alt="" width="295"
                                onclick="location.href='/bobn/shopdetail9';"></object>
                            </td>
                            <td class="c_best_article2_img">
                               <object data="<%=request.getContextPath()%>/resources/image/product/pizza.png" alt="" width="275"
                                onclick="location.href='/bobn/shopdetail10';"></object>
                            </td>
                            <td class="c_best_article2_img">
                                <object data="<%=request.getContextPath()%>/resources/image/product/rosepasta.png" alt="" width="285"
                                onclick="location.href='/bobn/shopdetail11';"></object>
                            </td>
                        </tr>
                        <tr>
                            <td class="c_best_article2_text">스테이크 / <strike>&#8361;20,000</strike>&nbsp;&#8361;10,000</td>
                            <td class="c_best_article2_text">피자 / &#8361;10,000</td>
                            <td class="c_best_article2_text">로제파스타 / <strike>&#8361;5,000</strike>&nbsp;&#8361;4,000</td>
                        </tr>
                        <tr>
                            <td class="c_best_article2_text"style="color:#F54748">BEST</td>
                            <td class="c_best_article2_text" style= "color:#F54748";>BEST | 품절되었습니다.</td>
                            <td class="c_best_article2_text"style="color:#F54748">BEST</td>
                        </tr>
                        <tr>
                            <td colspan="3"><br></td>
                        </tr>
                    </table>
                </article>
                <br>
                <!-- 페이징 -->
                <article id="c_best_article3">
					<div class="c_best_pagination">
					
						<!--<c:if test="${startPage > 1}">
						<a href="shopblist?pageNum=${startPage-1}&pCountry=${pCountry}">&laquo;</a>
						</c:if>-->
						
						<c:forEach begin="${startPage}" end="${endPage}" step="1" var="i">
						<c:if test="${currentPage eq i}">
						<a href="shopblist?pageNum=${i}&pCountry=${pCountry}" class="c_best_active">1</a>
						</c:if>
						</c:forEach>
						
						<!--<c:if test="${currentPage ne i}">
						<a href="shopblist?pageNum=${i}&pCountry=${pCountry}">${i}</a>
						</c:if>-->
						
						
						<!--<c:if test="${endPage < pageCnt}">
						<a href="shopblist?pageNum=${endPage+1}&pCountry=${pCountry}">&raquo;</a>
						</c:if>-->
					</div>
				</article>
				</c:if>
				<c:if test="${pCountry eq '3'}">
                <article id="c_best_article2">
                    <table>
                        <tr>
                            <td class="c_best_article2_img">
                               <object data="<%=request.getContextPath()%>/resources/image/product/jjambbong.png" alt="" width="295"
                                onclick="location.href='/bobn/shopdetail';"></object>
                            </td>
                            <td class="c_best_article2_img">
                               <object data="<%=request.getContextPath()%>/resources/image/product/jjajang.png" alt="" width="295"
                                onclick="location.href='/bobn/shopdetail';"></object>
                            </td>
                            <td class="c_best_article2_img">
                                <object data="<%=request.getContextPath()%>/resources/image/product/tang.png" alt="" width="295"
                                onclick="location.href='/bobn/shopdetail';"></object>
                            </td>
                        </tr>
                        <tr>
                            <td class="c_best_article2_text">짬뽕 / &#8361;5,000</td>
                            <td class="c_best_article2_text">짜장면 / &#8361;5,000</td>
                            <td class="c_best_article2_text">탕수육 / &#8361;7,000</td>
                        </tr>
                        <tr>
                            <td class="c_best_article2_text"style="color:#F54748">BEST | 품절되었습니다.</td>
                            <td class="c_best_article2_text" style= "color:#F54748";>BEST</td>
                            <td class="c_best_article2_text"style="color:#F54748">BEST</td>
                        </tr>
                        <tr>
                            <td colspan="3"><br></td>
                        </tr>
                    </table>
                </article>
                <br>
                <!-- 페이징 -->
                <article id="c_best_article3">
					<div class="c_best_pagination">
					
						<!--<c:if test="${startPage > 1}">
						<a href="shopblist?pageNum=${startPage-1}&pCountry=${pCountry}">&laquo;</a>
						</c:if>-->
						
						<c:forEach begin="${startPage}" end="${endPage}" step="1" var="i">
						<c:if test="${currentPage eq i}">
						<a href="shopblist?pageNum=${i}&pCountry=${pCountry}" class="c_best_active">1</a>
						</c:if>
						</c:forEach>
						
						<!--<c:if test="${currentPage ne i}">
						<a href="shopblist?pageNum=${i}&pCountry=${pCountry}">${i}</a>
						</c:if>-->
						
						
						<!--<c:if test="${endPage < pageCnt}">
						<a href="shopblist?pageNum=${endPage+1}&pCountry=${pCountry}">&raquo;</a>
						</c:if>-->
					</div>
				</article>
				</c:if>
				<c:if test="${pCountry eq '4'}">
                <article id="c_best_article2">
                    <table>
                        <tr>
                            <td class="c_best_article2_img">
                               <object data="<%=request.getContextPath()%>/resources/image/product/ramen.png" alt="" width="295"
                                onclick="location.href='/bobn/shopdetail';"></object>
                            </td>
                            <td class="c_best_article2_img">
                               <object data="<%=request.getContextPath()%>/resources/image/product/taco.png" alt="" width="295"
                                onclick="location.href='/bobn/shopdetail';"></object>
                            </td>
                            <td class="c_best_article2_img">
                                <object data="<%=request.getContextPath()%>/resources/image/product/chadol.png" alt="" width="295"
                                onclick="location.href='/bobn/shopdetail19';"></object>
                            </td>
                        </tr>
                        <tr>
                            <td class="c_best_article2_text">라멘 / &#8361;5,000</td>
                            <td class="c_best_article2_text">타코야끼 / &#8361;5,000</td>
                            <td class="c_best_article2_text">차돌덮밥 / <strike>&#8361;6,000</strike>&nbsp;&#8361;4,800</td>
                        </tr>
                        <tr>
                            <td class="c_best_article2_text"style="color:#F54748">BEST</td>
                            <td class="c_best_article2_text" style= "color:#F54748";>BEST</td>
                            <td class="c_best_article2_text"style="color:#F54748">BEST</td>
                        </tr>
                        <tr>
                            <td colspan="3"><br></td>
                        </tr>
                    </table>
                </article>
                <br>
                <!-- 페이징 -->
                <article id="c_best_article3">
					<div class="c_best_pagination">
					
						<!--<c:if test="${startPage > 1}">
						<a href="shopblist?pageNum=${startPage-1}&pCountry=${pCountry}">&laquo;</a>
						</c:if>-->
						
						<c:forEach begin="${startPage}" end="${endPage}" step="1" var="i">
						<c:if test="${currentPage eq i}">
						<a href="shopblist?pageNum=${i}&pCountry=${pCountry}" class="c_best_active">1</a>
						</c:if>
						</c:forEach>
						
						<!--<c:if test="${currentPage ne i}">
						<a href="shopblist?pageNum=${i}&pCountry=${pCountry}">${i}</a>
						</c:if>-->
						
						
						<!--<c:if test="${endPage < pageCnt}">
						<a href="shopblist?pageNum=${endPage+1}&pCountry=${pCountry}">&raquo;</a>
						</c:if>-->
					</div>
				</article>
				</c:if>
				<c:if test="${pCountry eq '5'}">
                <article id="c_best_article2">
                    <table>
                        <tr>
                            <td class="c_best_article2_img">
                               <object data="<%=request.getContextPath()%>/resources/image/product/wollamssam.png" alt="" width="300"
                                onclick="location.href='/bobn/shopdetail20';"></object>
                            </td>
                            <td class="c_best_article2_img">
                               <object data="<%=request.getContextPath()%>/resources/image/product/ssal.png" alt="" width="285"
                                onclick="location.href='/bobn/shopdetail';"></object>
                            </td>
                            <td class="c_best_article2_img">
                                <object data="<%=request.getContextPath()%>/resources/image/product/curry.png" alt="" width="285"
                                onclick="location.href='/bobn/shopdetail';"></object>
                            </td>
                        </tr>
                        <tr>
                            <td class="c_best_article2_text">월남쌈 / <strike>&#8361;10,000</strike>&nbsp;&#8361;5,000</td>
                            <td class="c_best_article2_text">쌀국수 / &#8361;5,000</td>
                            <td class="c_best_article2_text">카레 / &#8361;6,000</td>
                        </tr>
                        <tr>
                            <td class="c_best_article2_text"style="color:#F54748">BEST</td>
                            <td class="c_best_article2_text" style= "color:#F54748";>BEST</td>
                            <td class="c_best_article2_text"style="color:#F54748">BEST</td>
                        </tr>
                        <tr>
                            <td colspan="3"><br></td>
                        </tr>
                    </table>
                </article>
                <br>
                <!-- 페이징 -->
                <article id="c_best_article3">
					<div class="c_best_pagination">
					
						<!--<c:if test="${startPage > 1}">
						<a href="shopblist?pageNum=${startPage-1}&pCountry=${pCountry}">&laquo;</a>
						</c:if>-->
						
						<c:forEach begin="${startPage}" end="${endPage}" step="1" var="i">
						<c:if test="${currentPage eq i}">
						<a href="shopblist?pageNum=${i}&pCountry=${pCountry}" class="c_best_active">1</a>
						</c:if>
						</c:forEach>
						
						<!--<c:if test="${currentPage ne i}">
						<a href="shopblist?pageNum=${i}&pCountry=${pCountry}">${i}</a>
						</c:if>-->
						
						
						<!--<c:if test="${endPage < pageCnt}">
						<a href="shopblist?pageNum=${endPage+1}&pCountry=${pCountry}">&raquo;</a>
						</c:if>-->
					</div>
				</article>
				</c:if>
				<c:if test="${pCountry eq '6'}">
                <article id="c_best_article2">
                    <table>
                        <tr>
                            <td class="c_best_article2_img">
                               <object data="<%=request.getContextPath()%>/resources/image/product/eggta.png" alt="" width="300"
                                onclick="location.href='/bobn/shopdetail16';"></object>
                            </td>
                            <td class="c_best_article2_img">
                               <object data="<%=request.getContextPath()%>/resources/image/product/macaroon.png" alt="" width="300"
                                onclick="location.href='/bobn/shopdetail17';"></object>
                            </td>
                            <td class="c_best_article2_img">
                                <object data="<%=request.getContextPath()%>/resources/image/product/tiramisu.png" alt="" width="300"
                                onclick="location.href='/bobn/shopdetail18';"></object>
                            </td>
                        </tr>
                        <tr>
                            <td class="c_best_article2_text">에그타르트 / <strike>&#8361;3,500</strike>&nbsp;&#8361;2,800</td>
                            <td class="c_best_article2_text">마카롱 / <strike>&#8361;5,500</strike>&nbsp;&#8361;4,400</td>
                            <td class="c_best_article2_text">티라미수 / <strike>&#8361;5,000</strike>&nbsp;&#8361;4,000</td>
                        </tr>
                        <tr>
                            <td class="c_best_article2_text"style="color:#F54748">BEST | 품절되었습니다.</td>
                            <td class="c_best_article2_text" style= "color:#F54748";>BEST</td>
                            <td class="c_best_article2_text"style="color:#F54748">BEST</td>
                        </tr>
                        <tr>
                            <td colspan="3"><br></td>
                        </tr>
                    </table>
                </article>
                <br>
                <!-- 페이징 -->
                <article id="c_best_article3">
					<div class="c_best_pagination">
					
						<!--<c:if test="${startPage > 1}">
						<a href="shopblist?pageNum=${startPage-1}&pCountry=${pCountry}">&laquo;</a>
						</c:if>-->
						
						<c:forEach begin="${startPage}" end="${endPage}" step="1" var="i">
						<c:if test="${currentPage eq i}">
						<a href="shopblist?pageNum=${i}&pCountry=${pCountry}" class="c_best_active">1</a>
						</c:if>
						</c:forEach>
						
						<!--<c:if test="${currentPage ne i}">
						<a href="shopblist?pageNum=${i}&pCountry=${pCountry}">${i}</a>
						</c:if>-->
						
						
						<!--<c:if test="${endPage < pageCnt}">
						<a href="shopblist?pageNum=${endPage+1}&pCountry=${pCountry}">&raquo;</a>
						</c:if>-->
					</div>
				</article>
				</c:if>
            </section>
        </div>
        <br>
    </div>
<%@ include file="/WEB-INF/view/common/template_footer.jsp" %>
    <script>
		//나라별 화면 조회
	 	$("#c_best_kr").on("click", function(){
	 		location.href="/bobn/shopblist?pCountry=1";
		});
	
		$("#c_best_west").on("click", function(){
			location.href="/bobn/shopblist?pCountry=2";
		});
		
		$("#c_best_chi").on("click", function(){
			location.href="/bobn/shopblist?pCountry=3";
		});
		
		$("#c_best_ja").on("click", function(){
			location.href="/bobn/shopblist?pCountry=4";
		}); 
		
		$("#c_best_east").on("click", function(){
			location.href="/bobn/shopblist?pCountry=5";
		});
		
		$("#c_best_etc").on("click", function(){
			location.href="/bobn/shopblist?pCountry=6";
		}); 
	</script>
</body>
</html>