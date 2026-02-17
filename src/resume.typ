// VARIABLES

#let rust_focused = if "rust" in sys.inputs { sys.inputs.rust == "true" } else { false }
#let rules = true
#let capital_titles = true
#let x_inset = 1.9em
#let y_inset = 0em
#let section_above = 10pt
#let section_below = 10pt

#let dark = false

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
#show heading.where(level: 3): set block(above: 11pt, below: 7pt)

#show link: set text(fill: palette.fg)
#show link: underline

#let rule() = if rules { block(spacing: 0pt)[ #line(length: 100%, stroke: (paint: palette.fg, thickness: 1.0pt)) ] }

#let not_rust(body, above: 11pt, below: 7pt, h3_above: 0pt, h3_below: 7pt) = {
  if not rust_focused {
    block(above: above, below: below)[
      #show heading.where(level: 3): set block(above: h3_above, below: h3_below)
    #body
    ]
  }
}

#let rust(body, above: 11pt, below: 7pt, h3_above: 0pt, h3_below: 7pt) = {
  if rust_focused {
    block(above: above, below: below)[
      #show heading.where(level: 3): set block(above: h3_above, below: h3_below)
    #body
    ]
  }
}
// CONTENT
#align(center)[
    #text(18pt, weight: "bold", fill: palette.fg )[Anthony Green]\

    #block(above: 7pt, below: 10pt)[#text(11pt, weight: "bold", fill: palette.fg, )[
        Greater Seattle Area, WA
      ]\
    ]
      anthony.j.green\@outlook.com | (253) 495-2988 | 
      #link("https://www.linkedin.com/in/anthonygreen03", "linkedin.com/in/anthonygreen03") | 
      #link("https://www.github.com/gusjengis", "github.com/gusjengis")
]

// #lorem(20)
#align(center)[
Systems engineer specializing in Rust, focused on backend systems, GPU compute, modern web technology, and developer tooling.
]

= EXPERIENCE
#rule()

#block(inset: (x: x_inset, y: y_inset), above: section_above, below: section_below)[
  === Backend Engineer #text(weight: "regular")[| C\#, JS, Unity]  #h(1fr) 05/2025 - Present
  _Rainspire Studios_ #h(1fr) Seattle, WA 
  - Implemented cloud backend for Unity mobile titles, including authentication, persistent storage, and serverless endpoints.
  - Managed Apple Developer account and automated iOS build and deployment process.
  - Integrated monetization and platform SDKs into production mobile builds.
  - Designed the animation system and drove visual polish to deliver investor-ready builds.

  === Pharmacy Technician #h(1fr) 08/2024 - 04/2025
  _Walgreens_ #h(1fr) Puyallup, WA 

  === Undergraduate Researcher #text(weight: "regular")[| Rust, WebGPU, Python]  #h(1fr) 09/2023 - 12/2024
  _University of Washington_ #h(1fr) *#link("https://github.com/gusjengis/Physics-Sim", "github.com/gusjengis/Physics-Sim")*
  - Lead developer of an interactive physics engine for earthquake simulation.
  - Designed highly performant GPU compute and rendering pipelines, built from scratch using Rust and WebGPU
  - Built extensive UI and tooling for experiment setup, runtime control, measurement, visualization, and automated analysis.
  - Collaborated with faculty to align technical design with research and performance needs.
]
= PROJECTS
#rule()
#block(inset: (x: x_inset, y: y_inset), above: section_above, below: section_below)[
    === hyprlog #text(weight: "regular")[| Rust] #h(1fr) #link("https://github.com/gusjengis/hyprlog", "github.com/gusjengis/hyprlog")
    - Used Rust to create a Linux service for hyprland that logs window focus events. First activity tracker for the platform.
    - Created a terminl UI that uses these logs to render an interactive activity/screen time report.
    - Setup a CD/CI pipeline using Github Actions to automatically publish releases to several package managers.
  #not_rust[
      === Particle Life #text(weight: "regular")[| JS, WebGL] #h(1fr) #link("https://portfolio.agreenweb.com/pLife", "portfolio.agreenweb.com/pLife")
      - Implemented a beautiful particle-based artificial life simulator. Complex interactions from simple rules. 
      - Achieved a 300% performance boost using spatially partitioned collision detection.
  ]
  #not_rust[
      === Portfolio Site #text(weight: "regular")[| JS, HTML/CSS, Node, AWS]  #h(1fr) #link("https://portfolio.agreenweb.com", "portfolio.agreenweb.com")
      - Crafted a unique, OS-style portfolio site from scratch, showcasing over 20 personal projects, using pure JS/HTML/CSS. 
      - Developed a custom Node.js server and templating engine, hosted on AWS. 
      - Engineered a system maintaining window states in query strings to facilitate sharing. 
      - Created a proprietary, component-based UI framework, facilitating efficient abstraction. 
  ]
  #rust[
    === scutl #text(weight: "regular")[| Rust] #h(1fr) #link("https://github.com/gusjengis/scutl", "github.com/gusjengis/scutl")
    - CLI tool that generates mermaid diagrams of projects
    - Uses the Language Server Protocol to build accurate diagrams for any language.
  ]
  #rust[
    === Timeline Prototype #text(weight: "regular")[| Rust, WebGL, WASM, JS] 
    - Created a prototype website using Rust/WASM for the business logic.
    - Used WebGL from Rust for high performance rendering of huge quantities of data.
    - Used a traditional JS canvas layer for well-styled UI.
  ]
  #rust[
    === Terrain Generator #text(weight: "regular")[| Rust, WebGPU, WASM, JS] #h(1fr)#link("https://portfolio.agreenweb.com/perlin", "portfolio.agreenweb.com/perlin")
    - Implemented Perlin noise from scratch using WebGPU compute shaders.
    - Stacked layers of this noise in rendering shaders to generate 3D terrain with lighting and camera controls.
    - Used WASM and JS to imbed this Rust program in my portfolio site for easy sharing. 
  ]
  #rust[
    === Plinth #text(weight: "regular")[| Rust, WebGPU, WASM, TS, SolidJS] #h(1fr)#link("https://portfolio.agreenweb.com/perlin", "portfolio.agreenweb.com/perlin")
    - Setup a template repo that allows me to quickly get started with an advanced web stack.
    - The stack consists of a Rust core via WASM, uses WebGPU for rendering and a Typescript + SolidJS layer for advanced UI.
    - This is all set up with a custom dev server that enables hot reloading for rapid iteration.  
  ]
  #not_rust[
      === Arduino Handheld #text(weight: "regular")[| C++, Arduino, Electronics, Embedded Systems] #h(1fr) #link("https://portfolio.agreenweb.com/handheld", "portfolio.agreenweb.com/handheld")
      - Designed and assembled a unique, Arduino-based handheld gaming console with custom 3D-printed components and off-the-shelf electronics. 
      - Programmed a simple operating system for the device, complete with user interface, settings menu, and multiple applications, including four original games. 
      - Accomplished this with extreme limitations, specifically a 16x8 RGBLED display, 16mhz processor, and 256kb RAM. 
  ]
]
= TECHNICAL SKILLS
#rule()
#block(inset: (x: x_inset, y: y_inset), above: section_above, below: section_below)[
  *Languages*: Rust, Python, JS, C64 Basic, C/C++, Arduino, HTML, CSS, WASM, WGSL/WebGPU, GLSL/WebGL, C\#, HLSL, Nix, Markdown, Typst

  *Tools*: Neovim, OpenCode(AI Agent), Git, Linux, Unity, Docker, AWS, Windows, MacOS, Arduino 
]

= EDUCATION
#rule()
#block(inset: (x: x_inset, y: y_inset), above: section_above, below: section_below)[
  B.S. in Computer Science - University of Washington (2021 - 2023)\
  Associates of Science - Pierce College (Running Start) (2019 - 2021)
]
