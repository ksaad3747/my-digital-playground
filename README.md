# my-digital-playground

A repository dedicated to exploring, learning, and revising fundamental and advanced concepts of digital design. This repository contains a collection of RTL designs written in Verilog/SystemVerilog/HDL, with testbenches to verify their functionality. This repository serves as a reference for RTL concepts and best practices, including verification and documentation.

---

## Repository Structure

```plaintext
my-digital-playground/
├── README.md                  # Overview
├── LICENSE                    # License information (optional)
├── docs/                      # Notes and guides
├── modules/                   # RTL designs and testbenches
│   ├── AND/
│   │   ├── AND.sv             # RTL design file
│   │   ├── AND_tb.sv          # Testbench
│   │   └── AND_dumps/         # Waveform files or screenshots
|   |       ├── vcd/           # Waveform (s)
|   |       └── jpg/           # Screenshot (s)
│   ├── FULL_ADDER/
│   │   ├── FULL_ADDER.sv
│   │   ├── FULL_ADDER_tb.sv
│   │   └── FULL_ADDER_dumps/
|   |       ├── vcd/           # Waveform (s)
|   |       └── jpg/           # Screenshot (s)
│   └── ...
├── scripts/                   # Simulation scripts
├── results/                   # Simulation or synthesis results
└── tools/                     # Custom tools and utilities
```

---

## Features

- **RTL Designs**: A variety of digital circuits, from basic gates to more complex modules like adders, multiplexers, and memory modules.
- **Testbenches**: Comprehensive testbenches for verifying each design's functionality.
- **Waveform Analysis**: Optional waveform outputs for visualizing simulation results.
- **Reusable Scripts**: Common scripts for simulating, compiling, or synthesizing the designs.
- **Documentation**: Clear documentation for each module, including usage instructions and design descriptions.

---

## Modules Included

This repository will grow over time, but here’s an example of the types of modules included:

- **Basic Logic Gates**: AND, OR, NOT  
- **Arithmetic Units**: Half adder, Full adder, Arithmetic Logic Unit (ALU)
- **Combinational Circuits**: Multiplexers, decoders, encoders, 7-segment BCD decoder  
- **Sequential Circuits**: Flip-flops, shift registers, counters
- **Memory Modules**: Single-port RAM, Dual-port RAM, synchronous FIFO, asynchronous-fifo
- **Custom Modules**: FSMs, Sequence detectors, etc.  
- **Processing Units**: Single cycle processor, RISC-V core, DMA engine

---

## How to Use

1. Clone the repository:  
   ```bash
   git clone https://github.com/<your-username>/my-digital-playground.git
   ```
2. Navigate to the module of interest, e.g., `modules/ALU/`.
3. Open the RTL design and testbench files in your favorite editor.
4. Use the provided simulation scripts (or your own setup) to simulate the design.
5. Analyze the results and waveforms for verification.

---

## Contributing

This repository is a personal project, but contributions are welcome! If you’d like to add new designs or improve existing ones, feel free to submit a pull request.

---

## About Owner

```html
https://www.linkedin.com/in/ksaad3747/
```

---

## License

This repository is license-free. Feel free to use it as you wish.
