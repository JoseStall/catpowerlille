require 'dotenv'
<<<<<<< HEAD
require 'fog/aws'
=======
require 'fog-aws'
require 'carrierwave/storage/abstract'
require 'carrierwave/storage/file'
require 'carrierwave/storage/fog'

>>>>>>> 5f1d5ea03261b88fcb680dd3eaeb5f6b50624584
Dotenv.load

CarrierWave.configure do |config|
  if Rails.env.production?
    config.storage :fog
    config.fog_provider = 'fog/aws'
    config.fog_credentials = {
      :provider => 'AWS',
      :aws_access_key_id => ENV['S3_ACCESS_KEY'],
      :aws_secret_access_key => ENV['S3_SECRET_KEY']
    }
  else
    config.storage :file
    config.enable_processing = false if Rails.env.test?
  end
end