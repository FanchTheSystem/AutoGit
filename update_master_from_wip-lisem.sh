#!/bin/bash 


cur_dir=$(pwd)
source ${HOME}/Projets/01_GitHub/git_lib.include.sh

cur_dir=${HOME}/Projets/99_AutoWork

########## wip-test BRANCH UPDATE ###########

git_branch_in=wip-lisem
git_branch_out=master

git_user=libre-informatique
git_list="CRMBundle DecoratorBundle EcommerceBundle EmailBundle EmailCRMBundle MediaBundle SeedBatchBundle SonataSyliusUserBundle VarietiesBundle"
pull_all
push_all

git_user=blast-project
git_list="BaseEntitiesBundle CoreBundle DoctrinePgsqlBundle DoctrineSessionBundle OuterExtensionBundle UtilsBundle"
pull_all
push_all
