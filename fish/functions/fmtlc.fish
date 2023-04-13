function fmtlc
    set git_root (git rev-parse --show-toplevel)
    if test -n "$git_root"
        pushd $git_root
        git diff --name-only HEAD^ HEAD | awk '{print $2}' | grep -E '\.(tsx|ts)$' | xargs prettier --write
        popd
    else
        echo "Error: Not inside a git repository"
    end
end

