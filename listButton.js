$(document).ready(function(){
    $(function(){
      var toggled = false;
      $(".showList").click(function() {
        var href = $(this).attr('href');
        var btn = $("[href='" + href + "']");
        if(!toggled)
        {
          toggled = true;
          btn.text('Hide List \u2191');
        } else {
          toggled = false;
          btn.text('Show List \u2193');
        }
      });
    });
  });