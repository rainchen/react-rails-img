// rails generate react:component Post title:string body:string published:bool published_by:instanceOf{Person}
var Post = React.createClass({
  propTypes: {
    title: React.PropTypes.string,
    body: React.PropTypes.string,
    published: React.PropTypes.bool,
    publishedBy: React.PropTypes.node
  },

  getInitialState: function(){
    return {clicked: false};
  },

  handleClick: function(){
    this.setState({clicked: true});
  },

  render: function() {
    var railsLogo = "rails-logo.svg";
    var reactjsLogo = "logo/reactjs-logo.svg";
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
        <div>custom props with component: <Img id="img-custom-props" src="/assets/logo/reactjs-logo.svg" className="logo" alt={reactjsLogo} onClick={this.handleClick} data-foo="bar" data-clicked={this.state.clicked} /></div>
        <div>custom props with helper: {imageTag("logo/reactjs-logo.svg", {id:"img-custom-props-helper", className:"logo", alt:reactjsLogo, onClick:this.handleClick, "data-foo":"bar", "data-clicked":this.state.clicked})}</div>
      </div>
    );
  }
});
