CarrierWave.configure do |config|
  config.fog_credentials = {
    provider:               'AWS',
    aws_access_key_id:      'AKIAJVDRBSK46UMUVXPA',
    aws_secret_access_key:  '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',
    region:                 sa-east-1 
  }
  config.fog_directory  = 'wpb-pgh-bloccit-development'
  config.fog_public     = true
end
 
# Ref:
# https://support.cloud.engineyard.com/entries/20996881-Use-CarrierWave-and-Optionally-Fog-to-Upload-and-Store-Files#update3
# http://stackoverflow.com/questions/7946819/carrierwave-and-amazon-s3