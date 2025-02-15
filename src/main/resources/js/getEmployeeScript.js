 function toggleForm() {
    var attendedYes = document.getElementById("attended_yes");
    var attendedNo = document.getElementById("attended_no");
    var formAttended = document.getElementById("form_attended");
    var formNotAttended = document.getElementById("form_not_attended");

    if (attendedYes.checked) {
        formAttended.style.display = "block";
        formNotAttended.style.display = "none";
    } else if (attendedNo.checked) {
        formAttended.style.display = "none";
        formNotAttended.style.display = "block";
    }
}
$(document).ready(function() {
            // jQuery code to manipulate the DOM
            $('#submitAttended').hide();
            $("#submitNotAttended").hide();
            
            $('input[name="participated"]').click(function() {
                $("#2").show(); // Toggle the visibility of paragraphs
            });
            $("input[name='engaging']").click(function() {
                $("#3").show(); // Toggle the visibility of paragraphs
            });
            $("input[name='continueParticipate']").click(function() {
                $("#4").show(); // Toggle the visibility of paragraphs
            });
            $("input[name='rating']").click(function(){
            	$('#submitAttended').show();
            });
    
        	$('input[name="reason"]').change(function() {
            	$("#submitNotAttended").show();
        		var selectedValue = $(this).val();

            	if (selectedValue === 'other') {
            		$("#otherReasonDescription").prop('disabled',false);
                	$('#otherReason').show();
            	} else {
                	$('#otherReason').hide();
                	$("#otherReasonDescription").prop('disabled',true);
            	}
        	});
        });

$(document).ready(function() {
            $('#get_employeee_data').click(function() {
            	var id=$("#employee_id").val();
           		if(id.trim().length==0){
           			alert("Enter Employee ID")	
           		}
           		else{
           			
                	$.ajax({
                    	type: 'GET',
                    	url: 'https://surveyrepository-production.up.railway.app/checkEmployee/'+id,
                    	success: function(employee) {
                    		
                        	if(employee){
                        		$("#employee_id").prop('readonly',true);
                        		$("#first").show();
                        		$("#get_employeee_data").hide();
                        		$("#notAttendedId").val(id);
                        		$("#attendedId").val(id);
                        		$("#notAttDiv").hide();
                        		$("#attDiv").hide();
                        	}
                        	else{
                        		$("#employee_id").prop('readonly',false);
                        		window.location.href = 'https://surveyrepository-production.up.railway.app/already';
                        	}
                    	},
                    	error: function() {
                        	alert('Enter Correct Employee Id ');
                    	}
                	});
           		}
            });
        });