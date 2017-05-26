$(document).on('turbolinks:load', function() {
  // From: https://developer.mozilla.org/en-US/docs/Web/Events/dragstart
  // and modified
  var dragged;
  var saved_background;

  $(".js-draggable").attr("draggable", true);

  $(".js-draggable").on("dragstart", function(event) {
    // console.log("dragstart: " + this.tagName + " " + this.className);
    dragged = event.target;
    event.target.style.opacity = 0.5;
  });

  $(".js-droppable").on("drag", function(event) {
    // console.log("drag: " + this.tagName + " " + this.className);
  });

  $(".js-droppable").on("dragend", function(event) {
    // console.log("dragend: " + this.tagName + " " + this.className);
    event.target.style.opacity = "";
  });

  $(".js-droppable").on("dragover", function(event) {
    // console.log("dragover: " + this.tagName + " " + this.className);
    // console.log("preventing default");
    event.preventDefault();
  });

  $(".js-droppable").on("dragenter", function(event) {
    console.log("dragenter: " + this.tagName + " " + this.className);
    saved_background = this.style.background;
    this.style.background = "#f0f0f0";
  });

  $(".js-droppable").on("dragleave", function(event) {
    console.log("dragleave: " + this.tagName + " " + this.className);
    this.style.background = saved_background;
  });

  $(".js-droppable").on("drop", function(event) {
    console.log("drop: " + this.tagName + " " + this.className);
    console.log("preventing default");
    event.preventDefault();
    this.style.background = saved_background;
    if (dragged.parentNode !== this) {
      console.log("moving element");
      dragged.parentNode.removeChild(dragged);
      this.appendChild(dragged);
    }
  });
});
