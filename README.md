# 🧠 Manchester Encoder–Decoder: RTL to GDSII  
**Complete ASIC Design Flow Implementation**

---

## 🎯 Overview
This project presents a **complete RTL-to-GDSII design flow** implementation of a **Manchester Encoder–Decoder**.  
Manchester coding is a widely used **line encoding technique** in digital communication systems like Ethernet, RFID, and IR transmission, combining **data and clock synchronization** into a single self-clocking waveform.

This project demonstrates the **end-to-end ASIC design flow** — from RTL design in Verilog HDL to layout generation (GDSII), including **simulation, synthesis, place & route, and signoff verification**.

---

## ✨ Key Highlights
| Feature | Description |
|----------|-------------|
| ⚡ Self-Clocking | Synchronizes data and clock within a single signal |
| 🔄 Dual Functionality | Encoder and Decoder both integrated |
| 🧠 RTL Design | Developed using Verilog HDL |
| 🧪 Verification | Comprehensive simulation using self-checking testbench |
| 🏗 ASIC Flow | Synthesis → PnR → DRC/LVS/STA clean GDSII |
| 💡 Technology | Implemented in both 90 nm and 180 nm CMOS technology nodes |

---

## 🧩 System Architecture

### 🔸 Block Diagram
```text
           ┌────────────────────────┐
           │       INPUT DATA        │
           └────────────┬────────────┘
                        │
                 ┌───────▼────────┐
                 │   ENCODER      │
                 │ (Data → Line)  │
                 └───────┬────────┘
                        │
                 ┌───────▼────────┐
                 │ TRANSMISSION   │
                 │  CHANNEL       │
                 └───────┬────────┘
                        │
                 ┌───────▼────────┐
                 │   DECODER      │
                 │ (Line → Data)  │
                 └───────┬────────┘
                        │
           ┌────────────▼────────────┐
           │       OUTPUT DATA       │
           └─────────────────────────┘
##  ⚙️ Working Principle

The **Manchester Encoder–Decoder** operates on the concept of **bi-phase level encoding**, where each bit of digital data is represented by a voltage transition within a clock period.  
This ensures **self-clocking capability** and **synchronization** between transmitter and receiver without requiring a separate clock signal.

---

## 🔢 Encoding Process

| Step | Description |
|------|--------------|
| 1 | The input data bit is XORed with the clock signal to produce the Manchester code. |
| 2 | Logic ‘1’ is represented by a **high-to-low** transition at the mid-bit. |
| 3 | Logic ‘0’ is represented by a **low-to-high** transition at the mid-bit. |
| 4 | The encoded waveform thus carries both data and clock information. |

---

## 🔁 Decoding Process

| Step | Description |
|------|--------------|
| 1 | The encoded signal is received and sampled at mid-bit intervals. |
| 2 | The transition direction (rising/falling) is detected. |
| 3 | A **low-to-high** transition corresponds to logic ‘0’, while a **high-to-low** transition corresponds to logic ‘1’. |
| 4 | The binary sequence is reconstructed at the output. |

---

## 🧠 Theory Behind Manchester Coding

| Concept | Explanation |
|----------|--------------|
| **Encoding Rule** | \( M(t) = D(t) \oplus CLK(t) \) |
| **Data Recovery** | Achieved by detecting transition direction and timing. |
| **Advantages** | Self-clocking, DC-balanced, high noise immunity. |
| **Applications** | Ethernet, RFID, IR communication, serial data. |

---

## 🧩 Module Description

| Module Name | Function |
|--------------|-----------|
| `manchester_encoder.v` | Converts binary data into Manchester encoded signal. |
| `manchester_decoder.v` | Recovers original bits from received waveform. |
| `clock_generator.v` | Generates clock reference. |
| `top_manchester.v` | Integrates all submodules for end-to-end operation. |

---

## 🧱 ASIC Design Flow

| Step | Tool | Description |
|------|------|-------------|
| RTL Design | Verilog HDL | HDL description of encoder & decoder. |
| Functional Simulation | Vivado / ModelSim | Verify correctness with testbench. |
| Logic Synthesis | Cadence Genus | Converts RTL into gate-level netlist. |
| Floorplanning | Cadence Innovus | Defines chip core, I/O, and power grid. |
| Placement | Cadence Innovus | Arranges standard cells. |
| Clock Tree Synthesis | Cadence Innovus | Balances clock skew. |
| Routing | Cadence Innovus | Connects placed cells. |
| Physical Verification | Assura / Innovus | DRC, LVS, and STA checks. |
| GDSII Generation | Cadence Innovus | Final layout export. |

---

## 📊 Design Metrics Comparison

| Parameter | 90 nm | 180 nm |
|------------|-------|--------|
| Total Area (μm²) | 820 | 2430 |
| Critical Path Delay (ns) | 5.92 | 6.58 |
| Max Frequency (MHz) | 169 | 152 |
| Total Power (mW) | 0.071 | 0.223 |
| DRC/LVS Status | ✅ Clean | ✅ Clean |

---

## 🔋 Power Analysis

| Power Type | 90 nm (μW) | 180 nm (μW) |
|-------------|-------------|-------------|
| Dynamic Power | 74.8 | 323.9 |
| Leakage Power | 3.8 | 2.5 |
| **Total Power** | **78.6** | **326.4** |

---

## 🧪 Simulation and Verification

| Test Case | Input | Expected Output | Result |
|------------|--------|----------------|---------|
| Test 1 | 10101010 | Correct Manchester pattern | ✅ PASS |
| Test 2 | 11001100 | Decoded equals input | ✅ PASS |
| Test 3 | Random stream | 100% functional accuracy | ✅ PASS |

### Verification Summary

| Type | Status | Description |
|------|---------|-------------|
| Functional Simulation | ✅ Pass | Verified with waveform. |
| Timing Analysis | ✅ Clean | No setup/hold violations. |
| DRC | ✅ Pass | No physical errors. |
| LVS | ✅ Pass | Layout matches schematic. |
| STA | ✅ Pass | Meets all timing. |

---

## 🧱 Layout Results

| Technology | Status | Description |
|-------------|---------|-------------|
| 180 nm | ✅ Clean | Verified routing and floorplan. |
| 90 nm | ✅ Optimized | Compact layout with lower delay/power. |
| GDSII Output | ✅ Generated | Final mask-level file ready. |

---

## 🧰 Tools and Technologies Used

| Category | Tool / Software |
|-----------|----------------|
| HDL Design | Verilog HDL |
| Simulation | Vivado / ModelSim |
| Synthesis | Cadence Genus |
| Place & Route | Cadence Innovus |
| Verification | DRC, LVS, STA |
| Tech Nodes | 90 nm and 180 nm CMOS |

---

## 🚀 Execution Steps

| Step | Command / Action |
|------|-------------------|
| Clone Repository | `git clone https://github.com/<your-username>/manchester-encoder-decoder.git` |
| RTL Simulation | `vivado -mode batch -source sim_manchester.tcl` |
| Logic Synthesis | `genus -f run_synthesis.tcl` |
| Physical Design | `innovus -init run_innovus.tcl` |
| Signoff | Run DRC, LVS, STA before GDS export. |

---

## 🎓 Academic Project Details

| Field | Description |
|--------|-------------|
| **Title** | Manchester Encoder–Decoder (RTL to GDSII) |
| **Course** | VLSI System Design Practice |
| **Guide** | Dr. P. Ranga Babu |
| **Department** | ECE |
| **Institution** | IIITDM Kurnool |
| **Year** | 2025 – 2026 |

---

## 🎯 Learning Outcomes

| Aspect | Description |
|---------|-------------|
| ASIC Flow | Understood full flow from RTL to GDSII. |
| HDL Skills | Implemented and tested Verilog modules. |
| Synthesis | Learned optimization of area, delay, power. |
| Physical Design | Gained experience in floorplan, placement, routing. |
| Verification | Performed DRC, LVS, STA successfully. |
| Comparison | Analyzed 90 nm vs 180 nm performance. |

---

## 📚 References

| No. | Source |
|-----|--------|
| 1 | W. Stallings, *Data and Computer Communications*, 10th Ed., Pearson. |
| 2 | D. Harris & S. Harris, *Digital Design and Computer Architecture*, Elsevier. |
| 3 | NPTEL, *Digital VLSI Design*, IIT Kharagpur. |
| 4 | ElProCus, *Manchester Encoding and Decoding – Working, Circuit, and Applications*. |

---

## 👩‍💻 Developer Information

| Field | Details |
|-------|----------|
| **Name** | Abhi Pragna |
| **Email** | your.email@example.com |
| **LinkedIn** | linkedin.com/in/yourprofile |
| **GitHub** | github.com/yourusername |
| **Department** | Electronics and Communication Engineering |
| **Institution** | IIITDM Kurnool |

---

## 🪪 License

| Type | Description |
|------|-------------|
| **MIT License** | Free to use, modify, distribute with attribution. |
| **Copyright** | © 2025 Abhi Pragna |

---

## 🙏 Acknowledgments

| Contributor | Role |
|--------------|------|
| **Dr. P. Ranga Babu** | Project Guide, IIITDM Kurnool |
| **IIITDM Kurnool** | Lab facilities and EDA support |
| **Cadence Design Systems** | Tools for synthesis & layout |
| **Open Source Communities** | Reference and learning resources |

---

⭐ *If you found this project helpful, give it a star!*

