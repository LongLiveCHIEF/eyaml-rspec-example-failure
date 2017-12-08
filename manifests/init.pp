# my_profile
#
# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include my_profile
class my_profile (
  $service_enable,
  $service_name,
  $file_content,
  $sector_properties = {},
){
  service {'sector':
    name => $service_name,
    enable => $service_enable
  }

  file {'/var/lib/sector.config':
    ensure  => 'present',
    content => $file_content
  }
}
