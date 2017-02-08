<%-- 
    Document   : view
    Created on : 24-Sep-2016, 03:24:44
    Author     : adedeji
--%>

<%@page import="com.liferay.portal.kernel.util.ParamUtil"%>
<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet"%>
<%@ taglib uri="http://alloy.liferay.com/tld/aui" prefix="aui"%>
<%@ taglib uri="http://liferay.com/tld/ui" prefix="liferay-ui"%>

<liferay-ui:error key="wrong-app-id" message="wrong-app-id" />
<liferay-ui:error key="wrong-fg-host" message="wrong-fg-host" />

<aui:column columnWidth="50" first="true">
	<img src="<%=request.getContextPath()%>/images/J48.jpg" height="80%"
		width="80%" />
</aui:column>

<portlet:defineObjects />
<h2>WEKA - J48 Algorithm</h2>
<p>
	This portlet will help to analyse your uploaded data with C4.5
	algorithm using J48, WEKA's implementation of decision tree learner.
	<aui:a href="http://www.cs.waikato.ac.nz/ml/weka/" label="WEKA"></aui:a>
	is a state-of-the-art facility for developing machine learning
	techniques and their application to real-world data mining problems. It
	is a collection of machine learning algorithms for data mining tasks.
	This portlet will, however, only make use of a particular
	classification algorithm to analyse data sets.
<h3>Upload your Dataset</h3>
<hr />
<p></p>

<portlet:actionURL name="submit" var="uploadFileURL" />
<aui:form action="<%=uploadFileURL%>" method="post"
	enctype="multipart/form-data">
	<liferay-ui:error key="empty-file" message="empty-file" />
	<aui:input name="uploadDataset" title="Dataset upload" type="file"
		label="Select Dataset:" />

	<hr />

	<h3>Choose classifier and select test option</h3>

	<p>Once you have your data set loaded, select and apply the
		appropriate classifier and set test option below. For the purpose this
		portlet, you'll analyse the data with C4.5 algorithm using J48. In
		addition, the "Percentage split" test option will be chosen and it
		will predict about 66% of the tested data.</p>

	<h3>Classify</h3>
	<hr />
	<aui:select label="Select classifier" name="clasify">
		<aui:option label="J48" value="weka.classifiers.trees.J48" />
	</aui:select>

	<h3>Test options</h3>
	<hr />

	<aui:select label="Select test option" name="test">
		<aui:option label="Percentage split" value="percentageSplit" />
	</aui:select>

	<br />

	<aui:button type="submit" value="submit" />



</aui:form>
<!-- 
<portlet:renderURL var="clasfy">
<portlet:param name="mvcPath" value="/html/wekaapp/clasfy.jsp"></portlet:param>
</portlet:renderURL>
<a href="<%=clasfy%>">COntinue</a>
 -->
