Apibugfreak
===========
[![Build Status](https://travis-ci.org/Agilefreaks/apibugfreak.png?branch=staging)](https://travis-ci.org/Agilefreaks/apibugfreak)
[![Code Climate](https://codeclimate.com/github/Agilefreaks/apibugfreak.png)](https://codeclimate.com/github/Agilefreaks/apibugfreak)

Bug tracking server

Overview
========
A bare bones bug tracking framework that you can use and deploy your self, it's main aim is to integrate seemesly 
with your application and centralize issues in a main repository

It's composed out of 3 parts so far:
- this project, api and web application
- [Windows Client](https://github.com/balauru/winbugfreak)
- [Android Client](https://github.com/Agilefreaks/droidbugfreak)


Techinal Overview
=================

This project uses the following frameworks
- rails 4 (web)
- grape (api)
- mongoid (for storage)

Sample request
==============

Creating an error
```
curl -d message=message -d source=source -d stackTrace=stackTrace 'http://localhost:3000/v1/api/errors' -H Content-Type:application/x-www-form-urlencoded -H "Token: 123token" -H "Api-Key: 123ApiKey" -v
```
