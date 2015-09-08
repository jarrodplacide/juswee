CarrierWave.configure do |config|
  config.fog_credentials = {
      provider: 'AWS',
      aws_access_key_id: 'AKIAJFQWHZXAZIWDA5TQ',
      aws_secret_access_key: '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',
      region: 'us-east-1',
      host: 's3.amazonaws.com',
      endpoint: 'https://s3.amazonaws.com'
  }
  config.fog_directory = 'juswee'
end