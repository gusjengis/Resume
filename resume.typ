// VARIABLES

#let professional = true
#let rust = false
#let rules = true
#let capital_titles = true
#let x_inset = 2em
#let y_inset = 0em
#let section_above = 10pt
#let section_below = 10pt

#let dark = true

#if professional {
  dark = false
}

// STYLING

#let palette = if dark {(
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

#set page(width: 8.5in, height: 11in, margin: 0.5in, fill: palette.bg)

#set text(
  size: 9pt,
  fill: palette.fg,
  font: "Helvetica Neue LT Std",
)

#show heading.where(level: 1): set text(fill: palette.heading, size: 9pt)
#show heading.where(level: 2): set text(fill: palette.heading, size: 12pt)
#show heading.where(level: 3): set text(fill: palette.heading, size: 9pt)

#show heading.where(level: 1): set block(above: 14pt, below: 5pt)
// #show heading.where(level: 2): set block(above: 11pt, below: 7pt)
#show heading.where(level: 3): set block(above: 11pt, below: 7pt)

#show link: set text(fill: palette.fg)
#show link: underline

#let rule() = if rules { block(spacing: 0pt)[ #line(length: 100%, stroke: (paint: palette.fg, thickness: 1.0pt)) ] }
// CONTENT
#align(center)[
    #text(18pt, weight: "bold", fill: palette.fg )[Anthony Green]\

    // #text(12pt, weight: "bold", fill: palette.fg )[Software Engineer]\
    #block(above: 7pt, below: 10pt)[#text(11pt, weight: "bold", fill: palette.fg, )[
        Greater Seattle Area, WA
      ]\
    ]
      anthony.j.green\@outlook.com | (253) 495-2988 | 
      #link("https://www.linkedin.com/in/anthonygreen03", "linkedin.com/in/anthonygreen03") | 
      #link("https://www.github.com/gusjengis", "github.com/gusjengis")
]

= EXPERIENCE
#rule()

#block(inset: (x: x_inset, y: y_inset), above: section_above, below: section_below)[
  === Backend Engineer #text(weight: "regular")[| C\#, Python, JS]  #h(1fr) 05/2025 - Present
  _Rainspire Studios_ #h(1fr) Seattle, WA 
  - Led the integration of mobile titles with cloud services. 
  - Handled user authentication, cloud storage, serverless code, and ad integration.
  - Built gameplay features and tooling in Unity (C\#).
  - Managed iOS builds in Xcode and managed Apple Developer account.
  - Prototyped adaptive bots using Unity ML-Agents to automate balance testing as mechanics evolved.
  - Implemented in-engine data visualization to accelerate debugging and performance analysis.

  === Pharmacy Technician #h(1fr) 08/2024 - 04/2025
  _Walgreens_ #h(1fr) Puyallup, WA 

  === Undergraduate Researcher #text(weight: "regular")[| Rust, WebGPU, Python]  #h(1fr) 09/2023 - 12/2024
  _University of Washington_ #h(1fr) Tacoma, WA 
  - Lead developer of a physics simulator for earthquake simulation.
  - Built engine from scratch using Rust and WebGPU; simulation and rendering all done on the GPU.
  - Built extensive tooling for experiment setup, runtime control, measurement, visualization, and automated analysis.
  - Collaborated with faculty to align technical design with research and performance needs.

]
= PROJECTS
#rule()
#block(inset: (x: x_inset, y: y_inset), above: section_above, below: section_below)[
  === Physics Simulator #text(weight: "regular")[| Rust, WebGPU, Python] #h(1fr) #link("https://github.com/gusjengis/Particle-Physics-Sim", "github.com/gusjengis/Particle-Physics-Sim")
  #if not rust { block(above: 0pt, below: 0pt)
    [
      #show heading.where(level: 3): set block(above: 0pt, below: 7pt)
      === Particle Life #text(weight: "regular")[| JS, WebGL] #h(1fr) #link("https://portfolio.agreenweb.com/pLife", "portfolio.agreenweb.com/pLife")
      - Implemented a beautiful particle-based artificial life simulator. Complex interactions from simple rules. 
      - Achieved a 300% performance boost using spatially partitioned collision detection.
      #show heading.where(level: 3): set block(above: 11pt, below: 7pt)
      === Portfolio Site #text(weight: "regular")[| JS, HTML/CSS, NodeJS, AWS]  #h(1fr) #link("https://portfolio.agreenweb.com", "portfolio.agreenweb.com")
      - Crafted a unique, OS-style portfolio site from scratch, showcasing over 20 personal projects, using pure JS/HTML/CSS. 
      - Developed a custom Node.js server and templating engine, hosted on AWS. 
      - Engineered a system maintaining window states in query strings for consistent UX. 
      - Created a proprietary, component-based UI framework, facilitating efficient abstraction. 
    ]
  }
  === hyprfocus #text(weight: "regular")[| Rust] #h(1fr) #link("https://github.com/gusjengis/hyprfocus", "github.com/gusjengis/hyprfocus")
  - Used Rust to create a Linux service for hyprland that logs the focused window at all times. 
  - Created a CLI that uses these logs to render an activity/screen time report.
  - Wrote complex code to render a high-res timeline in the terminal.
  #if not rust { block()
    [
      #show heading.where(level: 3): set block(above: 0pt, below: 7pt)
      === Arduino Handheld #text(weight: "regular")[| C++, Arduino, Electronics, Embedded Systems] #h(1fr) #link("https://portfolio.agreenweb.com/handheld", "portfolio.agreenweb.com/handheld")
      - Designed and assembled a unique, Arduino-based handheld gaming console with custom 3D-printed components and off-the-shelf electronics. 
      - Programmed a simple operating system for the device, complete with user interface, settings menu, and multiple applications, including four original games. 
      - Accomplished this with extreme limitations, specifically a 16x8 RGBLED display, 16mhz processor, and 256kb RAM. 
    ]
  }
]
= TECHNICAL SKILLS
#rule()
#block(inset: (x: x_inset, y: y_inset), above: section_above, below: section_below)[
  *Languages*: Rust, Python, JS, C64 Basic, C (K&R & ANSI), C++, Arduino, HTML, CSS, WASM, WGSL, GLSL, C\#, HLSL, Nix, Markdown, Typst

  *Tools*: Arduino, WASM, WebGPU, WebGL, Unity, Git, Docker, AWS, Neovim, Linux, Windows, MacOS
]

= EDUCATION
#rule()
#block(inset: (x: x_inset, y: y_inset), above: section_above, below: section_below)[
  B.S. in Computer Science - University of Washington (2021 - 2023)\
  Associates of Science - Pierce College (Running Start) (2019 - 2021)
]
