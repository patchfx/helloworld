require 'ffi'

module Helloworld
  class FFI
    extend ::FFI::Library
    lib_name = "helloworld.#{::FFI::Platform::LIBSUFFIX}"
    ffi_lib File.expand_path(lib_name, __dir__)
    attach_function :hello_world, [], :void
  end
end
