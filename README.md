# ModelGenerator

This is a sample gem to test how generators work.

### Setup

Include the gem in Gemfile of a rails application. Currently it supports only `ActiveRecord` models.

```
gem 'model_generator', path: 'path/to/cloned/gem'
```


To generate the migration run:

```
  bundle exec rails generate model_generator:migration
```

To generate the model run:

```
  bundle exec rails generate model_generator:transaction_log
```
