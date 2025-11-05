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
## ⚙️ Working Principle

The Manchester Encoder–Decoder works on the principle of **bi-phase level encoding**, where each bit of data is represented by a transition in the signal within one clock period.  
This ensures **self-clocking** and **synchronization** between the transmitter and receiver.

### ➤ Encoding Process
| Step | Description |
|------|--------------|
| 1 | The input data bit and the clock signal are XORed to generate the Manchester code. |
| 2 | For a logic ‘1’, the signal transitions from HIGH → LOW in the middle of the clock cycle. |
| 3 | For a logic ‘0’, the signal transitions from LOW → HIGH in the middle of the clock cycle. |
| 4 | The resulting waveform carries both data and clock information. |

### ➤ Decoding Process
| Step | Description |
|------|--------------|
| 1 | The Manchester signal is received and sampled at mid-bit intervals. |
| 2 | Edge transitions (high-to-low or low-to-high) are detected. |
| 3 | The direction of transition determines the logic value. |
| 4 | The recovered data is output as a binary stream. |

---

## 🧠 Theory Behind Manchester Coding

| Concept | Formula / Explanation |
|----------|------------------------|
| **Encoding Rule** | \( M(t) = D(t) \oplus CLK(t) \) |
| **Data Recovery** | Based on detecting transitions and polarity within each clock cycle. |
| **Advantages** | Eliminates DC bias, self-synchronizing, high noise immunity. |
| **Applications** | Ethernet, RFID communication, infrared transmission systems. |

---

## 📐 Module Description

| Module Name | Function |
|--------------|-----------|
| `manchester_encoder.v` | Converts input binary data into Manchester-coded signal. |
| `manchester_decoder.v` | Reconstructs the original binary data from the Manchester waveform. |
| `clock_generator.v` | Generates reference clock for synchronization between encoder and decoder. |
| `top_manchester.v` | Top-level module integrating encoder, decoder, and clock modules. |

---

## 🧩 ASIC Design Flow

| Step | Tool | Description |
|------|------|-------------|
| RTL Coding | Verilog HDL | Functional design entry and module development. |
| Simulation | Xilinx Vivado / ModelSim | Verification of logic and functionality using testbench. |
| Synthesis | Cadence Genus | Gate-level optimization and technology mapping. |
| Floorplanning | Cadence Innovus | Defines chip core area and pin locations. |
| Placement | Cadence Innovus | Arranges standard cells in layout area. |
| Clock Tree Synthesis | Cadence Innovus | Distributes the clock network to reduce skew. |
| Routing | Cadence Innovus | Connects placed cells with metal interconnects. |
| Signoff | Assura / Innovus | Performs DRC, LVS, and STA verification. |
| GDSII Export | Innovus | Generates final mask-level layout for fabrication. |

---

## 📊 Design Metrics Comparison

| Parameter | 90 nm Technology | 180 nm Technology |
|------------|------------------|-------------------|
| Total Area (μm²) | 820 | 2430 |
| Critical Path Delay (ns) | 5.92 | 6.58 |
| Maximum Frequency (MHz) | 169 | 152 |
| Total Power (mW) | 0.071 | 0.223 |
| DRC / LVS Status | ✅ Clean | ✅ Clean |

---

## 🔋 Power Analysis

| Power Type | 90 nm (μW) | 180 nm (μW) |
|-------------|-------------|-------------|
| Dynamic Power | 74.8 | 323.9 |
| Leakage Power | 3.8 | 2.5 |
| **Total Power** | **78.6** | **326.4** |

---

## 🧪 Simulation and Verification

| Test Case | Input Data | Expected Output | Result |
|------------|-------------|----------------|---------|
| Test 1 | 10101010 | Correct Manchester pattern | ✅ PASS |
| Test 2 | 11001100 | Decoded data matches input | ✅ PASS |
| Test 3 | Random Stream | 100% Functional Accuracy | ✅ PASS |

### ➤ Verification Checks
| Verification Type | Status | Description |
|--------------------|---------|-------------|
| Functional Simulation | ✅ Pass | Encoder–Decoder behavior validated with waveforms |
| Timing Analysis | ✅ Clean | No setup or hold violations |
| DRC | ✅ Pass | No design rule errors |
| LVS | ✅ Pass | Layout matches schematic |
| STA | ✅ Pass | Meets required timing constraints |

---

## 🧱 Layout Results

| Technology Node | Layout Status | Description |
|------------------|---------------|-------------|
| 180 nm | ✅ Clean | Verified routing and floorplan |
| 90 nm | ✅ Optimized | Compact placement and reduced delay |
| GDSII Output | ✅ Generated | Ready for mask fabrication |

---

## 🧰 Tools and Technologies Used

| Category | Tool / Software |
|-----------|----------------|
| HDL Design | Verilog HDL |
| Simulation | Xilinx Vivado / ModelSim |
| Synthesis | Cadence Genus |
| Place & Route | Cadence Innovus |
| Verification | DRC, LVS, STA |
| Technology Nodes | 90 nm and 180 nm CMOS |

---

## 🚀 Execution Steps

| Step | Command / Description |
|------|------------------------|
| **1. Clone Repository** | `git clone https://github.com/<your-username>/manchester-encoder-decoder.git` |
| **2. RTL Simulation** | `vivado -mode batch -source sim_manchester.tcl` |
| **3. Logic Synthesis** | `genus -f run_synthesis.tcl` |
| **4. Physical Design** | `innovus -init run_innovus.tcl` |
| **5. Signoff Checks** | Perform DRC, LVS, and STA verification. |

---

## 🎓 Academic Project Details

| Field | Description |
|--------|-------------|
| **Project Title** | Manchester Encoder–Decoder (RTL to GDSII) |
| **Course** | VLSI System Design Practice |
| **Guide** | Dr. P. Ranga Babu |
| **Department** | Electronics and Communication Engineering |
| **Institution** | Indian Institute of Information Technology, Design and Manufacturing (IIITDM), Kurnool |
| **Academic Year** | 2025–2026 |

---

## 🎯 Learning Outcomes

| Learning Aspect | Description |
|------------------|-------------|
| ASIC Design Flow | Understood complete flow from RTL to GDSII. |
| HDL Programming | Designed and simulated using Verilog HDL. |
| Synthesis Knowledge | Implemented logic synthesis and technology mapping. |
| Physical Design | Learned floorplanning, placement, and routing. |
| Verification Skills | Performed DRC, LVS, and STA for signoff. |
| Optimization | Analyzed power, area, and timing trade-offs. |

---

## 📚 References

| No. | Reference |
|-----|------------|
| 1 | W. Stallings, *Data and Computer Communications*, 10th Edition, Pearson. |
| 2 | D. Harris & S. Harris, *Digital Design and Computer Architecture*, Elsevier. |
| 3 | NPTEL Course, *Digital VLSI Design* by Prof. Indranil Haldar, IIT Kharagpur. |
| 4 | ElProCus, *Manchester Encoding and Decoding – Working, Circuit, and Applications*. |

---

## 🧑‍💻 Developer Information

| Field | Details |
|-------|----------|
| **Name** | Abhi Pragna |
| **Email** | your.email@example.com |
| **LinkedIn** | linkedin.com/in/yourprofile |
| **GitHub** | github.com/yourusername |
| **Department** | Electronics and Communication Engineering |
| **Institution** | IIITDM Kurnool |

---

## 📝 License

| Type | Description |
|------|-------------|
| **MIT License** | Permission is granted to use, copy, modify, and distribute this project with attribution. |
| **Copyright** | © 2025 Abhi Pragna |

---

## 🌟 Acknowledgments

| Contributor | Role |
|--------------|------|
| **Dr. P. Ranga Babu** | Project Guide, IIITDM Kurnool |
| **IIITDM Kurnool** | Provided lab infrastructure and EDA tool access |
| **Cadence Design Systems** | EDA support for synthesis and layout |
| **Open Source Communities** | Learning materials and reference designs |

---

⭐ *If you found this project helpful, don’t forget to star the repository!*
