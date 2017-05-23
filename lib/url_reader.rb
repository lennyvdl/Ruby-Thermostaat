class url_reader
  require 'openssl'
  OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE
  require "open-uri"

  def open
    url = (URI.parse("https://labict.be/software-engineering/temperature/api/temperature/fake").read).to_f
    puts url
  end


end
