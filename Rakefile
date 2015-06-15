require "bundler/gem_tasks"

require 'rake/testtask'

Rake::TestTask.new do |t|
  t.libs << 'lib/clinic_finder'
  t.test_files = FileList['test/test_*.rb']
  t.verbose = true
end

task :default => :test
