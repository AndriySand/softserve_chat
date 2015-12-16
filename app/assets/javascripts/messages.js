$(document).ready(
  function() {
    add_class();
  }
);

function add_class(){
  $('div.message').last().addClass('last');
};
