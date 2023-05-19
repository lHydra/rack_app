require './config/rack_app'

RackApp.application.initialize!
run RackApp.application
