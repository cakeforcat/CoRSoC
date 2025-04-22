#import "@preview/circuiteria:0.2.0": *
#import "@preview/cetz:0.3.4": draw
#set page(width: auto, height: auto, margin: 0pt)
#set align(center)


#circuit({
  for i in (0,1,2) {
    draw.line(
      (i*4+1.5, 4),
      (i*4+1.5, -7),
      stroke: (dash: "dashed", paint: gray),
    )
    draw.content(
      (i*4+1.5, -6),
      $-->$
    )
  }

  for i in (0,1,2,3) {
    draw.content(
      (-i*4+11.5, -6),
      str(16*(calc.pow(2,i))) + " MSPS",
      anchor: "center",
    )
  }
  draw.line(
    (13.5,5),
    (13.5,-5),
    stroke: (dash: "dashed", paint: gray),
  )

  draw.content(
    (13.5, 4.65),
    [128 MHz $-->$ 25.6 MHz],
    anchor: "center",
  )




  element.group(
    id: "rx-decim",
    name: "RX Decimator",
    name-anchor: "south-west",
    padding: 1em,
    {
      element.group(
        id: "chain-i",
        name: [In phase],
        name-anchor: "south-west",
        {
          for i in (0,1,2) {
            element.block(
              x: i*4, y: 1, w: 3, h: 2,
              id: "fir-"+ str(i) +"-i",
              fill: util.colors.green,
              name: [HB FIR $arrow.br$ 2],
              ports: (
                west: (
                  (id: "in"),
                ), 
                east: (
                  (id: "out"),
                ),
              )
            )
          }

          for i in (0,1) {
            wire.wire(
              "w-fir-"+ str(i) +"-i",
              ("fir-"+ str(i) +"-i-port-out", "fir-"+ str(i+1) +"-i-port-in"),
              directed: true,
              style: "zigzag",
            )
          }
          
          element.block(
            x: 12, y: 1, w: 3, h: 2,
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

          wire.wire(
            "w-fifo-i",
            ("fir-2-i-port-out", "fifo-i-port-in"),
            directed: true,
            style: "zigzag",
          )
        }
      )
      element.group(
        id: "chain-q",
        name: [Quadrature],
        name-anchor: "south-west",
        {
          for i in (0,1,2) {
            element.block(
              x: i*4, y: 1-4, w: 3, h: 2,
              id: "fir-"+ str(i) +"-q",
              fill: util.colors.green,
              name: [HB FIR $arrow.br$ 2],
              ports: (
                west: (
                  (id: "in"),
                ), 
                east: (
                  (id: "out"),
                ),
              )
            )
          }

          for i in (0,1) {
            wire.wire(
              "w-fir-"+ str(i) +"-q",
              ("fir-"+ str(i) +"-q-port-out", "fir-"+ str(i+1) +"-q-port-in"),
              directed: true,
              style: "zigzag",
            )
          }
          element.block(
            x: 12, y: 1-4, w: 3, h: 2,
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

          wire.wire(
            "w-fifo-q",
            ("fir-2-q-port-out", "fifo-q-port-in"),
            directed: true,
            style: "zigzag",
          )
        }
      )

      element.block(
        x: 16, y: -3, w: 3, h: 6,
        id: "quant",
        fill: util.colors.purple,
        name: [Quantizer \ combiner],
        ports: (
          west: (
            (id: "in-i"),
            (id: "dummy"),
            (id: "dummy"),
            (id: "dummy"),
            (id: "in-q"),
          ),
          east: (
            (id: "out-q"),
            (id: "dummy"),
            (id: "out-full"),
          ),
        )
      )

      wire.wire(
        "w-quant-i",
        ("fifo-i-port-out", "quant-port-in-i"),
        directed: true,
        style: "zigzag",
      )
      wire.wire(
        "w-quant-q",
        ("fifo-q-port-out", "quant-port-in-q"),
        directed: true,
        style: "zigzag",
      )
    }
  )

  wire.wire(
    "w-in-i",
    ((-2.5,2), "fir-0-i-port-in"),
    directed: true,
  )
  wire.wire(
    "w-in-q",
    ((-2.5,-2), "fir-0-q-port-in"),
    directed: true,
  )
  wire.wire(
    "w-out-q",
    ("quant-port-out-q", (21, 1.5)),
    directed: true,
  )
    wire.wire(
    "w-out-full",
    ("quant-port-out-full", (21, -1.5)),
    directed: true,
  )

  draw.content(
    "w-in-i.start",
    align(center, par(leading: 0.3em)[16b \ / \ \ ]),
    anchor: "west", padding: 8pt)
  draw.content(
    "w-in-q.start",
    align(center, par(leading: 0.3em)[16b \ / \ \ ]),
    anchor: "west", padding: 8pt)

  draw.content(
    "w-out-q.end",
    align(center, par(leading: 0.3em)[16b \ / \ 2x8b ]),
    anchor: "east", padding: 8pt)
  draw.content(
    "w-out-full.end",
    align(center, par(leading: 0.3em)[32b \ / \ 2x16b ]),
    anchor: "east", padding: 3pt)
})