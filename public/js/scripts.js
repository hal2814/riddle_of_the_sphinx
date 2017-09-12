$(document).ready(function(){
  correct = 0
  incorrect = 0
  $("form-group#submit").click(function(event) {
    
  });
  $("form#orderForm").submit(function(event) {
    event.preventDefault();
    //type
    var pizzaBase = $("#selectPizza").val();
    pizzaOrdered.getType(pizzaBase);
    //size
    var SizeOfPizza = $("#selectPizzaSize").val();
    pizzaOrdered.getSize(SizeOfPizza);
    //toppings
    $("#titleSection").text("You Ordered: ")
    $("#orderSizeSection").text(pizzaOrdered.pizzaSize);
    $("#orderTypeSection").text(pizzaOrdered.pizzaType);
    $("#orderToppingSection").text(pizzaOrdered.toppings);
    $("#receiptSection").text(pizzaOrdered.price);
    pizzaOrdered = new pizza();
  });
});
