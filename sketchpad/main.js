$(document).ready(function () {
  generateGrid(16);
  simpleGrid();
});

$("#simple-grid").click(function () {
  generateGrid(userInput());
  simpleGrid();
});

$("#random-colors").click(function () {
  generateGrid(userInput());
  randomColors();
});

$("#gradient").click(function () {
  generateGrid(userInput());
  gradient();
});

function generateGrid (number_grids) {
  var container = [];
  var string = ""
  var size = String((960 / number_grids).toFixed(2))+"px";
  $("div.container").empty();
  for (var i = 1; i <= number_grids; i++) {
    container.push("<div class=grid></div>")
  };
  string = container.join("");
  for (var i = 1; i <= number_grids; i++) {
    $("div.container").append(string);
  };
  $(".grid").css("width", size);
  $(".grid").css("height", size);
}

function userInput() {
  do {
    var number_grids = prompt("How many squares do you want at one side?");
  } while (isNaN(number_grids));
  return parseInt(number_grids);
}

function simpleGrid() {
  $(".grid").mouseenter(function () {
    $(this).addClass("simple");
  });
}

function randomColors() {
  $(".grid").mouseenter(function () {
    $(this).css("background-color", randomiseColor());
  });
};

function randomiseColor() {
  var color = "#";
  var color_array = "0123456789abcdef".split("");
  for (var i = 0; i < 6; i++) {
    color += color_array[Math.floor(Math.random() * 16)];
  };
  return color;
};


function gradient() {
  $(".grid").css("background-color", "black");
  $(".grid").css("opacity", "0");
  $(".container").css("border", "2px solid black");
  $(".grid").mouseenter(function () {
    var opacity = parseFloat($(this).css("opacity"));
    if (opacity != 1) {
      opacity += 0.10;
      $(this).css("opacity", opacity);
    };
  });
};
