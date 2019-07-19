Windows Commando Prompt (cmd.exe) supports "doskey" that is a way to make aliases in the command line.

By default, there is no commands defined used by "doskey" and (cmd.exe) does not remember if you invoking an alias through the command line terminal.

You can creating a registry key that makes commando prompt loads all statically defined aliases into cmd.exe every time launching a new command line terminal window.

The file "macros.doskey" has defined some variables with a command that is being executed by invoking an alias that is perfectly loaded into command line terminal.

You need to placing the file "macros.doskey" into your User Profile folder to just make this works perfectly ok.

You need to invoke and run following command with Administratives Privileges in Commando Prompt once, creating the registry key:
reg add "HKCU\Software\Microsoft\Command Processor" /v Autorun /d "doskey /macrofile=\"%USERPROFILE%\macros.doskey\"" /f

You can delete the registry key to disable the functionality (cmd.exe) loads your doskey macros every time launching a new command line terminal.

To view "doskey" macros loaded into command line terminal correctly, you can run the following command:
doskey /macros:all

Doskey is powerful way to shorten commands to automating tasks that are needed on daily basis.

You are able to automatically install this solution:

1. Open cmd.exe in Run As Administrator.
2. Navigate to the folder with "install.cmd".
3. Run "install.cmd" with following steps and wait until it finished.
4. Done.

Thanks for reading.
