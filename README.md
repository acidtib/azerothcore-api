## azerothcore-api

A set of RESTful APIs for [AzerothCore](https://azerothcore.org).

### Requirements

- Ruby
- MySQL
- AzerothCore database

### Installation

```
$ bundle install
```

Copy the configuration file `.env-example` file into `.env` and update it.

```
$ cp .env-example .env
```

Run the project:
```
$ foreman start -f Procfile.dev
```

Now you can locally access to the API routes through [http://localhost:5000](http://localhost:5000).