Rails.application.routes.draw do
  namespace 'paises' do
    namespace 'v1' do
      resources :paises
      
    end
  end
end
