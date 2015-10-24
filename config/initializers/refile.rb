aws = {
    access_key_id: 'AKIAIBK5EUE6XE56CBZQ',
    secret_access_key: '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',
    region: 'us-east-1',
    bucket: 'juswee-development'
}
Refile.cache = Refile::S3.new(prefix: 'cache', **aws)
Refile.store = Refile::S3.new(prefix: 'store', **aws)

Refile.cdn_host = 'http://localhost:3000'