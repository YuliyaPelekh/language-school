var BookEdit = React.createClass({
  mixins: [ReactRouter.Navigation],

  getInitialState: function() {
    return {book: {}};
  },

  componentDidMount: function() {
    var id = this.props.params.bookId,
        book = new Bb.Models.Book({id: id});
    book.fetch({
      success: function(model) {
        this.setState({
          book: model.toJSON(),
          model: model
        });
      }.bind(this),
      error: function(model, response) {
        console.error(response);
      }
    });
  },

  handleSubmit: function(book) {
    this.state.model.save({book}, {
      patch: true,
      success: function() {
        this.transitionTo("book", {bookId: this.state.book.id});
      }.bind(this),
      error: function(model, response) {
        console.error(response);
      }
    });
  },

  render: function() {
    return (
      <div>
        <BackToBooks />
        <h1>Edit Book</h1>
        <BookForm
          book={this.state.book}
          handleSubmit={this.handleSubmit} buttonRole='Edit book'/>
      </div>
    );
  }
});