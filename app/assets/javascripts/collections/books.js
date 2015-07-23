Bb.Collections.Books = Backbone.Collection.extend({
  url: '/api/v1/books',
  model: Bb.Models.Book,
  initialize: function(props) {
    if (props && props.path) this.url += props.path;
   }
});
