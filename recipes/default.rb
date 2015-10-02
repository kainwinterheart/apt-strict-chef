directory "/usr/share/apt_strict" do
    owner "root"
    group "root"
    mode '0755'
    action :nothing
end.run_action( :create )

cookbook_file "/usr/share/apt_strict/executable.py" do
    source "executable.py"
    owner "root"
    group "root"
    mode '0755'
    action :nothing
end.run_action( :create_if_missing )

cookbook_file "/usr/share/apt_strict/apt_strict.py" do
    source "apt_strict.py"
    owner "root"
    group "root"
    mode '0644'
    action :nothing
end.run_action( :create_if_missing )
