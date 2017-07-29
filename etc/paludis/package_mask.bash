#!/bin/sh

/etc/paludis-shared/package_mask.bash

echo '
	# No tiene staging.
        =app-emulation/wine-1.9.23-r1
'
	# fixme:winediag:start_process Wine Staging 2.1 is a testing version containing experimental patches.
	# fixme:winediag:start_process Please mention your exact version when filing bug reports on winehq.org.
	# fixme:actctx:parse_depend_manifests Could not find dependent assembly L"Microsoft.Windows.Common-Controls" (6.0.0.0)
	# wine: Unhandled illegal instruction at address 0xf6fc1a61 (thread 0011), starting debugger...
	# err:seh:start_debugger Couldn't start debugger ("winedbg --auto 16 60") (2)
	# Read the Wine Developers Guide on how to set up winedbg or another debugger
	# err:module:attach_process_dlls "comctl32.dll" failed to initialize, aborting
	# err:module:LdrInitializeThunk Main exe initialization for L"C:\\windows\\system32\\winecfg.exe" failed, status c000001d
echo '
#	=app-emulation/wine-2.1-r1
#	=app-emulation/wine-2.0
	# sh: Segmentation fault.
	#=media/vlc-3.0.0_p20170206
'

