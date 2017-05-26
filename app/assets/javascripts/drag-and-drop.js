$(document).on('turbolinks:load', function() {
  var dragged;

  $(".js-draggable").attr("draggable", true);
  $(".js-draggable").on("dragstart", function(event) {
    dragged = event.target;
    event.target.style.opacity = 0.5;
  });

  $(".js-droppable").on("dragend", function(event) {
      event.target.style.opacity = "";
    });
  $(".js-droppable").on("dragover", function(event) {
      event.preventDefault();
  });
  $(".js-droppable").on("dragenter", function(event) {
      event.target.style.background = "#f0f0f0";
  });
  $(".js-droppable").on("dragleave", function(event) {
      event.target.style.background = "";
  });
  $(".js-droppable").on("drop", function(event) {
    event.preventDefault();
    event.target.style.background = "";
    if (dragged.parentNode !== event.target) {
      dragged.parentNode.removeChild(dragged);
      event.target.appendChild(dragged);
    }
  });
});
