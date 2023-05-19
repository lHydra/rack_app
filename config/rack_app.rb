# frozen_string_literal: true

require 'action_dispatch'
require 'action_controller'

class RackApp
  LOAD_PATHS = %w(./app ./config)

  class << self
    def application
      @application ||= RackApp.new
    end
  end

  def initialize!
    LOAD_PATHS.each do |base|
      Dir[File.join(base, '**', '*.rb')].each { |file| require(file) }
    end
  end

  def routes
    @routes ||= ActionDispatch::Routing::RouteSet.new
  end

  def app
    @app ||= routes
  end

  def call(env)
    app.call(env)
  end
end
