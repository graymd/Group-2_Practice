var DrinkCollection = Backbone.Collection.extend({
  url: 'http://localhost:9000/',
  initialize: function() {
    console.log("Drink collection in da houzzze!");
  }
});