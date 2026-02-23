# 🛡️ SAFE SORT + RENAME TOOL v7.0

> **Windows Batch Script** jo aapki files ko automatically **sort**, **organize**, aur **rename** karta hai — safely, with full undo support.

![Version](https://img.shields.io/badge/Version-7.0-blue)
![Platform](https://img.shields.io/badge/Platform-Windows-0078D6)
![Language](https://img.shields.io/badge/Language-Batch-green)
![License](https://img.shields.io/badge/License-MIT-yellow)

---

## 📋 Table of Contents

- [Features](#-features)
- [Installation](#-installation)
- [Usage](#-usage)
- [Folder Structure](#-folder-structure-after-sort)
- [Supported Extensions](#-supported-extensions)
- [Code Sub-Folders](#-code-sub-folders--26-languages)
- [How It Works](#-how-it-works)
- [Undo System](#-undo-system)
- [Screenshots](#-screenshots)
- [FAQ](#-faq)
- [Changelog](#-changelog)
- [License](#-license)

---

## ✨ Features

| Feature | Description |
|---------|-------------|
| 🔄 **Sort + Rename** | Full auto — folders banao, move karo, rename karo |
| 📂 **Sort Only** | Sirf folders mein organize karo, naam same rahe |
| 🏷️ **Rename Only** | Sirf naam badlo, jagah same rahe |
| ↩️ **Full Undo** | Ek click mein sab wapas |
| 🧹 **Cleanup** | Crash ke baad stuck temp files fix karo |
| 📋 **Undo Logs** | Har action ka detailed log file |
| 🛡️ **Safe Rename** | 2-step rename — kabhi data loss nahi |
| 💻 **26 Code Languages** | Code files language-wise sub-folders mein |
| ⚡ **Zero Dependencies** | Sirf Windows chahiye, kuch install nahi karna |
| 🔒 **Self-Aware** | Script khud ko kabhi rename/move nahi karega |

---

## 📥 Installation

### Method 1: Direct Download
Download sort_rename.bat
Apni files wale folder mein paste karo
Double-click karke run karo
text


### Method 2: Git Clone
```bash
git clone https://github.com/yourusername/safe-sort-rename.git
cd safe-sort-rename
Requirements
text
```
- Windows 7 / 8 / 10 / 11
- No admin rights needed
- No dependencies
- No installation

🚀 Usage
Quick Start
Script ko us folder mein rakho jahan aapki files hain
Double-click sort_rename.bat
Menu se option choose karo
Menu Options
text

+======================================================+
|     [#] SAFE SORT + RENAME TOOL  v7.0               |
+======================================================+
|                                                      |
|  [1]  SORT + RENAME  (Full Auto)                     |
|  [2]  SORT ONLY     (Sirf organize)                  |
|  [3]  RENAME ONLY   (Sirf naam badlo)                |
|  [4]  UNDO          (Sab wapas laao)                 |
|  [5]  CLEANUP       (Stuck temp files fix)           |
|  [6]  Change Folder                                  |
|  [0]  Exit                                           |
|                                                      |
+======================================================+
Option Details
[1] Sort + Rename (Full Auto)
text

- Category folders banata hai (Images, Videos, Code, etc.)
- Files sahi folder mein move karta hai
- Code files language-wise sub-folders mein jaati hain
- Har file ka naam badalta hai (img_001, vid_001, py_001...)
- Original naam log file mein save hota hai
[2] Sort Only
text

- Sirf folders mein organize karta hai
- File ka naam SAME rehta hai
- Code files bhi sub-folders mein jaati hain
  (Code/HTML/, Code/Python/, etc.)
[3] Rename Only
text

- Files apni jagah rehti hain (move nahi hoti)
- Sirf naam badalta hai
- Category wise ya ALL ek saath
[4] Undo
text

- Files wapas main folder mein aa jaati hain
- Code sub-folders se bhi wapas laata hai
- Empty folders delete kar sakta hai
- Undo logs dekh sakta hai
[5] Cleanup
text

- Agar script crash ho gayi thi
- _safe_ prefix wali stuck files fix karta hai
- Automatically recover karta hai
[6] Change Folder
text

- Kisi bhi folder pe kaam kar sakta hai
- Manually path type karo
- Ya reset to default (bat file wala folder)
📁 Folder Structure After Sort
Before
text

MyFolder/
├── sort_rename.bat
├── photo1.jpg
├── photo2.png
├── movie.mp4
├── song.mp3
├── resume.pdf
├── data.xlsx
├── backup.zip
├── index.html
├── style.css
├── app.js
├── script.py
├── Main.java
├── query.sql
├── config.json
├── notes.md
├── server.go
├── setup.exe
└── game.apk
After (Sort + Rename)
text

MyFolder/
├── sort_rename.bat
├── _UNDO_LOG_20250101_120000.txt
│
├── Images/
│   ├── img_001.jpg
│   └── img_002.png
│
├── Videos/
│   └── vid_001.mp4
│
├── Audio/
│   └── aud_001.mp3
│
├── Documents/
│   ├── doc_001.pdf
│   └── doc_002.xlsx
│
├── Archives/
│   └── arc_001.zip
│
├── Code/
│   ├── HTML/
│   │   └── html_001.html
│   ├── CSS/
│   │   └── css_001.css
│   ├── JavaScript/
│   │   └── js_001.js
│   ├── Python/
│   │   └── py_001.py
│   ├── Java/
│   │   └── java_001.java
│   ├── SQL/
│   │   └── sql_001.sql
│   ├── JSON/
│   │   └── json_001.json
│   ├── Markdown/
│   │   └── md_001.md
│   └── Go/
│       └── go_001.go
│
└── Setups/
    ├── setup_001.exe
    └── setup_002.apk
📎 Supported Extensions
🖼️ Images (15 types)
text

jpg, jpeg, png, bmp, gif, tiff, tif, webp,
ico, svg, heic, raw, cr2, jfif, avif
🎬 Videos (15 types)
text

mp4, avi, mkv, mov, wmv, flv, webm, 3gp,
m4v, mpg, mpeg, vob, ts, mts
🎵 Audio (14 types)
text

mp3, wav, flac, aac, ogg, wma, m4a, opus,
aiff, alac, amr, mid, midi
📄 Documents (14 types)
text

pdf, doc, docx, xls, xlsx, ppt, pptx, txt,
rtf, csv, odt, ods, odp, epub
📦 Archives (10 types)
text

zip, rar, 7z, tar, gz, bz2, xz, iso, cab, lzh
⚙️ Setups (5 types)
text

exe, msi, appimage, deb, rpm, apk
💻 Code (60+ types across 26 languages)
See next section for details.

💻 Code Sub-Folders — 26 Languages
Script code files ko sirf ek Code/ folder mein nahi dalta,
balki language-wise sub-folders mein organize karta hai:

#	Sub-Folder	Extensions	Rename Prefix
1	Code/HTML/	.html .htm	html_001
2	Code/CSS/	.css .scss .sass .less	css_001
3	Code/JavaScript/	.js .jsx .ts .tsx .mjs	js_001
4	Code/Python/	.py .pyw .pyx .pxd	py_001
5	Code/Java/	.java .jar .class	java_001
6	Code/C_CPP/	.cpp .c .cc .cxx .h .hpp .hxx	cpp_001
7	Code/CSharp/	.cs	cs_001
8	Code/PHP/	.php .phtml .php3 .php4 .php5	php_001
9	Code/Ruby/	.rb .erb	ruby_001
10	Code/Go/	.go	go_001
11	Code/Rust/	.rs	rust_001
12	Code/Swift/	.swift	swift_001
13	Code/Kotlin/	.kt .kts	kt_001
14	Code/Shell/	.sh .bash .zsh .fish	sh_001
15	Code/Batch/	.bat .cmd .ps1 .psm1	bat_001
16	Code/SQL/	.sql	sql_001
17	Code/JSON/	.json .jsonc .json5	json_001
18	Code/XML/	.xml .xsl .xslt .xsd	xml_001
19	Code/YAML/	.yml .yaml	yaml_001
20	Code/Markdown/	.md .markdown	md_001
21	Code/Lua/	.lua	lua_001
22	Code/Perl/	.pl .pm	perl_001
23	Code/R_Lang/	.r .R .rmd	r_001
24	Code/Dart/	.dart	dart_001
25	Code/VBScript/	.vbs .vb .bas	vbs_001
26	Code/Config/	.ini .cfg .conf .config .toml .env	cfg_001
⚙️ How It Works
Safe 2-Step Rename Process
Traditional rename mein ek problem hoti hai:

text

Problem: file1.jpg rename to img_001.jpg
         BUT img_001.jpg already exists!
         = DATA LOSS! Original overwrite ho gaya!
Ye script 2-step safe rename use karti hai:

text

Step 1: TEMP RENAME (unique prefix)
   photo.jpg     →  _safe_12345678_1.jpg
   vacation.jpg  →  _safe_12345678_2.jpg
   sunset.jpg    →  _safe_12345678_3.jpg

Step 2: FINAL RENAME (clean names)
   _safe_12345678_1.jpg  →  img_001.jpg
   _safe_12345678_2.jpg  →  img_002.jpg
   _safe_12345678_3.jpg  →  img_003.jpg
Benefits:

✅ No data loss possible
✅ No name conflicts
✅ If crash happens, cleanup option available
✅ Unique session ID prevents cross-contamination
Conflict Resolution
text

If img_001.jpg already exists:
   → Tries img_001_1.jpg
   → Tries img_001_2.jpg
   → ... up to img_001_999.jpg
   → Falls back to img_001_RANDOM.jpg
Undo Log Format
text

#SORT_RENAME_LOG
#DATE=01/15/2025 12:30:45
#FOLDER=C:\Users\YourName\Downloads\
#FORMAT=ORIGINAL_NAME|NEW_FOLDER|NEW_NAME
#---------------------------------------------
photo.jpg|Images|pending
vacation.png|Images|pending
movie.mp4|Videos|pending
script.py|Code\Python|pending
#RESULT=18 OK / 0 FAILED
↩️ Undo System
How Undo Works
text

Option 4 → [1] Move files back

What happens:
1. Images/*.* → main folder
2. Videos/*.* → main folder
3. Code/HTML/*.* → main folder
4. Code/Python/*.* → main folder
5. (all sub-folders)
6. Conflict check → skip if file already exists
View Logs
text

Option 4 → [2] View undo logs
→ Lists all _UNDO_LOG_*.txt files
→ Open any log in Notepad
Delete Empty Folders
text

Option 4 → [3] Delete empty folders
→ First removes empty Code sub-folders
→ Then removes empty main category folders
→ Only deletes if truly empty
🖥️ Screenshots
Main Menu
text

+======================================================+
|     [#] SAFE SORT + RENAME TOOL  v7.0               |
+======================================================+
|                                                      |
|  [1]  SORT + RENAME  (Full Auto)                     |
|  [2]  SORT ONLY     (Sirf organize)                  |
|  [3]  RENAME ONLY   (Sirf naam badlo)                |
|  [4]  UNDO          (Sab wapas laao)                 |
|  [5]  CLEANUP       (Stuck temp files fix)           |
|  [6]  Change Folder                                  |
|  [0]  Exit                                           |
|                                                      |
+======================================================+

  Folder: C:\Users\YourName\Downloads\

  +------------------------------------------------+
  |  IMG: 12   VID: 5    AUD: 8    DOC: 15         |
  |  ARC: 3    CODE: 22  SETUP: 2                  |
  |  TOTAL: 67 files                               |
  +------------------------------------------------+
Processing Output
text

======================================================
  PROCESSING -- Please wait...
======================================================

  [>>] Images [12 files]
  ----------------------------------------
     [OK] img_001.jpg
     [OK] img_002.png
     [OK] img_003.gif
     --- 12/12 done

  [>>] Code [22 files] -- with language sub-folders
  ----------------------------------------

     [>>] Code\HTML [3 files]
       [OK] html_001.html
       [OK] html_002.htm
       [OK] html_003.html

     [>>] Code\Python [5 files]
       [OK] py_001.py
       [OK] py_002.py
       [OK] py_003.py
       [OK] py_004.pyw
       [OK] py_005.py

     [>>] Code\JavaScript [4 files]
       [OK] js_001.js
       [OK] js_002.jsx
       [OK] js_003.ts
       [OK] js_004.js
❓ FAQ
Q: Kya ye meri files delete karega?
Nahi! Script sirf move aur rename karta hai. Koi file delete nahi hoti.
Original naam undo log mein save rehta hai.

Q: Agar script crash ho jaye toh?
Option [5] CLEANUP use karo. Ye stuck _safe_ temp files ko
recover kar dega.

Q: Kya ye sub-folders ke andar ki files bhi sort karega?
Nahi. Script sirf top-level files pe kaam karta hai.
Sub-folders ki files untouched rehti hain.

Q: Script khud ko rename kar dega?
Nahi! Script apna naam detect karke khud ko skip karta hai.

Q: _UNDO_LOG files kya hain?
Har operation ka record. Isse aap dekh sakte ho ki kaunsi file
kahan gayi. Safely delete kar sakte ho jab zaroorat na ho.

Q: Kya main dusre folder pe use kar sakta hoon?
Haan! Option [6] se koi bhi folder set kar sakte ho.

Q: Agar same naam ki file already ho toh?
Script automatically unique naam banata hai:
img_001.jpg → img_001_1.jpg → img_001_2.jpg

Q: Admin rights chahiye?
Nahi! Normal user permissions se kaam karta hai.

Q: Kaunsa Windows support hai?
Windows 7, 8, 8.1, 10, 11 — sab pe chalega.

Q: Kya ye portable hai?
Haan! Ek .bat file hai. USB mein daal ke kahi bhi use karo.

📝 Changelog
v7.0 (Latest)
text

[NEW] Code files 26 language sub-folders mein organize hoti hain
      (Code/HTML, Code/CSS, Code/Python, Code/Java, etc.)
[FIX] Terminal display — emojis hata ke pure ASCII art use kiya
      Ab har Windows terminal mein sahi dikhega
[NEW] UNDO ab Code sub-folders se bhi files wapas laata hai
[NEW] CLEANUP ab Code sub-folders ke andar bhi check karta hai
[NEW] Preview mein code sub-folder breakdown dikhta hai
[NEW] 60+ code file extensions supported
[NEW] Config files (.ini, .cfg, .toml, .env) bhi sort hoti hain
v6.0
text

[NEW] Sort + Rename combined option
[NEW] Preview before action
[NEW] Undo log system
[NEW] Cleanup for stuck temp files
[NEW] Safe 2-step rename process
[NEW] Conflict resolution with unique naming
[NEW] Change folder option
[NEW] File count dashboard
v5.0
text

[NEW] Sort and Rename as separate options
[NEW] Basic category detection
[NEW] 7 file categories
🤝 Contributing
text

1. Fork the repo
2. Create your branch: git checkout -b feature/new-feature
3. Commit: git commit -m "Add new feature"
4. Push: git push origin feature/new-feature
5. Open a Pull Request
Ideas for Future
 Recursive sub-folder support
 Custom naming patterns (date-based, etc.)
 Duplicate file detection
 File size based sorting
 GUI version (PowerShell/Python)
 Custom extension mapping via config file
📄 License
MIT License — Free to use, modify, and distribute.

text

MIT License

Copyright (c) 2025

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files, to deal
in the Software without restriction, including without limitation the
rights to use, copy, modify, merge, publish, distribute, sublicense,
and/or sell copies of the Software, and to permit persons to whom the
Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND.
⭐ Star This Repo!
Agar ye tool useful laga toh star de do!
Issues ya suggestions ke liye Issues tab use karo.

<div align="center">
Made with ❤️ in Batch

v7.0 — Code Sub-Folders Edition

</div> ```
