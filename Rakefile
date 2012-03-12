#!/usr/bin/env rake
require "bundler/gem_tasks"

require "bundler/setup" # use g
require "minitest/unit"

desc 'Run all tests'
task :test do
  $LOAD_PATH.unshift(File.expand_path(File.dirname(__FILE__) + '/spec'))
  $LOAD_PATH.unshift(File.expand_path(File.dirname(__FILE__)))

  MiniTest::Unit.autorun

  test_files = Dir['spec/**/*_spec.rb']
  test_files.each { |f| require f }
end

task :default => :test
