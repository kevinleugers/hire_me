$(function(){
  $('#search_input').autocomplete({
    autoFocus: true,
    source: function(request, response){
      $.get("/sm/search?types[]=skill&limit=3", {
        term: request.term
      }, function(data) {
        var terms = []
        $.each(data.results.skill, function(i, result){
          terms.push(result.term);
        });
        console.log(terms);
        response(terms);
      });
    },
    minLength: 2
  });
  $('#notes-field').editable({inlineMode: false});
  $('#new-job-save').click(function(){
    $('#job_notes').val($('#notes-field').editable("getHTML", true, true));
  });
});
