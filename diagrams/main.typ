#import "@preview/circuiteria:0.2.0": *
#import "@preview/cetz:0.3.4": draw
#set page(width: auto, height: auto, margin: .5cm)
#set align(center)

#circuit({
  element.group(
    id: "rfsoc",
    name: "RFSoC",
    padding: 1.5em,
    {
      element.group(
        id: "pl",
        name: "Programmable Logic",
        fill: rgb("#adc2c29c"),
        {
          element.group(
            id: "qpsk",
            name: "StrathSDR QPSK demo",
            padding: 1em,
            stroke: (dash: "dashed"),
            {
              element.group(
                id: "qpsk-tx",
                name: "QPSK TX IP",
                name-anchor: "north",
                {
                  element.block(
                    x: 0, y: 4, w: 3, h: 2,
                    id: "tx-sym",
                    fill: util.colors.purple,
                    name: [QPSK TX \ Generator],
                    ports: (
                      west: (
                        (id: "ctrl"),
                      ),
                      east: (
                        (id: "iq"),
                      )
                    )
                  )

                  element.block(
                    x: 4, y: 4, w: 5, h: 2,
                    id: "tx-interpol",
                    fill: util.colors.purple,
                    name: [$F_s arrow.tr$ chain and utils],
                    ports: (
                      west: (
                        (id: "iq"),
                      ),
                      east: (
                        (id: "out"),
                      ),
                      south: (
                        (id: "dummy"),
                        (id: "dummy"),
                        (id: "dummy"),
                        (id: "dummy", name: "FFT"),
                        (id: "op2"),
                        (id: "dummy"),
                        (id: "op3"),
                      )
                    )
                  )
                }
              )
              element.block(
                x: 1, y: 1.5, w: 5, h: 2,
                id: "tx-op",
                fill: util.colors.purple,
                name: [AXIS to AXIMM],
                ports: (
                  north: (
                    (id: "op1", name: "OP1"),
                  ),
                  east: (
                    (id: "op2", name: "OP2"),
                    (id: "op3", name: "OP3"),
                  ),
                  west: (
                    (id: "aximm"),
                  )
                )
              )

              wire.wire(
                "w-tx-sym",
                ("tx-sym-port-iq", "tx-interpol-port-iq"),
                name: "I/Q",
                name-pos: "start",
                directed: true
              )
              wire.wire(
                "w-tx-op",
                ("tx-sym-port-iq", "tx-op-port-op1"),
                style: "zigzag",
                zigzag-ratio: 100%,
                directed: true
              )

              for p in ("op2", "op3") {
                wire.wire(
                  "w-" + p,
                  ("tx-interpol-port-"+p, "tx-op-port-"+p),
                  style: "zigzag",
                  directed: true
                )
              }

              element.block(
                x: 0.8, y: -4.7, w: 5, h: 2,
                id: "rx-demod-dum1",
                fill: util.colors.green,
                ports: (
                  west: (
                    (id: "ctrl"),
                  ),
                )

              )
              element.block(
                x: 0.9, y: -4.6, w: 5, h: 2,
                id: "rx-demod-dum2",
                fill: util.colors.green,
                ports: (
                  west: (
                    (id: "ctrl"),
                  ),
                )
              )

              element.block(
                x: 1, y: -4.5, w: 5, h: 2,
                id: "rx-demod",
                fill: util.colors.green,
                name: [QPSK RX IP group],
                ports: (
                  east: (
                    (id: "iq"),
                  ),
                  west: (
                    (id: "ctrl"),
                  ),
                  north: (
                    (id: "op4"),
                    (id: "op5"),
                    (id: "op6"),
                    (id: "op7"),
                  )
                )
              )

              element.block(
                x: 1, y: -1.5, w: 5, h: 2,
                id: "rx-op",
                fill: util.colors.green,
                name: [AXIMM to AXIS],
                ports: (
                  south: (
                    (id: "op4", name: "OP4"),
                    (id: "op5", name: "OP5"),
                    (id: "op6", name: "OP6"),
                    (id: "op7", name: "OP7"),
                  ),
                  west: (
                    (id: "aximm"),
                  )
                )
              )

              for p in ("op4", "op5", "op6", "op7") {
                wire.wire(
                  "w-" + p,
                  ("rx-demod-port-"+p, "rx-op-port-"+p),
                  style: "zigzag",
                  directed: true
                )
              }
            }
          )

          element.block(
            x: 10.5, y: -4, w: 3, h: 2,
            id: "rx-decim-chain",
            fill: util.colors.green,
            name: [SSR $F_s arrow.br$],
            ports: (
              west: (
                (id: "iq-out"),
              ),
              east: (
                (id: "iq-in"),
              ),
              south: (
                (id: "iq-out2"),
              )
            )
          )

          element.block(
            x: 10.5, y: 4, w: 3, h: 2,
            id: "tx-interpol-chain",
            fill: util.colors.purple,
            name: [SSR $F_s arrow.tr$],
            ports: (
              east: (
                (id: "iq-out"),
              ),
              west: (
                (id: "iq-in"),
              )
            )
          )

          element.block(
            x: 15, y: -4, w: 3, h: 10,
            id: "rfdc",
            fill: util.colors.pink,
            name: [RF Data \ Converter],
            ports: (
              west: (
                (id: "iq-in"),
                (id: "dummy"),
                (id: "ch-ctrl"),
                (id: "dummy"),
                (id: "iq-out")
              ),
              east: (
                (id: "rf-out"),
                (id: "dummy"),
                (id: "dummy"),
                (id: "dummy"),
                (id: "rf-in")
              ),
            )
          )

          element.block(
            x: 2, y: -9, w: 5, h: 2,
            id: "cognitive",
            fill: util.colors.orange,
            name: [cognitive decision],
            ports: (
              west: (
                (id: "decision"),
              ),
              east: (
                (id: "iq-in"),
              ),
            )
          )

          element.block(
            x: 2, y: -12, w: 5, h: 2,
            id: "stft",
            fill: util.colors.orange,
            name: [STFT],
            ports: (
              east: (
                (id: "iq-in"),
              ),
              west: (
                (id: "data"),
              ),
            )
          )

          element.block(
            x: 8, y: -9, w: 3, h: 2,
            id: "spec-decim",
            fill: util.colors.green,
            name: [$F_s arrow.br$],
            ports: (
              west: (
                (id: "iq-out"),
              ),
              east: (
                (id: "iq-in"),
              ),
            )
          )

          wire.wire(
            "w-rx-post-ssr",
            ("rx-decim-chain-port-iq-out", "rx-demod-port-iq"),
            directed: true,
            style: "zigzag",
          )
          wire.wire(
            "w-tx-pre-ssr",
            ("tx-interpol-port-out", "tx-interpol-chain-port-iq-in"),
            directed: true,
            style: "zigzag",
          )
          wire.wire(
            "w-rfdc-in",
            ("tx-interpol-chain-port-iq-out", "rfdc-port-iq-in"),
            directed: true,
            style: "zigzag",
          )
          wire.wire(
            "w-rfdc-out",
            ("rfdc-port-iq-out", "rx-decim-chain-port-iq-in"),
            directed: true,
            style: "zigzag",
          )
          wire.wire(
            "w-cognitive-in",
            ("spec-decim-port-iq-out", "cognitive-port-iq-in"),
            directed: true,
            style: "zigzag",
          )
          wire.wire(
            "w-stft-in",
            ("spec-decim-port-iq-out", "stft-port-iq-in"),
            directed: true,
            style: "zigzag",
          )
          wire.wire(
            "w-spec-decim",
            ("rx-decim-chain-port-iq-out2", "spec-decim-port-iq-in"),
            directed: true,
            style: "zigzag",
          )
        }
      )

      element.block(
        x: -6, y: -6.25, w: 4, h: 14,
        id: "ps",
        fill: util.colors.blue,
        name: [Programmable \ System],
        ports: (
          east: (
            (id: "tx-ctrl", name: "TX CTRL"),
            (id: "tx-aximm", name: "TX AXIMM"),
            (id: "ch-ctrl"),
            (id: "rx-aximm", name: "RX AXIMM"),
            (id: "rx-ctrl", name: "RX CTRL"),
          ),
          south: (
            (id: "stft"),
            (id: "decision"),
          )
        )
      )

      wire.wire(
        "w-tx-ctrl",
        ("ps-port-tx-ctrl", "tx-sym-port-ctrl"),
        style: "zigzag",
        zigzag-ratio: 20%,
        directed: true
      )
      wire.wire(
        "w-tx-aximm",
        ( "tx-op-port-aximm", "ps-port-tx-aximm"),
        style: "zigzag",
        zigzag-ratio: 20%,
        directed: true
      )
      wire.wire(
        "w-rx-ctrl",
        ("ps-port-rx-ctrl", "rx-demod-port-ctrl"),
        style: "zigzag",
        zigzag-ratio: 20%,
        directed: true
      )
      wire.wire(
        "w-rx-aximm",
        ( "rx-op-port-aximm", "ps-port-rx-aximm"),
        style: "zigzag",
        zigzag-ratio: 20%,
        directed: true
      )
      wire.wire(
        "w-cognitive",
        ("cognitive-port-decision", "ps-port-decision"),
        style: "zigzag",
        zigzag-ratio: 100%,
        directed: true
      )
      wire.wire(
        "w-stft",
        ("stft-port-data", "ps-port-stft"),
        style: "zigzag",
        zigzag-ratio: 100%,
        directed: true
      )
      wire.wire(
        "w-rfdc-ctrl",
        ("ps-port-ch-ctrl", "rfdc-port-ch-ctrl"),
        name: "TX/RX channel control",
        name-pos: "end",
        style: "zigzag",
        zigzag-ratio: 50%,
        directed: true
      )

      draw.line(name: "w-ant-tx",
        "rfdc-port-rf-out",
        (rel: (0, 0), to: ()),
        (
          rel: (.5, 0),
          to: (horizontal: "pl.east", vertical: ())
        )
      )

      draw.content("w-ant-tx.end", "RF out", anchor: "west", padding: 3pt)

      draw.line(name: "w-ant-rx",
        "rfdc-port-rf-in",
        (rel: (0, 0), to: ()),
        (
          rel: (.5, 0),
          to: (horizontal: "pl.east", vertical: ())
        )
      )

      draw.content("w-ant-rx.end", "RF in", anchor: "west", padding: 3pt)


      
    }
  )
})