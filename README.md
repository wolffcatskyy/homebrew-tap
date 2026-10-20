# wolffcatskyy/homebrew-tap

Homebrew tap for wolffcatskyy packages.

## smcFanControl Community Edition

Existing legacy minimum fan-speed application for Intel Macs:

```sh
brew install --cask wolffcatskyy/tap/smcfancontrol
```

For an existing installation:

```sh
brew update
brew upgrade --cask wolffcatskyy/tap/smcfancontrol
```

The cask currently installs version 2.7.0 from the application ZIP on the [v2.7.0-ce release](https://github.com/wolffcatskyy/smcFanControl/releases/tag/v2.7.0-ce). The separate [v2.7.0 release](https://github.com/wolffcatskyy/smcFanControl/releases/tag/v2.7.0) contains source archives, not an application ZIP. The downloaded CE archive was checked against the cask SHA-256 on 2026-10-20. This verifies artifact identity, not a runtime/security audit or universal hardware support.

**Cooling CE is not included.** The new controller, watchdog, CLI and native interface remain experimental in [draft PR #38](https://github.com/wolffcatskyy/smcFanControl/pull/38). No candidate version bump or replacement binary is published through this cask. An upgrade may report that 2.7.0 is already installed; documentation changes do not imply a new app build.

Use one fan controller at a time, including boot helpers. Homebrew app removal and `--zap` do not manage separately installed system LaunchDaemons. Before migrating or removing a fan helper, review its matching installation/recovery guide and verify actual fan speed afterward. macOS security prompts depend on artifact and system policy; no Gatekeeper bypass or prompt-free installation is promised.

## CrowdSec tools

The CrowdSec formulas (`crowdsec-blocklist-import`, `crowdsec-unifi-bouncer`) live in the dedicated CrowdSec tap:

```sh
brew tap wolffcatskyy/crowdsec
```

See [wolffcatskyy/homebrew-crowdsec](https://github.com/wolffcatskyy/homebrew-crowdsec).
