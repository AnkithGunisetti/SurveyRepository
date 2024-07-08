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
    <style>
        /* Custom styles for tables */
        table {
            width: 100%;
            margin-bottom: 1rem;
            color: #212529;
            border-collapse: collapse;
        }
        table th, table td {
            padding: 0.75rem;
            vertical-align: top;
            border-top: 1px solid #dee2e6;
        }
        table th {
            vertical-align: bottom;
            border-bottom: 2px solid #dee2e6;
        }
        table caption {
            padding-top: 0.75rem;
            padding-bottom: 0.75rem;
            color: #6c757d;
            text-align: left;
            caption-side: bottom;
        }
        table tbody+tbody {
            border-top: 2px solid #dee2e6;
        }
        table .table {
            margin-bottom: 0;
        }
        table-sm th, table-sm td {
            padding: 0.3rem;
        }
        table-bordered {
            border: 1px solid #dee2e6;
        }
        table-bordered th, table-bordered td {
            border: 1px solid #dee2e6;
        }
        table-bordered thead th, table-bordered thead td {
            border-bottom-width: 2px;
        }
        .table-bordered-sm th, .table-bordered-sm td {
            border: 1px solid #dee2e6;
        }
        .table-bordered-sm thead th, .table-bordered-sm thead td {
            border-bottom-width: 2px;
        }
        .table-bordered-lg th, .table-bordered-lg td {
            border: 2px solid #dee2e6;
        }
        .table-bordered-lg thead th, .table-bordered-lg thead td {
            border-bottom-width: 2px;
        }
        .table-hover tbody tr:hover {
            color: #212529;
            background-color: rgba(0, 0, 0, 0.075);
        }
        .table-primary, .table-primary>th, .table-primary>td {
            background-color: #b8daff;
        }
        .table-primary th, .table-primary td, .table-primary thead th, .table-primary tbody+tbody {
            border-color: #7abaff;
        }
        .table-hover .table-primary:hover {
            background-color: #9fcdff;
        }
        .table-hover .table-primary:hover>td, .table-hover .table-primary:hover>th {
            background-color: #9fcdff;
        }
        .table-secondary, .table-secondary>th, .table-secondary>td {
            background-color: #d6d8db;
        }
        .table-secondary th, .table-secondary td, .table-secondary thead th, .table-secondary tbody+tbody {
            border-color: #b3b7bb;
        }
        .table-hover .table-secondary:hover {
            background-color: #c8cbcf;
        }
        .table-hover .table-secondary:hover>td, .table-hover .table-secondary:hover>th {
            background-color: #c8cbcf;
        }
        .table-success, .table-success>th, .table-success>td {
            background-color: #c3e6cb;
        }
        .table-success th, .table-success td, .table-success thead th, .table-success tbody+tbody {
            border-color: #8fd19e;
        }
        .table-hover .table-success:hover {
            background-color: #b1dfbb;
        }
        .table-hover .table-success:hover>td, .table-hover .table-success:hover>th {
            background-color: #b1dfbb;
        }
        .table-info, .table-info>th, .table-info>td {
            background-color: #bee5eb;
        }
        .table-info th, .table-info td, .table-info thead th, .table-info tbody+tbody {
            border-color: #86cfda;
        }
        .table-hover .table-info:hover {
            background-color: #abdde5;
        }
        .table-hover .table-info:hover>td, .table-hover .table-info:hover>th {
            background-color: #abdde5;
        }
        .table-warning, .table-warning>th, .table-warning>td {
            background-color: #ffeeba;
        }
        .table-warning th, .table-warning td, .table-warning thead th, .table-warning tbody+tbody {
            border-color: #ffdf7e;
        }
        .table-hover .table-warning:hover {
            background-color: #ffe8a1;
        }
        .table-hover .table-warning:hover>td, .table-hover .table-warning:hover>th {
            background-color: #ffe8a1;
        }
        .table-danger, .table-danger>th, .table-danger>td {
            background-color: #f5c6cb;
        }
        .table-danger th, .table-danger td, .table-danger thead th, .table-danger tbody+tbody {
            border-color: #ed969e;
        }
        .table-hover .table-danger:hover {
            background-color: #f1b0b7;
        }
        .table-hover .table-danger:hover>td, .table-hover .table-danger:hover>th {
            background-color: #f1b0b7;
        }
        .table-light, .table-light>th, .table-light>td {
            background-color: #fdfdfe;
        }
        .table-light th, .table-light td, .table-light thead th, .table-light tbody+tbody {
            border-color: #fbfcfc;
        }
        .table-hover .table-light:hover {
            background-color: #ececf6;
        }
        .table-hover .table-light:hover>td, .table-hover .table-light:hover>th {
            background-color: #ececf6;
        }
        .table-dark, .table-dark>th, .table-dark>td {
            background-color: #c6c8ca;
        }
        .table-dark th, .table-dark td, .table-dark thead th, .table-dark tbody+tbody {
            border-color: #95999c;
        }
        .table-hover .table-dark:hover {
            background-color: #b9bbbe;
        }
        .table-hover .table-dark:hover>td, .table-hover .table-dark:hover>th {
            background-color: #b9bbbe;
        }
        .table-active, .table-active>th, .table-active>td {
            background-color: rgba(0, 0, 0, 0.075);
        }
        .table-hover .table-active:hover {
            background-color: rgba(0, 0, 0, 0.075);
        }
        .table-hover .table-active:hover>td, .table-hover .table-active:hover>th {
            background-color: rgba(0, 0, 0, 0.075);
        }
        .table .thead-dark th {
            color: #fff;
            background-color: #343a40;
            border-color: #454d55;
        }
        .table .thead-light th {
            color: #495057;
            background-color: #e9ecef;
            border-color: #dee2e6;
        }

        /* Custom styles for button */
        .export-btn {
            display: inline-block;
            padding: 0.5rem 1rem;
            font-size: 1rem;
            font-weight: 400;
            line-height: 1.5;
            color: #fff;
            background-color: #007bff;
            border-color: #007bff;
            text-align: center;
            vertical-align: middle;
            cursor: pointer;
            border: 1px solid transparent;
            border-radius: 0.25rem;
            transition: color 0.15s ease-in-out, background-color 0.15s ease-in-out, border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
        }
        .export-btn:hover {
            color: #fff;
            background-color: #0056b3;
            border-color: #0056b3;
        }
        .export-btn:focus, .export-btn.focus {
            color: #fff;
            background-color: #0056b3;
            border-color: #0056b3;
            box-shadow: 0 0 0 0.2rem rgba(38, 143, 255, 0.5);
        }
        .export-btn.disabled, .export-btn:disabled {
            color: #fff;
            background-color: #007bff;
            border-color: #007bff;
        }
        .export-btn:not(:disabled):not(.disabled):active, .export-btn:not(:disabled):not(.disabled).active,
        .show > .export-btn.dropdown-toggle {
            color: #fff;
            background-color: #0056b3;
            border-color: #0056b3;
        }
        .export-btn:not(:disabled):not(.disabled):active:focus, .export-btn:not(:disabled):not(.disabled).active:focus,
        .show > .export-btn.dropdown-toggle:focus {
            box-shadow: 0 0 0 0.2rem rgba(38, 143, 255, 0.5);
        }
        .export-btn-lg, .export-btn-group-lg > .export-btn {
            padding: 0.75rem 1.5rem;
            font-size: 1.25rem;
            line-height: 1.5;
            border-radius: 0.3rem;
        }
        .export-btn-sm, .export-btn-group-sm > .export-btn {
            padding: 0.25rem 0.5rem;
            font-size: 0.875rem;
            line-height: 1.5;
            border-radius: 0.2rem;
        }
    </style>
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
    <script src="https://cdnjs.cloudflare.com/ajax/libs/xlsx/0.17.4/xlsx.full.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/FileSaver.js/2.0.5/FileSaver.min.js"></script>
    <script type="text/javascript">
        function exportToExcel() {
            var tables = document.getElementsByTagName("table");
            var wb = XLSX.utils.book_new();

            // Iterate over each table and convert it to a worksheet
            for (var i = 0; i < tables.length; i++) {
                var table = tables[i];
                var wsData = [];
                var rows = table.rows;

                // Iterate over each row in the table
                for (var j = 0; j < rows.length; j++) {
                    var rowData = [];
                    var cells = rows[j].cells;

                    // Iterate over each cell in the row
                    for (var k = 0; k < cells.length; k++) {
                        rowData.push(cells[k].textContent);
                    }

                    wsData.push(rowData);
                }

                // Convert the data array to worksheet format
                var ws = XLSX.utils.aoa_to_sheet(wsData);
                XLSX.utils.book_append_sheet(wb, ws, "Sheet" + (i + 1));
            }

            // Save workbook as Excel file using FileSaver.js
            var wbout = XLSX.write(wb, { bookType: 'xlsx', type: 'array' });
            saveAs(new Blob([wbout], { type: 'application/octet-stream' }), 'participation_data.xlsx');
        }
    </script>
</body>
</html>
