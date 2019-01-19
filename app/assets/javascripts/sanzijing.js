// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
    $(document).ready(function() {
        var buttonText = [ 'Color', 'Section' ]
        $('#sanzijing_line, #sanzijing_section').multiselect({
          buttonClass: 'btn btn-primary',
          enableFiltering: true,
          dropUp: true,
          buttonText: function(options, select) {
            return 'Color';
          },
          onChange: function(option, checked) {
            if (checked) {
              //$('td.selected').append("<button class='delete'> "+ option.val()+ "</button>")
          }
          }
        });

       $('td.selected-search').on('click','button.delete', function() {
         alert($(this).html());
         $('#mytest').multiselect('deselect', $(this).html());
       });

        $('#mytest1').multiselect({
            buttonText: function(options, select) {
                return options.length + ' selected';
            },
            buttonClass: 'btn btn-primary',
            enableFiltering: true,
            // buttonWidth: '300px',
            selectedClass: 'multiselect-selected',
        });
    });
