# TV Show

## Running with Docker

This project provides a Docker Compose file, which can be used to lift the whole environment easily.

```sh
# Lift the whole environment (app + database)
docker-compose run --service-ports app bash
```

## Setup

On project's root directory:

```ruby
# Install necessary gems
bundle install

# Setup database and run migrations
rake db:create db:migrate
```

## Testing

```ruby
rake spec
```
