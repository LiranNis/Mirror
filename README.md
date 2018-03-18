# Mirror
Allows you to mirror:
- Python
- Ruby
- NuGet

Doesn't support:
- Maven - Mirror maven repository is not allowed.

# Uploading to Nexus
## Python

## Ruby

## Nuget
After downloading with the script, you can upload the files to the nuget-hosted repository using:  
`nuget push *.nupkg -Source http://<servername>:8081/repository/nuget-hosted/`  
Replace with the correct repository url (https).  
