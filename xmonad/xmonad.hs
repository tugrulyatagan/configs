import XMonad
import XMonad.Hooks.ManageDocks
import XMonad.Config.Gnome
import qualified Data.Map as M
import XMonad.Hooks.SetWMName
--install libghc-xmonad-dev

customKeys (XConfig {modMask = modm}) = M.fromList $
	[ ((modm, xK_p)			, spawn "dmenu_run")
	, ((modm .|. shiftMask, xK_q)	, spawn "gnome-session-quit") 
	]

main = do
    xmonad $ gnomeConfig
	{ modMask 		= mod4Mask
	, borderWidth 		= 3
	, terminal 		= "gnome-terminal"
	, keys     		= customKeys <+> keys gnomeConfig
--	, logHook 		= logHook gnomeConfig
	, manageHook 		= manageDocks <+> manageHook gnomeConfig
	, startupHook 		= startupHook gnomeConfig >> setWMName "LG3D"
	}
