# frozen_string_literal: true

require 'bundler/gem_tasks'
require 'rspec/core/rake_task'

desc 'Run sorbet type checks'
task :sorbet do
  require 'English'

  puts 'Performing type checking...'

  exit $CHILD_STATUS&.exitstatus || 1 unless system('srb')
end

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

task default: %i[sorbet spec rubocop yard]
