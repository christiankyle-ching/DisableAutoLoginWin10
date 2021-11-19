# DisableAutoLoginWin10
A simple batch script to disable auto-logging in of passwordless last user in Windows 10.
If a user without a password shuts down the PC, Windows 10 for some reason decides to automatically login that user on the next restart,
making it more difficult to choose what user you really want to sign-in (as you have to sign-out of that account first before being able
to choose).

For more information, read these threads:
- https://answers.microsoft.com/en-us/windows/forum/all/how-to-stop-auto-login-of-last-user-windows-10/1ce4b352-0856-40c0-87a8-2f8ef299007d
- https://superuser.com/questions/952868/can-i-disable-auto-logon-on-windows-10-home

## How to Install?
**[Download as ZIP](https://github.com/christiankyle-ching/DisableAutoLoginWin10/archive/refs/heads/main.zip)**, then **extract** to your desired location.

## How to Use?
Just right-click `DISABLE_AUTO_LOGIN.bat` > `Run as Administrator`.
