$('.nav nav-tabs li').click(function(e) {
  $('.navbar li.active').removeClass('active');
  var $this = $(this);
  if (!$this.hasClass('active')) {
    $this.addClass('active');
  }
  e.preventDefault();
});
