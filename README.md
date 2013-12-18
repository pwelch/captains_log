Captain's Log is a Rails application that provides a central place to log
infrastructure changes.

[![Build Status](https://secure.travis-ci.org/pwelch/captains_log.png)](http://travis-ci.org/pwelch/captains_log)

## Development

* ruby-2.0.0-p353
* Rails 4.0.1

`bundle install`

- `rake db:migrate`
- `rake db:test:prepare && rake db:migrate RAILS_ENV=test` 
- `rake db:seed` 
- `bundle exec guard`

### API Development

Generate API Key from Rails Console:

```
rails console

ApiKey.create!
```

Posting to API
```
curl -X POST -H "Content-Type: application/json" \
     -H 'Authorization: Token token="TOKEN"' \
     -d '{"event":{"entry":"ENTRY TEXT"}}' http://localhost:3000/api/v1/events
```

## Configuration

## Deployment

Still under development. Deploy instructions will be written when
application is production ready.
