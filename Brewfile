# @see https://github.com/Homebrew/homebrew-bundle

###
# Application dev dependencies.
#
# Install with:
#   `brew bundle install`
##

is_ci = ENV.fetch('CI', 'false') != 'true'

# Only install development tools in non CI mode
if is_ci
  brew 'direnv'
  brew 'pre-commit'
end

# pre-commit requirements
brew 'markdownlint-cli'
brew 'yamllint'
