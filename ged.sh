git filter-branch --commit-filter '
        if [ "$GIT_AUTHOR_EMAIL" = "greg@kroah.com" ];
        then
                GIT_AUTHOR_NAME="Yogesh Sharma";
                GIT_AUTHOR_EMAIL="kingyogesh04@gmail.com";
                git commit-tree "$@";
        else
                git commit-tree "$@";
        fi' HEAD
