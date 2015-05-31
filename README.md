# `Sinatra::FormHelpers`

[![Gem Version](https://badge.fury.io/rb/sinatra-formhelpers-ng.svg)](http://badge.fury.io/rb/sinatra-formhelpers-ng) [![Build Status](https://travis-ci.org/duijf/sinatra-formhelpers-ng.svg)](https://travis-ci.org/duijf/sinatra-formhelpers-ng) [![Code Climate](https://d3s6mut3hikguw.cloudfront.net/github/duijf/sinatra-formhelpers-ng/badges/gpa.svg)](https://codeclimate.com/github/duijf/sinatra-formhelpers-ng) [![Test Coverage](https://d3s6mut3hikguw.cloudfront.net/github/duijf/sinatra-formhelpers-ng/badges/coverage.svg)](https://codeclimate.com/github/duijf/sinatra-formhelpers-ng) [![Docs](https://inch-ci.org/github/duijf/sinatra-formhelpers-ng.svg?branch=master&style=flat)](https://inch-ci.org/github/duijf/sinatra-formhelpers-ng)

**There are one or two bugs in here at the moment, and I'm currently doing
README-driven-development,** which might make using `master` a real pain,
especially with HAML. In the meanwhile, check out the docs for [`1.9.1`][1.9.1]

 [1.9.1]:https://github.com/duijf/sinatra-formhelpers-ng/tree/7d086244e077c6826557d090194cf9840b3ff167

This gem provide lightweight form helpers for Sinatra that will aid you
create forms more easily.

Instead of writing this;

```haml
%label{ for: 'person_first_name' } First Name
%input{ name: 'person[first_name]' id: 'person_first_name' value: @person.first_name }
```

with this gem you'll be able to write this:

```haml
= label :person, :first_name
= input :person, :first_name
```

There are many more helpers to choose from, and there are even more benefits to
using this. Scroll on!

## Additional benefits

1. Helpers maintain correct state across form submissions. An erroneously filled
   form is still filled in when you show it to the user.
2. The helpers automatically generate labels, CSS ID's and the `nested[names]`
   that make ORMs happy.
3. No without Rails Ultra-Magic&#x2122;. Just simple code that you can comprehend.
4. **In the near future:** Declare framework specific CSS classes to be used.
   Get Bootstrap or Foundation forms without the hassle.

## Installation and usage

Install with Bundler by adding the following to your `Gemfile`:

```ruby
gem 'sinatra-formhelpers-ng'
```

Then, include it in your Sinatra application:

```ruby
require 'sinatra/form_helpers'
```

If you are subclassing `Sinatra::Base`, in what is referred to as the modular
style, then you need to tell Sinatra where to find the helpers that this
gem provides:

```ruby
class MyApp < Sinatra::Base
  helpers Sinatra::FormHelpers
  # ...
end
```

## Using the helpers in your views

If you've followed the steps above, you are ready to use the helpers in your
views to create the HTML elements. Below you will find a tutorial that also
serves as an API reference. **This is incomplete for now.**

### `form(:action '/url', &block)`

`form(:action, "/url", &block)` takes a string, an atom and a block and
returns a string which will contain the form.

The action can be one of `:create`, `:update` or `:delete`. Again, the helper
will open a form and even include the hidden parameter `_method` for you (which
helps older browsers implement HTTP verbs like `PUT`).

The URL can be anything you want it to be. Just make sure to define an endpoint
for it in your Sinatra app.

The block will be evaluated, and will be the content of your form.

```haml
= form('/users', :create) do |f|
 -# Form code goes here
```

Will return the following:

```html
<form method="post" action="/url">
  <!-- Form content -->
</form>
```

### `fieldset(:model, &block)`

**This subsection and the rest of this section is a TODO.**

## Bugs and whishlist

* The `fieldset` helper currently **does not** return a `<fieldset>` tag properly,
  which makes the gem rather useless with HAML. This will get fixed **very**
  soon.
* Hooks for custom CSS classes to make it easier to utilize CSS frameworks
  like Bootstrap or Foundation.
* The tests are rather monolythic. These might benefit from being split up
  into multiple files.

## Contributing

Contributions are most welcome! If you are experienced and you know what to
do, get cracking!

If you're not, here's your game plan:

1. Fork and create a branch.
2. Write code, docs or tests and create commits.
3. Afterwards, do a `git rebase -i master` to reword commit messages, and
   resolve merge conflicts if any.

If you are unsure about any of the above, but still would like to do something,
don't hesitate to send me an email. I can't promise an immediate reaction, but
I don't bite.

## Authors and maintainers

* [Tom Wilson](http://github.com/twilson63), 2009 - 2011
  ([old repo](https://github.com/twilson63/sinatra-formhelpers)))
* [Nate Wiger](http://nateware.com/), 2011 - 2013
* [Cymen Vig](http://blog.cymen.org/), 2013 - 2015
  ([old repo](https://github.com/cymen/sinatra-formhelpers-ng))
* [Laurens Duijvesteijn](http://duijf.org/), 2015 onwards

## License

This project is licenced under the MIT license. You can find a copy in the
`LICENSE` file.
