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
Technical specialist with experience diagnosing and repairing computer systems across Windows, macOS, and Linux environments. Skilled in troubleshooting hardware and software issues, configuring operating systems, and building reliable computing systems. Background in software engineering and electronics with strong problem-solving ability and clear technical communication.
]


= EXPERIENCE
#rule()

#block(inset: (x: x_inset, y: y_inset), above: section_above, below: section_below)[

=== Backend Engineer #text(weight: "regular")[| Unity, C\#, JS] #h(1fr) 05/2025 - Present
_Rainspire Studios_ #h(1fr) Seattle, WA 

- Built and maintained backend systems supporting production mobile applications.
- Diagnosed deployment issues across iOS, Android, and cloud environments.
- Managed Apple Developer infrastructure and automated build pipelines.
- Integrated third-party SDKs and resolved platform compatibility issues.


=== Pharmacy Technician #h(1fr) 08/2024 - 04/2025
_Walgreens_ #h(1fr) Puyallup, WA 

- Assisted customers in a fast-paced retail environment and resolved technical issues with prescription systems.
- Maintained accuracy while handling sensitive information and time-critical requests.
- Communicated clearly with customers to troubleshoot problems and provide solutions.


=== Undergraduate Researcher #text(weight: "regular")[| Rust, GPU Compute] #h(1fr) 09/2023 - 12/2024
_University of Washington_ #h(1fr) *#link("https://github.com/gusjengis/Physics-Sim", "github.com/gusjengis/Physics-Sim")*

- Developed high-performance software systems for scientific simulation.
- Built tooling for monitoring system performance and diagnosing computational issues.
- Collaborated with researchers to design reliable software infrastructure.

]

= HARDWARE & CONSUMER TECHNOLOGY EXPERIENCE
#rule()

#block(inset: (x: x_inset, y: y_inset), above: section_above, below: section_below)[

=== PC Hardware & System Repair

- Lifelong PC user with extensive experience assembling and upgrading custom desktop systems.
- Diagnosed and repaired laptop and desktop hardware issues including storage failures, thermal problems, and OS corruption.
- Installed and configured Windows and Linux environments across multiple machines.
- Comfortable troubleshooting BIOS/firmware configuration, boot failures, and driver issues.


=== Consumer Electronics Ecosystems

- Extensive hands-on experience with modern consumer electronics including gaming consoles, VR systems, mobile devices, displays, and smart home technology.
- Configured and maintained complex home technology setups including LG OLED displays, Philips Hue lighting, Home Assistant automation, and networked devices.
- Experienced with major consumer platforms including Windows, macOS, Linux, iOS, and Android.


=== Peripherals, Displays, and Audio Equipment

- Deep familiarity with computer peripherals including mechanical keyboards, gaming mice, controllers, and input devices.
- Knowledgeable about display technologies including refresh rates, panel types, HDR, and monitor configuration.
- Experienced with high-end audio equipment including headphones, DACs, amplifiers, and record player modification.


=== Virtual Reality & Emerging Hardware

- Long-term VR user with experience across multiple generations of headsets including Oculus development kits and modern consumer systems.
- Familiar with setup, troubleshooting, and performance optimization of VR hardware and software environments.


=== Electronics & Embedded Hardware

- Designed and assembled a custom handheld gaming device using Arduino hardware and discrete electronics.
- Performed soldering and component-level work during hardware development.
- Completed coursework in electrical engineering fundamentals covering basic circuit design and electronic components.

]
= PROJECTS
#rule()

#block(inset: (x: x_inset, y: y_inset), above: section_above, below: section_below)[

=== Arduino Handheld Device #text(weight: "regular")[| Embedded Systems, Electronics] #h(1fr) #link("https://portfolio.agreenweb.com/handheld", "portfolio.agreenweb.com/handheld")

- Designed and assembled a custom handheld computing device using Arduino hardware.
- Implemented firmware and system software under strict hardware constraints.
- Diagnosed and debugged hardware and firmware issues during development.

]


= TECHNICAL SKILLS
#rule()

#block(inset: (x: x_inset, y: y_inset), above: section_above, below: section_below)[

*Operating Systems*: Linux, Windows, macOS  

*Hardware & Systems*: PC assembly, system troubleshooting, BIOS configuration, OS installation, embedded systems

]

= EDUCATION
#rule()
#block(inset: (x: x_inset, y: y_inset), above: section_above, below: section_below)[
  B.S. in Computer Science - University of Washington (2021 - 2023)\
  Associates of Science - Pierce College (Running Start) (2019 - 2021)
]
