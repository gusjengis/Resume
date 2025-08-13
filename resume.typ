// VARIABLES

#let dark = false
#let code_styling = true
#let pixel_font = false

// STYLING

#let palette = if code_styling {(
  bg: rgb("#0d1117"),
  fg: rgb("#e6edf3"),
  comment: rgb("#8b949e"),
  keyword: rgb("#ff7b72"),
  func: rgb("#d2a8ff"),
  string: rgb("#a5d6ff"),
  number: rgb("#79c0ff"),
  type: rgb("#ffa657"),
  punct: rgb("#e6edf3"),
  link: rgb("#79c0ff"),
  heading: rgb("#ffffff"),
)} else if dark {(
  bg: rgb("#0f1115"),
  fg: rgb("#e6e6e6"),
  muted: rgb("#a3a3a3"),
  accent: rgb("#93c5fd"),
  heading: rgb("#ffffff"),
)} else {(
  bg: white,
  fg: black,
  muted: rgb("#444444"),
  accent: rgb("#2563eb"),
  heading: black,
)}

#set page(width: 8.5in, height: 11in, margin: 1in, fill: palette.bg)

// Shorthand for highlight groups
#let cmt(body) = text(fill: if code_styling { palette.comment } else { palette.fg })[#body]
#let kw(body) = text(fill: if code_styling { palette.keyword } else { palette.fg })[#body]
#let fn(body) = text(fill: if code_styling { palette.func } else { palette.fg })[#body]
#let str(body) = text(fill: if code_styling { palette.string } else { palette.fg })[#body]
#let num(body) = text(fill: if code_styling { palette.number } else { palette.fg })[#body]
#let typ(body) = text(fill: if code_styling { palette.type } else { palette.fg })[#body]
#let punct(body) = text(fill: if code_styling { palette.comment } else { palette.fg })[#body]
#let lnk(body) = text(fill: if code_styling { palette.link } else { palette.fg })[#body]
#let hding(body) = text(fill: if code_styling { palette.heading } else { palette.fg })[#body]

#set text(
  size: 9pt,
  fill: palette.fg,
  font: if pixel_font { "CozetteVector" } else if code_styling { "MesloLGS Nerd Font" } else { "RobotoMono Nerd Font"},
// weight: "bold"
)

#show heading.where(level: 1): set text(fill: if code_styling { palette.keyword } else { palette.heading })
#show heading.where(level: 2): set text(fill: if code_styling { palette.func } else { palette.heading })
#show heading.where(level: 3): set text(fill: if code_styling { palette.type } else { palette.heading })

#show link: set text(fill: if code_styling {palette.link} else {palette.fg})
#show link: underline

#let rule() = line(length: 100%, stroke: (paint: if code_styling {palette.punct} else {palette.fg}, thickness: 0.5pt))

// CONTENT
#align(center)[
  #text(18pt, weight: "bold", fill: if code_styling {palette.punct} else {palette.fg} )[Anthony Green]\

  #text(fill: if code_styling {palette.comment} else {palette.fg} )[
  anthony.j.green\@outlook.com • (253) 495-2988 •
]
  #link("https://www.linkedin.com/in/anthonygreen03/", "linkedin.com/in/anthonygreen03/")
]

= Experience
#rule()
=== Backend Engineer — Rainspire Studios (05/2025 – Present)
- Designed and implemented ...
- Improved X by Y%

=== Pharmacy Technician — Walgreens (08/2024 – 04/2025)
- Designed and implemented ...
- Improved X by Y%

=== Undergraduate Researcher - University of Washington (09/2023 - 12/2024)
- Assisted with ...
- Developed ...

= Technical Skills
#rule()
#let languages = ("Rust", "Python", "JavaScript", "C64 Basic", "C (K&R & ANSI)", "C++", "Arduino", "HTML", "CSS", "WASM", "WGSL/WebGPU", "GLSL/WebGL", "C\#", "HLSL", "Nix", "Markdown", "Typst")
#num("Languages")#punct(":") 
#let i = 0
#for language in languages {
  str(language)
  //Commas
  if i < languages.len()-1 {
    punct(", ")
  }
  i+=1
} 

#let tools = ("Arduino", "WASM", "WebGPU", "WebGL", "Unity", "Git", "Docker", "AWS", "Neovim", "Linux", "Windows", "MacOS")
#num("Tools")#punct(":") 
#let i = 0
#for tool in tools {
  str(tool)
  //Commas
  if i < tools.len()-1 {
    punct(", ")
  }
  i+=1
} 

= Education
#rule()
B#punct(".")S#punct(".") in Computer Science #punct("—") #fn("University of Washington") (2021–2023)\
Associates of Science #punct("—") Pierce College (#typ("Running Start")) (2019–2021)

