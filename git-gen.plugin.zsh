# Creates bulk branches and delete them
function make_branches() {
  if [[ ! -d "${PWD}/.git" ]]; then
    echo 'This directory does not contain .git';
    return;
  fi
  exists=`git show-ref refs/heads/$1`
  if [ ! -n "$exists" ]; then
    echo "There is no branch named: $1";
    return;
  else
    git checkout $1;
  fi
  
  arr=("$@");
  arraylength=${#arr[@]}
  for (( i=2; i<=${arraylength}; i++ ));
  do
     bn="${arr[$i]}"
     exists=`git show-ref refs/heads/$bn`
     if [ ! -n "$exists" ]; then
       git branch $bn
     fi
  done
}
