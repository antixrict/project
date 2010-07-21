require 'rubygems'
require 'erb'
require 'sinatra'
#require 'aws/s3'
require 'yaml'
require 'open-uri'


$LOAD_PATH.push(File.dirname(__FILE__))
require 'app/controllers/home_controller.rb'
#require 'config/environment'
#set :views, File.dirname(__FILE__) + '/app/views'
