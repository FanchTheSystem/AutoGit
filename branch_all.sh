#!/bin/bash 

source ${HOME}/Projets/01_GitHub/git_lib.include.sh
cur_dir=${HOME}/Projets/99_AutoWork


########## MASTER BRANCH UPDATE ###########
git_branch_in=master
git_branch_out=master


git_branch=wip-lisem

git_user=libre-informatique
git_list="CRMBundle DecoratorBundle EcommerceBundle EmailBundle EmailCRMBundle MediaBundle SeedBatchBundle SonataSyliusUserBundle VarietiesBundle"
pull_all
branch_all


git_user=blast-project
git_list="BaseEntitiesBundle CoreBundle DoctrinePgsqlBundle DoctrineSessionBundle OuterExtensionBundle UtilsBundle"

#pull_all
#branch_all

