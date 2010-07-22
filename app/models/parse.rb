#! /usr/bin/env ruby
require 'rubygems'
require 'time'
require 'date'
require 'open-uri'
require 'nokogiri'
#require 'ordered_hash'

#myhash = OrderedHash.new;

def format_datetime(datetime)
    return datetime if !datetime.respond_to?(:strftime)
    datetime = @user.tz.utc_to_local(datetime) if @user
    datetime.strftime("%d-%m-%Y")
end

url = 'http://testing.gipoo.net/html/unittest/'

doc = Nokogiri::HTML(open("http://testing.gipoo.net/html/unittest/", 
      :http_basic_authentication => ["pinkis", "pinkis"])) #{ |h|
#print doc 
links = doc.css('a')
hrefs = links.map {|link| link.attribute('href').to_s}.uniq.sort.delete_if { |href| href.empty? }
#print hrefs
#hrefs.map {|it| Time.parse(it) }
#hrefs.scan(/\d+/).map(&:to_i).each_slice(4).map{|*x,y| [Date.UTC(*x), y]}	
#hrefs.strftime("%d-%m-%Y")


hash = {}
IO.readlines('myfile.txt').each_with_index do |line, index|
  hash[index] = line
end

raise hash.inspect

#puts real.sort
#file3 = File.new("myfile2.txt", "w")
#file2 = File.new("myfile2.txt", "w")
#file = File.new("myfile.txt", "w")
#file.puts hrefs
#file.close
#f = File.open("myfile.txt")
#begin
#    while (line = f.readline)
#        line.chomp
#        file2.puts line if line =~ /^\d/
#    end
#rescue EOFError
#    f.close
#end
#tt = File.open("myfile3.txt") { |f|
#    f.readlines.each { |d|
#     print d
#     counter = 0
#     myhash[#{counter}] = d
#     counter +=1
#     }
#   p myhash
#   }

  


#File.open("myfile.txt", "r") fo |f|
#  lines = f.readlines 
#  lines.each do |mydata|
    




