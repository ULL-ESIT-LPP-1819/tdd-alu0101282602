require "bundler/gem_tasks"
require "rspec/core/rake_task"
require "yard"

RSpec::Core::RakeTask.new(:spec)

task :default => :spec

desc "Ejecutar las espectativas de la clase Point"
task :spec do
	sh "rspec -I. spec/prct06_spec.rb"
end

desc "Ejecutar con documentacion"
task :doc do
	sh "rspec -I. spec/prct06_spec.rb --format documentation"
end

YARD::Rake::YardocTask.new do |t|
	t.files   = ['lib/**/*.rb']   # optional
	t.options = ['--any', '--extra', '--opts'] # optional
	t.stats_options = ['--list-undoc']         # optional
end
