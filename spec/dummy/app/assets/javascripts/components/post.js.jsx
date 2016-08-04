// rails generate react:component Post title:string body:string published:bool published_by:instanceOf{Person}
var Post = React.createClass({
  propTypes: {
    title: React.PropTypes.string,
    body: React.PropTypes.string,
    published: React.PropTypes.bool,
    publishedBy: React.PropTypes.node
  },

  render: function() {
    var railsLogo = "rails-logo.svg";
    return (
      <div>
        <div>Title: {this.props.title}</div>
        <div>Body: {this.props.body}</div>
        <div>Published: {this.props.published}</div>
        <div>Published By: {this.props.publishedBy}</div>
        <div>rails logo(100): <Img src="/assets/rails-logo.svg" width="100" /></div>
        <div>rails logo(50): <img src={Img.assetPath(railsLogo)} width="50"/></div>
        <div>rails logo(25): {imageTag(railsLogo, {width: 25})}</div>
        <div>reactjs logo: <Img src="/assets/logo/reactjs-logo.svg" className="logo" /></div>
      </div>
    );
  }
});
