<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
	
<sec:authorize access="isAuthenticated()">
	<sec:authentication property="principal" var="principal" />
</sec:authorize>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 상세보기</title>
<!-- 타이틀 밑에 아래 css링크 추가해줄것 -->
<link rel="stylesheet" href="/resources/css/main/mainHeader.css">
<link rel="stylesheet" href="/resources/css/comm/listView.css">
<script src="/resources/js/jquery-3.6.1.min.js"></script>
</head>
<body>
	<jsp:include page="../main/commHeader.jsp"></jsp:include>
    <div class="main-contents">
		<div class="main-sidebar">여기는 사이드바</div>
		<div class="main-section">
			<div class="list-div">
				<h2>게시판 상세글</h2>
				<table align="center" border="1" width="500">
					<tr>
						<td>제목</td>
						<td>${comm.commTitle }</td>
						<td>조회수</td>
						<td>${comm.cCount }</td>
					</tr>
					<tr>
						<td>작성자</td>
						<td>${comm.commWriter }</td>
						<td>작성일</td>
						<td>${comm.cCreateDate }</td>
					</tr>
					<tr>
						<td colspan="4" align="left">${comm.commContents }</td>
					</tr>
					<tr>
						<td colspan="2">추천수 : ${comm.cLike }</td>
						<%-- <td>${comm.cLike }</td> --%>
						<td onclick="#"><i class="fa-regular fa-thumbs-up fa-lg"></i></td>
					</tr>
					<c:if test="${principal.username eq comm.commWriter }">
						<tr>
							<td colspan="4" align="center">
								<a href="/comm/modifyView.kh?boardNo=${comm.boardNo }&page=${page}">글 수정</a>
								<a href="#" onclick="commRemove(${page});">삭제하기</a>
							</td>
						</tr>
					</c:if>
					<tr>
						<td colspan="4" align="right">
							<button onclick="location.href = '/comm/list.kh'">리스트</button>
							<button>신고</button>
						</td>
					</tr>
				</table>
					<!-- 	댓글 등록 -->
					<table align="center" width="500" border="1">
						<tr>
							<td align="left">${principal.username }</td>
						</tr>
						<tr>
							<td>
								<textarea rows="3" cols="55" name="commReplyContents" id="commReplyContents"></textarea>
							</td>
							<td align="center">
								<button width="100" id="rSubmit">등록</button>
							</td>
						</tr>
					</table>
					<!-- 	댓글 목록 -->
					<table align="center" width="500" border="1" id="rtb">
							<thead>
								<tr>
									<!-- 댓글 갯수 -->
									<td colspan="4"><b id="rCount"></b></td>
								</tr>
							</thead>
							<tbody>
							</tbody>
					</table>
			</div>
		</div>
		<div class="main-sidebar">여기는 사이드바</div>
    </div>
	<footer>
		
	</footer>
	<script>
		getReplyList();		// 함수 바로 실행하도록 호출
		function getReplyList() {
			// detailView가 동작하면 바로 동작하게끔 ajax 바로 써줌
			var boardNo = "${comm.boardNo }";
			$.ajax({
				url : "/comm/replyList.kh",
				data : {"boardNo" : boardNo},	// 어느 게시판 댓글인지 알아야 하기 때문에 boardNo를 받아옴
				type : "get",
				success : function(cRList) {
					var $tableBody = $("#rtb tbody");		//rtb의 후손 선택자 tbody선택
					$tableBody.html("");	// 내용 초기화 후 append()
					$("#rCount").text("댓글 (" + cRList.length + ")");	// 댓글 갯수 동적으로 표시
					if(cRList != null) {
						console.log(cRList);
						for(var i in cRList) {
							var $tr = $("<tr>");
							var $rWriter = $("<td width='100'>").text(cRList[i].rWriter);	// text로 하면 태그작동x, html로 하면 태그작동o
							var $rContents = $("<td>").text(cRList[i].rContents);
							var $rCreateDate = $("<td width='100'>").text(cRList[i].rCreateDate);
							var $btnArea = $("<td width='80'>")
											.append("<a href='javascript:void(0);' onclick='modifyView(this,\""+cRList[i].commReplyContents+"\","+cRList[i].cReplyNo+")'>수정</a> ")
											.append("<a href='javascript:void(0);' onclick='removeReplyAjax("+cRList[i].cReplyNo+")'>삭제</a>");
							$tr.append($rWriter); // <tr><td width='100'>khuser01</td></tr>
							$tr.append($rContents); // <tr><td width='100'>khuser01</td><td>댓글내용</td></tr>
							$tr.append($rCreateDate);
							$tr.append($btnArea);
							$tableBody.append($tr); 	// 후손으로 넣기 위해 append태그 사용
							// <tbody><tr><td></td><td></td>...</tr></tbody>
						}
					}
				},
				error : function() {
					// console.log("서버 요청 실패");
					alert("ajax 통신 실패! 관리자에게 문의하세요!!");
				}
			});
		}
		
		function removeReplyAjax(replyNo) {
			if(confirm("정말 삭제하시겠습니까?")) {
				$.ajax({
					url : "/comm/replyDelete.kh",
					data : { "cReplyNo" : cReplyNo },
					type : "get",
					success : function(data) {
						if(data == "success") {
							getReplyList();
						} else{
							alert("댓글 삭제 실패!");
						}
					},
					error : function() {
						alert("ajax 통신 오류! 관리자에게 문의해주세요!");
					}
				});
			}
		}
		
		
	
		$("#rSubmit").on("click", function() {
			var boardNo = "${comm.boardNo}";		// 자바 스크립트에서 사용하는 el 아래는 html에서 사용하는 el.
			var replyContents = $("#commReplyContents").val();		// textarea나 input이면 val쓰면 됨. 아닐 시 html.
			$.ajax({
				url : "/comm/replyAdd.kh",
				data : { 
					"boardNo"	: boardNo,
					"rContents" : replyContents 
				},
				type : "post",		// replyContents가 길어질 수 있어서 잘림방지를 위해 post로 함
				success : function(result) {
					if(result == "success") {
						alert("댓글 등록 성공!");
						// DOM조작, 함수호출 등.. 가능
						$("#commReplyContents").val("");	// 작성 후 내용 초기화
						getReplyList();	// 댓글 리스트 출력
					}else {
						alert("댓글 등록 실패!");
					}
				},
				error : function() {
					alert("서버 요청 실패!");
				}
			});
		});
	
	
		function commRemove(value) {
			event.preventDefault(); // 하이퍼링크 이동 방지
			if(confirm("게시물을 삭제하시겠습니까?")) {
				location.href="/comm/remove.kh?page="+value;
			}
		}
		function removeReply(commReplyNo) {
			event.preventDefault();
			if(confirm("정말 삭제하시겠습니까?")) {
				var $delForm = $("<form>");
				$delForm.attr("action", "/comm/removeReply.kh");
				$delForm.attr("method", "POST");
				$delForm.append("<input type='hidden' name='commReplyNo' value='"+commReplyNo+"'>");
				$delForm.appendTo("body");
				$delForm.submit();
			}
		}
		function modifyView(obj, cReplyContents, commReplyNo) {
			event.preventDefault();
			var $tr = $("<tr>");
			$tr.append("<td colspan='3'><input type='text' size='50' value='"+cReplyContents+"'></td>");
			$tr.append("<td><button onclick='modifyReply(this, "+commReplyNo+");'>수정</button></td>");
			$(obj).parent().parent().after($tr);
		}
		function modifyReply(obj, commReplyNo) {
			var inputTag = $(obj).parent().prev().children();
			var commReplyContents = inputTag.val(); //= $("#modifyInput").val();
			var $form =$("<form>");
			$form.attr("action", "/comm/modifyReply.kh");
			$form.attr("method", "post");
			$form.append("<input type='hidden' value='"+rContents+"' name='commReplyContents'>");
			$form.append("<input type='hidden' value='"+commReplyNo+"' name='commReplyNo'>");
			$form.appendTo("body");
			$form.submit();
		}
		
	</script>
</body>
</html>