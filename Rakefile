require 'bundler/gem_tasks'
require 'rake/clean'
require 'fileutils'
require 'yard'
require 'rake'

desc "Run the tests"
task :spec do
  sh "bacon spec/*_spec.rb"
end

YARD::Rake::YardocTask.new

task :test => :spec
task :default => :test
