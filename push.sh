#!/bin/sh
# MIRAGE - xda@Des-franco
FRANCO=https://github.com/Open-Wise
. colors
DIR=`pwd`
DIR2=`echo $DIR | cut -c 24-50`
REPO=https://github.com/Open-Wise/`echo $DIR2`
APPS=`echo $DIR | cut -c 38-50`

#     echo -e $CL_CYN"Pushing commits to "$CL_RST""remote="$CL_CYN"franco" "$CL_RST""branch="$CL_CYN"mirage""$CL_RST
#     echo -e "REPOSITORY: "$CL_CYN"`echo $REPO`"$CL_RST""


if [ "$REPO" == "$FRANCO/frameworks/base" ]; then
     REPO=$FRANCO/frameworks_base_slim
     echo -e $CL_CYN"Pushing commits to "$CL_RST""remote="$CL_CYN"franco" "$CL_RST""branch="$CL_CYN"mirage""$CL_RST
     echo -e "REPOSITORY: "$CL_CYN"`echo $REPO`"$CL_RST""
     git push -u franco mirage
elif [ "$REPO" == "$FRANCO/packages/apps/$APPS" ]; then
     REPO=$FRANCO/packages_apps_$APPS
     echo -e $CL_YLW"Pushing commits to "$CL_RST""remote="$CL_CYN"franco" "$CL_RST""branch="$CL_CYN"mirage""$CL_RST
     echo -e "REPOSITORY: "$CL_YLW"`echo $REPO`"$CL_RST""
     git push -u franco mirage
else
     echo -e $CL_CYN"Pushing commits to "$CL_RST""remote="$CL_CYN"franco" "$CL_RST""branch="$CL_CYN"mirage""$CL_RST
     echo -e "REPOSITORY: "$CL_CYN"`echo $REPO`"$CL_RST""
     git push -u franco mirage
fi
