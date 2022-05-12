<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/common/reset.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/common/common.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/main/template_header.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/main/template_footer.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/shopbasket/shopbasket_main.css">
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니</title>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
</head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>
<body>
<%@ include file="/WEB-INF/view/common/template_header.jsp" %>
<div id="wrap section">
<section>
	<div class="c_shopping-cart">
		<!-- Cart_Title -->
		<div class="c_cart_title">
			<b>일반 배송</b>
		</div>
		<div class="c_cart_firstLine">
			<div class="c_cart_allCheck">
				<input type="checkbox" name="check" value="selectall" onclick="selectAll(this)">
			</div>
			<div class="c_cart_proname">상품명</div>
			<div class="c_cart_procnt">수량</div>
			<div class="c_cart_proprice">가격</div>
		</div>
		<c:forEach items="${basketvolist}" var="vo">
		<!-- Product # -->
		<div class="c_cart_item">
			<div style="display:none;" class="p_id">${vo.pId}</div>
			<div class="c_cart_checkbox">
				<input type="checkbox" name="check" value="select" />
			</div>

			<div class="c_cart_image">
				<img src="<%=request.getContextPath()%>${vo.d_file}" alt="" width="70">
			</div>

			<div class="c_cart_description">
				<span>${vo.p_name}</span> <span>${vo.p_flavor}</span>
			</div>
		
			<div class="c_cart_quantity">
				<button class="c_cart_minus-btn" type="button" name="button">
					-
				</button>
				<input type="text" name="itemAmount" class="itemAmount" value="${vo.basketitemAmount}">
				<button class="c_cart_plus-btn" type="button" name="button">
					+
				</button>
			</div>
			<!-- 수량 변경에 따른 가격 변경 -->
			<div class="c_cart_total-price">
				 <input type="hidden" class="itemOnePrice" value="${vo.p_price}">
				 <span>&#8361;</span><input type="text" class="itemPriceCnt" value="${vo.p_price*vo.basketitemAmount}">
			</div>
		</div>
		</c:forEach>
		<br> <br>
		<div class="c_cart_jjin_total-price">
			<br>
			<div>총 상품금액 : &#8361;<span id="total_price"></span></div>
			<br>
			<div>배송비 : &#8361;<span id="delivery_price">3000</span></div>
			<br>
			<div>결제 금액 : &#8361;<span id="total_pay_price"></span></div>
			<br>
		</div>
		<br>
		<center>
			<button class="c_cart_order-btn" type="button" name="order"
				onclick="location.href = '/bobn/paylist';">주문하기</button>
		</center>
	</div>
</section>
</div>
	<%@ include file="/WEB-INF/view/common/template_footer.jsp" %>

<script>
function selectAll(selectAll)  {
	  const checkboxes 
	       = document.getElementsByName("check");

		  checkboxes.forEach((checkbox) => {
		  checkbox.checked = selectAll.checked;
	  })
	}
</script>
<script>
$(".c_cart_plus-btn").click(updateAmount);
$(".c_cart_minus-btn").click(updateAmount);
function updateAmount(){
	console.log(this); 
	console.log($(this));
	console.log($(this).parents(".c_cart_item").children(".p_id").text());
	var pidVal = $(this).parents(".c_cart_item").children(".p_id").text();
	var $thisEle = $(this);
	var $thisInputEle = "";
	var p_m_value = 0;
	if($(this).prop("class") == 'c_cart_plus-btn'){
		p_m_value = 1;
		$thisInputEle = $thisEle.prev();
	} else if($(this).prop("class") == 'c_cart_minus-btn'){
		p_m_value = -1
		$thisInputEle = $thisEle.next();
	}
	var updateVal = Number($thisInputEle.val())+p_m_value;
	if(updateVal==0){
		var yesno = confirm("상품개수는 1개 이상이어야 합니다. 삭제할까요?");
		if(yesno == false){
			// 1 상태 유지
			return;
		} // 삭제한다.. 아래 bcount로 가서 0인 경우 db에서 삭제 하도록 함
	}
	$.ajax({
		url:"bcount",
		type:"post",
		data:{pId : pidVal, updateValue: updateVal},
		success: function (result){
			console.log(result);
			console.log(this);  
			if(result == 1){
				$thisInputEle.val(updateVal); 
				// 상품 한개 가격
				var priceOneVal = Number($thisInputEle.parents(".c_cart_item").find(".itemOnePrice").val());
				console.log(priceOneVal);
				
				// 수량에 따른 상품가격
				var priceOneTotalVal = priceOneVal*updateVal;
//				priceOneTotalVal = priceOneTotalVal.toLocaleString("ko-KR", {style:'currency', currency:'KRW'});
//				console.log(priceOneTotalVal); 금액 앞 원화표시와 숫자 3자리마다(,) 표시해주는 코드 오류떠서 막아놈 다른플젝때 써먹을것
				$thisInputEle.parents(".c_cart_item").find(".itemPriceCnt").val(priceOneTotalVal);
				changeTotalPrice();
				
				// 배송비
				var priceDelivery = Number($thisInputEle.parents(".c_cart_item").find("#delivery_price").val());
				console.log(priceDelivery);

				// 총 결제가격
				var priceTotalPay = priceOneTotalVal+priceDelivery;
				$thisInputEle.parents(".c_cart_item").find("#total_pay_price").val(priceTotalPay);
				changeTotalPrice();

			}else if(result == 0){
				// update에 실패 또는 삭제
				location.reload();
			}else {
				
			}
		}
	});
}
</script>
<script>
function changeTotalPrice() {
	var totalPrice = 0;
	$(".itemPriceCnt").each(function(idx, thisEle){
		totalPrice += Number($(thisEle).val());
	});
	$("#total_price").text(totalPrice);

	var delivery_price = $("#delivery_price").text();
	$("#total_pay_price").text((Number(totalPrice)+Number(delivery_price)));
	
}  
</script>
</body>
</html>