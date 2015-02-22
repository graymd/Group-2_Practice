var Drink = Backbone.Model.extend({
  urlRoot: 'http://localhost:9000/',
  initialize: function() {
    console.log("drink has been initialized!");
  },
  toJSON: function() {
    return {drinks: this.attributes};
  }
});