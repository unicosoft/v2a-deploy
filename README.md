# V2A Deploy

Capistrano Setup that is used by http://www.v2a.net

## Installation

Add this line to your application's Gemfile:

    gem 'v2a-deploy', :github => 'v2a/v2a-deploy'

And then execute:

    $ bundle

## Usage

Include one or more of this files in your Capfile or deploy.rb

    require "v2a-deploy/basic_config"
    require "v2a-deploy/set_rack_env"
    require "v2a-deploy/server"

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
