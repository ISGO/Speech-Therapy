$(function () 
{
	function patient_exercises(id) 
	{
	    $.post('/ajax/patient_exercises.json', 
	    {
	      id: id
	    }, function(data) 
	    {
	      var output = data.result;
	    })
	}
})