require 'rake'
require 'rake/testtask'

desc 'Default: run unit tests.'
task :default => :test

desc 'Test the pdf_wrapper_extensions plugin.'
Rake::TestTask.new(:test) do |t|
  t.libs << 'lib'
  t.pattern = 'test/**/*_test.rb'
  t.verbose = true
end

begin
  require 'jeweler'
  Jeweler::Tasks.new do |s|
    s.name = "erubis_template_handler"
    s.summary = "Rails 2.3 / Edge template handler for erubis ( http://www.kuwata-lab.com/erubis/ )"
    s.email = "lourens@methodmissing.com"
    s.homepage = "http://github.com/methodmissing/erubis_template_handler"
    s.description = "Rails 2.3 / Edge template handler for erubis ( http://www.kuwata-lab.com/erubis/ )"
    s.authors = ["Lourens Naudé"]
  end
rescue LoadError
  puts "Jeweler not available. Install it with: sudo gem install technicalpickles-jeweler -s http://gems.github.com"
end