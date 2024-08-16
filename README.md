# Installation

## Install Stow

https://www.gnu.org/software/stow/

## Install Z

https://github.com/ajeetdsouza/zoxide

   <details>
   <summary>Linux / WSL</summary>

> The recommended way to install zoxide is via the install script:
>
> ```sh
> curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | sh
> ```
>
> Or, you can use a package manager:
>
> | Distribution        | Repository              | Instructions                                                                                          |
> | ------------------- | ----------------------- | ----------------------------------------------------------------------------------------------------- |
> | **_Any_**           | **[crates.io]**         | `cargo install zoxide --locked`                                                                       |
> | _Any_               | [asdf]                  | `asdf plugin add zoxide https://github.com/nyrst/asdf-zoxide.git` <br /> `asdf install zoxide latest` |
> | _Any_               | [conda-forge]           | `conda install -c conda-forge zoxide`                                                                 |
> | _Any_               | [guix]                  | `guix install zoxide`                                                                                 |
> | _Any_               | [Linuxbrew]             | `brew install zoxide`                                                                                 |
> | _Any_               | [nixpkgs]               | `nix-env -iA nixpkgs.zoxide`                                                                          |
> | Alpine Linux 3.13+  | [Alpine Linux Packages] | `apk add zoxide`                                                                                      |
> | Arch Linux          | [Arch Linux Extra]      | `pacman -S zoxide`                                                                                    |
> | CentOS 7+           | [Copr]                  | `dnf copr enable atim/zoxide` <br /> `dnf install zoxide`                                             |
> | ~Debian 11+~[^1]    | ~[Debian Packages]~     | ~`apt install zoxide`~                                                                                |
> | Devuan 4.0+         | [Devuan Packages]       | `apt install zoxide`                                                                                  |
> | Exherbo Linux       | [Exherbo packages]      | `cave resolve -x repository/rust` <br /> `cave resolve -x zoxide`                                     |
> | Fedora 32+          | [Fedora Packages]       | `dnf install zoxide`                                                                                  |
> | Gentoo              | [Gentoo Packages]       | `emerge app-shells/zoxide`                                                                            |
> | Manjaro             |                         | `pacman -S zoxide`                                                                                    |
> | openSUSE Tumbleweed | [openSUSE Factory]      | `zypper install zoxide`                                                                               |
> | ~Parrot OS~[^1]     |                         | ~`apt install zoxide`~                                                                                |
> | ~Raspbian 11+~[^1]  | ~[Raspbian Packages]~   | ~`apt install zoxide`~                                                                                |
> | Rhino Linux         | [Pacstall Packages]     | `pacstall -I zoxide-deb`                                                                              |
> | Slackware 15.0+     | [SlackBuilds]           | [Instructions][slackbuilds-howto]                                                                     |
> | Solus               | [Solus Packages]        | `eopkg install zoxide`                                                                                |
> | ~Ubuntu 21.04+~[^1] | ~[Ubuntu Packages]~     | ~`apt install zoxide`~                                                                                |
> | Void Linux          | [Void Linux Packages]   | `xbps-install -S zoxide`                                                                              |

   </details>

   <details>
   <summary>macOS</summary>

> To install zoxide, use a package manager:
>
> | Repository      | Instructions                                                                                          |
> | --------------- | ----------------------------------------------------------------------------------------------------- |
> | **[crates.io]** | `cargo install zoxide --locked`                                                                       |
> | **[Homebrew]**  | `brew install zoxide`                                                                                 |
> | [asdf]          | `asdf plugin add zoxide https://github.com/nyrst/asdf-zoxide.git` <br /> `asdf install zoxide latest` |
> | [conda-forge]   | `conda install -c conda-forge zoxide`                                                                 |
> | [MacPorts]      | `port install zoxide`                                                                                 |
> | [nixpkgs]       | `nix-env -iA nixpkgs.zoxide`                                                                          |
>
> Or, run this command in your terminal:
>
> ```sh
> curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | sh
> ```

   </details>

   <details>
   <summary>Windows</summary>

> zoxide works with PowerShell, as well as shells running in Cygwin, Git
> Bash, and MSYS2.
>
> The recommended way to install zoxide is via `winget`:
>
> ```sh
> winget install ajeetdsouza.zoxide
> ```
>
> Or, you can use an alternative package manager:
>
> | Repository      | Instructions                          |
> | --------------- | ------------------------------------- |
> | **[crates.io]** | `cargo install zoxide --locked`       |
> | [Chocolatey]    | `choco install zoxide`                |
> | [conda-forge]   | `conda install -c conda-forge zoxide` |
> | [Scoop]         | `scoop install zoxide`                |
>
> If you're using Cygwin, Git Bash, or MSYS2, you can also use the install script:
>
> ```sh
> curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | sh
> ```

   </details>

   <details>
   <summary>BSD</summary>

> To install zoxide, use a package manager:
>
> | Distribution  | Repository      | Instructions                    |
> | ------------- | --------------- | ------------------------------- |
> | **_Any_**     | **[crates.io]** | `cargo install zoxide --locked` |
> | DragonFly BSD | [DPorts]        | `pkg install zoxide`            |
> | FreeBSD       | [FreshPorts]    | `pkg install zoxide`            |
> | NetBSD        | [pkgsrc]        | `pkgin install zoxide`          |
>
> Or, run this command in your terminal:
>
> ```sh
> curl -sS https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | bash
> ```

   </details>

   <details>
   <summary>Android</summary>

> To install zoxide, use a package manager:
>
> | Repository | Instructions         |
> | ---------- | -------------------- |
> | [Termux]   | `pkg install zoxide` |
>
> Or, run this command in your terminal:
>
> ```sh
> curl -sS https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | bash
> ```

   </details>

## Install Eza

https://github.com/eza-community/eza

   <details>
   <summary>Linux / WSL</summary>

> | Distribution | Repository         | Instructions        |
> | ------------ | ------------------ | ------------------- |
> | **_Any_**    | **[crates.io]**    | `cargo install eza` |
> | _Any_        | [Linuxbrew]        | `brew install eza`  |
> | _Any_        | [nixpkgs]          | `nix-env -iA eza`   |
> | Arch Linux   | [Arch Linux Extra] | `pacman -S eza`     |
> | Manjaro      |                    | `pacman -S eza`     |

   </details>

   <details>
   <summary>macOS</summary>

> To install eza, use a package manager:
>
> | Repository      | Instructions        |
> | --------------- | ------------------- |
> | **[crates.io]** | `cargo install eza` |
> | **[Homebrew]**  | `brew install eza`  |
> | [MacPorts]      | `port install eza`  |
> | [nixpkgs]       | `nix-env -iA eza`   |

   </details>

## Install NeoVim

https://neovim.io/

   <details>
   <summary>Linux / WSL</summary>

> | Distribution | Repository         | Instructions                  |
> | ------------ | ------------------ | ----------------------------- |
> | Arch Linux   | [Arch Linux Extra] | `pacman -S neovim`            |
> | Manjaro      |                    | `pacman -S neovim`            |
> | Ubuntu       |                    | `sudo apt-get install neovim` |

   </details>

   <details>
   <summary>macOS</summary>

> To install NeoVim, use a package manager:
>
> | Repository     | Instructions          |
> | -------------- | --------------------- |
> | **[Homebrew]** | `brew install neovim` |
> | [MacPorts]     | `port install neovim` |

   </details>

## Install Aerospace

https://github.com/nikitabobko/AeroSpace

   <details>
   <summary>macOS</summary>

> | Repository     | Instructions                                    |
> | -------------- | ----------------------------------------------- |
> | **[Homebrew]** | `brew install --cask nikitabobko/tap/aerospace` |

   </details>

## Install WezTerm

https://github.com/wez/wezterm
https://wezfurlong.org/wezterm/installation

# Extra Info

* Font: [Comic Code](https://tosche.net/fonts/comic-code)
* Color Scheme: [ Cattpuchine Macchiato ](https://github.com/catppuccin/catppuccin)
