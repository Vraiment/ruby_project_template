# RubyProjectTemplate

`RubyProjectTemplate` is a Git repository created from my frustration with the default Bundler template, designed to enable a quick and easy way to create new Ruby Gems with "good practices" built in. These good practices are listed as follows:

- Gems are local to your project.
- RuboCop has no customization, you take the defaults from the tool.
- RuboCop plugins for RSpec and Rake.
- Binstubs generated for easy interaction.
- Boilerplate RuboCop complaint.

## Usage

Run the following snippet, where `GEM_NAME` is the name of your Gem:

```shell
git clone https://github.com/Vraiment/ruby_project_template "$GEM_NAME" --depth 1 && \
    rm -rf "$GEM_FILE"/ruby_project_template.gemspec "$GEM_NAME"/.git "$GEM_NAME"/Gemfile.lock "$GEM_NAME"/README.md "$GEM_NAME"/ruby_project_template.gemspec && \
    mv "$GEM_NAME"/LICENSE "$GEM_NAME"/LICENSE.template && \
    git -C "$GEM_NAME" init && \
    git -C "$GEM_NAME" add . && \
    git -C "$GEM_NAME" commit --message 'Boilerplate'
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/Vraiment/ruby_project_template.
