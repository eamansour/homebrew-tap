#
# Copyright contributors to the Galasa project
#
# SPDX-License-Identifier: EPL-2.0
#

cask "galasactl@0.48.1" do
  arch arm: "arm64", intel: "x86_64"

  version "0.48.1"
  # Create the sha256 using shasum --algorithm 256 <file>
  sha256 arm:   "59eae3245a6f571c6ce7b6bc126775df6fb02da60e9fa82dc224d7fc8c73e8e5",
         intel: "faa8158b6b5c0370d0289b8568cb72c56f631f61f977f338f87b288c0c280ba2"

  url "https://github.com/galasa-dev/galasa/releases/download/v#{version}/galasactl-darwin-#{arch}",
      verified: "github.com/galasa-dev/galasa/releases/"
  name "Galasa Client"
  desc "Client to launch Galasa tests on a Galasa service or locally. Version 0.48.1"
  homepage "https://galasa.dev/"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "galasactl-darwin-#{arch}", target: "galasactl"
end
