Installation
========================

Ensure you have the following tools installed on your computer:

 - Vagrant (http://vagrantup.com)
 - VirtualBox (http://www.virtualbox.org)

# Description
This configuration includes following software:

* PHP 5.5
* MySQL
* GIT
* Apache
* Vim
* Curl
* Composer
* Elastic Search
* RabbitMQ
* Node.js
* Bower, Grunt, Gulp, Protractor, Cucumber.js
* Sass and Compass

# Usage

First you need to create vagrant VM

```
$ cd vagrant
$ vagrant up
```

While waiting for Vagrant to start up, you should add entries into hosts file on the host machine.

```
10.0.0.100      znieh.dev
10.0.0.100      api.znieh.dev
```

Windows users could look here:
```
c:\windows\system32\drivers\etc\hosts
```

Linux and Mac OSX users could look here:
```
/etc/hosts.
```

From now you should be able to access the project at [http://znieh.dev/](http://znieh.dev/) and [http://api.znieh.dev/](http://api.znieh.dev/)

To access VM simply run:

```
vagrant ssh
cd /var/www/znieh
```

# Troubleshooting

## Symfony2

Using Symfony2 inside Vagrant can be slow due to synchronisation delay incurred by NFS. To avoid this, both locations have been moved to a shared memory segment under ``/tmp``.

To view the application logs, run the following commands:

```bash
$ tail -f /tmp/logs/dev.log
```

## Using Windows

		mkdir ~/node_modules
		ln -s ~/node_modules /var/www/znieh/node_modules
