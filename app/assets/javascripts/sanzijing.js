// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
    $(document).ready(function() {
        var commonOptions = {
          buttonClass: 'btn btn-primary',
          enableFiltering: true,
          dropUp: true,
          buttonText: function(options, select) {
            return 'Color';
          }
        }
        $('#sanzijing_mytest').multiselect(
          Object.assign({}, commonOptions,
            {
              dropUp: true,
              onDropdownHide: function(event) {
               var brands = $('#mytest option:selected');
               var selection = [];
               $(brands).each(function(index, brand){
                 selection.push([$(this).val()]);
               });

               $.ajax({
                  type: 'get',
                  url: '/',
                  data: '',
                  dataType: 'json',
                  success: function(data) {
                    alert('success');
                    $('mytest').multiselect('selectAll');
                  }
               })
              },
              onChange: function(option, checked) {
                if (checked) {
                  $('td.selected-search').append("<button class='delete'> "+ option.val()+ "</button>")
                 };
              },
            }
          )
        );

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
