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