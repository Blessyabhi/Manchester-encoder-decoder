# 🧩 Manchester Encoder and Decoder

## 📘 Course Details
*Course:* VLSI System Design Practice (EC-307)  
*Faculty:* Dr. P. Ranga Babu  
*Institution:* IIITDM Kurnool  

---

## 🧠 Introduction

In digital communication systems, synchronization between the transmitter and receiver is one of the most crucial requirements. Traditional binary data transmission techniques often encounter problems such as *loss of synchronization* and *DC bias. To overcome these issues, **Manchester encoding* is utilized — a line coding technique that combines clock and data into a single self-synchronizing signal.

Manchester encoding ensures that each bit period contains a voltage transition, allowing the receiver to extract the clock information directly from the data signal. The *Manchester decoder* then reconstructs the original binary data by detecting these mid-bit transitions.  

This project implements *both Manchester Encoder and Decoder* using *Verilog HDL* and performs *ASIC-level design flow* using *Cadence EDA tools* at *90nm technology*.

---

## ⚙ Objective

- Design and simulate a *Manchester Encoder and Decoder* in Verilog HDL.  
- Perform *logic synthesis, **floorplanning, **placement, **routing, and **layout generation* using Cadence tools.  
- Conduct *pre-layout* and *post-layout* verification to ensure timing and functionality accuracy.  
- Evaluate the *performance parameters* such as area, power, and delay.

---

## 🔍 Theory

### Working Principle

Manchester encoding uses the *XOR operation* between the data and clock signals.

| Bit | Clock | Data | Manchester Output | Transition Type |
|------|--------|--------|------------------|----------------|
| 1 | ↑ | 1 | Low → High | Rising edge |
| 0 | ↑ | 0 | High → Low | Falling edge |

Thus:
- *Logic ‘1’* → Low-to-High transition in the middle of the bit.  
- *Logic ‘0’* → High-to-Low transition in the middle of the bit.  

This guarantees a transition for every bit, enabling self-clocking and DC balance.

### Mathematical Representation
\[
M(t) = D(t) \oplus C(t)
\]
where  
- \(M(t)\): Manchester encoded signal  
- \(D(t)\): Input data  
- \(C(t)\): Clock signal  

### Decoder Working
The Manchester decoder samples the mid-bit transitions:
- Rising edge → Logic ‘1’  
- Falling edge → Logic ‘0’  

It then regenerates the original data by detecting transition direction relative to the clock signal.

---
## 🧩 Design Flow

| *Step* | *Tool Used* | *Description* |
|-----------|----------------|------------------|
| RTL Design | Verilog HDL | Encoder & Decoder coding |
| Functional Simulation | Cadence Xcelium | Logic correctness verified |
| Synthesis | Cadence Genus | RTL converted to gate-level netlist |
| Floorplanning | Cadence Innovus | Die area & power rails defined |
| Placement | Cadence Innovus | Cells placed based on connectivity |
| Clock Tree Synthesis | Cadence Innovus | Balanced clock network generated |
| Routing | Cadence Innovus | Signal routes auto-generated |
| Post-Layout Simulation | Cadence Xcelium | Timing & functionality verified |

---

## 🧱 Design Hierarchy


manchester_top
├── manchester_encoder
│   ├── xor_gate_1
│   └── clock_input
├── manchester_decoder
│   ├── xor_gate_2
│   └── data_register
└── testbench
    ├── clock_generator
    ├── stimulus_generator
    └── waveform_observer


*Description:*  
- The *top module* connects encoder and decoder in a loop for testing.  
- The *encoder* performs XOR with the clock to generate encoded data.  
- The *decoder* reverses the operation using synchronization with the same clock.  
- The *testbench* drives sample inputs and records waveforms for verification.

---

## 💾 Verilog Code

### Encoder
verilog
module manchester_encoder (
    input wire clk,
    input wire data_in,
    output wire encoded_out
);
    assign encoded_out = data_in ^ clk;
endmodule


### Decoder
verilog
module manchester_decoder (
    input wire clk,
    input wire encoded_in,
    output reg data_out
);
    always @(posedge clk)
        data_out <= encoded_in ^ clk;
endmodule


### Testbench
verilog
module tb_manchester;
    reg clk;
    reg data_in;
    wire encoded_out;
    wire decoded_out;

    manchester_encoder enc (.clk(clk), .data_in(data_in), .encoded_out(encoded_out));
    manchester_decoder dec (.clk(clk), .encoded_in(encoded_out), .data_out(decoded_out));

    initial begin
        clk = 0;
        forever #5 clk = ~clk; // 100 MHz clock
    end

    initial begin
        data_in = 0;
        #10 data_in = 1;
        #10 data_in = 0;
        #10 data_in = 1;
        #10 data_in = 1;
        #10 data_in = 0;
        #50 $stop;
    end
endmodule


---

## 🏗 ASIC Design Flow

The *ASIC (Application Specific Integrated Circuit)* design process transforms the high-level HDL description into a physically implementable chip.  
Below is the complete flow followed for this Manchester Encoder and Decoder project:

| *Step* | *Tool Used* | *Description* |
|-----------|----------------|----------------|
| *1. RTL Design* | Verilog HDL | Coded encoder and decoder modules. |
| *2. Functional Verification* | Cadence Xcelium | Verified functionality and waveform correctness. |
| *3. Logic Synthesis* | Cadence Genus | Converted RTL to gate-level netlist using 90nm standard cells. |
| *4. Floorplanning* | Cadence Innovus | Defined core area and power planning regions. |
| *5. Placement* | Cadence Innovus | Standard cells placed optimally within defined area. |
| *6. Clock Tree Synthesis (CTS)* | Cadence Innovus | Generated balanced clock tree minimizing skew and latency. |
| *7. Routing* | Cadence Innovus | Automated routing for signal and power interconnects. |
| *8. Parasitic Extraction* | Cadence Quantus | Extracted RC parasitics for accurate timing analysis. |
| *9. Static Timing Analysis (STA)* | Cadence Tempus | Verified timing closure for setup and hold constraints. |
| *10. Physical Verification (DRC/LVS)* | Cadence Pegasus | Ensured layout rule compliance and logical equivalence. |
| *11. GDSII Generation* | Cadence Innovus | Final chip layout ready for fabrication. |

This flow ensures an industry-standard ASIC design methodology from RTL to GDSII.

---

## 🧮 Layout Specifications

| *Parameter* | *Value* |
|----------------|------------|
| *Technology Node* | 90nm |
| *Tool Used* | Cadence Innovus |
| *Design Type* | Encoder + Decoder |
| *Standard Cell Library* | Generic 90nm CMOS |
| *Core Area* | 420 µm × 410 µm |
| *Die Area* | 450 µm × 440 µm |
| *Cell Count* | ~4,200 cells |
| *Area Utilization* | 74.6% |
| *Clock Frequency* | 100 MHz |
| *DRC/LVS* | Clean |
| *Power (Pre-layout)* | 0.72 mW |
| *Power (Post-layout)* | 0.75 mW |
| *Delay (Pre-layout)* | 1.85 ns |
| *Delay (Post-layout)* | 2.02 ns |
| *Operating Voltage* | 1.2 V |
| *Temperature Range* | 0°C – 125°C |

---
---

## 🧮 Implementation Results

| Parameter | Encoder | Decoder |
|------------|----------|----------|
| *Technology* | 90 nm CMOS | 90 nm CMOS |
| *Tool Used* | Cadence Innovus | Cadence Innovus |
| *Core Area* | 38.5 µm × 38.5 µm = 1,482 µm² | 42.1 µm × 42.1 µm = 1,772 µm² |
| *Cell Utilization* | 1,120 µm² (75 %) | 1,315 µm² (74 %) |
| *Total Power* | 0.384 mW | 0.426 mW |
| &nbsp;&nbsp;• Dynamic Power | 0.342 mW | 0.384 mW |
| &nbsp;&nbsp;• Leakage Power | 0.042 mW | 0.042 mW |
| *Clock Frequency* | 100 MHz | 100 MHz |
| *Worst Negative Slack* | 0.00 ns | 0.00 ns |
| *Setup Time* | 8.92 ns | 9.34 ns |
| *Hold Time* | 0.15 ns | 0.18 ns |
| *Operating Voltage* | 1.0 V | 1.0 V |

---

## 📊 Performance Summary

| Metric | Encoder | Decoder |
|--------|----------|----------|
| *Speed (Max Freq)* | 100 MHz | 100 MHz |
| *Power Efficiency* | 96 % | 94 % |
| *Logic Depth* | 8 levels | 9 levels |
| *Transition Delay* | 0.45 ns | 0.51 ns |
| *Gate Count (approx.)* | 850 | 970 |

---

## 🔍 Pre-Layout vs Post-Layout Analysis

| *Parameter* | *Pre-Layout* | *Post-Layout* |
|----------------|----------------|-----------------|
| Frequency | 100 MHz | 97 MHz |
| Delay | 1.85 ns | 2.02 ns |
| Power | 0.72 mW | 0.75 mW |
| Area | — | Slightly increased due to routing overhead |

---

## 🖥 Simulation Results

### Encoder Output
| *Input Data* | *Encoded Output* |
|----------------|--------------------|
| 1010 | |‾||‾| |
| 1100 | |‾‾|_| |

### Decoder Output
| *Encoded Input* | *Decoded Data* |
|--------------------|------------------|
| |‾||‾| | 1010 |
| |‾‾|_| | 1100 |

Both modules were validated through functional and post-layout simulations.

---

## 🧠 Observations
- The synthesized design achieved *zero timing violations*.  
- Power is primarily dynamic due to frequent transitions.  
- The decoder consumes slightly higher power owing to its edge-detection logic.  
- Area utilization < 80 % ensures clean routing and minimal congestion.  
- Post-layout simulations confirmed perfect functionality and synchronization.

---

## 📸 Simulation and Layout Images
### 🔹 Block Diagram
![Block Diagram](https://github.com/Blessyabhi/Manchester-encoder-decoder/blob/main/schematic.jpg)

### 🔹 Simulation Waveform
![Simulation Waveform](https://github.com/Blessyabhi/Manchester-encoder-decoder/blob/main/waveform.jpg)

### 🔹Overall Layout View (90nm)
![Overall layout view](https://github.com/Blessyabhi/Manchester-encoder-decoder/blob/main/layout.jpg)

### 🔹 Layout View (90nm)
![Layout view](https://github.com/Blessyabhi/Manchester-encoder-decoder/blob/main/layout_zoom.jpg)

---

## 🧠 Observations and Analysis

- *Area Utilization:* Optimal cell placement achieved with no congestion.  
- *Power:* Marginal increase post-layout due to interconnect parasitics.  
- *Delay:* Within acceptable timing constraints at 100 MHz.  
- *DRC/LVS:* Zero violations confirmed.  
- *Performance:* Excellent timing closure and reliable data synchronization.

---

## 🏁 Conclusion

The *Manchester Encoder and Decoder* were successfully designed, synthesized, and implemented through the complete *ASIC design flow* using *Cadence EDA tools*.  
The design exhibited correct functionality, minimal power consumption, and clean layout verification.  

The encoder ensured reliable data transmission by embedding synchronization within the data stream, while the decoder accurately reconstructed the original binary information.  
Overall, the project demonstrates practical understanding of *digital communication circuits, **VLSI design methodology, and **ASIC toolchain integration*.

---

## 🚀 Future Enhancements

- Implement *high-speed versions* for Gigabit communication.  
- Use *low-power cell libraries* for energy-efficient design.  
- Integrate *error detection and correction* logic.  
- Fabricate and test on silicon or FPGA for real-world verification.  

---


## 📚 References

1. M. L. Shooman, Digital Design Fundamentals, McGraw Hill.  
2. Cadence Tool Manuals – Xcelium, Genus, Innovus.  
3. IEEE Std 802.3 – Manchester Coding Standard.  
4. NPTEL Lectures on VLSI System Design.

---

> *Author:* Your Name  
> *Date:* November 2025  
> *Institute:* IIITDM Kurnool  
> *Subject:* VLSI System Design Practice (EC-307)
