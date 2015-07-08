# react-rails-img

Simple image helpers for the rails project using react, make it easily just like using the `<img>` tag.

## Installation

1. Add this line to your application's Gemfile:

```ruby
gem 'react-rails-img'
```

And then execute:

    $ bundle

2. Require the javascript file in `app/assets/javascripts/application.js`:

  ```js
  //= require react_rails_img
  ```

## Usage

### React Component Style

the asset adds a `<Img>` component

1. base usage: e.g.: `<Img src="/assets/logo.png" />`
2. with props: e.g.: `<Img src="/assets/logo.png" alt="logo" className="logo" id="logo" width=100 height=50 />`
3. advance usage - using cssSprite: e.g.: `<Img src="/assets/css_sprite/logo.png" />`

    1) this feature requires gem 'css_sprite'

    2) css_sprite images should be placed in dir `assets/images/css_sprite/`

    3) put the string `css_sprite` after `/assets/` in the path

### JS funtion Style

just similar to rails helper `image_tag`

1. base usage: e.g.: `imageTag('logo.png')`
2. with props: e.g.: `imageTag('path/logo.png', {alt: 'logo', className: 'logo', id: 'logo', width: 100, height: 50})`


### helper for getting image path

e.g.: `Img.assetPath('placeholder/logo.png')`

## Acknowledgements

the image path will respect `Rails.env`, for development it will be sth like

  `/assets/logo.png`
 
and for production, it will be contains the timestamp as
 
   `/assets/logo-be1f67ffd42a4c1a41bdcc547c5705a3423a2f24bfe930f00398077fe518e6c0.png`


## Contributing

1. Fork it ( https://github.com/[my-github-username]/react-rails-img/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
