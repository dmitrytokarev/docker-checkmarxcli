# docker-checkmarxcli

Builds Docker image which invokes security scripts.

### Build your own image:

 docker build -t <org>/<repo>:<tag> .


### Docker Usage:

 `docker run -it -s <cmarxDNS> -u <cmarxuser> -p "${{CMPASSWORD}}" -n "${{PROJECTNAME}}" -l GIT -r "${{GITURL}}" -b "refs/heads/${{CF_BRANCH}}" sctechdev/docker-checkmarxcli:latest checkmarx.py`


### Usage in codefresh
 All ${{var}} variables must be put into Codefresh Build Parameters codefresh.yml
 
 ```
 checkmarx_scan:
   title: static code analysis scan
   image: sctechdev/docker-checkmarxcli:latest
   commands:
     - /usr/bin/python3 /scripts/checkmarx.py -s {{cmarxDNS}} -u {{cmarxuser}} -p "${{CMPASSWORD}}" -n "${{PROJECTNAME}}" -l GIT -r "${{GITURL}}" -b "refs/heads/${{CF_BRANCH}}"
```
