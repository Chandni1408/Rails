$(document).ready(function () {
  var navListItems = $('div.setup-panel div a'),
          allWells = $('.setup-content'),
          allNextBtn = $('.nextBtn');

  allWells.hide();

  navListItems.click(function (e) {
      e.preventDefault();
      var $target = $($(this).attr('href')),
              $item = $(this);

      if (!$item.hasClass('disabled')) {
          navListItems.removeClass('btn-primary').addClass('btn-default');
          $item.addClass('btn-primary');
          allWells.hide();
          $target.show();
          $target.find('input:eq(0)').focus();
      }
  });

  allNextBtn.click(function(){
      var curStep = $(this).closest(".setup-content"),
          curStepBtn = curStep.attr("id"),
          nextStepWizard = $('div.setup-panel div a[href="#' + curStepBtn + '"]').parent().next().children("a"),
          curInputs = curStep.find("input[type='text'],input[type='url']"),
          isValid = true;

      $(".form-group").removeClass("has-error");
      for(var i=0; i<curInputs.length; i++){
          if (!curInputs[i].validity.valid){
              isValid = false;
              $(curInputs[i]).closest(".form-group").addClass("has-error");
          }
      }

      if (isValid)
          nextStepWizard.removeAttr('disabled').trigger('click');
  });

  $('div.setup-panel div a.btn-primary').trigger('click');
});
  
    $(document).ready(function(){
        $(".add-family").click(function(){
            var name = $("#name").val();
            var relation = $("#relation").val();
            var dob = $("#dob").val();
            var markup = "<tr><td><input type='checkbox' name='record'></td><td>" + name + "</td><td>" + relation + "</td><td>"+dob+"</td></tr>";
            $(".family").append(markup);
        });
        
        // Find and remove selected table rows
        $(".delete-family").click(function(){
            $(".family").find('input[name="record"]').each(function(){
            	if($(this).is(":checked")){
                    $(this).parents("tr").remove();
                }
            });
        });
    });    

    $(document).ready(function(){
        $(".add-eduction").click(function(){
            var cource = $("#cource").val();
            var year = $("#year").val();
            var percentage = $("#percentage").val();
            var univercityBorad = $("#univercityBorad").val();
            var markup = "<tr><td><input type='checkbox' name='record'></td><td>" + cource + "</td><td>" + year + "</td><td>"+percentage+"</td><td>"+univercityBorad+"</td></tr>";
            $(".eduction").append(markup);
        });
        
        // Find and remove selected table rows
        $(".delete-eduction").click(function(){
            $(".eduction").find('input[name="record"]').each(function(){
            	if($(this).is(":checked")){
                    $(this).parents("tr").remove();
                }
            });
        });
    });   
