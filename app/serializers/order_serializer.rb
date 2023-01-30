class OrderSerializer
  include JSONAPI::Serializer
  has_many :products
end
