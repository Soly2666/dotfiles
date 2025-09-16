# Shell Aliases Reference

*Generated on 2025-09-12*

## Directory Navigation

| Alias | Command | Description |
|-------|---------|-------------|
| `-` | `cd -` | Go to previous directory |
| `...` | `../..` | Go up 2 directories |
| `....` | `../../..` | Go up 3 directories |
| `.....` | `../../../..` | Go up 4 directories |
| `......` | `../../../../..` | Go up 5 directories |
| `1` | `cd -1` | Go to directory 1 in history |
| `2` | `cd -2` | Go to directory 2 in history |
| `3` | `cd -3` | Go to directory 3 in history |
| `4` | `cd -4` | Go to directory 4 in history |
| `5` | `cd -5` | Go to directory 5 in history |
| `6` | `cd -6` | Go to directory 6 in history |
| `7` | `cd -7` | Go to directory 7 in history |
| `8` | `cd -8` | Go to directory 8 in history |
| `9` | `cd -9` | Go to directory 9 in history |

## File Operations

| Alias | Command | Description |
|-------|---------|-------------|
| `cat` | `bat` | Better cat with syntax highlighting |
| `catp` | `bat -p` | Bat with plain output |
| `diff` | `diff --color` | Colorized diff |
| `l` | `ls -lah` | Detailed list with hidden files |
| `la` | `ls -lAh` | List all files except . and .. |
| `ll` | `eza -la --icons --git --header --group-directories-first` | Enhanced ls with icons and git info |
| `ls` | `eza` | Modern ls replacement |
| `lsa` | `ls -lah` | Detailed list all |
| `lt` | `eza -T --icons --git-ignore` | Tree view with icons |
| `md` | `mkdir -p` | Create directory with parents |
| `rd` | `rmdir` | Remove directory |

## Search and Grep

| Alias | Command | Description |
|-------|---------|-------------|
| `afind` | `ack -il` | Case-insensitive file search |
| `egrep` | `egrep --color=auto --exclude-dir={.bzr,CVS,.git,.hg,.svn,.idea,.tox}` | Enhanced egrep with colors |
| `fgrep` | `fgrep --color=auto --exclude-dir={.bzr,CVS,.git,.hg,.svn,.idea,.tox}` | Enhanced fgrep with colors |
| `grep` | `grep --color=auto --exclude-dir={.bzr,CVS,.git,.hg,.svn,.idea,.tox}` | Enhanced grep with colors |

## Git Aliases

### Basic Git Operations
| Alias | Command | Description |
|-------|---------|-------------|
| `g` | `git` | Git shorthand |
| `ga` | `git add` | Add files |
| `gaa` | `git add --all` | Add all files |
| `gap` | `git apply` | Apply patch |
| `gapa` | `git add --patch` | Add files interactively |
| `gapt` | `git apply --3way` | Apply patch with 3-way merge |
| `gau` | `git add --update` | Add updated files |
| `gav` | `git add --verbose` | Add files verbosely |

### Git Branches
| Alias | Command | Description |
|-------|---------|-------------|
| `gb` | `git branch` | List branches |
| `gba` | `git branch -a` | List all branches |
| `gbd` | `git branch -d` | Delete branch |
| `gbD` | `git branch -D` | Force delete branch |
| `gbda` | `git branch --no-color --merged \| command grep -vE "^([+*]\|\\s*($(git_main_branch)\|$(git_develop_branch))\\s*$)" \| command xargs git branch -d 2>/dev/null` | Delete merged branches |
| `gbnm` | `git branch --no-merged` | List unmerged branches |
| `gbr` | `git branch --remote` | List remote branches |

### Git Commits
| Alias | Command | Description |
|-------|---------|-------------|
| `gc` | `git commit -v` | Commit with verbose output |
| `gc!` | `git commit -v --amend` | Amend last commit |
| `gca` | `git commit -v -a` | Commit all changes |
| `gca!` | `git commit -v -a --amend` | Amend all changes |
| `gcam` | `git commit -a -m` | Commit all with message |
| `gcan!` | `git commit -v -a --no-edit --amend` | Amend all without editing |
| `gcans!` | `git commit -v -a -s --no-edit --amend` | Signed amend all without editing |
| `gcas` | `git commit -a -s` | Signed commit all |
| `gcasm` | `git commit -a -s -m` | Signed commit all with message |
| `gcmsg` | `git commit -m` | Commit with message |
| `gcn!` | `git commit -v --no-edit --amend` | Amend without editing |
| `gcs` | `git commit -S` | GPG signed commit |
| `gcsm` | `git commit -s -m` | Signed commit with message |
| `gcss` | `git commit -S -s` | GPG and signed commit |
| `gcssm` | `git commit -S -s -m` | GPG and signed commit with message |

### Git Checkout
| Alias | Command | Description |
|-------|---------|-------------|
| `gco` | `git checkout` | Checkout |
| `gcor` | `git checkout --recurse-submodules` | Checkout with submodules |
| `gcb` | `git checkout -b` | Create and checkout branch |
| `gcd` | `git checkout $(git_develop_branch)` | Checkout develop branch |
| `gcm` | `git checkout $(git_main_branch)` | Checkout main branch |

### Git Diff
| Alias | Command | Description |
|-------|---------|-------------|
| `gd` | `git diff` | Show diff |
| `gdca` | `git diff --cached` | Show staged diff |
| `gdcw` | `git diff --cached --word-diff` | Show staged word diff |
| `gds` | `git diff --staged` | Show staged diff |
| `gdw` | `git diff --word-diff` | Show word diff |
| `gdup` | `git diff @{upstream}` | Diff with upstream |

### Git Log
| Alias | Command | Description |
|-------|---------|-------------|
| `gl` | `git pull` | Pull changes |
| `glg` | `git log --stat` | Log with stats |
| `glgg` | `git log --graph` | Log with graph |
| `glgga` | `git log --graph --decorate --all` | Log graph all decorated |
| `glgm` | `git log --graph --max-count=10` | Log graph last 10 |
| `glgp` | `git log --stat -p` | Log with stats and patches |
| `glo` | `git log --oneline --decorate` | One line log |
| `glog` | `git log --oneline --decorate --graph` | One line graph log |
| `gloga` | `git log --oneline --decorate --graph --all` | One line graph all |
| `glol` | `git log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ar) %C(bold blue)<%an>%Creset'` | Pretty log |
| `glola` | `git log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ar) %C(bold blue)<%an>%Creset' --all` | Pretty log all |

### Git Push/Pull
| Alias | Command | Description |
|-------|---------|-------------|
| `gp` | `git push` | Push changes |
| `gpd` | `git push --dry-run` | Dry run push |
| `gpf` | `git push --force-with-lease` | Force push safely |
| `gpf!` | `git push --force` | Force push |
| `gpoat` | `git push origin --all && git push origin --tags` | Push all and tags |
| `gpsup` | `git push --set-upstream origin $(git_current_branch)` | Push and set upstream |
| `gpu` | `git push upstream` | Push to upstream |
| `gpv` | `git push -v` | Verbose push |
| `gpr` | `git pull --rebase` | Pull with rebase |
| `ggpull` | `git pull origin "$(git_current_branch)"` | Pull current branch |
| `ggpush` | `git push origin "$(git_current_branch)"` | Push current branch |

### Git Status and Remote
| Alias | Command | Description |
|-------|---------|-------------|
| `gst` | `git status` | Show status |
| `gss` | `git status -s` | Short status |
| `gsb` | `git status -sb` | Short status with branch |
| `gr` | `git remote` | List remotes |
| `gra` | `git remote add` | Add remote |
| `grv` | `git remote -v` | List remotes verbosely |
| `grmv` | `git remote rename` | Rename remote |
| `grrm` | `git remote remove` | Remove remote |
| `grset` | `git remote set-url` | Set remote URL |

### Git Stash
| Alias | Command | Description |
|-------|---------|-------------|
| `gsta` | `git stash push` | Stash changes |
| `gstaa` | `git stash apply` | Apply stash |
| `gstall` | `git stash --all` | Stash all including untracked |
| `gstc` | `git stash clear` | Clear all stashes |
| `gstd` | `git stash drop` | Drop stash |
| `gstl` | `git stash list` | List stashes |
| `gstp` | `git stash pop` | Pop stash |
| `gsts` | `git stash show --text` | Show stash contents |
| `gstu` | `gsta --include-untracked` | Stash including untracked |

### Git Rebase and Reset
| Alias | Command | Description |
|-------|---------|-------------|
| `grb` | `git rebase` | Rebase |
| `grba` | `git rebase --abort` | Abort rebase |
| `grbc` | `git rebase --continue` | Continue rebase |
| `grbd` | `git rebase $(git_develop_branch)` | Rebase on develop |
| `grbi` | `git rebase -i` | Interactive rebase |
| `grbm` | `git rebase $(git_main_branch)` | Rebase on main |
| `grbs` | `git rebase --skip` | Skip rebase |
| `grh` | `git reset` | Reset |
| `grhh` | `git reset --hard` | Hard reset |
| `groh` | `git reset origin/$(git_current_branch) --hard` | Hard reset to origin |

## Docker Aliases

### Docker Build and Images
| Alias | Command | Description |
|-------|---------|-------------|
| `dbl` | `docker build` | Build image |
| `dib` | `docker image build` | Build image |
| `dii` | `docker image inspect` | Inspect image |
| `dils` | `docker image ls` | List images |
| `dipu` | `docker image push` | Push image |
| `dirm` | `docker image rm` | Remove image |
| `dit` | `docker image tag` | Tag image |
| `dpu` | `docker pull` | Pull image |

### Docker Containers
| Alias | Command | Description |
|-------|---------|-------------|
| `dcin` | `docker container inspect` | Inspect container |
| `dcls` | `docker container ls` | List containers |
| `dclsa` | `docker container ls -a` | List all containers |
| `dlo` | `docker container logs` | Container logs |
| `dpo` | `docker container port` | Container ports |
| `dr` | `docker container run` | Run container |
| `drit` | `docker container run -it` | Run container interactively |
| `drm` | `docker container rm` | Remove container |
| `drm!` | `docker container rm -f` | Force remove container |
| `dst` | `docker container start` | Start container |
| `dstp` | `docker container stop` | Stop container |
| `dtop` | `docker top` | Show container processes |
| `dxc` | `docker container exec` | Execute in container |
| `dxcit` | `docker container exec -it` | Execute interactively in container |

### Docker Networks and Volumes
| Alias | Command | Description |
|-------|---------|-------------|
| `dnc` | `docker network create` | Create network |
| `dncn` | `docker network connect` | Connect to network |
| `dndcn` | `docker network disconnect` | Disconnect from network |
| `dni` | `docker network inspect` | Inspect network |
| `dnls` | `docker network ls` | List networks |
| `dnrm` | `docker network rm` | Remove network |
| `dvi` | `docker volume inspect` | Inspect volume |
| `dvls` | `docker volume ls` | List volumes |
| `dvprune` | `docker volume prune` | Prune volumes |

## Kubernetes (kubectl) Aliases

### Basic kubectl
| Alias | Command | Description |
|-------|---------|-------------|
| `k` | `kubectl` | Kubectl shorthand |
| `kca` | `_kca(){ kubectl "$@" --all-namespaces; unset -f _kca; }; _kca` | Apply to all namespaces |
| `kcn` | `kubectl config set-context --current --namespace` | Set current namespace |
| `kcp` | `kubectl cp` | Copy files to/from pods |

### kubectl Config
| Alias | Command | Description |
|-------|---------|-------------|
| `kccc` | `kubectl config current-context` | Show current context |
| `kcdc` | `kubectl config delete-context` | Delete context |
| `kcgc` | `kubectl config get-contexts` | Get contexts |
| `kcsc` | `kubectl config set-context` | Set context |
| `kcuc` | `kubectl config use-context` | Use context |

### kubectl Get Resources
| Alias | Command | Description |
|-------|---------|-------------|
| `kga` | `kubectl get all` | Get all resources |
| `kgaa` | `kubectl get all --all-namespaces` | Get all resources in all namespaces |
| `kgp` | `kubectl get pods` | Get pods |
| `kgpa` | `kubectl get pods --all-namespaces` | Get pods in all namespaces |
| `kgpw` | `kgp --watch` | Watch pods |
| `kgpwide` | `kgp -o wide` | Get pods with wide output |
| `kgd` | `kubectl get deployment` | Get deployments |
| `kgda` | `kubectl get deployment --all-namespaces` | Get deployments in all namespaces |
| `kgdw` | `kgd --watch` | Watch deployments |
| `kgs` | `kubectl get svc` | Get services |
| `kgsa` | `kubectl get svc --all-namespaces` | Get services in all namespaces |
| `kgsw` | `kgs --watch` | Watch services |

### kubectl Logs
| Alias | Command | Description |
|-------|---------|-------------|
| `kl` | `kubectl logs` | Get logs |
| `kl1h` | `kubectl logs --since 1h` | Logs from last hour |
| `kl1m` | `kubectl logs --since 1m` | Logs from last minute |
| `kl1s` | `kubectl logs --since 1s` | Logs from last second |
| `klf` | `kubectl logs -f` | Follow logs |
| `klf1h` | `kubectl logs --since 1h -f` | Follow logs from last hour |
| `klf1m` | `kubectl logs --since 1m -f` | Follow logs from last minute |
| `klf1s` | `kubectl logs --since 1s -f` | Follow logs from last second |

### kubectl Describe
| Alias | Command | Description |
|-------|---------|-------------|
| `kdp` | `kubectl describe pods` | Describe pods |
| `kdd` | `kubectl describe deployment` | Describe deployment |
| `kds` | `kubectl describe svc` | Describe service |
| `kdno` | `kubectl describe node` | Describe node |
| `kdns` | `kubectl describe namespace` | Describe namespace |

### kubectl Delete
| Alias | Command | Description |
|-------|---------|-------------|
| `kdel` | `kubectl delete` | Delete resource |
| `kdelp` | `kubectl delete pods` | Delete pods |
| `kdeld` | `kubectl delete deployment` | Delete deployment |
| `kdels` | `kubectl delete svc` | Delete service |
| `kdelns` | `kubectl delete namespace` | Delete namespace |
| `kdelf` | `kubectl delete -f` | Delete from file |

## System and Utility

| Alias | Command | Description |
|-------|---------|-------------|
| `_` | `sudo ` | Sudo shorthand |
| `h` | `history` | Command history |
| `hs` | `history \| grep` | Search command history |
| `hsi` | `history \| grep -i` | Case-insensitive history search |
| `history` | `omz_history -i` | Oh My Zsh history |
| `ofd` | `open_command $PWD` | Open current directory in Finder |
| `python3` | `/opt/homebrew/bin/python3.11` | Python 3.11 |
| `run-help` | `man` | Show manual |
| `vim` | `vim $(fzf --preview="bat {} --color=always")` | Vim with fzf file picker |
| `which-command` | `whence` | Show command location |
| `x` | `extract` | Extract archives |

## macOS Specific

| Alias | Command | Description |
|-------|---------|-------------|
| `hidefiles` | `defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder` | Hide hidden files in Finder |
| `ohmyzsh` | `mate ~/.oh-my-zsh` | Edit Oh My Zsh config |
| `showfiles` | `defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder` | Show hidden files in Finder |
| `zshconfig` | `mate ~/.zshrc` | Edit Zsh config |

## Specialized Aliases

| Alias | Command | Description |
|-------|---------|-------------|
| `gam` | `git am` | Apply mailbox |
| `gama` | `git am --abort` | Abort mailbox apply |
| `gamc` | `git am --continue` | Continue mailbox apply |
| `gams` | `git am --skip` | Skip mailbox apply |
| `gamscp` | `git am --show-current-patch` | Show current patch |
| `gbl` | `git blame -b -w` | Show blame |
| `gbs` | `git bisect` | Start bisect |
| `gbsb` | `git bisect bad` | Mark as bad |
| `gbsg` | `git bisect good` | Mark as good |
| `gbsr` | `git bisect reset` | Reset bisect |
| `gbss` | `git bisect start` | Start bisect |
| `gclean` | `git clean -id` | Interactive clean |
| `gcount` | `git shortlog -sn` | Count commits by author |
| `gcp` | `git cherry-pick` | Cherry pick |
| `gcpa` | `git cherry-pick --abort` | Abort cherry pick |
| `gcpc` | `git cherry-pick --continue` | Continue cherry pick |
| `gdct` | `git describe --tags $(git rev-list --tags --max-count=1)` | Describe latest tag |
| `gdt` | `git diff-tree --no-commit-id --name-only -r` | Show changed files |
| `gf` | `git fetch` | Fetch |
| `gfa` | `git fetch --all --prune --jobs=10` | Fetch all with prune |
| `gfg` | `git ls-files \| grep` | Find files |
| `gfo` | `git fetch origin` | Fetch origin |
| `gg` | `git gui citool` | Git GUI |
| `gga` | `git gui citool --amend` | Git GUI amend |
| `ggsup` | `git branch --set-upstream-to=origin/$(git_current_branch)` | Set upstream |
| `ghh` | `git help` | Git help |
| `gignore` | `git update-index --assume-unchanged` | Ignore changes |
| `gignored` | `git ls-files -v \| grep "^[[:lower:]]"` | Show ignored files |
| `globurl` | `noglob urlglobber ` | URL globbing |
| `gm` | `git merge` | Merge |
| `gma` | `git merge --abort` | Abort merge |
| `gmom` | `git merge origin/$(git_main_branch)` | Merge from origin main |
| `gmtl` | `git mergetool --no-prompt` | Merge tool |
| `gmtlvim` | `git mergetool --no-prompt --tool=vimdiff` | Vim merge tool |
| `gmum` | `git merge upstream/$(git_main_branch)` | Merge from upstream main |
| `gpristine` | `git reset --hard && git clean -dffx` | Clean working directory |
| `grev` | `git revert` | Revert commit |
| `grm` | `git rm` | Remove file |
| `grmc` | `git rm --cached` | Remove from cache |
| `grs` | `git restore` | Restore files |
| `grss` | `git restore --source` | Restore from source |
| `grst` | `git restore --staged` | Restore staged |
| `grt` | `cd "$(git rev-parse --show-toplevel \|\| echo .)"` | Go to git root |
| `gru` | `git reset --` | Unstage files |
| `grup` | `git remote update` | Update remotes |
| `gsd` | `git svn dcommit` | SVN commit |
| `gsh` | `git show` | Show commit |
| `gsi` | `git submodule init` | Initialize submodules |
| `gsps` | `git show --pretty=short --show-signature` | Show with signature |
| `gsr` | `git svn rebase` | SVN rebase |
| `gsu` | `git submodule update` | Update submodules |
| `gsw` | `git switch` | Switch branch |
| `gswc` | `git switch -c` | Switch to new branch |
| `gswd` | `git switch $(git_develop_branch)` | Switch to develop |
| `gswm` | `git switch $(git_main_branch)` | Switch to main |
| `gtl` | `gtl(){ git tag --sort=-v:refname -n -l "${1}*" }; noglob gtl` | List tags |
| `gts` | `git tag -s` | Signed tag |
| `gtv` | `git tag \| sort -V` | List tags sorted |
| `gunignore` | `git update-index --no-assume-unchanged` | Unignore changes |
| `gunwip` | `git log -n 1 \| grep -q -c "\\-\\-wip\\-\\-" && git reset HEAD~1` | Undo WIP commit |
| `gup` | `git pull --rebase` | Pull with rebase |
| `gupa` | `git pull --rebase --autostash` | Pull rebase with autostash |
| `gupav` | `git pull --rebase --autostash -v` | Verbose pull rebase with autostash |
| `gupom` | `git pull --rebase origin $(git_main_branch)` | Pull rebase from origin main |
| `gupomi` | `git pull --rebase=interactive origin $(git_main_branch)` | Interactive pull rebase from origin main |
| `gupv` | `git pull --rebase -v` | Verbose pull rebase |
| `gwch` | `git whatchanged -p --abbrev-commit --pretty=medium` | What changed |
| `gwip` | `git add -A; git rm $(git ls-files --deleted) 2> /dev/null; git commit --no-verify --no-gpg-sign -m "--wip-- [skip ci]"` | Work in progress commit |

---

*This reference contains all aliases available in your zsh shell environment.*