function fmt
    set git_root (git rev-parse --show-toplevel)
    if test -n "$git_root"
        pushd $git_root
        git status --porcelain | awk '{print $2}' | grep -E '\.(tsx|ts|jsx|js)$' | xargs prettier --write
        popd
    else
        echo "Error: Not inside a git repository"
    end
end

