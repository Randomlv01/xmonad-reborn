import XMonad
import XMonad.Util.EZConfig (additionalKeysP)
import XMonad.Hooks.ManageDocks (avoidStruts, docks)
import XMonad.Layout.Spacing
import XMonad.Layout.NoBorders
import XMonad.Util.SpawnOnce (spawnOnce)
import XMonad.Hooks.InsertPosition
import System.IO
import XMonad.Hooks.EwmhDesktops (ewmh, ewmhFullscreen)

main = do
    -- Wir nutzen jetzt das normale 'xmonad' ohne den xmobar-Wrapper
    xmonad $ ewmhFullscreen $ ewmh $ docks $ def
        { modMask            = mod4Mask
        , terminal           = "alacritty"
        , borderWidth        = 2
        , focusedBorderColor = "#6ba4f6"
        , normalBorderColor  = "#31344f"
        , layoutHook         = myLayout
        , startupHook        = myStartupHook
        , manageHook         = myManageHook
        } `additionalKeysP` myKeys

myManageHook = insertPosition Below Newer <+> manageHook def

myStartupHook :: X ()
myStartupHook = do
    spawnOnce "nitrogen --restore &"
    spawnOnce "picom &"
    spawnOnce "dunst &"
--    spawnOnce "lxsession -n &"
    spawnOnce "polybar &"
--    spawnOnce "/home/random/.local/share/dwm-titus/polybar/launch.sh &"
    spawnOnce "xsetroot -cursor_name left_ptr &"

myKeys =
    [ ("M-b",        spawn "firefox")
    , ("M-e",        spawn "thunar")
    , ("M-<Return>", spawn "alacritty")
    , ("M-q",        kill)
    , ("M-d",        spawn "rofi -show drun")
    , ("M-S-r",      spawn "xmonad --recompile; xmonad --restart")
    ]

myLayout = avoidStruts $ smartBorders $ gapSpaced (Tall 1 (3/100) (1/2)) ||| Full
  where
    gapSpaced = spacingRaw True (Border 3 3 3 3) True (Border 3 3 3 3) True
