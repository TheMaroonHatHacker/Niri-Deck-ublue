# Niri-Deck-ublue &nbsp; [![bluebuild build badge](https://github.com/themaroonhathacker/niri-deck-ublue/actions/workflows/build.yml/badge.svg)](https://github.com/themaroonhathacker/niri-deck-ublue/actions/workflows/build.yml)

After seeing what Bazzite is doing, and not agreeing on their opinionated approach, I decided I'd put my own system together. 

The main aim is to retain Bazzite's Gaming Mode work, but everything else be a clean and simple base.

This image uses Niri with Dank Material Shell, and is optimised to be a portable workstation OS that allows me to game and work away from my desk on my GPD Win 4 8840U. 

The aim is to keep this image minimal. Any tools or applications should either be installed as a flatpak, or inside a distrobox container. 

I've chosen the Liquorix kernel purely for desktop stability whilst I'm doing intensive tasks, as well as prioritising A/V workloads, as I do use this system for Music Production.

## Installation

> [!WARNING]  
> [This is an experimental feature](https://www.fedoraproject.org/wiki/Changes/OstreeNativeContainerStable), try at your own discretion.

To rebase an existing atomic Fedora installation to the latest build:

- First rebase to the unsigned image, to get the proper signing keys and policies installed:
  ```
  rpm-ostree rebase ostree-unverified-registry:ghcr.io/themaroonhathacker/niri-deck-ublue:latest
  ```
- Reboot to complete the rebase:
  ```
  systemctl reboot
  ```
- Then rebase to the signed image, like so:
  ```
  rpm-ostree rebase ostree-image-signed:docker://ghcr.io/themaroonhathacker/niri-deck-ublue:latest
  ```
- Reboot again to complete the installation
  ```
  systemctl reboot
  ```

The `latest` tag will automatically point to the latest build. That build will still always use the Fedora version specified in `recipe.yml`, so you won't get accidentally updated to the next major version.

## ISO

If build on Fedora Atomic, you can generate an offline ISO with the instructions available [here](https://blue-build.org/how-to/generate-iso/#_top). These ISOs cannot unfortunately be distributed on GitHub for free due to large sizes, so for public projects something else has to be used for hosting.

## Verification

These images are signed with [Sigstore](https://www.sigstore.dev/)'s [cosign](https://github.com/sigstore/cosign). You can verify the signature by downloading the `cosign.pub` file from this repo and running the following command:

```bash
cosign verify --key cosign.pub ghcr.io/themaroonhathacker/niri-deck-ublue
```
