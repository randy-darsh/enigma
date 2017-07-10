require 'rake'
require 'rake/testtask'

Rake::TestTask.new do |t|
  t.libs << 'test'
  t.test_files = FileList['test/key_generator_test.rb',
                          'test/offset_calculator_test.rb']
  t.verbose = false
end

task default: :test
