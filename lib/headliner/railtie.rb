require 'rails'
require 'headliner'

module Headliner
  class Railtie < Rails::Railtie
      config.before_configuration do
      	 ::ActionView::Base.send(:include, Headliner::ActionView)
      end
  end
end
