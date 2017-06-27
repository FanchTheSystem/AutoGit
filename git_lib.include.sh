


pull_all () {
    cd ${cur_dir}

    set -e 
    git_dir=${cur_dir}/${git_user}
    mkdir -p ${git_dir}
    
    for git_repo in ${git_list}
    do
        cd ${git_dir}
        echo "Pull  ${git_dir}/${git_repo}"
        
        if [ ! -d ${git_dir}/${git_repo} ]
        then
	    git clone git@github.com:${git_user}/${git_repo}.git
        fi

        cd ${git_dir}/${git_repo}
	git checkout ${git_branch_out}
	git pull origin ${git_branch_in}
 	cd -
    done
    set +e
    cd ${cur_dir}
}

push_all () {
    cd ${cur_dir}
    set -e 
    git_dir=${cur_dir}/${git_user}
    
    for git_repo in ${git_list}
    do
        cd ${git_dir}
        echo "Push  ${git_dir}/${git_repo}"
        
        if [ -d ${git_dir}/${git_repo} ]
        then
	    cd ${git_dir}/${git_repo}
	    git push -u origin ${git_branch_out}
	    cd -
        fi
    done
    set +e
    cd ${cur_dir}
}


tag_all () {
    cd ${cur_dir}

    git_dir=${cur_dir}/${git_user}
    mkdir -p ${git_dir}
    
    for git_repo in ${git_list}
    do
        cd ${git_dir}
        echo "Tag  ${git_dir}/${git_repo} as ${git_tag}"
        
        cd ${git_dir}/${git_repo}
	
        git tag -a ${git_tag} -m "Release ${git_tag}"
        git push --tags
        github_changelog_generator # -t  ${git_token}
        git add  CHANGELOG.md 
        git commit -m  "Release ${git_tag}" CHANGELOG.md 
        git push -u origin master 
        git tag -f -a ${git_tag} -m "Release ${git_tag}"
        git push --force --tags

        cd -
    done
    
    cd ${cur_dir}
}


branch_all () {
    cd ${cur_dir}

    git_dir=${cur_dir}/${git_user}
    mkdir -p ${git_dir}
    
    for git_repo in ${git_list}
    do
        cd ${git_dir}
        echo "Branch  ${git_dir}/${git_repo} as ${git_branch}"
        
        cd ${git_dir}/${git_repo}

        git branch -a | grep ${git_branch}
        if [ $? -ne 0 ]
        then
            git checkout -b ${git_branch}
            git push -u origin ${git_branch} 
        fi
        
        cd -
    done
    
    cd ${cur_dir}
}
