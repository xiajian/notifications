require 'rails/generators'
module Notifications
  module Generators
    class I18nGenerator < Rails::Generators::Base
      desc "Create Notifications's default I18n files"
      source_root File.expand_path("../../../../", __FILE__)

      def add_locales
        %w(en.yml zh-CN.yml).each do |fname|
          path = "#{Rails.root}/config/locales/notifications.#{fname}"
          if File.exists?(path)
            puts "Skipping config/locales/notifications.#{fname} creation, as file already exists!"
          else
            puts "Adding locale (config/locales/notifications.#{fname})..."
            template "config/locales/notifications.#{fname}", path
          end
        end
      end

    end
  end
end
