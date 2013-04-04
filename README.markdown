# Vagrant Example Box

## Overview
This is an example Vagrant configuration that will:

1. Run `apt-get update` once every 30 days
2. Install Ruby 1.9.3@-p392 along with a couple gems
3. Install and configure PostgreSQL 9.1 via a custom puppet module

The box is is running Ubuntu 12.04

With this setup, you should be able to immediately start building Ruby apps that use PostgreSQL

## Usage
	git clone git://github.com/davekerber/vagrant-example.git
	cd vagrant-example
	vagrant up




