#import "@preview/circuiteria:0.2.0": *
#import "@preview/cetz:0.3.4": draw
#set page(width: auto, height: auto, margin: 0pt)
#set align(center)



#circuit({
  draw.line(
    (9.5,5),
    (9.5,-5),
    stroke: (dash: "dashed", paint: gray),
  )
  draw.line(
    (5.5,4),
    (5.5,-6),
    stroke: (dash: "dashed", paint: gray),
  )
  draw.line(
    (14,5),
    (14,-5),
    stroke: (dash: "dashed", paint: gray),
  )


  draw.content(
    (9.5, 4.15),
    [25.6 MSPS $-->$ 128 MSPS],
  )
  draw.content(
    (14, 4.75),
    [128 MSPS $-->$ 512 MSPS],
  )

  draw.content(
    (5.5, -5.5),
    [25.6 MHz $-->$ 128 MHz],
  )




  element.group(
    id: "tx-interpol",
    name: "TX Interpolator",
    name-anchor: "south-west",
    padding: 1em,
    {
      element.block(
        x: -0.5, y: -3, w: 2.5, h: 6,
        id: "split",
        fill: util.colors.purple,
        name: [AXIS \ splitter],
        ports: (
          west: (
            (id: "in"),
          ),
          east: (
            (id: "out-i"),
            (id: "dummy"),
            (id: "dummy"),
            (id: "dummy"),
            (id: "out-q"),
          ),
        )
      )

      element.group(
        id: "chain-i",
        name: [In phase],
        name-anchor: "south-west",
        {
          element.block(
            x: 8, y: 1, w: 3, h: 2,
            id: "fir-i",
            fill: util.colors.green,
            name: [FIR $arrow.tr$ 5],
            ports: (
              west: (
                (id: "in"),
              ), 
              east: (
                (id: "out"),
              ),
            )
          )
          element.block(
            x: 4, y: 1, w: 3, h: 2,
            id: "fifo-i",
            fill: util.colors.yellow,
            name: [FIFO],
            ports: (
              west: (
                (id: "in"),
              ),
              east: (
                (id: "out"),
              ),
            )
          )
          element.block(
            x: 12, y: 1, w: 4, h: 2,
            id: "fir-ssr-i",
            fill: util.colors.green.darken(10%),
            name: [SSR FIR $arrow.tr$4],
            ports: (
              west: (
                (id: "in"),
              ), 
              east: (
                (id: "out"),
              ),
            )
          )

          wire.wire(
            "w-fifo-fir-i",
            ("fifo-i-port-out", "fir-i-port-in"),
            directed: true,
          )
          wire.wire(
            "w-fir-ssr-i",
            ("fir-i-port-out", "fir-ssr-i-port-in"),
            directed: true,
          )
        }
      )

      element.group(
        id: "chain-q",
        name: [Quadrature],
        name-anchor: "south-west", 
        {
          element.block(
            x: 8, y: -3, w: 3, h: 2,
            id: "fir-q",
            fill: util.colors.green,
            name: [FIR $arrow.tr$ 5],
            ports: (
              west: (
                (id: "in"),
              ), 
              east: (
                (id: "out"),
              ),
            )
          )
          element.block(
            x: 4, y: -3, w: 3, h: 2,
            id: "fifo-q",
            fill: util.colors.yellow,
            name: [FIFO],
            ports: (
              west: (
                (id: "in"),
              ),
              east: (
                (id: "out"),
              ),
            )
          )
          element.block(
            x: 12, y: -3, w: 4, h: 2,
            id: "fir-ssr-q",
            fill: util.colors.green.darken(10%),
            name: [SSR FIR $arrow.tr$4],
            ports: (
              west: (
                (id: "in"),
              ), 
              east: (
                (id: "out"),
              ),
            )
          )


          wire.wire(
            "w-fifo-fir-q",
            ("fifo-q-port-out", "fir-q-port-in"),
            directed: true,
          )
          wire.wire(
            "w-fir-ssr-q",
            ("fir-q-port-out", "fir-ssr-q-port-in"),
            directed: true,
          )
        }
      )

      element.block(
        x: 18, y: -3, w: 2.5, h: 6,
        id: "intlv",
        fill: util.colors.purple,
        name: [AXIS \ interleaver],
        ports: (
          west: (
            (id: "in-i"),
            (id: "dummy"),
            (id: "dummy"),
            (id: "dummy"),
            (id: "in-q"),
          ),
          east: (
            (id: "out"),
          ),
        )
      )
      
      wire.wire(
        "w-split-i",
        ("split-port-out-i", "fifo-i-port-in"),
        name-pos: "start",
        directed: true,
        style: "zigzag",
      )
      wire.wire(
        "w-split-q",
        ("split-port-out-q", "fifo-q-port-in"),
        name-pos: "start",
        directed: true,
        style: "zigzag",
      )

      draw.content(
        "w-split-i.end",
        align(center, par(leading: 0.3em)[16b \ / \ \ ]),
        anchor: "east", padding: 13pt
      )
      draw.content(
        "w-split-q.end",
        align(center, par(leading: 0.3em)[16b \ / \ \ ]),
        anchor: "east", padding: 13pt
      )

      wire.wire(
        "w-intlv-i",
        ("fir-ssr-i-port-out", "intlv-port-in-i"),
        name-pos: "start",
        directed: true,
        style: "zigzag",
      )
      wire.wire(
        "w-intlv-q",
        ("fir-ssr-q-port-out", "intlv-port-in-q"),
        name-pos: "start",
        directed: true,
        style: "zigzag",
      )

      draw.content(
        "w-intlv-i.end",
        align(center, par(leading: 0.3em)[64b \ / \ 4x16b\ ]),
        anchor: "east", padding: 6pt
      )

      draw.content(
        "w-intlv-q.end",
        align(center, par(leading: 0.3em)[64b \ / \ 4x16b\ ]),
        anchor: "east", padding: 6pt
      )
    }
  )

  wire.wire(
    "w-chain-in",
    ((-2.5,0), "split-port-in"),
    directed: true,
  )

  draw.content(
    "w-chain-in.start",
    align(center, par(leading: 0.3em)[32b \ / \ 2x16b\ ]),
    anchor: "west", padding: 1pt)

  wire.wire(
    "w-chain-out",
    ("intlv-port-out", (24,0)),
    directed: true,
  )

  draw.content(
    "w-chain-out.end",
    align(center, par(leading: 0.3em)[128b \ / \ 2x(4x16b)\ ]),
    anchor: "east", padding: 10pt)
})