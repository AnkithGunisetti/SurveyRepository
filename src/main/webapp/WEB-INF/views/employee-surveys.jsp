<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE>
<html>
<head>
    <meta charset="UTF-8">
    <title>Employee Surveys</title>
    <!-- Include any necessary CSS -->
      <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    
    <!-- Font Awesome for icons (optional) -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    
    <!-- Custom CSS for additional styling -->
    <link href="<c:url value="/resources/css/styles.css" />" rel="stylesheet">
</head>
<body>

    <h1>Employee Surveys</h1>
    <div class="container mt-4">
        <div class="row">
            <div class="col-md-10">
    <table border="1" class="table table-bordered table-hover">
        <thead>
            <tr>
                <th>Employee ID</th>
                <th>Participated</th>
                <th>Engaging</th>
                <th>Continue Participate</th>
                <th>Rating</th>
                <th>Reason</th>
                <th>Other Reason</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${employeeSurveys}" var="survey">
                <tr>
                    <td>${survey.employeeSurveyKey.employee.id}</td>
                    <td>${survey.participated}</td>
                    <td>${survey.engaging}</td>
                    <td>${survey.continueParticipate}</td>
                    <td>${survey.rating}</td>
                    <td>${survey.reason}</td>
                    <td>${survey.otherReason}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
            </div>
        </div>
                <!-- Button to trigger Excel download -->
        <div class="text-center mt-4">
            <button class="export-btn" onclick="exportToExcel()">
                <i class="fas fa-file-excel mr-1"></i> Export to Excel
            </button>
        </div>
    </div>

    <!-- JavaScript to handle Excel export -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/xlsx/0.17.4/xlsx.full.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/FileSaver.js/2.0.5/FileSaver.min.js"></script>
   
	<script src="<c:url value="/resources/js/scripts.js" />"></script>
</body>
</html>

</body>
</html>