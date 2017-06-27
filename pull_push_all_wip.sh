#!/bin/bash 


cur_dir=$(pwd)
source ${HOME}/Projets/01_GitHub/git_lib.include.sh

cur_dir=${HOME}/Projets/99_AutoWork

########## wip-test BRANCH UPDATE ###########

git_branch_in=master
git_branch_out=wip-test

git_user=libre-informatique
git_list="CRMBundle DecoratorBundle EcommerceBundle EmailBundle EmailCRMBundle MediaBundle SeedBatchBundle SonataSyliusUserBundle VarietiesBundle LISemSymfonyProject"
pull_all
push_all

git_user=blast-project
git_list="BaseEntitiesBundle CoreBundle DoctrinePgsqlBundle DoctrineSessionBundle OuterExtensionBundle UtilsBundle"
pull_all
push_all

########## wip-lisem BRANCH UPDATE ###########

git_branch_in=master
git_branch_out=wip-lisem

git_user=libre-informatique
git_list="CRMBundle DecoratorBundle EcommerceBundle EmailBundle EmailCRMBundle MediaBundle SeedBatchBundle SonataSyliusUserBundle VarietiesBundle"
pull_all
push_all

git_user=blast-project
git_list="BaseEntitiesBundle CoreBundle DoctrinePgsqlBundle DoctrineSessionBundle OuterExtensionBundle UtilsBundle"
pull_all
push_all
