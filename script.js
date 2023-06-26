$(document).ready(function () {
  $("button.sending").on("click", function () {
    let pizzaValue = $("#pizza").val();
    let sauceValue = $("#sauce").val();
    let sizeValue = $("#size").val();

    $.ajax({
      method: "POST",
      url: "form.php",
      data: { pizza: pizzaValue, sauce: sauceValue, size: sizeValue },
    }).done(function (data) {
      document.getElementById("modal-content").innerHTML =
        '<div id="content"><b>Чек</b><div>Пицца:' + pizzaValue +
        '<button id="btn_close">Close</button></div>' +
        "<div>Размер:" +sizeValue +"</div>" +
        "<div>Соус:" + sauceValue + "</div>" +
        "<div>Цена:" + data + "</div></div>";
      $(document).ready(function () {
        $("#btn_close").click(function () {
          const $block = document.querySelector("#content");
          $block.parentNode.removeChild($block);
          $('#pizza option:first').prop('selected',true);
          $('#size option:first').prop('selected',true);
          $('#sauce option:first').prop('selected',true);
        });
      });
    });
  });
});
