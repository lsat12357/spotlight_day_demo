require 'oembed'

OEmbed::Providers.register_all

embed_provider = OEmbed::Provider.new("http://localhost:3000/oembed/?format=json")
embed_provider << "http://localhost:3000/resource/*"
OEmbed::Providers.register(embed_provider)