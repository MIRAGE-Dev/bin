. colors

cm=${1}

git cherry-pick ${1}

if [ -z "$cm" ]; then
echo -e " "
echo -e $CL_RED"ATTENTION: There's no commit to cherry-pick ---------------------------------"
    echo -e " "
    echo -e " >>> Please copy && paste commit hash ..."
    echo -e " "
    echo -e "-----------------------------------------------------------------------------"$CL_RST
fi
