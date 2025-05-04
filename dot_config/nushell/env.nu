$env.PATH = ($env.PATH | prepend ["/usr/local/bin", path join [$env.HOME, "/.cargo/bin"]])
if "LD_LIBRARY_PATH" not-in $env {
    $env.LD_LIBRARY_PATH = []
}
$env.LD_LIBRARY_PATH = ($env.LD_LIBRARY_PATH | prepend ["/usr/lib", "/usr/local/lib"])
$env.RUSTUP_UPDATE_ROOT = "https://mirrors.ustc.edu.cn/rust-static/rustup"
$env.RUSTUP_DIST_SERVER = "https://mirrors.ustc.edu.cn/rust-static"
$env.ANDROID_HOME = "/home/impodog/Android/Sdk"
$env.ANDROID_NDK_ROOT = "/home/impodog/Android/Sdk/ndk/27.0.12077973/"
$env.GTK_IM_MODULE = "fcitx"
$env.QT_IM_MODULE = "fcitx"
$env.SDL_IM_MODULE = "fcitx"
$env.GLFW_IM_MODULE = "fcitx"
$env.XMODIFIERS = "@im = fcitx"

# Zoxide init
zoxide init nushell | save -f ~/.zoxide.nu

