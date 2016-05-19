# Pre-Requisites

First, install [dlite](https://github.com/nlf/dlite) with [these](https://gist.github.com/0x414A/c1c52a031b0796ceef02d70ef2041931#file-install-dlite-markdown) instructions.

Then install `docker` and `docker-compose` with Homebrew. you do **NOT** need `docker-machine`.

# Setup

Clone the repo:

```sh
$ git clone git@github.com:cunobo/api.git cunobo-api
```

Go into the cloned repo:

```sh
$ cd cunobo-api 
```

If you installed **Docker Toolbox**, and are thus running `docker` with `virtualbox`, you may need to load the environment variables for docker:

```sh
$ eval $(docker-machine env dev)
```

Create a `config/secrets.yml` like what's posted [here](http://brandonhilkert.com/blog/using-rails-4-dot-1-secrets-for-configuration/).


Then build the image:

```sh
$ docker-compose build
```

Install gems:

```sh
$ docker-compose run --rm web bundle install
```

Install node modules:

```sh
$ docker-compose run --rm web npm install
```

Set up the database:

```sh
$ docker-compose run --rm web bundle exec rake db:setup
$ docker-compose run --rm web bundle exec rake db:seed
```

Bring up the server:

```sh
$ docker-compose up
```

If you wish to start the server with `pry` breakpoints enabled, you should run the following command to bring up the server instead:

```sh
$ docker-compose run --rm --service-ports web
```

# Debug

## Docker Toolbox

If you run into error where it's having trouble connecting to the daemon, then you may be have load the environment variables again (`$ eval...`). 

If there's trouble with the connection, then you may have to run one of the following codes:
```sh
$ docker-machine restart dev
$ docker-machine start dev
```

If you're having trouble starting the local server through `docker-compose up` and see an error like `cunobo_web_1 exited with code 1`, then the last server might have ended abruptly and the tmp files may need to be cleared. Use the following steps in cunobo directory:
```sh
$ sudo rm -rf tmp
$ mkdir tmp
```
