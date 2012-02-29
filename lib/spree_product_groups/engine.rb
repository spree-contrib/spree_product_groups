module SpreeProductGroups
  class Engine < Rails::Engine
    engine_name 'spree_product_groups'

    config.autoload_paths += %W(#{config.root}/lib)

    # use rspec for tests
    config.generators do |g|
      g.test_framework :rspec
    end

    def self.activate
      Dir.glob(File.join(File.dirname(__FILE__), "../../app/**/*_decorator*.rb")) do |c|
        Rails.configuration.cache_classes ? require(c) : load(c)
      end
    end

    config.to_prepare &method(:activate).to_proc

    initializer "spree.product_groups.environment", :after => 'spree.environment' do |app|
      Spree::Config.searcher_class = Spree::Core::Search::ProductGroupBase
    end

  end
end
