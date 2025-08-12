# frozen_string_literal: true

require 'bundler/gem_tasks'
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec)

require 'rubocop/rake_task'

RuboCop::RakeTask.new

require 'yard'

YARD::Rake::YardocTask.new

CLOBBER.include(
  # RSpec generated files
  File.join('spec', 'reports'),
  File.join('.rspec_status'),
  # YARD generated files
  File.join('.yardoc'),
  File.join('doc')
)

task default: %i[spec rubocop yard]
