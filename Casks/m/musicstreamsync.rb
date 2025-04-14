# Documentation: https://docs.brew.sh/Cask-Cookbook
#                https://docs.brew.sh/Adding-Software-to-Homebrew#cask-stanzas
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
cask "musicstreamsync" do
    version "1.0.10"
    sha256 "c800bebefa6d7f674b9de96670292ddb15fa4ddac6d45ea3c44b18770b026e60"

    url "https://github.com/igorcferreira/MusicStreamSync/releases/download/#{version}/MusicStreamSync.zip",
        verified: "github.com/igorcferreira/MusicStreamSync/"
    name "MusicStreamSync"
    desc "App that can be used to sync App Music plays into Last.FM"
    homepage "https://github.com/igorcferreira"

    # Documentation: https://docs.brew.sh/Brew-Livecheck
    livecheck do
        url :url
        strategy :github_latest
    end

    app "MusicStreamSync.app"

    # Documentation: https://docs.brew.sh/Cask-Cookbook#stanza-zap
    zap trash: [
        "~/Library/Application Support/MusicStreamSync",
        "~/Library/Logs/MusicStreamSync",
    ]
end
  