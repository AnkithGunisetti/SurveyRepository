<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Show Data</title>
    
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    
    <!-- Font Awesome for icons (optional) -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    
    <!-- Custom CSS for additional styling -->
	<link href="<c:url value="/resources/css/styles.css" />" rel="stylesheet">
</head>
<body>
    <div class="container mt-4">
        <div class="row">
            <div class="col-md-6">
                <table id="attendedTable" class="table table-bordered table-hover">
                    <caption>Participation Data</caption>
                    <thead class="thead-dark">
                        <tr>
                            <th>Event ID</th>
                            <th>Participated</th>
                            <th>Engaging</th>
                            <th>Continue Participate</th>
                            <th>Rating</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="entry" items="${attendedData}">
                            <tr>
                                <td>${entry.key}</td>
                                <td>${entry.value.participated}</td>
                                <td>${entry.value.engaging}</td>
                                <td>${entry.value.continueParticipate}</td>
                                <td>${entry.value.rating}</td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
            <div class="col-md-6">
                <table id="notAttendedTable" class="table table-bordered table-hover">
                    <caption>Reasons for Non-Participation</caption>
                    <thead class="thead-dark">
                        <tr>
                            <th>Event ID</th>
                            <th>Reason</th>
                            <th>Other Reason</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="entry" items="${notAttendedData}">
                            <tr>
                                <td>${entry.key}</td>
                                <td>${entry.value.reason}</td>
                                <td>${entry.value.otherReason}</td>
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
 	 <script src="<c:url value="/resources/js/scripts.js" />"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/xlsx/0.17.4/xlsx.full.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/FileSaver.js/2.0.5/FileSaver.min.js"></script>
</body>
</html>
