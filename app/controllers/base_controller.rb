# frozen_string_literal: true

class BaseController < ActionController::Metal
  include AbstractController::Rendering
  include ActionView::Layouts

  append_view_path './app/views'
end
