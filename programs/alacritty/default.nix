{ pkgs, lib, ... }:
{
  home.file.".config/alacritty/alacritty.toml".text = ''
    [colors]
    draw_bold_text_with_bright_colors = true

    # Colors (Gruvbox dark)

    # Default colors
    [colors.primary]
    # hard contrast background = = '#1d2021'
    background = '#282828'
    # soft contrast background = = '#32302f'
    foreground = '#ebdbb2'

    # Normal colors
    [colors.normal]
    black   = '#282828'
    red     = '#cc241d'
    green   = '#98971a'
    yellow  = '#d79921'
    blue    = '#458588'
    magenta = '#b16286'
    cyan    = '#689d6a'
    white   = '#a89984'

    # Bright colors
    [colors.bright]
    black   = '#928374'
    red     = '#fb4934'
    green   = '#b8bb26'
    yellow  = '#fabd2f'
    blue    = '#83a598'
    magenta = '#d3869b'
    cyan    = '#8ec07c'
    white   = '#ebdbb2'

    [env]
    TERM = "xterm-256color"

    [font]
    size = 17.0

    [font.bold]
    family = "Iosevka"
    style = "Bold"

    [font.bold_italic]
    family = "Iosevka"
    style = "Bold Italic"

    [font.italic]
    family = "Iosevka"
    style = "Italic"

    [font.normal]
    family = "Iosevka"
    style = "Regular"

    [font.offset]
    x = 0
    y = 1

    [[keyboard.bindings]]
    action = "Paste"
    key = "V"
    mods = "Control|Shift"

    [[keyboard.bindings]]
    action = "Copy"
    key = "C"
    mods = "Control|Shift"

    [[keyboard.bindings]]
    action = "PasteSelection"
    key = "Insert"
    mods = "Shift"

    [[keyboard.bindings]]
    action = "ResetFontSize"
    key = "Key0"
    mods = "Control"

    [[keyboard.bindings]]
    action = "IncreaseFontSize"
    key = "Equals"
    mods = "Control"

    [[keyboard.bindings]]
    action = "IncreaseFontSize"
    key = "Plus"
    mods = "Control"

    [[keyboard.bindings]]
    action = "DecreaseFontSize"
    key = "Minus"
    mods = "Control"

    [[keyboard.bindings]]
    action = "ToggleFullscreen"
    key = "F11"
    mods = "None"

    [[keyboard.bindings]]
    action = "Paste"
    key = "Paste"
    mods = "None"

    [[keyboard.bindings]]
    action = "Copy"
    key = "Copy"
    mods = "None"

    [[keyboard.bindings]]
    action = "ClearLogNotice"
    key = "L"
    mods = "Control"

    [[keyboard.bindings]]
    chars = "\f"
    key = "L"
    mods = "Control"

    [[keyboard.bindings]]
    action = "ScrollPageUp"
    key = "PageUp"
    mode = "~Alt"
    mods = "None"

    [[keyboard.bindings]]
    action = "ScrollPageDown"
    key = "PageDown"
    mode = "~Alt"
    mods = "None"

    [[keyboard.bindings]]
    action = "ScrollToTop"
    key = "Home"
    mode = "~Alt"
    mods = "Shift"

    [[keyboard.bindings]]
    action = "ScrollToBottom"
    key = "End"
    mode = "~Alt"
    mods = "Shift"

    [scrolling]
    history = 5000

    [window]
    dynamic_padding = false
    opacity = 1.0
    title = "Alacritty"
    decorations = "none"
    startup_mode = "Maximized"

    [window.class]
    general = "Alacritty"
    instance = "Alacritty"

    [window.padding]
    x = 6
    y = 6
  '';
}
