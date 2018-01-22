<%@page import="tc.util.Util"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
[
<c:forEach items="${list }" var="reply" varStatus="stat">
   {
     reply_no:${reply.reply_no },
     id:'${reply.user_id }',
     wdate:'${reply.reply_wdate }',
     content:'${Util.toJS(reply.reply_contents) }',
     review_no:${reply.review_no }
   }
   <c:if test="${stat.count < list.size() }">,</c:if>
</c:forEach>
]