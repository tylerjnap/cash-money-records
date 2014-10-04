# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
Rails.application.config.assets.precompile += %w( p5.min.js )
Rails.application.config.assets.precompile += %w( p5.gibber.min.js )
Rails.application.config.assets.precompile += %w( sketch.js )
Rails.application.config.assets.precompile += %w( examples.css )
Rails.application.config.assets.precompile += %w( monokai_sublime.css )
Rails.application.config.assets.precompile += %w( highlight.pack.js )
Rails.application.config.assets.precompile += %w( style.css )
