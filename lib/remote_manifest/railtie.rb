require 'sprockets/remote_manifest'

module RemoteManifest
  class Railtie < ::Rails::Railtie
    config.assets.remote_manifest = nil

    config.to_prepare do
      config = Rails.application.config.assets
      RemoteManifest::Railtie.setup! config.remote_manifest.present?
    end

    def self.setup!
      ::Sprockets::Railtie.define_singleton_method :build_manifest do |app|
        assets = app.config.assets

        Sprockets::RemoteManifest.new app.assets, assets.remote_manifest
      end
    end
  end
end
