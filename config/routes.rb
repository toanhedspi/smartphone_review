Rails.application.routes.draw do
  get '/', to: 'page#render_page'
end
