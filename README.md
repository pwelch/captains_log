
Captain's Log is a Rails application that provides a central place to log
infrastructure changes.

## Development

* ruby-2.0.0-p247
* Rails 4.0.1

`bundle install`

`rake db:migrate`
`rake db:test:prepare && rake db:migrate RAILS_ENV=test` 
`db:populate`
`bundle exec guard`

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

# TO DO

If `undefined method `encrypted_password=' for `
In the rails console run, this will tell you if the migration has run

User.new.respond_to?(:encrypted_password=)
This should return true, if not do

bundle exec rake db:migrate:reset
