require "bundler/gem_tasks"
require "rspec/core/rake_task"

RSpec::Core::RakeTask.new(:spec)

task :rust_build do
  `cargo rustc --release`
  `mv -f ./target/release/libhelloworld.so ./lib/helloworld/helloworld.so`
end

task :build => :rust_build
task :default => :build
