<p align="center">

<!-- Animated Typing Effect -->
<img src="https://readme-typing-svg.herokuapp.com?font=Consolas&weight=600&size=28&pause=1000&color=2E8BFF&center=true&vCenter=true&width=700&lines=SAFE+SORT+%2B+RENAME+TOOL+v7.0;Automatic+File+Organizer+for+Windows;Safe+%7C+Fast+%7C+Undo+Supported" />

</p>

<p align="center">
  <b>Professional Windows Batch Script</b><br>
  Automatically <b>Sort</b>, <b>Organize</b>, and <b>Rename</b> files safely — with full Undo support.
</p>

<p align="center">

<img src="https://img.shields.io/badge/Version-7.0-2E8BFF?style=for-the-badge" />
<img src="https://img.shields.io/badge/Platform-Windows-0078D6?style=for-the-badge&logo=windows&logoColor=white" />
<img src="https://img.shields.io/badge/Language-Batch-4CAF50?style=for-the-badge" />
<img src="https://img.shields.io/badge/License-MIT-FFC107?style=for-the-badge" />

</p>

---

## 📋 Table of Contents

- [✨ Features](#-features)
- [📥 Installation](#-installation)
- [🚀 Usage](#-usage)
- [📁 Folder Structure](#-folder-structure-after-sort)
- [📎 Supported Extensions](#-supported-extensions)
- [💻 Code Sub-Folders](#-code-sub-folders--26-languages)
- [⚙️ How It Works](#-how-it-works)
- [↩️ Undo System](#-undo-system)
- [🖥️ Screenshots](#-screenshots)
- [❓ FAQ](#-faq)
- [📝 Changelog](#-changelog)
- [📄 License](#-license)

---

# ✨ Features

| Feature | Description |
|---------|-------------|
| 🔄 **Sort + Rename** | Full auto — folders create, move, rename |
| 📂 **Sort Only** | Organize without renaming |
| 🏷️ **Rename Only** | Rename without moving |
| ↩️ **Full Undo** | One-click restore |
| 🧹 **Cleanup Mode** | Fix stuck `_safe_` temp files |
| 📋 **Undo Logs** | Detailed operation logs |
| 🛡️ **Safe 2-Step Rename** | Zero overwrite risk |
| 💻 **26 Code Languages** | Language-wise sub-folder organization |
| ⚡ **Zero Dependencies** | No installation required |
| 🔒 **Self-Protected** | Script never renames itself |

---

# 📥 Installation  

## 🔹 Method 1 — Direct Download  

1. Download `sort_rename.bat`  
2. Paste inside your target folder  
3. Double-click to run  

---

## 🔹 Method 2 — Git Clone  

```bash
git clone https://github.com/yourusername/safe-sort-rename.git
cd safe-sort-rename
```

---

# ⚙️ Requirements  

- Windows 7 / 8 / 10 / 11  
- No admin rights required  
- No external dependencies  
- Fully portable  

---

## 🚀 Usage  

### 🔹 Quick Start  

1. Script ko us folder mein rakho jahan aapki files hain  
2. Double-click `sort_rename.bat`  
3. Menu se desired option choose karo  

---

## 📋 Menu Options  

```
+======================================================+
|     [#] SAFE SORT + RENAME TOOL  v7.0               |
+======================================================+
|                                                      |
|  [1]  SORT + RENAME  (Full Auto)                    |
|  [2]  SORT ONLY      (Sirf organize)                |
|  [3]  RENAME ONLY    (Sirf naam badlo)              |
|  [4]  UNDO           (Sab wapas laao)               |
|  [5]  CLEANUP        (Stuck temp files fix)         |
|  [6]  Change Folder                                 |
|  [0]  Exit                                          |
|                                                      |
+======================================================+
```

---

## 📌 Option Details  

### 1️⃣ Sort + Rename (Full Auto)

- Category folders banata hai (Images, Videos, Code, etc.)
- Files ko sahi folder mein move karta hai
- Code files language-wise sub-folders mein jaati hain
- Har file ka naam auto-rename hota hai (`img_001`, `vid_001`, `py_001`...)
- Original naam log file mein save hota hai

---

### 2️⃣ Sort Only

- Sirf folders mein organize karta hai
- File ka naam same rehta hai
- Code files sub-folders mein jaati hain:
  - `Code/HTML/`
  - `Code/Python/`
  - etc.

---

### 3️⃣ Rename Only

- Files apni jagah rehti hain (move nahi hoti)
- Sirf naam badalta hai
- Category-wise ya ALL ek saath rename option

---

### 4️⃣ Undo

- Files wapas main folder mein aa jaati hain
- Code sub-folders se bhi restore karta hai
- Empty folders delete kar sakta hai
- Undo logs available

---

### 5️⃣ Cleanup

- Agar script crash ho gayi ho
- `_safe_` prefix wali stuck files fix karta hai
- Automatic recovery attempt karta hai

---

### 6️⃣ Change Folder

- Kisi bhi folder pe kaam kar sakta hai
- Manually path type karo
- Ya reset to default (BAT file wala folder)

---
---

## 📁 Folder Structure After Sort

### 🔹 Before

```
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
```

---

### 🔹 After (Sort + Rename)

```
MyFolder/
├── sort_rename.bat
├── _UNDO_LOG_20260101_120000.txt
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
```

---

# 📎 Supported Extensions

## 🖼️ Images (15 types)

```
jpg, jpeg, png, bmp, gif, tiff, tif, webp,
ico, svg, heic, raw, cr2, jfif, avif
```

## 🎬 Videos (15 types)

```
mp4, avi, mkv, mov, wmv, flv, webm, 3gp,
m4v, mpg, mpeg, vob, ts, mts
```

## 🎵 Audio (14 types)

```
mp3, wav, flac, aac, ogg, wma, m4a, opus,
aiff, alac, amr, mid, midi
```

## 📄 Documents (14 types)

```
pdf, doc, docx, xls, xlsx, ppt, pptx, txt,
rtf, csv, odt, ods, odp, epub
```

## 📦 Archives (10 types)

```
zip, rar, 7z, tar, gz, bz2, xz, iso, cab, lzh
```

## ⚙️ Setups (5 types)

```
exe, msi, appimage, deb, rpm, apk
```

---

# 💻 Code (60+ types across 26 languages)

Script code files ko sirf ek `Code/` folder mein nahi dalta,  
balki language-wise sub-folders mein organize karta hai:

| # | Sub-Folder | Extensions | Rename Prefix |
|---|------------|------------|--------------|
| 1 | Code/HTML/ | .html .htm | html_001 |
| 2 | Code/CSS/ | .css .scss .sass .less | css_001 |
| 3 | Code/JavaScript/ | .js .jsx .ts .tsx .mjs | js_001 |
| 4 | Code/Python/ | .py .pyw .pyx .pxd | py_001 |
| 5 | Code/Java/ | .java .jar .class | java_001 |
| 6 | Code/C_CPP/ | .cpp .c .cc .cxx .h .hpp .hxx | cpp_001 |
| 7 | Code/CSharp/ | .cs | cs_001 |
| 8 | Code/PHP/ | .php .phtml .php3 .php4 .php5 | php_001 |
| 9 | Code/Ruby/ | .rb .erb | ruby_001 |
|10 | Code/Go/ | .go | go_001 |
|11 | Code/Rust/ | .rs | rust_001 |
|12 | Code/Swift/ | .swift | swift_001 |
|13 | Code/Kotlin/ | .kt .kts | kt_001 |
|14 | Code/Shell/ | .sh .bash .zsh .fish | sh_001 |
|15 | Code/Batch/ | .bat .cmd .ps1 .psm1 | bat_001 |
|16 | Code/SQL/ | .sql | sql_001 |
|17 | Code/JSON/ | .json .jsonc .json5 | json_001 |
|18 | Code/XML/ | .xml .xsl .xslt .xsd | xml_001 |
|19 | Code/YAML/ | .yml .yaml | yaml_001 |
|20 | Code/Markdown/ | .md .markdown | md_001 |
|21 | Code/Lua/ | .lua | lua_001 |
|22 | Code/Perl/ | .pl .pm | perl_001 |
|23 | Code/R_Lang/ | .r .R .rmd | r_001 |
|24 | Code/Dart/ | .dart | dart_001 |
|25 | Code/VBScript/ | .vbs .vb .bas | vbs_001 |
|26 | Code/Config/ | .ini .cfg .conf .config .toml .env | cfg_001 |

---
---

# ⚙️ How It Works

## 🔐 Safe 2-Step Rename Process

Traditional rename mein ek serious problem hoti hai:

```
Problem: file1.jpg rename to img_001.jpg
         BUT img_001.jpg already exists!
         = DATA LOSS! Original overwrite ho gaya!
```

Is script mein **2-step safe rename system** use hota hai:

---

### 🥇 Step 1: TEMP RENAME (Unique Prefix)

```
photo.jpg     →  _safe_12345678_1.jpg
vacation.jpg  →  _safe_12345678_2.jpg
sunset.jpg    →  _safe_12345678_3.jpg
```

Har file ko ek unique session ID ke saath temporary naam diya jata hai.

---

### 🥈 Step 2: FINAL RENAME (Clean Names)

```
_safe_12345678_1.jpg  →  img_001.jpg
_safe_12345678_2.jpg  →  img_002.jpg
_safe_12345678_3.jpg  →  img_003.jpg
```

Ab clean, sequential rename safely apply hota hai.

---

### ✅ Benefits

- No data loss possible  
- No name conflicts  
- Crash hone par cleanup option available  
- Unique session ID cross-contamination prevent karta hai  

---

## ⚔️ Conflict Resolution

Agar `img_001.jpg` already exist karta hai:

```
→ Tries img_001_1.jpg
→ Tries img_001_2.jpg
→ ...
→ Tries img_001_999.jpg
→ Falls back to img_001_RANDOM.jpg
```

Overwrite kabhi nahi hota.

---

# 📝 Undo Log Format

```
#SORT_RENAME_LOG
#DATE=01/15/2026 12:30:45
#FOLDER=C:\Users\YourName\Downloads\
#FORMAT=ORIGINAL_NAME|NEW_FOLDER|NEW_NAME
#---------------------------------------------
photo.jpg|Images|pending
vacation.png|Images|pending
movie.mp4|Videos|pending
script.py|Code\Python|pending
#RESULT=18 OK / 0 FAILED
```

---

# ↩️ Undo System

## 🔄 How Undo Works

```
Option 4 → [1] Move files back
```

### What Happens:

1. `Images/*.*` → main folder  
2. `Videos/*.*` → main folder  
3. `Code/HTML/*.*` → main folder  
4. `Code/Python/*.*` → main folder  
5. (All sub-folders)  
6. Conflict check → skip if file already exists  

---

## 📂 View Logs

```
Option 4 → [2] View undo logs
→ Lists all _UNDO_LOG_*.txt files
→ Open any log in Notepad
```

---

## 🧹 Delete Empty Folders

```
Option 4 → [3] Delete empty folders
```

- First removes empty Code sub-folders  
- Then removes empty main category folders  
- Only deletes if truly empty  

---

# 🖥️ Screenshots

## 📋 Main Menu

```
+======================================================+
|     [#] SAFE SORT + RENAME TOOL  v7.0               |
+======================================================+
|                                                      |
|  [1]  SORT + RENAME  (Full Auto)                    |
|  [2]  SORT ONLY      (Sirf organize)                |
|  [3]  RENAME ONLY    (Sirf naam badlo)              |
|  [4]  UNDO           (Sab wapas laao)               |
|  [5]  CLEANUP        (Stuck temp files fix)         |
|  [6]  Change Folder                                 |
|  [0]  Exit                                          |
|                                                      |
+======================================================+

  Folder: C:\Users\YourName\Downloads\

  +------------------------------------------------+
  |  IMG: 12   VID: 5    AUD: 8    DOC: 15         |
  |  ARC: 3    CODE: 22  SETUP: 2                  |
  |  TOTAL: 67 files                               |
  +------------------------------------------------+
```

---

## ⚡ Processing Output

```
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
```

------

# ❓ FAQ

### Q: Kya ye meri files delete karega?
Nahi! Script sirf move aur rename karta hai.  
Koi file delete nahi hoti.  
Original naam undo log mein save rehta hai.

---

### Q: Agar script crash ho jaye toh?
Option **[5] CLEANUP** use karo.  
Ye stuck `_safe_` temp files ko recover kar dega.

---

### Q: Kya ye sub-folders ke andar ki files bhi sort karega?
Nahi. Script sirf top-level files pe kaam karta hai.  
Sub-folders ki files untouched rehti hain.

---

### Q: Script khud ko rename kar dega?
Nahi! Script apna naam detect karke khud ko skip karta hai.

---

### Q: `_UNDO_LOG` files kya hain?
Har operation ka record.  
Isse aap dekh sakte ho ki kaunsi file kahan gayi.  
Zaroorat na ho toh safely delete kar sakte ho.

---

### Q: Kya main dusre folder pe use kar sakta hoon?
Haan! Option **[6] Change Folder** se koi bhi folder set kar sakte ho.

---

### Q: Agar same naam ki file already ho toh?
Script automatically unique naam banata hai:

```
img_001.jpg → img_001_1.jpg → img_001_2.jpg
```

Overwrite kabhi nahi hota.

---

### Q: Admin rights chahiye?
Nahi! Normal user permissions se kaam karta hai.

---

### Q: Kaunsa Windows support hai?
Windows 7, 8, 8.1, 10, 11 — sab pe chalega.

---

### Q: Kya ye portable hai?
Haan! Ek `.bat` file hai.  
USB mein daal ke kahi bhi use karo.

---

# 📝 Changelog

## v7.0 (Latest)

```
[NEW] Code files 26 language sub-folders mein organize hoti hain
      (Code/HTML, Code/CSS, Code/Python, Code/Java, etc.)

[FIX] Terminal display — pure ASCII art use kiya
      Ab har Windows terminal mein sahi dikhega

[NEW] UNDO ab Code sub-folders se bhi files wapas laata hai
[NEW] CLEANUP ab Code sub-folders ke andar bhi check karta hai
[NEW] Preview mein code sub-folder breakdown dikhta hai
[NEW] 60+ code file extensions supported
[NEW] Config files (.ini, .cfg, .toml, .env) bhi sort hoti hain
```

---

## v6.0

```
[NEW] Sort + Rename combined option
[NEW] Preview before action
[NEW] Undo log system
[NEW] Cleanup for stuck temp files
[NEW] Safe 2-step rename process
[NEW] Conflict resolution with unique naming
[NEW] Change folder option
[NEW] File count dashboard
```

---

## v5.0

```
[NEW] Sort and Rename as separate options
[NEW] Basic category detection
[NEW] 7 file categories
```

---

# 🤝 Contributing

```
1. Fork the repo
2. Create your branch:
   git checkout -b feature/new-feature

3. Commit your changes:
   git commit -m "Add new feature"

4. Push to branch:
   git push origin feature/new-feature

5. Open a Pull Request
```

---

## 💡 Ideas for Future

- Recursive sub-folder support  
- Custom naming patterns (date-based, etc.)  
- Duplicate file detection  
- File size based sorting  
- GUI version (PowerShell / Python)  
- Custom extension mapping via config file  

---

# 📄 License

MIT License — Free to use, modify, and distribute.

```
MIT License

Copyright (c) 2026

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files, to deal
in the Software without restriction, including without limitation the
rights to use, copy, modify, merge, publish, distribute, sublicense,
and/or sell copies of the Software, and to permit persons to whom the
Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND.
```

---

# ⭐ Star This Repo!

Agar ye tool useful laga toh star de do!  
Issues ya suggestions ke liye **Issues tab** use karo.

---

<div align="center">

Made with ❤️ in Batch  

v7.0 — Code Sub-Folders Edition  

</div>
