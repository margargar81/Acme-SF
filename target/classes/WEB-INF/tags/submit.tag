<%--
- submit.tag
-
- Copyright (C) 2012-2024 Rafael Corchuelo.
-
- In keeping with the traditional purpose of furthering education and research, it is
- the policy of the copyright owner to permit non-commercial use and redistribution of
- this software. It has been tested carefully, but it is not guaranteed for any particular
- purposes.  The copyright owner does not offer any warranties or representations, nor do
- they accept any liabilities with respect to them.
--%>

<%@tag body-content="empty"%>

<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="acme" uri="http://acme-framework.org/"%>
 
<%@attribute name="test" required="false" type="java.lang.Boolean"%>
<%@attribute name="method" required="false" type="java.lang.String"%>
<%@attribute name="code" required="true" type="java.lang.String"%>
<%@attribute name="action" required="true" type="java.lang.String"%>

<jstl:if test="${test == null}">
	<jstl:set var="test" value="true"/>
</jstl:if>

<jstl:if test="${method == null}">
	<jstl:set var="method" value="POST"/>
</jstl:if>

<jstl:if test="${test}">	
	<button type="submit" formmethod="${method}" onclick="javascript: form.action = getAbsoluteUrl('${action}')" class="btn btn-dark">
		<acme:message code="${code}"/>
	</button>					
</jstl:if>

