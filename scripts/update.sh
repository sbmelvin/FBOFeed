#!/bin/bash

FBO_DATA_DIR="feed"
lftp -e "set sync-mode off; mirror -v --only-missing --include=FBOFeed* --parallel=100  -- / $FBO_DATA_DIR; quit" ftp.fbo.gov
