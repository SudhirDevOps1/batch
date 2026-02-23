auto-file-organizer@echo off
chcp 65001 >nul 2>&1
setlocal EnableDelayedExpansion
title SAFE SORT + RENAME TOOL v7.0
mode con cols=72 lines=55
color 0B

REM ================================================================
REM   EXTENSION CONFIG
REM ================================================================
set "IMG=jpg jpeg png bmp gif tiff tif webp ico svg heic raw cr2 jfif avif"
set "VID=mp4 avi mkv mov wmv flv webm 3gp m4v mpg mpeg vob ts mts"
set "AUD=mp3 wav flac aac ogg wma m4a opus aiff alac amr mid midi"
set "DOC=pdf doc docx xls xlsx ppt pptx txt rtf csv odt ods odp epub"
set "ARC=zip rar 7z tar gz bz2 xz iso cab lzh"
set "SET=exe msi appimage deb rpm apk"

REM === CODE SUB-CATEGORIES ===
set "COD_WEB_HTML=html htm"
set "COD_WEB_CSS=css scss sass less"
set "COD_WEB_JS=js jsx ts tsx mjs"
set "COD_PYTHON=py pyw pyx pxd"
set "COD_JAVA=java jar class"
set "COD_CPP=cpp c cc cxx h hpp hxx"
set "COD_CSHARP=cs"
set "COD_PHP=php phtml php3 php4 php5"
set "COD_RUBY=rb erb"
set "COD_GO=go"
set "COD_RUST=rs"
set "COD_SWIFT=swift"
set "COD_KOTLIN=kt kts"
set "COD_SHELL=sh bash zsh fish"
set "COD_BATCH=bat cmd ps1 psm1"
set "COD_SQL=sql"
set "COD_JSON=json jsonc json5"
set "COD_XML=xml xsl xslt xsd"
set "COD_YAML=yml yaml"
set "COD_MARKDOWN=md markdown"
set "COD_LUA=lua"
set "COD_PERL=pl pm"
set "COD_R=r R rmd"
set "COD_DART=dart"
set "COD_VB=vbs vb bas"
set "COD_INI=ini cfg conf config toml env"

REM === ALL CODE EXTENSIONS (for counting) ===
set "COD_ALL=html htm css scss sass less js jsx ts tsx mjs py pyw pyx pxd"
set "COD_ALL=!COD_ALL! java jar class cpp c cc cxx h hpp hxx cs"
set "COD_ALL=!COD_ALL! php phtml php3 php4 php5 rb erb go rs swift kt kts"
set "COD_ALL=!COD_ALL! sh bash zsh fish bat cmd ps1 psm1 sql"
set "COD_ALL=!COD_ALL! json jsonc json5 xml xsl xslt xsd yml yaml"
set "COD_ALL=!COD_ALL! md markdown lua pl pm r R rmd dart vbs vb bas"
set "COD_ALL=!COD_ALL! ini cfg conf config toml env"

REM === CODE SUB-FOLDER MAPPING ===
set "CODSUB_COUNT=26"
set "CODSUB_1_NAME=HTML"         & set "CODSUB_1_EXT=!COD_WEB_HTML!"
set "CODSUB_2_NAME=CSS"          & set "CODSUB_2_EXT=!COD_WEB_CSS!"
set "CODSUB_3_NAME=JavaScript"   & set "CODSUB_3_EXT=!COD_WEB_JS!"
set "CODSUB_4_NAME=Python"       & set "CODSUB_4_EXT=!COD_PYTHON!"
set "CODSUB_5_NAME=Java"         & set "CODSUB_5_EXT=!COD_JAVA!"
set "CODSUB_6_NAME=C_CPP"        & set "CODSUB_6_EXT=!COD_CPP!"
set "CODSUB_7_NAME=CSharp"       & set "CODSUB_7_EXT=!COD_CSHARP!"
set "CODSUB_8_NAME=PHP"          & set "CODSUB_8_EXT=!COD_PHP!"
set "CODSUB_9_NAME=Ruby"         & set "CODSUB_9_EXT=!COD_RUBY!"
set "CODSUB_10_NAME=Go"          & set "CODSUB_10_EXT=!COD_GO!"
set "CODSUB_11_NAME=Rust"        & set "CODSUB_11_EXT=!COD_RUST!"
set "CODSUB_12_NAME=Swift"       & set "CODSUB_12_EXT=!COD_SWIFT!"
set "CODSUB_13_NAME=Kotlin"      & set "CODSUB_13_EXT=!COD_KOTLIN!"
set "CODSUB_14_NAME=Shell"       & set "CODSUB_14_EXT=!COD_SHELL!"
set "CODSUB_15_NAME=Batch"       & set "CODSUB_15_EXT=!COD_BATCH!"
set "CODSUB_16_NAME=SQL"         & set "CODSUB_16_EXT=!COD_SQL!"
set "CODSUB_17_NAME=JSON"        & set "CODSUB_17_EXT=!COD_JSON!"
set "CODSUB_18_NAME=XML"         & set "CODSUB_18_EXT=!COD_XML!"
set "CODSUB_19_NAME=YAML"        & set "CODSUB_19_EXT=!COD_YAML!"
set "CODSUB_20_NAME=Markdown"    & set "CODSUB_20_EXT=!COD_MARKDOWN!"
set "CODSUB_21_NAME=Lua"         & set "CODSUB_21_EXT=!COD_LUA!"
set "CODSUB_22_NAME=Perl"        & set "CODSUB_22_EXT=!COD_PERL!"
set "CODSUB_23_NAME=R_Lang"      & set "CODSUB_23_EXT=!COD_R!"
set "CODSUB_24_NAME=Dart"        & set "CODSUB_24_EXT=!COD_DART!"
set "CODSUB_25_NAME=VBScript"    & set "CODSUB_25_EXT=!COD_VB!"
set "CODSUB_26_NAME=Config"      & set "CODSUB_26_EXT=!COD_INI!"

set "work_dir=%~dp0"
set "bat_name=%~nx0"
set "safe_uid=%RANDOM%%RANDOM%"

REM ================================================================
:MAIN_MENU
REM ================================================================
cls
echo.
echo  +======================================================+
echo  ^|     [#] SAFE SORT + RENAME TOOL  v7.0               ^|
echo  +======================================================+
echo  ^|                                                      ^|
echo  ^|  [1]  SORT + RENAME  (Full Auto)                     ^|
echo  ^|  [2]  SORT ONLY     (Sirf organize)                  ^|
echo  ^|  [3]  RENAME ONLY   (Sirf naam badlo)                ^|
echo  ^|  [4]  UNDO          (Sab wapas laao)                 ^|
echo  ^|  [5]  CLEANUP       (Stuck temp files fix)           ^|
echo  ^|  [6]  Change Folder                                  ^|
echo  ^|  [0]  Exit                                           ^|
echo  ^|                                                      ^|
echo  +======================================================+
echo.
echo   Folder: !work_dir!
echo.

REM -- Count all categories --
call :COUNT_ALL

echo   +------------------------------------------------+
echo   ^|  IMG: !c1!    VID: !c2!    AUD: !c3!    DOC: !c4!          ^|
echo   ^|  ARC: !c5!    CODE: !c6!   SETUP: !c7!               ^|
echo   ^|  TOTAL: !c_all! files                              ^|
echo   +------------------------------------------------+
echo.

REM -- Check for stuck temp files --
set "stuck=0"
for %%F in ("!work_dir!_safe_*.*") do ( if exist "%%F" set /a "stuck+=1" )
if !stuck! GTR 0 (
    echo   [!!] WARNING: !stuck! stuck temp files found!
    echo       Use option [5] CLEANUP to fix them.
    echo.
)

set /p "ch=  Choose (0-6): "

if "!ch!"=="1" goto SORT_RENAME
if "!ch!"=="2" goto SORT_ONLY
if "!ch!"=="3" goto RENAME_MENU
if "!ch!"=="4" goto UNDO
if "!ch!"=="5" goto CLEANUP
if "!ch!"=="6" goto CHANGE_DIR
if "!ch!"=="0" goto BYE

echo   [X] Wrong choice!
timeout /t 1 >nul
goto MAIN_MENU


REM ================================================================
REM   COUNT_ALL
REM ================================================================
:COUNT_ALL
set "c1=0" & set "c2=0" & set "c3=0"
set "c4=0" & set "c5=0" & set "c6=0" & set "c7=0"

for %%F in ("!work_dir!*.*") do (
    if exist "%%F" if /I not "%%~nxF"=="!bat_name!" (
        set "ext=%%~xF"
        set "ext=!ext:~1!"
        set "matched=0"

        for %%E in (!IMG!) do ( if /I "!ext!"=="%%E" if !matched!==0 ( set /a "c1+=1" & set "matched=1" ))
        for %%E in (!VID!) do ( if /I "!ext!"=="%%E" if !matched!==0 ( set /a "c2+=1" & set "matched=1" ))
        for %%E in (!AUD!) do ( if /I "!ext!"=="%%E" if !matched!==0 ( set /a "c3+=1" & set "matched=1" ))
        for %%E in (!DOC!) do ( if /I "!ext!"=="%%E" if !matched!==0 ( set /a "c4+=1" & set "matched=1" ))
        for %%E in (!ARC!) do ( if /I "!ext!"=="%%E" if !matched!==0 ( set /a "c5+=1" & set "matched=1" ))
        for %%E in (!COD_ALL!) do ( if /I "!ext!"=="%%E" if !matched!==0 ( set /a "c6+=1" & set "matched=1" ))
        for %%E in (!SET!) do ( if /I "!ext!"=="%%E" if !matched!==0 ( set /a "c7+=1" & set "matched=1" ))
    )
)
set /a "c_all=c1+c2+c3+c4+c5+c6+c7"
exit /b


REM ================================================================
:CHANGE_DIR
REM ================================================================
cls
echo.
echo  +======================================================+
echo  ^|            CHANGE FOLDER                             ^|
echo  +======================================================+
echo  ^|  Current: !work_dir!
echo  +------------------------------------------------------+
echo.
echo   [1] Type new path
echo   [2] Reset (bat file wala folder)
echo   [3] Back
echo.
set /p "fc=  >> "
if "!fc!"=="1" (
    set /p "np=  Full path: "
    if exist "!np!\" (
        set "work_dir=!np!\"
        echo   [OK] Folder set!
    ) else ( echo   [X] Path nahi mila! )
    timeout /t 2 >nul
)
if "!fc!"=="2" (
    set "work_dir=%~dp0"
    echo   [OK] Reset!
    timeout /t 1 >nul
)
goto MAIN_MENU


REM ================================================================
REM         OPTION 1: SORT + RENAME (FULL AUTO)
REM ================================================================
:SORT_RENAME
cls
echo.
echo  +======================================================+
echo  ^|       SORT + RENAME -- Full Auto Mode                ^|
echo  +======================================================+
echo  ^|  Folder: !work_dir!
echo  ^|                                                      ^|
echo  ^|  Kya hoga:                                           ^|
echo  ^|  1. Category folders banenge                         ^|
echo  ^|  2. Files sahi folder mein move hongi                ^|
echo  ^|  3. Code files sub-folders mein jayengi              ^|
echo  ^|     (Code\HTML, Code\CSS, Code\Python...)            ^|
echo  ^|  4. Har file rename hogi (img_001, vid_001...)       ^|
echo  ^|  5. Log file mein ORIGINAL naam save hoga            ^|
echo  +======================================================+
echo.

if !c_all!==0 (
    echo   [X] Koi supported file nahi mili!
    pause
    goto MAIN_MENU
)

REM -- Preview --
echo  +======================================================+
echo  ^|  PREVIEW:                                            ^|
echo  +------------------------------------------------------+

if !c1! GTR 0 ( call :PREVIEW_CAT "Images" "img" "!IMG!" )
if !c2! GTR 0 ( call :PREVIEW_CAT "Videos" "vid" "!VID!" )
if !c3! GTR 0 ( call :PREVIEW_CAT "Audio" "aud" "!AUD!" )
if !c4! GTR 0 ( call :PREVIEW_CAT "Documents" "doc" "!DOC!" )
if !c5! GTR 0 ( call :PREVIEW_CAT "Archives" "arc" "!ARC!" )
if !c6! GTR 0 ( call :PREVIEW_CODE )
if !c7! GTR 0 ( call :PREVIEW_CAT "Setups" "setup" "!SET!" )

echo  +------------------------------------------------------+
echo  ^|  Total: !c_all! files will be sorted + renamed         ^|
echo  +======================================================+
echo.
echo   +------------------------------------------------+
echo   ^|  [!!] Files PERMANENTLY rename hongi!           ^|
echo   ^|  Original names LOG mein save honge             ^|
echo   ^|  UNDO se wapas la sakte ho                      ^|
echo   ^|                                                 ^|
echo   ^|  Y = Start  ^|  N = Cancel  ^|  M = Menu         ^|
echo   +------------------------------------------------+
echo.
set /p "go=  Confirm (Y/N/M): "
if /i "!go!"=="M" goto MAIN_MENU
if /i not "!go!"=="Y" (
    echo   [X] Cancelled!
    timeout /t 2 >nul
    goto MAIN_MENU
)

REM -- Create UNDO LOG --
set "ts=%date:~-4,4%%date:~4,2%%date:~7,2%_%time:~0,2%%time:~3,2%%time:~6,2%"
set "ts=!ts: =0!"
set "log=!work_dir!_UNDO_LOG_!ts!.txt"

(
echo #SORT_RENAME_LOG
echo #DATE=%date% %time%
echo #FOLDER=!work_dir!
echo #FORMAT=ORIGINAL_NAME^|NEW_FOLDER^|NEW_NAME
echo #---------------------------------------------
) > "!log!"

echo.
echo  ======================================================
echo   PROCESSING -- Please wait...
echo  ======================================================
echo.

set "total_ok=0"
set "total_fail=0"

if !c1! GTR 0 ( call :SAFE_SORT_RENAME "Images" "img" "!IMG!" )
if !c2! GTR 0 ( call :SAFE_SORT_RENAME "Videos" "vid" "!VID!" )
if !c3! GTR 0 ( call :SAFE_SORT_RENAME "Audio" "aud" "!AUD!" )
if !c4! GTR 0 ( call :SAFE_SORT_RENAME "Documents" "doc" "!DOC!" )
if !c5! GTR 0 ( call :SAFE_SORT_RENAME "Archives" "arc" "!ARC!" )
if !c6! GTR 0 ( call :SAFE_SORT_RENAME_CODE )
if !c7! GTR 0 ( call :SAFE_SORT_RENAME "Setups" "setup" "!SET!" )

echo.
echo  +======================================================+
echo  ^|              DONE!                                   ^|
echo  +------------------------------------------------------+
echo  ^|                                                      ^|
if !c1! GTR 0 echo  ^|  Images  --^> Images\img_001...                    ^|
if !c2! GTR 0 echo  ^|  Videos  --^> Videos\vid_001...                    ^|
if !c3! GTR 0 echo  ^|  Audio   --^> Audio\aud_001...                     ^|
if !c4! GTR 0 echo  ^|  Docs    --^> Documents\doc_001...                 ^|
if !c5! GTR 0 echo  ^|  Zips    --^> Archives\arc_001...                  ^|
if !c6! GTR 0 (
echo  ^|  Code    --^> Code\HTML\, Code\CSS\, Code\Python\... ^|
)
if !c7! GTR 0 echo  ^|  Setups  --^> Setups\setup_001...                  ^|
echo  ^|                                                      ^|
echo  ^|  [OK] Success : !total_ok!
echo  ^|  [XX] Failed  : !total_fail!
echo  ^|  Log saved (use option 4 to undo)                    ^|
echo  ^|                                                      ^|
echo  +======================================================+

(
echo #RESULT=!total_ok! OK / !total_fail! FAILED
) >> "!log!"

goto AFTER_ACTION


REM ================================================================
REM         OPTION 2: SORT ONLY (No Rename)
REM ================================================================
:SORT_ONLY
cls
echo.
echo  +======================================================+
echo  ^|       SORT ONLY -- Organize without rename           ^|
echo  +------------------------------------------------------+
echo  ^|  Files move hongi -- naam SAME rahega                ^|
echo  ^|  Code files sub-folders mein jayengi                 ^|
echo  ^|  Folder: !work_dir!
echo  +======================================================+
echo.

if !c_all!==0 (
    echo   [X] Koi file nahi mili!
    pause
    goto MAIN_MENU
)

echo   Total: !c_all! files sort hongi
echo.
set /p "go=  Start? (Y/N): "
if /i not "!go!"=="Y" goto MAIN_MENU

set "sort_ok=0"
set "sort_fail=0"

REM -- Create undo log --
set "ts=%date:~-4,4%%date:~4,2%%date:~7,2%_%time:~0,2%%time:~3,2%%time:~6,2%"
set "ts=!ts: =0!"
set "log=!work_dir!_UNDO_LOG_!ts!.txt"

(
echo #SORT_ONLY_LOG
echo #DATE=%date% %time%
echo #FOLDER=!work_dir!
echo #FORMAT=FILENAME^|MOVED_TO_FOLDER
echo #---------------------------------------------
) > "!log!"

echo.
echo  Sorting...
echo  --------------------------------------------------------

if !c1! GTR 0 ( call :SAFE_SORT "Images" "!IMG!" )
if !c2! GTR 0 ( call :SAFE_SORT "Videos" "!VID!" )
if !c3! GTR 0 ( call :SAFE_SORT "Audio" "!AUD!" )
if !c4! GTR 0 ( call :SAFE_SORT "Documents" "!DOC!" )
if !c5! GTR 0 ( call :SAFE_SORT "Archives" "!ARC!" )
if !c6! GTR 0 ( call :SAFE_SORT_CODE_ONLY )
if !c7! GTR 0 ( call :SAFE_SORT "Setups" "!SET!" )

echo  --------------------------------------------------------
echo.
echo  +======================================================+
echo  ^|  SORT COMPLETE!                                      ^|
echo  ^|  [OK] !sort_ok! moved  ^|  [XX] !sort_fail! failed              ^|
echo  ^|  Undo log saved                                      ^|
echo  +======================================================+

goto AFTER_ACTION


REM ================================================================
REM         OPTION 3: RENAME ONLY
REM ================================================================
:RENAME_MENU
cls
echo.
echo  +======================================================+
echo  ^|       RENAME ONLY -- Choose Category                 ^|
echo  +------------------------------------------------------+
echo  ^|                                                      ^|
echo  ^|  [1]  Images  (!c1!)  --^> img_001, img_002...        ^|
echo  ^|  [2]  Videos  (!c2!)  --^> vid_001, vid_002...        ^|
echo  ^|  [3]  Audio   (!c3!)  --^> aud_001, aud_002...        ^|
echo  ^|  [4]  Docs    (!c4!)  --^> doc_001, doc_002...        ^|
echo  ^|  [5]  Zip     (!c5!)  --^> arc_001, arc_002...        ^|
echo  ^|  [6]  Code    (!c6!)  --^> code_001, code_002...      ^|
echo  ^|  [7]  Setup   (!c7!)  --^> setup_001, setup_002...    ^|
echo  ^|  [8]  ALL     (!c_all!)  --^> Sab ek saath             ^|
echo  ^|  [0]  Back                                           ^|
echo  ^|                                                      ^|
echo  +======================================================+
echo.
set /p "rc=  >> "

if "!rc!"=="1" ( call :SAFE_RENAME "img" "!IMG!" & pause & goto RENAME_MENU )
if "!rc!"=="2" ( call :SAFE_RENAME "vid" "!VID!" & pause & goto RENAME_MENU )
if "!rc!"=="3" ( call :SAFE_RENAME "aud" "!AUD!" & pause & goto RENAME_MENU )
if "!rc!"=="4" ( call :SAFE_RENAME "doc" "!DOC!" & pause & goto RENAME_MENU )
if "!rc!"=="5" ( call :SAFE_RENAME "arc" "!ARC!" & pause & goto RENAME_MENU )
if "!rc!"=="6" ( call :SAFE_RENAME "code" "!COD_ALL!" & pause & goto RENAME_MENU )
if "!rc!"=="7" ( call :SAFE_RENAME "setup" "!SET!" & pause & goto RENAME_MENU )
if "!rc!"=="8" (
    call :SAFE_RENAME "img" "!IMG!"
    call :SAFE_RENAME "vid" "!VID!"
    call :SAFE_RENAME "aud" "!AUD!"
    call :SAFE_RENAME "doc" "!DOC!"
    call :SAFE_RENAME "arc" "!ARC!"
    call :SAFE_RENAME "code" "!COD_ALL!"
    call :SAFE_RENAME "setup" "!SET!"
    pause
    goto RENAME_MENU
)
if "!rc!"=="0" goto MAIN_MENU
goto RENAME_MENU


REM ================================================================
REM         OPTION 4: UNDO
REM ================================================================
:UNDO
cls
echo.
echo  +======================================================+
echo  ^|            UNDO -- Restore Files                     ^|
echo  +------------------------------------------------------+
echo  ^|                                                      ^|
echo  ^|  [1] Move files back from folders                    ^|
echo  ^|      (Images/Videos/Code/HTML etc --^> main folder)  ^|
echo  ^|                                                      ^|
echo  ^|  [2] View undo logs                                  ^|
echo  ^|                                                      ^|
echo  ^|  [3] Delete empty category folders                   ^|
echo  ^|                                                      ^|
echo  ^|  [0] Back                                            ^|
echo  ^|                                                      ^|
echo  +======================================================+
echo.
set /p "uc=  >> "

if "!uc!"=="1" goto UNDO_MOVE
if "!uc!"=="2" goto UNDO_VIEW_LOGS
if "!uc!"=="3" goto UNDO_DEL_EMPTY
if "!uc!"=="0" goto MAIN_MENU
goto UNDO

:UNDO_MOVE
echo.
echo   [!!] Ye action sabhi category folders se files
echo        wapas main folder mein le aayega.
echo        (Including Code sub-folders)
echo.
set /p "confirm=  Confirm? (Y/N): "
if /i not "!confirm!"=="Y" goto UNDO

set "undo_ok=0"

REM -- Standard folders --
for %%D in (Images Videos Audio Documents Archives Setups) do (
    if exist "!work_dir!%%D\" (
        echo.
        echo   %%D\ --^> main folder
        for %%F in ("!work_dir!%%D\*.*") do (
            if exist "%%F" (
                if exist "!work_dir!%%~nxF" (
                    echo     [!!] %%~nxF already exists! Skipping.
                ) else (
                    move "%%F" "!work_dir!" >nul 2>&1
                    if not errorlevel 1 (
                        set /a "undo_ok+=1"
                        echo     [<<] %%~nxF
                    ) else (
                        echo     [XX] %%~nxF
                    )
                )
            )
        )
    )
)

REM -- Code sub-folders --
if exist "!work_dir!Code\" (
    echo.
    echo   Code\ sub-folders --^> main folder
    for /D %%S in ("!work_dir!Code\*") do (
        if exist "%%S\" (
            echo.
            echo   Code\%%~nxS\ --^> main folder
            for %%F in ("%%S\*.*") do (
                if exist "%%F" (
                    if exist "!work_dir!%%~nxF" (
                        echo     [!!] %%~nxF already exists! Skipping.
                    ) else (
                        move "%%F" "!work_dir!" >nul 2>&1
                        if not errorlevel 1 (
                            set /a "undo_ok+=1"
                            echo     [<<] %%~nxF
                        ) else (
                            echo     [XX] %%~nxF
                        )
                    )
                )
            )
        )
    )
)

echo.
echo   [OK] !undo_ok! files restored!
echo.
pause
goto UNDO

:UNDO_VIEW_LOGS
echo.
echo   Available undo logs:
echo   ----------------------------------------
set "log_found=0"
for %%F in ("!work_dir!_UNDO_LOG_*.txt") do (
    if exist "%%F" (
        set /a "log_found+=1"
        echo     !log_found!. %%~nxF
    )
)
if !log_found!==0 (
    echo     [X] Koi log file nahi mili!
) else (
    echo.
    echo   Kaunsa open karna hai? (number ya 0 = back)
    set /p "ln=  >> "
    if not "!ln!"=="0" (
        set "lc=0"
        for %%F in ("!work_dir!_UNDO_LOG_*.txt") do (
            set /a "lc+=1"
            if "!lc!"=="!ln!" notepad "%%F"
        )
    )
)
echo.
pause
goto UNDO

:UNDO_DEL_EMPTY
echo.
REM -- Code sub-folders first --
if exist "!work_dir!Code\" (
    for /D %%S in ("!work_dir!Code\*") do (
        rd "%%S" 2>nul
        if not errorlevel 1 (
            echo   [DEL] Code\%%~nxS\ deleted (empty)
        )
    )
)

for %%D in (Images Videos Audio Documents Archives Code Setups) do (
    if exist "!work_dir!%%D\" (
        rd "!work_dir!%%D" 2>nul
        if not errorlevel 1 (
            echo   [DEL] %%D\ deleted (was empty)
        ) else (
            echo   [--]  %%D\ has files -- not deleted
        )
    )
)
echo.
pause
goto UNDO


REM ================================================================
REM         OPTION 5: CLEANUP
REM ================================================================
:CLEANUP
cls
echo.
echo  +======================================================+
echo  ^|          CLEANUP -- Fix Stuck Temp Files              ^|
echo  +------------------------------------------------------+
echo  ^|  Agar script crash ho gayi thi toh temp files        ^|
echo  ^|  _safe_ prefix ke saath reh jaati hain.              ^|
echo  ^|  Ye unhe wapas normal naam de dega.                  ^|
echo  +======================================================+
echo.

set "stuck_count=0"
for %%F in ("!work_dir!_safe_*.*") do (
    if exist "%%F" (
        set /a "stuck_count+=1"
        echo   [!!] %%~nxF
    )
)

REM Also check inside category folders
for %%D in (Images Videos Audio Documents Archives Code Setups) do (
    if exist "!work_dir!%%D\" (
        for %%F in ("!work_dir!%%D\_safe_*.*") do (
            if exist "%%F" (
                set /a "stuck_count+=1"
                echo   [!!] %%D\%%~nxF
            )
        )
        REM Check code sub-folders
        if /I "%%D"=="Code" (
            for /D %%S in ("!work_dir!Code\*") do (
                for %%F in ("%%S\_safe_*.*") do (
                    if exist "%%F" (
                        set /a "stuck_count+=1"
                        echo   [!!] Code\%%~nxS\%%~nxF
                    )
                )
            )
        )
    )
)

if !stuck_count!==0 (
    echo   [OK] Koi stuck file nahi mili! Sab clean hai.
    echo.
    pause
    goto MAIN_MENU
)

echo.
echo   Found !stuck_count! stuck temp files.
echo.
echo   [1] Remove _safe_ prefix (recover files)
echo   [2] Back
echo.
set /p "cl=  >> "

if "!cl!"=="1" (
    set "fixed=0"

    REM Main folder
    for %%F in ("!work_dir!_safe_*.*") do (
        if exist "%%F" (
            set /a "fixed+=1"
            ren "%%F" "recovered_!fixed!%%~xF" 2>nul
            if not errorlevel 1 (
                echo   [OK] %%~nxF --^> recovered_!fixed!%%~xF
            )
        )
    )

    REM Category folders
    for %%D in (Images Videos Audio Documents Archives Setups) do (
        if exist "!work_dir!%%D\" (
            for %%F in ("!work_dir!%%D\_safe_*.*") do (
                if exist "%%F" (
                    set /a "fixed+=1"
                    ren "%%F" "recovered_!fixed!%%~xF" 2>nul
                    if not errorlevel 1 (
                        echo   [OK] %%D\%%~nxF --^> recovered_!fixed!%%~xF
                    )
                )
            )
        )
    )

    REM Code sub-folders
    if exist "!work_dir!Code\" (
        for /D %%S in ("!work_dir!Code\*") do (
            for %%F in ("%%S\_safe_*.*") do (
                if exist "%%F" (
                    set /a "fixed+=1"
                    ren "%%F" "recovered_!fixed!%%~xF" 2>nul
                    if not errorlevel 1 (
                        echo   [OK] Code\%%~nxS\%%~nxF --^> recovered_!fixed!%%~xF
                    )
                )
            )
        )
    )

    echo.
    echo   [OK] !fixed! files recovered!
)
echo.
pause
goto MAIN_MENU


REM ================================================================
REM                  CORE FUNCTIONS
REM ================================================================

REM ================================================================
REM  SAFE_SORT_RENAME -- Sort into folder + rename safely
REM  Usage: call :SAFE_SORT_RENAME "FolderName" "prefix" "extensions"
REM ================================================================
:SAFE_SORT_RENAME
set "_folder=%~1"
set "_prefix=%~2"
set "_exts=%~3"

REM Count files
set "_cnt=0"
for %%E in (!_exts!) do (
    for %%F in ("!work_dir!*.%%E") do (
        if exist "%%F" if /I not "%%~nxF"=="!bat_name!" (
            set /a "_cnt+=1"
        )
    )
)
if !_cnt!==0 exit /b

echo.
echo   [>>] !_folder! [!_cnt! files]
echo   ----------------------------------------

REM Create folder
mkdir "!work_dir!!_folder!" 2>nul

REM Step A: Move to category folder
for %%E in (!_exts!) do (
    for %%F in ("!work_dir!*.%%E") do (
        if exist "%%F" if /I not "%%~nxF"=="!bat_name!" (
            set "_orig=%%~nxF"
            move "%%F" "!work_dir!!_folder!\" >nul 2>&1
            if not errorlevel 1 (
                echo !_orig!^|!_folder!^|pending >> "!log!"
            )
        )
    )
)

REM Step B: Safe temp rename
set "_uid=_safe_!safe_uid!_"
set "_tn=0"
for %%F in ("!work_dir!!_folder!\*.*") do (
    if exist "%%F" (
        set "_origname=%%~nxF"
        echo "!_origname!" | findstr /i "_safe_" >nul 2>&1
        if errorlevel 1 (
            set /a "_tn+=1"
            ren "%%F" "!_uid!!_tn!%%~xF" 2>nul
            if errorlevel 1 (
                echo     [!!] Temp rename failed: %%~nxF
            )
        )
    )
)

REM Step C: Final rename
set "_rn=0"
for %%F in ("!work_dir!!_folder!\!_uid!*.*") do (
    if exist "%%F" (
        set /a "_rn+=1"
        call :PAD3 !_rn!

        set "_newname=!_prefix!_!p3!%%~xF"

        if exist "!work_dir!!_folder!\!_newname!" (
            call :MAKE_UNIQUE "!work_dir!!_folder!\" "!_prefix!_!p3!" "%%~xF"
            set "_newname=!_uname!"
        )

        ren "%%F" "!_newname!" 2>nul
        if not errorlevel 1 (
            set /a "total_ok+=1"
            echo     [OK] !_newname!
        ) else (
            set /a "total_fail+=1"
            echo     [XX] FAILED: %%~nxF
        )
    )
)

echo     --- !_rn!/!_cnt! done
exit /b


REM ================================================================
REM  SAFE_SORT_RENAME_CODE -- Code files into sub-folders + rename
REM ================================================================
:SAFE_SORT_RENAME_CODE
echo.
echo   [>>] Code [!c6! files] -- with language sub-folders
echo   ----------------------------------------

mkdir "!work_dir!Code" 2>nul

REM Loop through each code sub-category
set "_si=0"
:SSR_CODE_LOOP
set /a "_si+=1"
if !_si! GTR !CODSUB_COUNT! goto SSR_CODE_DONE

set "_sub_name=!CODSUB_%_si%_NAME!"
set "_sub_ext=!CODSUB_%_si%_EXT!"

REM Count files for this sub-category
set "_sc=0"
for %%E in (!_sub_ext!) do (
    for %%F in ("!work_dir!*.%%E") do (
        if exist "%%F" if /I not "%%~nxF"=="!bat_name!" (
            set /a "_sc+=1"
        )
    )
)

if !_sc! GTR 0 (
    echo.
    echo     [>>] Code\!_sub_name! [!_sc! files]

    mkdir "!work_dir!Code\!_sub_name!" 2>nul

    REM Move files
    for %%E in (!_sub_ext!) do (
        for %%F in ("!work_dir!*.%%E") do (
            if exist "%%F" if /I not "%%~nxF"=="!bat_name!" (
                set "_orig=%%~nxF"
                move "%%F" "!work_dir!Code\!_sub_name!\" >nul 2>&1
                if not errorlevel 1 (
                    echo !_orig!^|Code\!_sub_name!^|pending >> "!log!"
                )
            )
        )
    )

    REM Generate prefix from sub name (lowercase first 4 chars)
    set "_cpfx=!_sub_name!"
    REM Use lowercase version
    for %%L in (
        "HTML=html" "CSS=css" "JavaScript=js" "Python=py"
        "Java=java" "C_CPP=cpp" "CSharp=cs" "PHP=php"
        "Ruby=ruby" "Go=go" "Rust=rust" "Swift=swift"
        "Kotlin=kt" "Shell=sh" "Batch=bat" "SQL=sql"
        "JSON=json" "XML=xml" "YAML=yaml" "Markdown=md"
        "Lua=lua" "Perl=perl" "R_Lang=r" "Dart=dart"
        "VBScript=vbs" "Config=cfg"
    ) do (
        for /F "tokens=1,2 delims==" %%A in (%%L) do (
            if "!_sub_name!"=="%%A" set "_cpfx=%%B"
        )
    )

    REM Temp rename
    set "_uid2=_safe_!safe_uid!_"
    set "_ct=0"
    for %%F in ("!work_dir!Code\!_sub_name!\*.*") do (
        if exist "%%F" (
            echo "%%~nxF" | findstr /i "_safe_" >nul 2>&1
            if errorlevel 1 (
                set /a "_ct+=1"
                ren "%%F" "!_uid2!!_ct!%%~xF" 2>nul
            )
        )
    )

    REM Final rename
    set "_cr=0"
    for %%F in ("!work_dir!Code\!_sub_name!\!_uid2!*.*") do (
        if exist "%%F" (
            set /a "_cr+=1"
            call :PAD3 !_cr!

            set "_cn=!_cpfx!_!p3!%%~xF"

            if exist "!work_dir!Code\!_sub_name!\!_cn!" (
                call :MAKE_UNIQUE "!work_dir!Code\!_sub_name!\" "!_cpfx!_!p3!" "%%~xF"
                set "_cn=!_uname!"
            )

            ren "%%F" "!_cn!" 2>nul
            if not errorlevel 1 (
                set /a "total_ok+=1"
                echo       [OK] !_cn!
            ) else (
                set /a "total_fail+=1"
                echo       [XX] FAILED: %%~nxF
            )
        )
    )
)

goto SSR_CODE_LOOP
:SSR_CODE_DONE
exit /b


REM ================================================================
REM  SAFE_SORT_CODE_ONLY -- Sort code files into sub-folders (no rename)
REM ================================================================
:SAFE_SORT_CODE_ONLY
echo.
echo   [>>] Code\ -- with language sub-folders

mkdir "!work_dir!Code" 2>nul

set "_si=0"
:SSC_LOOP
set /a "_si+=1"
if !_si! GTR !CODSUB_COUNT! goto SSC_DONE

set "_sub_name=!CODSUB_%_si%_NAME!"
set "_sub_ext=!CODSUB_%_si%_EXT!"

set "_sc=0"
for %%E in (!_sub_ext!) do (
    for %%F in ("!work_dir!*.%%E") do (
        if exist "%%F" if /I not "%%~nxF"=="!bat_name!" (
            set /a "_sc+=1"
        )
    )
)

if !_sc! GTR 0 (
    mkdir "!work_dir!Code\!_sub_name!" 2>nul
    echo.
    echo     Code\!_sub_name!\

    for %%E in (!_sub_ext!) do (
        for %%F in ("!work_dir!*.%%E") do (
            if exist "%%F" if /I not "%%~nxF"=="!bat_name!" (
                set "_sf_name=%%~nxF"

                if exist "!work_dir!Code\!_sub_name!\%%~nxF" (
                    echo       [!!] %%~nxF already exists! Skipped.
                    set /a "sort_fail+=1"
                ) else (
                    move "%%F" "!work_dir!Code\!_sub_name!\" >nul 2>&1
                    if not errorlevel 1 (
                        set /a "sort_ok+=1"
                        echo       [OK] !_sf_name!
                        echo !_sf_name!^|Code\!_sub_name! >> "!log!"
                    ) else (
                        set /a "sort_fail+=1"
                        echo       [XX] !_sf_name!
                    )
                )
            )
        )
    )
)

goto SSC_LOOP
:SSC_DONE
exit /b


REM ================================================================
REM  SAFE_SORT -- Sort only (no rename) - for non-code categories
REM ================================================================
:SAFE_SORT
set "_sf_folder=%~1"
set "_sf_exts=%~2"

mkdir "!work_dir!!_sf_folder!" 2>nul
echo.
echo   [>>] !_sf_folder!\

for %%E in (!_sf_exts!) do (
    for %%F in ("!work_dir!*.%%E") do (
        if exist "%%F" if /I not "%%~nxF"=="!bat_name!" (
            set "_sf_name=%%~nxF"

            if exist "!work_dir!!_sf_folder!\%%~nxF" (
                echo     [!!] %%~nxF already in folder! Skipped.
                set /a "sort_fail+=1"
            ) else (
                move "%%F" "!work_dir!!_sf_folder!\" >nul 2>&1
                if not errorlevel 1 (
                    set /a "sort_ok+=1"
                    echo     [OK] !_sf_name!
                    echo !_sf_name!^|!_sf_folder! >> "!log!"
                ) else (
                    set /a "sort_fail+=1"
                    echo     [XX] !_sf_name!
                )
            )
        )
    )
)
exit /b


REM ================================================================
REM  SAFE_RENAME -- Rename in place (no move)
REM ================================================================
:SAFE_RENAME
set "_rp=%~1"
set "_re=%~2"

set "_rc=0"
for %%E in (!_re!) do (
    for %%F in ("!work_dir!*.%%E") do (
        if exist "%%F" if /I not "%%~nxF"=="!bat_name!" (
            set /a "_rc+=1"
        )
    )
)
if !_rc!==0 (
    echo   [X] No !_rp! files found.
    exit /b
)

echo.
echo   [>>] !_rp!: !_rc! files
echo   ----------------------------------------

REM Temp rename
set "_uid3=_safe_!safe_uid!_"
set "_rt=0"
for %%E in (!_re!) do (
    for %%F in ("!work_dir!*.%%E") do (
        if exist "%%F" if /I not "%%~nxF"=="!bat_name!" (
            set /a "_rt+=1"
            ren "%%F" "!_uid3!!_rt!%%~xF" 2>nul
        )
    )
)

REM Final rename
set "_rf=0"
set "_rok=0"
for %%F in ("!work_dir!!_uid3!*.*") do (
    if exist "%%F" (
        set /a "_rf+=1"
        call :PAD3 !_rf!
        set "_fn=!_rp!_!p3!%%~xF"

        if exist "!work_dir!!_fn!" (
            call :MAKE_UNIQUE "!work_dir!" "!_rp!_!p3!" "%%~xF"
            set "_fn=!_uname!"
        )

        ren "%%F" "!_fn!" 2>nul
        if not errorlevel 1 (
            set /a "_rok+=1"
            echo     [OK] !_fn!
        ) else (
            echo     [XX] %%~nxF
        )
    )
)
echo   --- !_rok!/!_rc! renamed
exit /b


REM ================================================================
REM  PREVIEW_CAT -- Preview function for standard categories
REM ================================================================
:PREVIEW_CAT
set "_pcat=%~1"
set "_ppfx=%~2"
set "_pext=%~3"

echo  ^|                                                      ^|
echo  ^|  %~1 --^> %~1\

set "_pn=0"
for %%E in (!_pext!) do (
    for %%F in ("!work_dir!*.%%E") do (
        if exist "%%F" if /I not "%%~nxF"=="!bat_name!" (
            set /a "_pn+=1"
            call :PAD3 !_pn!
            echo  ^|    %%~nxF --^> !_ppfx!_!p3!%%~xF
        )
    )
)
exit /b


REM ================================================================
REM  PREVIEW_CODE -- Preview code files with sub-folders
REM ================================================================
:PREVIEW_CODE
echo  ^|                                                      ^|
echo  ^|  Code --^> Code\ (with language sub-folders)         ^|

set "_si=0"
:PCV_LOOP
set /a "_si+=1"
if !_si! GTR !CODSUB_COUNT! exit /b

set "_sub_name=!CODSUB_%_si%_NAME!"
set "_sub_ext=!CODSUB_%_si%_EXT!"

set "_pc=0"
for %%E in (!_sub_ext!) do (
    for %%F in ("!work_dir!*.%%E") do (
        if exist "%%F" if /I not "%%~nxF"=="!bat_name!" (
            set /a "_pc+=1"
        )
    )
)

if !_pc! GTR 0 (
    echo  ^|    Code\!_sub_name!\ [!_pc! files]
    for %%E in (!_sub_ext!) do (
        for %%F in ("!work_dir!*.%%E") do (
            if exist "%%F" if /I not "%%~nxF"=="!bat_name!" (
                echo  ^|      %%~nxF
            )
        )
    )
)

goto PCV_LOOP


REM ================================================================
REM  PAD3 -- Zero padding
REM ================================================================
:PAD3
set "_raw=%1"
if !_raw! LSS 10   ( set "p3=00!_raw!" ) else (
if !_raw! LSS 100  ( set "p3=0!_raw!"  ) else (
                     set "p3=!_raw!"    ))
exit /b


REM ================================================================
REM  MAKE_UNIQUE -- Find non-conflicting filename
REM ================================================================
:MAKE_UNIQUE
set "_uname=%~2%~3"
set "_usf=1"
:UNQ_LOOP
set "_uname=%~2_!_usf!%~3"
if exist "%~1!_uname!" (
    set /a "_usf+=1"
    if !_usf! GTR 999 (
        set "_uname=%~2_%RANDOM%%~3"
        exit /b
    )
    goto UNQ_LOOP
)
exit /b


REM ================================================================
REM  AFTER_ACTION -- Common post-action menu
REM ================================================================
:AFTER_ACTION
echo.
echo  +------------------------------------------------+
echo  ^|  [M] Main Menu                                 ^|
echo  ^|  [O] Open folder                               ^|
echo  ^|  [L] View log                                  ^|
echo  ^|  [X] Exit                                      ^|
echo  +------------------------------------------------+
echo.
set /p "nxt=  >> "
if /i "!nxt!"=="M" goto MAIN_MENU
if /i "!nxt!"=="O" ( explorer "!work_dir!" & goto MAIN_MENU )
if /i "!nxt!"=="L" (
    if defined log (
        if exist "!log!" notepad "!log!"
    ) else (
        echo   [X] No log file!
    )
    goto MAIN_MENU
)
goto BYE


REM ================================================================
:BYE
REM ================================================================
cls
echo.
echo  +======================================================+
echo  ^|                                                      ^|
echo  ^|    Thanks for using SAFE SORT + RENAME!              ^|
echo  ^|                                                      ^|
echo  ^|    v7.0 -- Code Sub-Folders Edition                  ^|
echo  ^|    Check _UNDO_LOG files for restore                 ^|
echo  ^|                                                      ^|
echo  +======================================================+
echo.
timeout /t 3 >nul
exit /b 0
