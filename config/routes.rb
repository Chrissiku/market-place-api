Rails.application.routes.draw do
  # Api definition
  namespaces :api, defaults: { format: :json } do
    # Our resources here
  end
end
