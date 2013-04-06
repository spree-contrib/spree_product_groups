# valid factory tests
RSpec::Matchers.define :have_valid_factory do |factory_name|
  match do |model|
    create(factory_name).new_record?.should be_false
  end
end
