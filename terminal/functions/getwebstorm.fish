function getwebstorm
    sudo rm -rf webstorm

    if test (count $argv) -eq 0
        echo "Usage: getwebstorm <version> (e.g., 2025.1)"
        return 1
    end

    set -l ver $argv[1]
    set -l url "https://download.jetbrains.com/webstorm/WebStorm-$ver.tar.gz"
    set -l filename "WebStorm-$ver.tar.gz"
    set -l outdir "webstorm"

    echo "Downloading $filename from $url..."
    sudo wget $url

    echo "Creating folder $outdir and extracting..."
    sudo mkdir $outdir
    sudo tar -xzf $filename --strip-components=1 -C $outdir

    echo "Cleaning up..."
    sudo rm -rf $filename

    echo "Done! WebStorm $ver extracted to ./$outdir"
end
