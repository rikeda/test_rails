# A sample Guardfile
# More info at https://github.com/guard/guard#readme

# guard 'spork', :cucumber_env => { 'RAILS_ENV' => 'test' }, :rspec_env => { 'RAILS_ENV' => 'test' } do
#   watch('config/application.rb')
#   watch('config/environment.rb')
#   watch(%r{^config/environments/.+\.rb$})
#   watch(%r{^config/initializers/.+\.rb$})
#   watch('Gemfile')
#   watch('Gemfile.lock')
#   watch('spec/spec_helper.rb') { :rspec }
#   watch('test/test_helper.rb') { :test_unit }
#   watch(%r{features/support/}) { :cucumber }
# end

# coding: utf-8

group 'test' do
  guard 'spork', :rspec_env => { 'RAILS_ENV' => 'test' }, cucumber: false, test_unit: false do
    watch('config/application.rb')
    watch('config/environment.rb')
    watch('config/routes.rb')
    watch(%r{^config/environments/.+\.rb$})
    watch(%r{^config/initializers/.+\.rb$})
    watch('Gemfile')
    watch('Gemfile.lock')
    watch(%r{^lib/*/.+\.rb$})
    watch('spec/spec_heleper.rb')
    watch(%r{^spec/support/.+\.rb$})
  end

  #guard 'rspec', version: 2, cli: " --drb --color --format Fuubar --profile", keep_failed: false, all_on_start: false, all_after_pass: false do
  guard 'rspec', version: 2, cli: " --drb --color ", keep_failed: false, all_on_start: false, all_after_pass: false do
    watch(%r{^spec/.+_spec\.rb$})
    watch(%r{^lib/(.+)\.rb$}) { |m| "spec/lib/#{m[1]}_spec.rb" }

    # Rails example
    watch(%r{^app/(.+)\.rb$}) { |m| "spec/#{m[1]}_spec.rb" }
    watch(%r{^app/(.*)(\.erb|\.haml)$}) { |m| "spec/#{m[1]}#{m[2]}_spec.rb" }
    watch(%r{^app/controllers/(.+)_(controller)\.rb$}) { |m| ["spec/routing/#{m[1]}_routing_spec.rb", "spec/#{m[2]}s/#{m[1]}_#{m[2]}_spec.rb", "spec/acceptance/#{m[1]}_spec.rb"] }
    watch(%r{^spec/support/(.+)\.rb$}) { "spec" }
    watch('config/routes.rb') { "spec/routing" }
    watch('app/controllers/application_controller.rb') { "spec/controllers" }
    # Capybara request specs
    # watch(%r{^app/views/(.+)/.*\.(erb|haml)$}) { |m| "spec/requests/#{m[1]}_spec.rb" }
  end
end