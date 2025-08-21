// VARIABLES

#let professional = true
#let rules = true

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
  size: 10pt,
  fill: palette.fg,
  font: "Carlito",
)

#show heading.where(level: 1): set text(fill: palette.heading)
#show heading.where(level: 2): set text(fill: palette.heading)
#show heading.where(level: 3): set text(fill: palette.heading)

#show heading.where(level: 1): set block(above: 14pt, below: 7pt)
// #show heading.where(level: 2): set block(above: 11pt, below: 7pt)
#show heading.where(level: 3): set block(above: 11pt, below: 7pt)

#show link: set text(fill: palette.fg)
#show link: underline

#let rule() = if rules { block(spacing: 7pt)[ #line(length: 100%, stroke: (paint: palette.fg, thickness: 0.5pt)) ] }
// CONTENT
#align(center)[
  #text(18pt, weight: "bold", fill: palette.fg )[Anthony Green]\

  #text(12pt, weight: "bold", fill: palette.fg )[Software Engineer]\
  // #rule()
  
  #text(fill: palette.fg )[
  anthony.j.green\@outlook.com | (253) 495-2988 |
  // anthony.j.green\@outlook.com • (253) 495-2988 •
]
  #link("https://www.linkedin.com/in/anthonygreen03", "linkedin.com/in/anthonygreen03") |
  #link("https://www.github.com/gusjengis", "github.com/gusjengis")
]

= Experience
#rule()

=== Backend Engineer - Rainspire Studios #h(1fr) 05/2025 - Present
- Led the integration of mobile titles with cloud services. 
- Handled user authentication, cloud storage, advertisement integration,
- Built gameplay features and tooling in Unity (C\#) with supporting scripts in Python and JavaScript.
- Managed iOS builds in Xcode and handled Apple Developer account configuration/provisioning.
- Prototyped adaptive bots using Unity ML-Agents to automate balance testing as mechanics evolved.
- Implemented in-engine data visualization to accelerate debugging and performance analysis.

=== Pharmacy Technician - Walgreens #h(1fr) 08/2024 - 04/2025
- Operated pharmacy management systems to process prescriptions and insurance claims accurately in a high-volume setting.
- Maintained productivity and attention to detail; adopted advanced keyboard workflows that informed later engineering ergonomics.

=== Undergraduate Researcher - University of Washington #h(1fr) 09/2023 - 12/2024
- Lead developer of a physics simulator for earthquake simulation.
- Built from scratch using Rust and WebGPU; simulation and rendering all done on the GPU.
- Built tooling for experiment setup, runtime control, measurement, and automated analysis.
// - Achieved substantial speedups vs. PFC on scoped cases, reducing compute time by an estimated 40–60%.
// - Collaborated with faculty to align technical design with research objectives and validation needs.


= Projects
#rule()
=== Particle Life
- #lorem(10)
- #lorem(10)
- #lorem(10)
=== Portfolio Site
- #lorem(10)
- #lorem(10)
- #lorem(10)
=== hyprfocus
- #lorem(10)
- #lorem(10)
- #lorem(10)
= Technical Skills
#rule()
Languages: Rust, Python, JavaScript, C64 Basic, C (K&R & ANSI), C++, Arduino, HTML, CSS, WASM, WGSL, GLSL, C\#, HLSL, Nix, Markdown, Typst

Tools: Arduino, WASM, WebGPU, WebGL, Unity, Git, Docker, AWS, Neovim, Linux, Windows, MacOS

= Education
#rule()
B.S. in Computer Science - University of Washington (2021 - 2023)\
Associates of Science - Pierce College (Running Start) (2019 - 2021)
