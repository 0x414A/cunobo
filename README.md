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
$ docker-compose run web bundle exec rake db:setup
```

Bring up the server:

```sh
$ docker-compose up
```

# Debug
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









