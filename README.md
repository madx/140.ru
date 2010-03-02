140.ru
======
A Rack-compliant Ruby framework that fits in a tweet.

    F=lambda{|e|p=e['REQUEST_PATH'][1..-1];Dir['app/*'].map{|c|require c};File.exist?("app/#{p}.rb")?eval(p.camelize).call(e):NotFound.call(e)}

## Install

140.ru only depends on ActiveSupport and Rack.

    # Basic:
    $ wget http://github.com/madx/140.ru/lib/140.rb

    # Full:
    $ git clone git://github.com/madx/140.ru.git

## Usage

In your config.ru file, just put this:

    require '/path/to/140.rb'
    run lambda { |env|
      env['REQUEST_PATH'] = '/main' if env['REQUEST_PATH'] == '/'
      F.call(env)
    }

Run with rackup, shotgun, or whatever you like, but you need to `require
'active_support'` at some point.

Your controllers must be in the `app/` folder, the request path will be used to
choose the right one. Rules are pretty much the same as in Rails:
`/my_controller` will map to `MyController`.

Controllers must have a `call()` method which takes the full Rack environment as
an argument. That's all.
