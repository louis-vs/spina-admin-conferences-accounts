# Spina::Admin::Conferences::Accounts

![Rails tests](https://github.com/louis-vs/spina-admin-journal/workflows/Verify/badge.svg?branch=master&event=push)
![codecov](https://codecov.io/gh/louis-vs/spina-admin-conferences-accounts/branch/master/graph/badge.svg?token=xMLjBbQXPb)

*Accounts* is a plugin for [Spina](https://www.spinacms.com/), a content management system built in [Ruby on Rails](http://rubyonrails.org/). Designed to be used with [`spina-admin-conferences`](https://github.com/jmalcic/spina-admin-conferences) and [`spina-admin-journal`](https://github.com/louis-vs/spina-admin-journal), it provides an admin interface to manage public user accounts with [devise](https://github.com/heartcombo/devise).

## Usage
The plugin adds a single menu to Spina's primary navigation, which allows you to manage a devise user stored as `PublicUser`.

## Installation

### From scratch
Make sure you have a working installation of Ruby on Rails 6.1. You can find a setup guide [here](https://guides.rubyonrails.org/getting_started.html).

Then run:

```bash
$ rails new your-app --database=postgresql
$ cd your-app
$ bin/rails db:create
$ bin/rails active_storage:install
```

Add this line to your new application's Gemfile:

```ruby
gem 'spina', '~> 2.0'
```

And then execute:

```bash
$ bundle install
```

Run the Spina install generator:

```bash
$ bin/rails g spina:install
```

And follow the prompts. Once this is complete, follow the instructions below.

### For existing Spina installations
Add this line to your application's Gemfile:

```ruby
gem 'spina-admin-conferences-accounts', '~> 0.1'
```

And then execute:

```bash
$ bundle install
```

You'll then need to install and run the migrations for the journal:

```bash
$ bin/rails spina_admin_conferences_accounts_engine:install:migrations
$ bin/rails db:migrate
```

You can then start a local server to test that everything's working.

```bash
$ bin/rails s
```

You can manually populate the database from within the app, or alternatively you can use seed data for testing. A sample `seeds.rb` file can be found [here](../master/test/dummy/db/seeds.rb).

## Contributing
Bug reports and feature requests are welcome in the [Issues](https://github.com/louis-vs/spina-admin-journal/issues) section. Translations are also very welcome!

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
