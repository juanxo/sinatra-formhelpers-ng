require 'bundler/gem_tasks'
require 'rake/clean'
require 'rdoc/task'
require 'fileutils'
require 'rake'

desc "Run the tests"
task :spec do
  sh "bacon spec/*_spec.rb"
end

Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "Sinatra::FormHelpers #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

task :test => :spec
task :default => :test
