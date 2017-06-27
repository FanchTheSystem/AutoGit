#!/bin/bash 

cur_dir=$(pwd)
source $cur_dir/git_lib.include.sh

########## MASTER BRANCH UPDATE ###########
git_branch_in=master
git_branch_out=master

git_user=FanchTheSystem
git_list="phpunit-skeleton-generator"
pull_all

git_user=libre-informatique
git_list="CRMBundle DecoratorBundle EcommerceBundle EmailBundle EmailCRMBundle MediaBundle SeedBatchBundle SonataSyliusUserBundle VarietiesBundle LISemSymfonyProject"
#pull_all

git_user=blast-project
git_list="BaseEntitiesBundle Blast BlastExtras bundle-skeleton CoreBundle devkit DoctrinePgsqlBundle DoctrineSessionBundle OuterExtensionBundle UtilsBundle TestsBundle"
#pull_all


