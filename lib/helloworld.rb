require "helloworld/ffi"
require "helloworld/version"

module Helloworld
  class Error < StandardError; end

  def self.say_hello
    FFI.hello_world
  end
end
