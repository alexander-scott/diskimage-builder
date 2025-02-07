if [ -n "${DIB_DISTRIBUTION_MIRROR:-}" ]; then
    # Only set the mirror for OS, everything, EPOL and update repositories,
    # The others (debuginfo and source) aren't mirrored since they do not exist on all mirrors
    sed -i "/\(debuginfo\|source\)/! {s#http://repo.openeuler.org#$DIB_DISTRIBUTION_MIRROR#g}" $TARGET_ROOT/etc/yum.repos.d/openEuler.repo
fi
