class ApplicationController < ActionController::Base
    config.autoload_paths = config.autoload_paths + %w(#{config.root}/app/models/ckeditor)
end
