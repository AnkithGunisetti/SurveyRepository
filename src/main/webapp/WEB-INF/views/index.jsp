<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" href="/images/TW.png" type="image/png">
<title>Event Feedback Form</title>
<style>
#form_attended, #form_not_attended {
    display: none;
}
</style>
 <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

</head>
<body>

<h2>Event Feedback Form</h2>
<label>Employee Id</label><br>
<input type="text" name="employee_id" id="employee_id" required /><br><br>
<button id="get_employeee_data">Get Data</button><br><br>
<div id="first" style="display: none;">
<label>1. Have you attended the recent event organized by HR?</label><br>
<input type="radio" id="attended_yes" name="attended" value="Yes" onclick="toggleForm()" required>
<label for="attended_yes">Yes</label><br>
<input type="radio" id="attended_no" name="attended" value="No" onclick="toggleForm()">
<label for="attended_no">No</label><br><br>
</div>

<form:form id="form_attended" modelAttribute="attended" action="/submitAttendedForm" method="post">
	<div id="attDiv">
		<input type="text" name="employee_id" id="attendedId" />
	</div>
  <div id='1'>
  <label>2. Did you participate?</label><br>
  <form:radiobutton path="participated" value="Yes" required="true" /> Yes
  <form:radiobutton path="participated" value="No" /> No
  <br><br>
  </div>
   <div id='2' style="display: none;">
  <label>3. Was it engaging?</label><br>
  <form:radiobutton path="engaging" value="Yes" required="true" /> Yes
  <form:radiobutton path="engaging" value="No" /> No
  <br><br>
  </div>
   <div id='3' style="display: none;">
  <label>4. Do you continue to participate in such engaging events?</label><br>
  <form:radiobutton path="continueParticipate" value="Yes" required="true" /> Yes
  <form:radiobutton path="continueParticipate" value="No" /> No
  <br><br>
  </div>
   <div id='4' style="display: none;">
  <label>5. What would be the overall rating that you would give for this event?</label><br>
  <form:radiobutton path="rating" value="1" required="true" /> 1 - Dissatisfied
  <form:radiobutton path="rating" value="2" /> 2 - Somewhat Dissatisfied
  <form:radiobutton path="rating" value="3" /> 3 - Neutral
  <form:radiobutton path="rating" value="4" /> 4 - Satisfied
  <form:radiobutton path="rating" value="5" /> 5 - Extremely Satisfied
  <br><br>
  </div>
  
  <input type="submit" value="Submit Feedback" id='submitAttended'>
</form:form>

<form:form id="form_not_attended" action="/submitNotAttendedForm" method="post" style="display: none;" modelAttribute="notAttended">
	<div id="notAttDiv">
		<input type="text" name="employee_id" id="notAttendedId" />
	</div>
    <label>2. Reason for not attending:</label><br>
    <form:radiobutton path="reason" id="reason_busy" value="busy" required='true'/>
    <label for="reason_busy">Busy</label><br>
    <form:radiobutton path="reason" id="reason_not_interested" value="not-interested"/>
    <label for="reason_not_interested">Not interested</label><br>
    <form:radiobutton path="reason" id="reason_time_conflict" value="time-conflict"/>
    <label for="reason_time_conflict">Had a time conflict</label><br>
    <form:radiobutton path="reason" id="reason_other"  value="other"/>
    <label for="reason_other">Other</label><br><br>
     <div id="otherReason" style="display: none;">
        <label>Please specify:</label><br>
        <form:input  id="otherReasonDescription" path="otherReason" value="" required='true' disabled='true'/><br><br>
    </div>
    <input type="submit" value="Submit Not Attended Feedback" id="submitNotAttended">
</form:form>

<script src="<c:url value="/js/getEmployeeScript.js" />"></script>
</body>

</html>



    