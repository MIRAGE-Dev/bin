cm=${1}

git cherry-pick ${1}

if [ -z "$cm" ]; then
echo " "
echo "ATTENTION: There's no commit to cherry-pick ----------------------------------------------------"
    echo " "
    echo " >>> Please copy && paste commit hash ..."
    echo " "
    echo "----------------------------------------------------------------------------------"
fi
