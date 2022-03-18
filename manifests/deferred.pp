# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include tool_box::deferred
class tool_box::deferred {

  $data = Deferred('webapp::mydata', ['centos'])

  file { '/tmp/datafile':
    ensure  => file,
    content => $data,
  }
}
