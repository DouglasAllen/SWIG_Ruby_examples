require 'mkmf'
extension_name = 'example'
system 'swig2.0 -c++ -ruby example.i'
dir_config(extension_name)
create_makefile(extension_name)
