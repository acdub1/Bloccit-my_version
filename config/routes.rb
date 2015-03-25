Rails.application.routes.draw do
  get 'welcome/index'

  get 'welcome/about'

     root to: 'welcome#index'

  get 'welcome/contact'

     root to: 'welcome#contact'
end
