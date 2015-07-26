var SignOutLink = React.createClass({

  onClick: function(e) {
    e.preventDefault();
    $.ajax({
      url: "/users/sign_out",
      method: "DELETE",
      success: function() {
        // ugly redirect, but can't use ReactRouter.Navigation mixin here
        window.location.href = "/"
      }.bind(this),
      error: function(xhr, status, error) {
        console.error(error);
      }
    });
  },

  render: function() {
    return (
      <li>
        <a href='#users/sign_out' onClick={this.onClick}>Log Out <span className="glyphicon glyphicon-log-out"></span></a>
      </li>
    );
  }
});
