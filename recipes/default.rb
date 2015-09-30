directory "/usr/share/apt_strict" do
    owner "root"
    group "root"
    mode '0755'
    action :create
end

cookbook_file "/usr/share/apt_strict/executable.py" do
    source "executable.py"
    owner "root"
    group "root"
    mode '0755'
    action :create_if_missing
end

cookbook_file "/usr/share/apt_strict/apt_strict.py" do
    source "apt_strict.py"
    owner "root"
    group "root"
    mode '0644'
    action :create_if_missing
end
