require 'rails'
require 'headliner'

module Headliner
  class Railtie < Rails::Railtie
      initializer "headliner/action_view" do
      	 ::ActionView::Base.send(:include, Headliner::ActionView)
      end
  end
end
