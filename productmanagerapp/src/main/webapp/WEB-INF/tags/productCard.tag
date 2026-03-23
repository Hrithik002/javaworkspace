<%@ tag language="java" body-content="scriptless" %>
<%@ attribute name="productId" required="true" type="java.lang.String" %>
<%@ attribute name="name" required="true" type="java.lang.String" %>
<%@ attribute name="price" required="true" type="java.lang.Double" %>
<%@ attribute name="imageUrl" required="false" type="java.lang.String" %>
<%@ attribute name="description" required="false" type="java.lang.String" %>
<%@ attribute name="discount" required="false" type="java.lang.Double" %>
<%@ attribute name="showAddToCart" required="false" type="java.lang.Boolean" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="img" value="${empty imageUrl ? 'images/no-image.jpg' : imageUrl}" />
<c:set var="disc" value="${empty discount ? 0 : discount}" />
<c:set var="showBtn" value="${showAddToCart == null ? true : showAddToCart}" />

<c:set var="discountedPrice" value="${price - price * disc/100}" />

<article style="
   width:280px;
   padding:12px;
   border:1px solid #ccc;
   border-radius:10px;
   margin:10px;
   position:relative;
   font-family:Arial;">
    
    <c:if test="${disc >= 20}">
        <span style="
            position:absolute;
            top:10px; left:10px;
            background:red;
            color:white;
            padding:3px 6px;
            border-radius:5px;">
            SALE!
        </span>
    </c:if>

    <img src="${img}" width="100%" height="180" style="object-fit:cover;border-radius:6px;" />

    <h3>${name}</h3>
    <div>⭐⭐⭐⭐⭐ (5.0)</div>

    <div style="margin:10px 0;">
        <c:choose>
            <c:when test="${disc > 0}">
                <span style="text-decoration:line-through; color:gray;">
                    <fmt:formatNumber value="${price}" type="currency"/>
                </span>
                &nbsp;
                <span style="font-weight:bold; color:black;">
                    <fmt:formatNumber value="${discountedPrice}" type="currency"/>
                </span>
            </c:when>
            <c:otherwise>
                <span style="font-weight:bold;">
                    <fmt:formatNumber value="${price}" type="currency"/>
                </span>
            </c:otherwise>
        </c:choose>
    </div>

    <c:if test="${showBtn}">
        <button style="padding:8px 12px; border:none; background:black; color:white; border-radius:5px;">
            Add to Cart
        </button>
    </c:if>

    <p>${description}</p>
</article>