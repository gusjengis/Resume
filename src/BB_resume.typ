// VARIABLES

#let x_inset = 1.9em
#let y_inset = 0em
#let section_above = 10pt
#let section_below = 10pt

#let dark = false

// STYLING

#let palette = (
  bg: white,
  fg: black,
  muted: rgb("#444444"),
  accent: rgb("#2563eb"),
  heading: black,
)

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

#let rule() = block(spacing: 0pt)[ #line(length: 100%, stroke: (paint: palette.fg, thickness: 1.0pt)) ] 


// CONTENT

#align(center)[
    #text(18pt, weight: "bold", fill: palette.fg )[Anthony Green]\

    #block(above: 7pt, below: 10pt)[#text(11pt, weight: "bold", fill: palette.fg)[
        Greater Seattle Area, WA
      ]\
    ]

      anthony.j.green\@outlook.com | (253) 495-2988 | 
      #link("https://www.linkedin.com/in/anthonygreen03", "linkedin.com/in/anthonygreen03") | 
      #link("https://www.github.com/gusjengis", "github.com/gusjengis")
]

#align(center)[
Consumer technology generalist focused on PC repair and configuration, cross-platform troubleshooting, and customer support.
]


= EXPERIENCE
#rule()

#block(inset: (x: x_inset, y: y_inset), above: section_above, below: section_below)[

=== Backend Engineer (Unpaid) #text(weight: "regular")[| Unity, C\#, JS] #h(1fr) 05/2025 - Present
_Rainspire Studios_ #h(1fr) Seattle, WA 

- Built and maintained backend systems supporting production mobile applications.
- Diagnosed cross-platform issues across iOS, Android, and cloud environments.
- Managed Apple Developer infrastructure and automated build pipelines.
- Integrated third-party SDKs and resolved platform compatibility issues.


=== Pharmacy Technician #h(1fr) 08/2024 - 04/2025
_Walgreens_ #h(1fr) Puyallup, WA 

- Assisted customers in a fast-paced retail environment while balancing accuracy, speed, and service.
- Maintained accuracy while handling sensitive information and time-critical requests.
- Communicated clearly with customers and coworkers to troubleshoot problems and resolve issues quickly.


=== Undergraduate Researcher #text(weight: "regular")[| Rust, GPU Compute] #h(1fr) 09/2023 - 12/2024
_University of Washington_ #h(1fr) *#link("https://github.com/gusjengis/Physics-Sim", "github.com/gusjengis/Physics-Sim")*

- Developed high-performance software systems for scientific simulation.
- Built tooling for monitoring system performance and diagnosing computational issues.
- Collaborated with researchers to design reliable software infrastructure.

]

= HARDWARE & CONSUMER TECHNOLOGY EXPERIENCE
#rule()

#block(inset: (x: x_inset, y: y_inset), above: section_above, below: section_below)[

=== PC Hardware & Device Repair

- Extensive hands-on experience assembling, upgrading, and repairing PCs and laptops.
- Troubleshoot hardware failures, thermal issues, OS corruption, BIOS and firmware settings, boot problems, drivers, and system performance.
- Install and configure Windows, macOS, and Linux across varied hardware.


=== Consumer Electronics & Peripherals

- Broad hands-on familiarity with gaming consoles, phones, tablets, TVs, monitors, smart home products, and major consumer platforms.
- Strong knowledge of peripherals, display technology, and audio gear including keyboards, mice, controllers, docks, OLED and LCD behavior, HDR, headphones, DACs, and amplifiers.


=== VR, Electronics, and Embedded Hardware

- Long-term VR user with experience across headset generations, from early Oculus development kits to current consumer systems.
- Built electronics projects with Arduino hardware, soldering, component-level troubleshooting, and basic electrical engineering fundamentals.
]


= TECHNICAL SKILLS
#rule()

#block(inset: (x: x_inset, y: y_inset), above: section_above, below: section_below)[

*Platforms & Tools*: Windows, macOS, Linux, iOS, Android, Arduino, soldering

]

= EDUCATION
#rule()
#block(inset: (x: x_inset, y: y_inset), above: section_above, below: section_below)[
  B.S. in Computer Science - University of Washington (2021 - 2023)\
  Associates of Science - Pierce College (Running Start) (2019 - 2021)
]
