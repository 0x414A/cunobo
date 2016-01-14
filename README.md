# Setup

Clone the repo:

```sh
$ git clone git@github.com:astrohckr/cunobo.git
```

Go into the cloned repo:

```sh
$ cd cunobo
```

May need to load the environment variables for docker:
```sh
$ eval $(docker-machine env dev)
```
Then build the image:

```sh
$ docker-compose build
```

Install gems:

```sh
$ docker-compose run web bundle install
```

Install node modules:

```sh
$ docker-compose run web npm install
```

Set up the database:

```sh
$ docker-compose run web bundle rake db:setup
```

Bring up the server:

```sh
$ docker-compose up
```
