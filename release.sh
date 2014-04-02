Project=$(basename `pwd`)
Version=$(cat ngx_http_subrange_module.h  | grep NGX_HTTP_SUBRANGE_VERSION | awk '{print $NF}')
PackageDir="$Project"_"$Version"
cd ..
rm -f $PackageDir
cp -r $Project $PackageDir
tar -zcf "$PackageDir".tar.gz $PackageDir