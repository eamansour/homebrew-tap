#
# Copyright contributors to the Galasa project
#
# SPDX-License-Identifier: EPL-2.0
#

cask "galasactl@1.0.0" do
  arch arm: "arm64", intel: "x86_64"

  version "1.0.0"
  # Create the sha256 using shasum --algorithm 256 <file>
  sha256 arm:   "e4b04b85311388f612a0cc8849d87ede59225a2569024bd1070e799f492818c6",
         intel: "f149c190a8b1298bc2c1f473cb53080f4e026392d5b8b8ea8b4ee0395a4f111e"

  url "https://github.com/eamansour/galasa/releases/download/v#{version}/galasactl-darwin-#{arch}",
      verified: "github.com/eamansour/galasa/releases/"
  name "Galasa Client"
  desc "Client to launch Galasa tests on a Galasa service or locally. Version 1.0.0"
  homepage "https://galasa.dev/"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "galasactl-darwin-#{arch}", target: "galasactl"
end
