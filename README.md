# ClinicFinder


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'clinic_finder'
```

And then execute:

    $ bundle

## Usage

The ClinicFinder gem is super simple.  First just configure the gem with `ClinicFinder.configure`:

```ruby
ClinicFinder.configure do |config|
  config.host = "http://clinc_finder.dev" # Where the clinic_finder app is hosted
  config.api_token = "f98hifbwqeluh19128ye938hd8yg982y/198rh" # Whatever the X-Auth-Token should be
end
```

Once you've got it all set up, you're ready to start searching!

```ruby
irb(main):004:0> ClinicFinder.search "76134"
=> [
  {
    "name"=>"University Hospital Breast Imaging Services",
    "address_1"=>"400 West Magnolia",
    "address_2"=>nil,
    "address_3"=>nil,
    "city"=>"Fort Worth",
    "state"=>"TX",
    "zip_code"=>"76104",
    "phone"=>"817288-9883",
    "fax"=>"817924-1182"
  }, ...
]
```
