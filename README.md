# How to Setup

## Clone the Repository

First, clone this repo locally:

	git clone git@github.com:cubchoo/answerqueue.git

## Installing `docker` and `docker-compose`

Then follow the instructions for your operating system below to set up `docker` and `docker-compose`:

 - [Install docker](https://docs.docker.com/installation/)
 - [Install docker-compose](https://docs.docker.com/compose/install/)

## Setup

### OS X:

First, create a `boot2docker` VM:

	boot2docker init

If you get an error like this:

```
error in run: Failed to get latest release: Error getting releases: API rate limit exceeded for 173.15.115.65. (But here's the good news: Authenticated requests get a higher rate limit. Check out the documentation for more details.)
```

Run this to manually download the `boot2docker` ISO:

	boot2docker --iso-url=https://github.com/boot2docker/boot2docker/releases/download/v1.7.1/boot2docker.iso download

Then, start the VM:

	boot2docker up
	$(boot2docker shellinit)"

### All platforms:

Then `cd` into the `answerqueue` folder:

	cd /path/to/answerqueue

Finally, build the docker image:

	docker-compose build

## Set up Rails

Now you can finally set up the Rails instance!

From the `answerqueue` folder:

	docker-compose run web rake db:setup

## Running the app

After you have completed the above steps, you can then simply run:

	docker-compose up

This will start up both the `rails` app and run a `postgresql` instance.

## Connecting to the web app

### OS X

You will need to find out the `docker` IP first by running the command below:

	boot2docker ip

This will output something like this:

    192.168.1.20

You will want to open that as the URL, with port `3000` appended, e.g.:

	http://192.168.1.20:3000

You should then see the rails app home page.

### Linux

Just go to [127.0.0.1:3000](http://127.0.0.1:3000).

