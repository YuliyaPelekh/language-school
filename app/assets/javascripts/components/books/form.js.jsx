var BookForm = React.createClass({
  getInitialState: function() {
    return {book: {}};
  },

  componentWillReceiveProps: function(nextProps) {
    this.setState({book: nextProps.book});
  },

  handleChange: function(e) {
    var newState = this.state.book;
    newState[e.target.id] = e.target.value;
    this.setState(newState);
  },

  handleFormSubmit: function(e) {
    e.preventDefault();
    var form = document.querySelector("form");
    var MyForm = new FormData(form);
    var oReq = new XMLHttpRequest();
    oReq.open("POST", "/api/v1/books", true);
    oReq.send(MyForm);
    var title = React.findDOMNode(this.refs.title).value.trim();
    var description = React.findDOMNode(this.refs.description).value.trim();
    var attachment = React.findDOMNode(this.refs.attachment).value.trim();
    var book = {title: title, description: description, attachment: attachment};
    if (!title || !description) {
      return;
    }
    this.props.handleSubmit(book);
    return;
  },
  // handleFile: function(e) {
  //   var file = React.findDOMNode(this.refs.attachment).files[0];;
  //   var self = this;
  //   var reader = new FileReader();
  //    reader.onload = function(upload) {
  //      self.setState({
  //        file: upload.target.result,
  //     });
  //   }

  //    reader.readAsDataURL(file);
  // },
  render: function() {
    return (
      <form name = "infoform" role="form" encType="multipart/form-data" onSubmit={this.handleFormSubmit}>
        <div className="col-md-6">
          <div className="form-group">
            <label for="title">Title</label>
            <input type="string" name = "book[title]" className="form-control" placeholder="Enter title" ref="title" />
          </div>
          <div className="form-group">
            <label for="title">Description:</label>
            <textarea type="text" name = "book[description]" className="form-control" rows="3" placeholder="Please write the description" ref="description" ></textarea>
          </div>
          <div className="form-group">
            <label for="attachment">Attachment</label>
            <input type="file" name = "book[attachment]"  ref="attachment"/>
          </div>
          <button type="submit"  className="btn btn-primary">{this.props.buttonRole}</button>
        </div>
      </form>
    );
  }
});