Rails.application.routes.draw do
  # Api definition
  namespaces :api, defaults: { format: :json } do
    namespaces :v1 do
      # Our resources here
    end
  end
end
