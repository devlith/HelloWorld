<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hello World!</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="/css/mainBase.css">
<link rel="stylesheet" type="text/css" href="/css/font-awesome/css/font-awesome.css">
<style>
	div{
 	border: 1px solid green;  
	}
	.orangeFt{
		font-size: 12px;
		color:orange;
	}
	#cateCmt{
	color:gray;
	font-size: 15px;
	}
	#cateTitle{
		font-size:60px;
	}
	#pageTitle{
		height: 70px;
	}
	.tableHead{
		height: 50px;
		background-color:#e9ecef;
		border-top: 1px solid #dadde0;
		border-bottom: 1px solid #dadde0;
	}
	.tableHead div{
		line-height:50px;
	}
	.tableBody{
		height: 50px;
		background-color:#f7f7f7;
		border-top: 1px solid #dadde0;
		border-bottom: 1px solid #dadde0;
	}
	.tableBody:hover{
		background-color:#bfac8e30;
	}
	.tableBody div{
		line-height:50px;
	}
	#cate{
	height: 37px;
	border-radius: 1%;
	}
	#search{
	height: 37px;
	border-radius: 1%;
	}
</style>

<script>
	$(function(){
		$("#itNavi").attr('class','nav-item nav-link active');
	});
</script>
</head>
<body>
	<jsp:include page="/WEB-INF/views/standard/header.jsp"/>
	
 		<div id=baseBackgroundColor>
            <div class=container>
                <div class=row>
                    <div class="col-12" id=aroundContent>
                    </div>
                </div>
            </div>
            
            <!--      몸통 시작!!!   -->
 			<div class="container">
 			
				<div class="row">
					<div class="col-12">
						<p id=cateTitle style="display:inline;">IT News</p>
						<p style="display:inline;" id=cateCmt>&ensp;IT 핫이슈를 공유하는 공간입니다.</p>
					</div>
				</div>				
				<div class="tableDiv">
					<div class="row tableHead">					    
					    <div class="col-md-1 d-none d-md-block text-center">번호</div>
					    <div class="col-md-6 d-none d-md-block text-center">제목</div>
					    <div class="col-md-2 d-none d-md-block text-center">작성자</div>
					    <div class="col-md-2 d-none d-md-block text-center">작성일</div>
					    <div class="col-md-1 d-none d-md-block text-center">조회수</div>				    
					</div>
					
				  	<c:choose>
				  		<c:when test="${list.size()==0 }">
				  		<div class="row"><div class="col-12">작성된 글이 없습니다.</div></div>
				  		</c:when>
				  		<c:otherwise>
				  			<c:forEach items="${list}" var="dto">
				  				<div class="row p-0 tableBody cursorPointer" onclick="location.href='${pageContext.request.contextPath}/itnews/detail?seq=${dto.seq}&page=${page}'">
									<div class="col-md-1 d-none d-md-block order-md-1 notTitle">${dto.seq}</div>
					    			<div class="col-12 col-md-6 order-1 order-md-2" id=titleForCss>
						    			<div style="max-width:90%;overflow:hidden;text-overflow:ellipsis;white-space:nowrap;display:inline-block;font-weight:bold;">
						    			${dto.title}
						    			&ensp;
						    			</div>
						    			<c:if test="${dto.commentCount>0}">
						    			<p class=orangeFt style="display:inline">${dto.commentCount}</p>
						    			</c:if>
						    			
					    			</div>
					    			<div class="col-2 col-md-2 order-2 order-md-3 notTitle text-center"><a onclick="popUp('/Portfolio/toPlog.do?owner=${p.id}')">${dto.writer}</a></div>
					    			<div class="col-2 col-md-2 order-3 order-md-4 notTitle">${dto.getDate()}</div>
					    			<div class="col-2 col-md-1 order-4 order-md-5 notTitle">${dto.viewCount}</div>
					    			<div class="col-6 order-5 d-md-none"></div>		
								</div>
				  			</c:forEach>
				  		</c:otherwise>
				  	</c:choose>				    
				</div>		
				
				<div class=row>
					<div class="col-12"><nav aria-label="List navi" id="pPageNavi">${navi}</nav></div>
				</div>	
					
				<form action="${pageContext.request.contextPath}/itnews/searchList" method="get">
					<div class=row>
						<div class=col-6>
							<select id=cate name=cate>
								<option value="cateAll">전체</option>
								<option value="cateTitle">제목</option>
								<option value="cateWriter">작성자</option>
							</select>
							<input type="text" name="search" id=search>
							<button class="btn btn-secondary" id=searchBtn>검색</button>
						</div>
						<div class="col-6 text-right">
							<c:if test="${loginInfo!=null}">
							<a class="btn btn-primary" href="${pageContext.request.contextPath}/itnews/write?page=${page}" role="button">글쓰기</a>	
							</c:if>
							<h5><br></h5>
						</div>
					</div>
				</form>
            </div>
            <!--       몸통 끝!!!   -->
            
            <div class=container>
                <div class=row>
                    <div class="col-12" id=aroundContent>
                    </div>
                </div>
            </div>
        </div>
        
        <jsp:include page="/WEB-INF/views/standard/footer.jsp"/>
        <script>
        function popUp(link){
            window.open(link, "pLogPopUp", "width=600,height=600");
         }
        $(".pNavi${page}").addClass("active");
        </script>
</body>
</html>
