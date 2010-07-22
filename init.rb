require 'rubygems'
require 'erb'
require 'sinatra'
require 'yaml'
require 'open-uri'
require 'nokogiri'


$LOAD_PATH.push(File.dirname(__FILE__))
require 'app/controllers/home_controller'
require 'app/models/smoke_dates'


#set :public, File.dirname(__FILE__) + '/static'