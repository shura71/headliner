require 'rake'
require 'rdoc/task'
require File.join(File.dirname(__FILE__), 'lib', 'headliner')

require 'rspec/core'
require 'rspec/core/rake_task'

desc 'Default: run unit tests.'
task :default => :spec

desc 'Test plugin'
RSpec::Core::RakeTask.new(:spec) do |spec|
  spec.pattern = FileList['spec/*_spec.rb']
end 

Rake::RDocTask.new(:rdoc) do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title    = 'Headliner'
  rdoc.options << '--line-numbers' << '--inline-source'
  rdoc.rdoc_files.include('README')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gemspec|
    gemspec.name = "headliner"
    gemspec.version = Headliner::VERSION
    gemspec.summary = "Assign and format page titles from your views."
    gemspec.description = "Assign and format page titles from your views"
    gemspec.email = "shura.71@gmail.com"
    gemspec.homepage = "http://github.com/shura71/headliner"
    gemspec.authors = ["Patrick Crowley","Alexander Shcherban"]
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler not available. Install it with: sudo gem install jeweler -s http://gemcutter.org"
end