# Repo For Terrafrom Code for Azure

## Azure Credentials Using Powershell
$env:ARM_CLIENT_ID="<service_principal_app_id>"
$env:ARM_SUBSCRIPTION_ID="<azure_subscription_id>"
$env:ARM_TENANT_ID="<azure_subscription_tenant_id>"
$env:ARM_CLIENT_SECRET="<service_principal_password>"

## Azure Credentials Using Bash

export ARM_SUBSCRIPTION_ID="<azure_subscription_id>"
export ARM_TENANT_ID="<azure_subscription_tenant_id>"
export ARM_CLIENT_ID="<service_principal_appid>"
export ARM_CLIENT_SECRET="<service_principal_password>"

## Terraform Workflow
terraform init
terraform fmt
terraform validate
terraform plan
terraform apply
terraform apply  --auto-approve
terraform apply  --auto-approve

terraform state list
terraform state show azurerm_subnet.subnet1
terraform state rm azurerm_storage_account.devsecopsb43devtfstate
terraform state rm azurerm_storage_storage_container.tfstate


## Git Commands - Class 1
git init
git status 
git add .
git commmit -m  "Terraform Base Code"
git branch -m master dev
git branch
git remote -v
git remote add origin https://github.com/manoj239/Git-Terraform-Azure
git remote remove origin
git push origin dev
git log
git log --oneline 
git clone git@git

Terraform
git fetch # Download the changes locally from remote 
git merge #Merge the downloaded changes
git pull origin branch #Performs both git fetch and merge
Resolving merge conflicts

git reset --hard 2dc9b97 #Deletes Commits and Data
git reset --hard HEAD~3 #Deletes Commits and Data
git push origin dev --force

git branch testing
git checkout testing
git checkout -n hello
git branch -D testing   

To merge branch1 changes  in branch2:
git checkout branch2
git merge branch1

## Git commands - Class 2
1. Creating Jira user story for code Enhancement
2. Understand PR prcoess and Raise PR and approve it . Communicate over slack
3. git reset can be used to delete commits and data
    -hard -> Delete commits and also files
     git reset --hard 2dc9b97  #Deletes Commits and data
     git reset --hard HEAD~3  #Deletes Commits and Data

    - soft  -> Delete commits and stages the files.
        - Delete commits and changes are staged. 

    - mixed(default) -> Delete commits and files will be in unstaged.
      - Delete commits and changes are not staged.  


    
    -soft -> Delete commits and stages the files
      - Delete  commits and changes are staged
    -mixed(default) -> Delete commits and files will be in unstaged
      - Delete commits and changes are not merged

2. git revert  - Unlike git reset, revert dont delete any commits but it will 
undo the changes and save it as new commit 

3.git stash - Save/stash changes temporary as dev  is not ready to commit
    - git stash 
    - git stash list
    - git stash apply or pop

4.Git CherryPick - Take a specific commit from A branch and merge it with B branch
git checkout A
git cherry-pick <commit id from branch  B>

5.Restore deleted branch with reflog.
  - Using git reflog find the commit id.
  - Use git checkout <commitid>
  - git checkout -b <NewBranchName>

### Class 3
1. Git Merge 
2. Git Rebase
3. git interactive rebase
    -Squash -> Squash in git means combining multiple commits into one. 
    -Can delete selected commits   
    See using git reset we can delete some range of commits , for deleting individual commits, we can use this git squash
4. Git LFS - Large File system, if we see in Git hub and in Git lab, max file size is 100mb. If file size is more than 100mb, it will not accept for push and will throw error


