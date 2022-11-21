<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<div class="card">
	<div class="card-header">
		<h3 class="card-title" style="font-family: 메이플스토리;">${bodyTitle}</h3>
	</div>

	<div class="card-body">
		<div id="example1_wrapper" class="dataTables_wrapper dt-bootstrap4">
			<div class="row">
				<div class="col-sm-12">
					<table id="example1" style="font-family: 메이플스토리;"
						class="table table-bordered table-striped dataTable dtr-inline"
						aria-describedby="example1_info">
						<thead style="text-align:  center">
							<tr>
								<th class="sorting sorting_asc" tabindex="0" aria-controls="example1" rowspan="1" colspan="1"
									aria-sort="ascending" aria-label="BookId: activate to sort column descending">
									BookId
								</th>
								<th class="sorting" tabindex="0" aria-controls="example1"  rowspan="1" colspan="1"
									aria-label="Title activate to sort column ascending">
									Title
								</th>
								<th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1"
									aria-label="Category: activate to sort column ascending">Category
								</th>
								<th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1"
									aria-label="Price: activate to sort column ascending">
									Price
								</th>
								<th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" 
									colspan="1" aria-label="Insert Date: activate to sort column ascending">
									Insert Date
								</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="bookVO" items="${bookVOList}" varStatus="stat">
								<c:if test="${stat.count%2!=0 }"><tr class="odd"></c:if>
								<c:if test="${stat.count%2==0 }"><tr class="even"></c:if>
								
									<td class="dtr-control sorting_1" tabindex="0" >${bookVO.bookId}</td>
									<td><a href="/book/detail?bookId=${bookVO.bookId}">${bookVO.title}</a></td>
									<td>${bookVO.category}</td>
									<td style="text-align:  right"><fmt:formatNumber value="${bookVO.price}" pattern="#,###"/>원</td>
									<td style="text-align:  center"><fmt:formatDate value='${bookVO.insertDate}' pattern='yyyy/MM/dd' /></td>
								</tr>
							</c:forEach>
						</tbody>
						<tfoot>
							<tr>
								<th rowspan="1" colspan="1">BookId</th>
								<th rowspan="1" colspan="1">Title</th>
								<th rowspan="1" colspan="1">Category</th>
								<th rowspan="1" colspan="1">Price</th>
								<th rowspan="1" colspan="1">Insert Date</th>
							</tr>
						</tfoot>
					</table>
				</div>
			</div>
		</div>
	</div>
	<div class="card-footer" align="right"  style="font-family: 메이플스토리;">
		<a class="btn btn-success" href="/book/addBook" >등록</a>
	</div>
</div>