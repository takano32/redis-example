#! /usr/bin/env node_modules/coffee-script/bin/coffee
# author: takano32 <tak@no32 dot tk>
# vim: noet sts=4:ts=4:sw=4

coffee = require 'coffee-script'
redis = require 'redis'


client = redis.createClient()

date = new Date()
yy = date.getYear()
mm = date.getMonth() + 1
dd = date.getDate()
if yy < 2000
	yy += 1900
if mm < 10
	mm = "0" + mm
if dd < 10
	dd = "0" + dd
fmt_date = "#{yy}-#{mm}-#{dd}"

hh = date.getHours()
mm = date.getMinutes()
ss = date.getSeconds()
if hh < 10
	hh = "0" + hh
if mm < 10
	mm = "0" + mm
if ss < 10
	ss = "0" + ss
fmt_time = "#{hh}:#{mm}:#{ss}"

console.log "#{fmt_date} #{fmt_time}"







