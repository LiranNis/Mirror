# Mirror
Allows you to mirror:
- Python
- Ruby
- NuGet

Doesn't support:
- Maven - Mirror maven repository is not allowed.

# Uploading to Nexus
## Python
Install twine package  
```
pip install twine
```

To upload all the packages, cd to the packages folder inside bandersnatch sync folder and run:
```
twine upload --repository-url http://centosnexus:8081/repository/python-hosted/ */*/*/*
```  
To upload specific package use:
```
twine upload --repository-url http://centosnexus:8081/repository/python-hosted/ <Package .whl/.exe/etc. location>
```
Todo:
- [ ] Write script to upload all bandersnatch folder hierarchy
## Ruby
In order to push ruby gems, nexus gem need to be installed
```
[root@localhost opt]# gem install nexus
Fetching: nexus-1.4.0.gem (100%)
Successfully installed nexus-1.4.0
Parsing documentation for nexus-1.4.0
Installing ri documentation for nexus-1.4.0
1 gem installed
```

After installing login using `gem nexus`
```
[root@localhost opt]# gem nexus
/usr/share/gems/gems/psych-2.0.0/lib/psych.rb:98: warning: already initialized constant Psych::VERSION
/usr/share/ruby/psych.rb:98: warning: previous definition of VERSION was here
/usr/share/gems/gems/psych-2.0.0/lib/psych.rb:101: warning: already initialized constant Psych::LIBYAML_VERSION
/usr/share/ruby/psych.rb:101: warning: previous definition of LIBYAML_VERSION was here
Enter the URL of the rubygems repository on a Nexus server
URL:   http://centosnexus:8081/repository/rubygems-hosted/
The Nexus URL has been stored in /root/.gem/nexus
Enter your Nexus credentials
Username:   admin
Password:
Your Nexus credentials have been stored in /root/.gem/nexus
ERROR:  While executing gem ... (Gem::CommandLineError)
    Please specify at least one gem name (e.g. gem build GEMNAME)
[root@localhost opt]#
```

Change dir to the gems folder and run
```
gem nexus *
```
**Note** if redeploy is disabled this command will fail if package already exists.

Todo:
- [ ] Find a way to avoid redeploy without error
- [ ] Figure what is wrong with the package 1234567890_ (error 500 filename and gemname from gem do not match)

## Nuget
After downloading with the script, you can upload the files to the nuget-hosted repository using:  
```
nuget push *.nupkg -Source http://<servername>:8081/repository/nuget-hosted/
```
Replace with the correct repository url (https).  
