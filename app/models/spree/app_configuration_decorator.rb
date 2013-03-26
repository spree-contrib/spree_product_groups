Spree::AppConfiguration.class_eval do
  preference :admin_pgroup_per_page, :integer, :default => 12
end
