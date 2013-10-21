# Hydra::Admin::Collections

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

    gem 'hydra-admin-collections'

And then execute:

    $ bundle


## Usage

Add to your ActiveFedora models:

```ruby
    class GenericFile < ActiveFedora::Base
      belongs_to_admin_collection
    end
```

This gives you a #collection= and #collection methods which hold a Hydra::Admin::Collection

If you want to extend Hydra::Admin::Collection, just create that class and include the behavior module:

```ruby
   class Hydra::Admin::Collection < ActiveFedora::Base
      include Hydra::Admin::CollectionBehavior
      
      # your code goes here
   end
```


### Contributing

Pull requests welcome, but please read [CONTRIBUTING.md](CONTRIBUTING.md) first.
