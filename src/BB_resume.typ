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

- Lifelong PC user with extensive experience assembling and upgrading custom desktop systems.
- Diagnosed and repaired PC hardware issues including motherboard failures, thermal problems, and OS corruption.
- Installed and configured Windows, macOS, and Linux environments across multiple machines.
- Comfortable troubleshooting BIOS and firmware settings, boot failures, drivers, and system performance issues.


=== Consumer Electronics Ecosystems

- Extensive hands-on experience with gaming consoles, VR systems, phones, tablets, TVs, monitors, and smart home technology.
- Configured and maintained complex smart home setups including LG OLED displays, Philips Hue lighting, Home Assistant automation, and networked devices.
- Experienced with major consumer platforms including Windows, macOS, Linux, iOS, and Android.


=== Peripherals, Displays, and Audio Equipment

- Deep familiarity with keyboards, mice, controllers, docks, adapters, and other computer peripherals.
- Knowledgeable about display technologies including OLED and LCD behavior, refresh rates, panel types, HDR, and monitor configuration.
- Experienced with high-end audio equipment including headphones, DACs, amplifiers, speakers, and record player modification.


=== Virtual Reality & Emerging Hardware

- Long-term VR user with experience across multiple generations of headsets, from early Oculus development kits to current consumer systems.
- Familiar with setup, troubleshooting, and performance optimization of VR hardware and software environments.


=== Electronics & Embedded Hardware

- Designed and assembled a custom handheld gaming device using Arduino hardware and discrete electronics.
- Built and modified electronics projects involving soldering, component-level work, and hands-on troubleshooting.
- Completed coursework in electrical engineering fundamentals covering basic circuit design and electronic components.
]


= TECHNICAL SKILLS
#rule()

#block(inset: (x: x_inset, y: y_inset), above: section_above, below: section_below)[

*Diagnostics & Repair*: PC assembly, laptop repair, hardware troubleshooting, BIOS and firmware configuration, OS installation, driver issues

*Consumer Technology*: Gaming consoles, VR headsets, TVs and monitors, smart home devices, mobile devices, peripherals, audio equipment

*Platforms & Tools*: Windows, Linux, macOS, iOS, Android, Arduino, embedded systems, soldering

]

= EDUCATION
#rule()
#block(inset: (x: x_inset, y: y_inset), above: section_above, below: section_below)[
  B.S. in Computer Science - University of Washington (2021 - 2023)\
  Associates of Science - Pierce College (Running Start) (2019 - 2021)
]
