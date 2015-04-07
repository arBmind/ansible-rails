dresden-weekly.Rails
====================
[![Ansible Galaxy](https://img.shields.io/badge/Ansible%20Galaxy-dresden--weekly.Rails-blue.svg)](https://galaxy.ansible.com/list#/roles/2108)

Our think-tank for modules and playbooks that help to deploy Ruby on Rails applications

This repository contains many roles that you can glue together to represent your individual Rails deployment.

Requirements
------------

Ubuntu 12.04 (Precise) or Ubuntu 14.04 (Trusty)

Content Roles
-------------

Provisioning:

* **user/profile** store facts to .profile and .bashrc 
* [**postgresql**](postgresql) install a PostgreSQL 9.3 database
* **upstart/userjobs** enables Upstart userjobs
* [**ruby/rvm**](ruby/rvm) installs a specific Ruby version with rvm
* [**ruby/rbenv**](ruby/rbenv) installs a specific Ruby version with rbenv
* **ruby/postgresql** support for postgresql client gems
* **ruby/sqlite3** support for sqlite3 client gems
* **ruby/mysql** support for mysql client gems
* **rails/create-folders** prepares a folder for Rails releases
* [**rails/logrotate**](rails/logrotate) create logrotate configuration for Rails logs
* [**nginx/server**](nginx/server) install nginx webserver
* [**nginx/puma**](nginx/puma) prepare nginx for puma appserver
* [**nginx/webrick**](nginx/webrick) prepare nginx for webrick apperserver
* [**puma/upstart**](puma/upstart) install userjob for puma
* [**webrick/upstart**](webrick/upstart) install userjob for webrick
* [**apache/server**](apache/server) install and configure apache server
* [**apache/passenger**](apache/passenger) install and configure passenger for apache
* **firewalld** configure firewalld (for CentOS)
* **selinux** currently only enable/disable selinux on CentOS

Deployment:

* **rails/create-release** create a new release from a git repo
* **rails/use-vagrant** create the vagrant release from a vagrant share
* **rails/tasks/bundle** install all bundles gems
* **rails/tasks/migrate-database** run Rails database migrations
* **rails/tasks/compile-assets** create the precompiled assets
* [**rails/publish-assets**](rails/publish-assets) transfer compiled assets from app- to web-servers
* **rails/update-current** change the symlink for the current release
* **rails/cleanup-old-releases** only keep N last releases

Dependencies
------------

no other roles currently

You may want to use our [vagrant-ansible-remote](https://github.com/dresden-weekly/vagrant-ansible-remote) for testing and deploying

Example Playbook
----------------

### Github based single tier deployment

[dresden-weekly/ansible-rails-example@simple](https://github.com/dresden-weekly/ansible-rails-example/tree/simple)
* Git based deployment
* single tier
* PostgreSql database 
* Nginx Webserver
* Webrick as application server
* Support for Vagrant based development

[dresden-weekly/ansible-rails-example@threetier](https://github.com/dresden-weekly/ansible-rails-example/tree/threetier)
* like simple but for classic 3-tier deployment
  1. database
  1. rails application servers
  1. web-servers

[hicknhack-software/ansible-redmine-example](https://github.com/hicknhack-software/ansible-redmine-example)
* stable version based deployment
* single tier with Git and Subversion hosting
* MySql database
* Apache webserver
* Passenger as application server
* customized for Redmine

Changelog
---------

**0.2** (more features!) *planned*

* Features
  * [x] multiple machine deployment (see three tier example)
  * [x] skip deploy if nothing changed (using stable release names)
* Webserver
  * [x] Apache (see redmine example)
* Rails Application Server
  * [x] Passenger on Apache
* Database support
  * [x] MySql (see redmine example)
  * [x] Sqlite3 
* Ruby installation
  * [x] rbenv (contributed by @tnt)
* (Your pull requests)

**0.1** (first release) 09.01.2015

* Features
  * [x] Windows Vagrant support
  * [x] Simple Remote-Tool to trigger deployments
* Release Management
  * [x] Git based release management
  * [x] Vagrant shared folder based releases for development
* Webservers
  * [x] nginx
* Rails application servers
  * [x] puma
  * [x] webrick
* Database support
  * [x] PostgreSql
* Ruby installation
  * [x] RVM
* Configuration management
  * [x] Deployment User environment variables
* Linux distributions
  * [x] Ubuntu 12.04
  * [x] Ubuntu 14.04

Roadmap
-------

* Release Management
  * [ ] Download based releases
* Webserver
  * [ ] Passenger Standalone
* Rails Application Server
  * [ ] Passenger on NGINX
  * [ ] Thin
  * [ ] Unicorn
* Ruby installation
  * [ ] Package based
* Configuration management
  * [ ] Generator for secrets.yml
  * [ ] Generator for database.yml
* Linux distribution
  * [ ] CentOS

License
-------

The MIT License (MIT)

Copyright (c) 2015 dresden-weekly

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
