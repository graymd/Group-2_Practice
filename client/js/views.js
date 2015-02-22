// Model View
var DrinkNameView = Backbone.View.extend({
    tagName: 'article',
    template: _.template($('#drinkTmpl').text()),
    initialize: function() {
      console.log('drink view is made');
    },
    render: function() {
      var markup = this.template(this.model.attributes);
      this.$el.html(markup);
      return this;
    }
});



// Collection View
var DrinkNamesView = Backbone.View.extend({
    tagName: 'section',
    initialize: function() {
      console.log("im DrinkNamesView defined!");
      this.render();
      $('.container').append(this.el);

    },
    render: function() {
      this.addAll();
      return this;
    },
    addOne: function(drinkModel) {
      
      var drinkNameView = new DrinkNameView({model: drinkModel});
      this.$el.append(drinkNameView.render().el);
    },
    addAll: function() {

      _.each(this.collection.models, this.addOne, this);
    }
});














