# frozen_string_literal: true

RackApp.application.routes.draw do
  root to: HomeController.action(:about)

  get 'goods', to: GoodsController.action(:index)
end
