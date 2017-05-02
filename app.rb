require_relative "temperature"

require 'openssl'
OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE
require "open-uri"

foo = Temperature.new
foo.clitemp(ARGV[0].to_i,ARGV[1].to_i,ARGV[2])
foo.open
