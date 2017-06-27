#!/bin/bash 

source ${HOME}/Projets/01_GitHub/git_lib.include.sh
cur_dir=${HOME}/Projets/99_AutoWork

########## MASTER BRANCH UPDATE ###########
git_branch_in=master
git_branch_out=master


git_tag=0.4.4

git_user=libre-informatique
git_list="CRMBundle DecoratorBundle EcommerceBundle EmailBundle EmailCRMBundle MediaBundle SeedBatchBundle SonataSyliusUserBundle VarietiesBundle"

pull_all
tag_all

git_user=blast-project
git_list="BaseEntitiesBundle Blast BlastExtras bundle-skeleton CoreBundle devkit DoctrinePgsqlBundle DoctrineSessionBundle OuterExtensionBundle UtilsBundle TestsBundle"

pull_all
tag_all

#git_user=libre-informatique
#git_list="LISemSymfonyProject"
#pull_all
#tag_all
