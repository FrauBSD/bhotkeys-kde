# bhotkeys-kde

KDE Plasma's stock global shortcuts as rows in the bhotkeys chord
list.

Plasma binds its own keys through kglobalaccel: `Alt+Space` for
KRunner, `Super+V` for the clipboard, `Super+I` for System Settings,
`Print` for Spectacle. This package ships one
[bhotkeys](https://github.com/FrauBSD/bhotkeys) plugin per shortcut,
each with `listen 0` and no command. bhotkeys does not listen for
them; Plasma still owns the key. The rows exist so the chord list
under KDE shows every shortcut the session has, and so a user can
turn one off or move it from the same place as everything else.
`bhotkeys-kde-apply` writes that choice to the kglobalaccel component
and action named in each file, so Plasma's own shortcut settings
agree.

The plugins are hidden (`session 0`) and off under every other
window manager.

Home: [FrauBSD/bhotkeys-kde](https://github.com/FrauBSD/bhotkeys-kde)

## Requirements

- `bhotkeys`
- Plasma (KWin, kglobalaccel, `qdbus6`, `kbuildsycoca6`) at run time

## Build / install

```sh
make install    # PREFIX=/usr/local by default
```

Installs 19 plugin files into `${PREFIX}/share/bhotkeys/plugins.d`.

## Rows

| id | chord | Plasma action |
|---|---|---|
| kde-krunner | Alt+space | KRunner |
| kde-krunner-clip | Alt+Shift+F2 | Run clipboard |
| kde-clipboard | Super+v | Clipboard |
| kde-clipboard-action | Super+Ctrl+x | Clipboard action |
| kde-emoji | Super+period | Emoji Selector |
| kde-settings | Super+i | System Settings |
| kde-monitor | Super+Escape | System Monitor |
| kde-power | Super+b | Power profile |
| kde-display | Super+p | Switch Display |
| kde-activity-next | Super+a | Next activity |
| kde-activity-prev | Super+Shift+a | Previous activity |
| kde-shot | Print | Spectacle |
| kde-shot-desktop | Shift+Print | Entire desktop |
| kde-shot-window | Super+Print | Active window |
| kde-shot-under | Super+Ctrl+Print | Window under cursor |
| kde-shot-region | Super+Shift+Print | Rectangular region |
| kde-rec-region | Super+r | Region recording |
| kde-rec-window | Super+Ctrl+r | Window recording |
| kde-rec-screen | Super+Alt+r | Screen recording |

Each file carries a `# kglobalaccel <component> <action>` comment
that the apply script reads; bhotkeys itself ignores it.
