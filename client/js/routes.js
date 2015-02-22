var AppRouter = Backbone.Router.extend({
  initialize: function() {
    console.log("routes have started");
  },
  routes: {
    '': 'home',
    'home': 'home',
    'mood': 'moodShow'
  },
  // home: function() {
  //   var self = this;
  //   var drink = new DrinkCollection();
  // // {data: $.param({limit: 2})}
  //   drink.fetch().then(function() {
  //    self.loadView(new DrinkNamesView({collection: drink}));
  //   });
  // },
  
  moodShow: function() {
    var self = this;
    var drinks = new DrinkCollection();
    drinks.fetch({data: $.param({mood: 'happy'})}).then(function() {
     self.loadView(new DrinkNamesView({collection: drinks}));
    });
  },
  // addStudent: function() {
  //   this.loadView(new AddStudentView());
  // },
  loadView: function(view) {
    this.view = view;
  }
});



















