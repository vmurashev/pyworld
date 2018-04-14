#include "../../cpython/pymod_shared.inc"

module_type = 'lib-shared'
module_name = 'pycurl'

build_list = [
  'docstrings.c',
  'easy.c',
  'module.c',
  'multi.c',
  'oscompat.c',
  'pythoncompat.c',
  'share.c',
  'stringcompat.c',
  'threadsupport.c',
]

export = ['initpycurl']

src_search_dir_list = [
  'src'
]

include_dir_list = [
  '${@project_root}/cpython/vendor/Include',
  '${@project_root}/openssl/include',
  '${@project_root}/curl/include',
]

lib_list = [
  '${@project_root}/cpython/build/core',
  '${@project_root}/curl',
  '${@project_root}/openssl/build/ssl_static',
  '${@project_root}/openssl/build/crypto_static',
  '${@project_root}/zlib',
]

PYCURL_VERSION = "7.43.1"

definitions_windows += ['PYCURL_VERSION={}'.format(PYCURL_VERSION)]
definitions_posix   += ['PYCURL_VERSION="{}"'.format(PYCURL_VERSION)]
definitions += ['NDEBUG', 'HAVE_CURL_OPENSSL', 'HAVE_CURL_SSL']

prebuilt_lib_list_windows = ['crypt32','ws2_32', 'advapi32', 'user32']
prebuilt_lib_list_linux = ['dl', 'pthread', 'rt']
