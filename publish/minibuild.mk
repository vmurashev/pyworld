#include "@/cpython/publish/bundle/bundled_python.inc"

module_type = 'composite'
module_name = 'bundled_python_world'

composite_spec += [
  ['${@project_root}/cpython/build/stdlib', PYCORE_PROPERTIES],
  ['../pycurl', PYMOD_PROPERTIES_SITE],
]
