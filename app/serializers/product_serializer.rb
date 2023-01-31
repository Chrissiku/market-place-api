class ProductSerializer
  include JSONAPI::Serializer
  attributes :title, :price, :published
  belongs_to :user
  # cache_options enabled: true, cache_length: 12.hours
  cache_options store: Rails.cache, namespace: 'jsonapi-serializer', expires_in: 12.hours
end
