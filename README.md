[![Build Status](https://travis-ci.com/lubosch/exponea.svg?branch=master)](https://travis-ci.com/lubosch/exponea)
[![Coverage Status](https://codecov.io/gh/lubosch/exponea/branch/master/graph/badge.svg)](https://codecov.io/gh/lubosch/exponea)

# Hithorizons

Gem for integration with HitHorizons. Provider api integration for
company search and company detail.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'hithorizons'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install hithorizons

## Usage

### Configure it with:

```ruby
Hithorizons.configure do |config|
  config.api_key = API_KEY
end
```

### Hithorizons::Company::Response

Is response object

`#success` - Boolean

`#error` - Error text if not success

`#result` - Result object

`#results` - Results array of objects

`#total_count` - Total results count for multiple results

`#results_count` - Current results count

### Retrieve company detail

https://hithorizonsapim.portal.azure-api.net/docs/services/hithorizons-api/operations/get-company-get

```ruby
Hithorizons::Company::Detail.get(hithorizon_id)
# => Hithorizons::Company::Response
```

### Search company

https://hithorizonsapim.portal.azure-api.net/docs/services/hithorizons-api/operations/get-company-search

```ruby
Hithorizons::Company::Search.get(
  duns_number: nil, company_name: nil, national_id: nil,
  address_unstructured: nil, address_street: nil,
  city: nil, state_province: nil, country: nil,
  show_branches: nil, company_types: nil, max_results: nil
)
# => Hithorizons::Company::Response
```

### Search company unstructured / raw

https://hithorizonsapim.portal.azure-api.net/docs/services/hithorizons-api/operations/get-company-searchunstructured

```ruby
Hithorizons::Company::SearchUnstructured.get(
  ids: nil, name: nil, address: nil, show_branches: nil,
  company_types: nil, max_results: nil
)
# => Hithorizons::Company::Response
```

### Helpers

```ruby
Hithorizons::CompanyTypes.find_by_code('3')
# => corporation
```

```ruby
Hithorizons::IndustryTypes.find_by_code('D')
# => Manufacturing
```

```ruby
Hithorizons::Countries.find_by_iso3('SVK')
# => SLOVAKIA
Hithorizons::Countries.iso3_by_country('SLOVAKIA')
# => SVK
```

### Errors

`Hithorizons::Error` - If API throws an error (invalid credentials, ..)

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/hithorizons.


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
