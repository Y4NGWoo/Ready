<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 목록</title>
<!-- 타이틀 밑에 아래 css링크 추가해줄것 -->
<link rel="stylesheet" href="/resources/css/main/mainHeader.css">
<link rel="stylesheet" href="/resources/css/que/faqList.css">
</head>
<body>
	<jsp:include page="../main/header.jsp"></jsp:include>
    <div class="main-contents">
		<div class="main-sidebar">여기는 사이드바</div>
		<div class="main-section">
		<!-- 이 안에서 작업! 여기가 본문-->
			<div class="faq-div">
				<h1>고객센터 FAQ</h1>
				<table align="center" border="1" width="500">
					<tr>
						<th class="faq-category">회원정보</th>
						<th class="faq-category">배송관련</th>
						<th class="faq-category">상품관련</th>
						<th class="faq-category">교환/환불</th>
					</tr>
					<tr class="faq-header">
						<td>유형</td>
						<td cospan="3">제목</td>
					</tr>
					<c:if test="${!empty cList }">
						<c:forEach items="${cList }" var="comm" varStatus="i">
							<tr>
								<td>${comm.boardNo }<%-- ${fn:length(fList) - i.index} 얘는 DESC로 출력 --%><!--${i.count } 얘는 게시글 ASC로 출력--></td>
								<td colspan="2"><a href="#" onclick="location.href='/comm/detail.kh?boardNo=${comm.boardNo }&page=${currentPage }'" >${comm.commTitle  }</a></td>
								<!--  -->
								<td>${comm.commWriter }</td>
								<td>${comm.cCreateDate }</td>
								<td>${comm.cCount }</td>
								<td>${comm.cLike }</td>
							</tr>
						</c:forEach>
						<tr align="center" height="20">
						<td colspan="7">
							<c:if test="${currentPage != 1 }">
								<a href="/comm/${urlVal }.kh?page=${currentPage - 1 }&searchCondition=${searchCondition}&searchValue=${searchValue}">[이전]</a>
							</c:if>
							<c:forEach var="p" begin="${startNavi }" end="${endNavi }">
								<c:if test="${currentPage eq p }">
									<b>${p }</b>
								</c:if>
								<c:if test="${currentPage ne p }">
									<a href="/comm/${urlVal }.kh?page=${p }&searchCondition=${searchCondition}&searchValue=${searchValue}">${p }</a>
								</c:if>
							</c:forEach>
							<c:if test="${maxPage > currentPage }">
								<a href="/comm/${urlVal }.kh?page=${currentPage + 1 }&searchCondition=${searchCondition}&searchValue=${searchValue}">[다음]</a>
							</c:if>
						</td>
					</tr>
					</c:if>
					<c:if test="${empty cList }">
						<tr>
							<td colspan="7" align="center"><b>데이터가 존재하지 않습니다.</b></td>
						</tr>
					</c:if>
					<tr>
						<td colspan="7" align="center">
							<form action="/comm/search.kh" method="get">
								<select name="searchCondition">
									<option value="all" <c:if test="${searchCondition eq 'all' }">selected</c:if>>전체</option>
									<option value="writer" <c:if test="${searchCondition eq 'writer' }">selected</c:if>>작성자</option>
									<option value="title" <c:if test="${searchCondition eq 'title' }">selected</c:if>>제목</option>
									<option value="contents" <c:if test="${searchCondition eq 'contents' }">selected</c:if>>내용</option>
								</select>
								<input type="text" name="searchValue" value="${searchValue }">
								<input type="submit" value="검색">
							</form>
								<button onclick="/comm/viewWrite.kh">글쓰기</button>
						</td>
					</tr>
				</table>
			</div>
		</div>
		<div class="main-sidebar">여기는 사이드바</div>
    </div>
	<footer>
		
	</footer>
</body>
</html>