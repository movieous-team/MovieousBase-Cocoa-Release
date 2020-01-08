COMMAND="$1"
case "$COMMAND" in
    'sync-version-base')
        version=`/usr/libexec/PlistBuddy -c "Print CFBundleShortVersionString" MovieousBase.framework/Info.plist`
        agvtool new-marketing-version $version
        git add .
        git commit -m "release v$version"
        git tag "v$version"
        git push
        git push --tags
        exit 0
        ;;
    'sync-version-capture')
        version=`/usr/libexec/PlistBuddy -c "Print CFBundleShortVersionString" MovieousCaptureBase.framework/Info.plist`
        agvtool new-marketing-version $version
        git add .
        git commit -m "release v$version"
        git tag "v$version"
        git push
        git push --tags
        exit 0
        ;;
    'sync-version-play')
        version=`/usr/libexec/PlistBuddy -c "Print CFBundleShortVersionString" MovieousPlayBase.framework/Info.plist`
        agvtool new-marketing-version $version
        git add .
        git commit -m "release v$version"
        git tag "v$version"
        git push
        git push --tags
        exit 0
        ;;
    'get-version-base')
        echo `/usr/libexec/PlistBuddy -c "Print CFBundleShortVersionString" MovieousBase.framework/Info.plist`
        ;;
    'get-version-capture')
        echo `/usr/libexec/PlistBuddy -c "Print CFBundleShortVersionString" MovieousCaptureBase.framework/Info.plist`
        ;;
    'get-version-play')
        echo `/usr/libexec/PlistBuddy -c "Print CFBundleShortVersionString" MovieousPlayBase.framework/Info.plist`
        ;;
    *)
        echo "Unknown command $COMMAND"
        usage
        exit 1
        ;;
esac
