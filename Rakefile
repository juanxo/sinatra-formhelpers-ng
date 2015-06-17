require 'bundler/gem_tasks'
require 'rake/clean'
require 'fileutils'
require 'rake'

begin
  require 'yard'
  YARD::Rake::YardocTask.new
rescue LoadError
end

begin
  require 'rspec/core/rake_task'
  RSpec::Core::RakeTask.new(:spec)
rescue LoadError
end

task :test => :spec
task :default => :test
