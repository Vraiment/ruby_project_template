# frozen_string_literal: true

require_relative 'lib/ruby_project_template/version'

Gem::Specification.new do |spec|
  spec.name = 'ruby_project_template'
  spec.version = RubyProjectTemplate::VERSION
  spec.authors = ['Vraiment']
  spec.email = ['jemc44@gmail.com']

  spec.summary = 'Gem to function as a template with best practices baked in to build Ruby Gems.'
  spec.description = <<~DESCRIPTION
    This Gem is supposed to be a template with several good practices built in so
    whenever you need to create a new Gem you can just clone the repository and
    change some files as needed, here's a list of what's built in:

    - Dependencies are local to your Gem to prevent system wide clashes
    - Rake
    - RuboCop
    - RSpec
  DESCRIPTION
  spec.homepage = 'https://github.com/Vraiment/ruby_project_template'
  spec.required_ruby_version = '>= 3.2.0'

  spec.metadata['allowed_push_host'] = '' # Update if necessary

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/Vraiment/ruby_project_template'
  spec.metadata['rubygems_mfa_required'] = 'true'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) || f.start_with?(*%w[bin/ test/ spec/ features/ .git .circleci appveyor])
    end
  end
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
end
