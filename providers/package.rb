require 'chef/provider/package/apt'
require 'chef/mixin/command'
require 'chef/resource/package'

class Chef
  class Provider
    class Package
      class AptStrict < ::Chef::Provider::Package::Apt

        provides :package, platform_family: "debian"
        provides :apt_package, os: "linux"

        def install_package(name, version)
          name_array = [ name ].flatten
          version_array = [ version ].flatten
          package_name = name_array.zip(version_array).map do |n, v|
            is_virtual_package[n] ? n : "#{n}=#{v}"
          end.join(' ')
          run_noninteractive("/usr/share/apt_strict/executable.py install -q -y#{expand_options(default_release_options)}#{expand_options(@new_resource.options)} #{package_name}")
        end

      end
    end
  end
end
