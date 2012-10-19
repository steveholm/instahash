require "open-uri"
require "openssl"

class ProfileController < ApplicationController
  def myphotos
    resource_url = "https://api.instagram.com/v1/users/803369/media/recent?access_token=803369.1fb234f.bc1ab85ca8fe4a45823f669a0f7abb24&count=500"
    @response = open(resource_url, :ssl_verify_mode => OpenSSL::SSL::VERIFY_NONE).read
    @get_photos = JSON.parse(@response)
    @photos = @get_photos['data']
  end
end
