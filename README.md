# 🧠 Manchester Encoder and Decoder – RTL to GDSII Implementation (90nm Technology)

## 📘 Project Overview
This project focuses on the *design, simulation, and physical implementation* of a *Manchester Encoder and Decoder* using *Cadence EDA tools* in *90nm CMOS technology*.  
Manchester encoding is a line code in which each bit of data is represented by at least one transition. This makes it self-clocking and ideal for synchronization between transmitter and receiver.

The aim of this work is to carry out the *complete ASIC flow, from RTL design in Verilog to layout generation and verification, analyzing key performance parameters such as **area, **delay, and **power*.

---

## ⚙ Design Objective
- To design Manchester Encoder and Decoder circuits in Verilog HDL.  
- To perform synthesis, placement, and routing using Cadence tools.  
- To verify functional correctness using waveform simulations.  
- To evaluate post-layout results in terms of area, power, and delay.  
- To demonstrate a working design flow for a real-time encoding–decoding circuit.

---

## 🧩 Architecture

### 🔸 Manchester Encoder
The *Manchester Encoder* takes a serial input data bit and combines it with a clock signal using an XOR operation.  
Each bit period contains a transition in the middle:
- Logic '1' → High-to-Low transition  
- Logic '0' → Low-to-High transition  

| Signal | Description |
|:-------|:-------------|
| Data In | Input data bit stream |
| Clock | System clock used for encoding |
| Encoded Out | Manchester-encoded signal |

### 🔸 Manchester Decoder
The *Manchester Decoder* performs the reverse operation by detecting transitions and reconstructing the original bit stream.  
It uses *edge detection* and *timing control logic* to recover the original data.

| Signal | Description |
|:-------|:-------------|
| Encoded In | Received Manchester signal |
| Clock | Reference clock for synchronization |
| Data Out | Decoded binary output |

---

## 🧱 Design Flow (ASIC Implementation)

| Step | Tool Used | Description |
|:-----|:-----------|:-------------|
| RTL Design | Verilog HDL | Functional logic implementation |
| Simulation | Cadence Xcelium | Verification of functional behavior |
| Synthesis | Cadence Genus | Conversion of RTL to gate-level netlist |
| Floorplanning & Placement | Cadence Innovus | Defining layout and standard cell placement |
| Routing | Cadence Innovus | Signal and power routing |
| Signoff | Cadence Virtuoso / Calibre | DRC, LVS, and timing closure checks |

---

## 🧪 Simulation Results
- The waveform verifies correct encoding and decoding of binary data.  
- Each data transition corresponds to the expected Manchester pattern.  
- Functional verification was performed at gate-level simulation using Xcelium.

| Stage | Description | Output |
|:------|:-------------|:--------|
| Encoder Simulation | XOR operation with clock verified | ✅ Successful |
| Decoder Simulation | Transition detection logic verified | ✅ Successful |
| Post-Synthesis Simulation | Functional equivalence checked | ✅ Matched |
| Timing Simulation | Setup/hold constraints verified | ✅ Clean |

---

## 📊 Performance Summary (90nm Technology)

| Parameter | Value | Observation |
|:-----------|:-------|:-------------|
| Area (µm²) | 820.13 | Compact layout achieved |
| Delay (ns) | 5.97 | Low propagation delay |
| Power (mW) | 0.068 | Low power consumption |
| Frequency (MHz) | 167 | Stable operation frequency |
| DRC / LVS | Clean | No violations detected |

---

## 🖼 Visual Results

### 🔹 Block Diagram
![Block Diagram](https://github.com/Blessyabhi/Manchester-encoder-decoder/blob/main/schematic.jpg)

### 🔹 Simulation Waveform
![Simulation Waveform](https://github.com/Blessyabhi/Manchester-encoder-decoder/blob/main/waveform.jpg)

### 🔹 Layout View (90nm)
| Layout (2D) | Layout (3D) |
|:-------------:|:-------------:|
| ![Layout2D]((https://github.com/Blessyabhi/Manchester-encoder-decoder/blob/main/layout.jpg)) | ![Layout3D]((https://github.com/Blessyabhi/Manchester-encoder-decoder/blob/main/layout_zoom.jpg)) |

---

## 🧩 Observations
- The 90nm implementation resulted in a *compact and power-efficient layout*.  
- DRC and LVS checks were completely clean.  
- The functional and timing analysis confirmed proper synchronization between encoder and decoder.  
- The post-layout results closely matched pre-synthesis values, indicating minimal parasitic delay.

---

## 🧾 Conclusion
This project successfully demonstrates the *end-to-end VLSI design flow* for Manchester encoding and decoding circuits.  
Using the *Cadence design suite, the RTL design was implemented, verified, and physically realized at **90nm technology*.  
The results show excellent performance in terms of area, speed, and power — proving the design’s suitability for serial communication applications.

---

## 👨‍🎓 Project Details

| Field | Information |
|:------|:-------------|
| *Project Title* | Manchester Encoder and Decoder – RTL to GDSII Implementation |
| *Technology Node* | 90 nm CMOS |
| *Tool Used* | Cadence (Genus, Innovus, Virtuoso) |
| *Course* | EC-307 – VLSI System Design |
| *Faculty* | Dr. P. Ranga Babu |
| *Student* | (Your Name Here) |

---

## 📚 References
| Source | Description |
|:--------|:-------------|
| Cadence Documentation | Flow setup and simulation reference |
| CMOS VLSI Design (Weste & Harris) | Design methodology and logic principles |
| IEEE Papers on Manchester Coding | Theoretical background and optimization |
| Lab Manuals | Reference for design and verification steps |

---

## 🌟 Future Enhancements
- Extend design to *Differential Manchester Encoding*.  
- Add *Error Detection Logic* for noisy channel environments.  
- Optimize layout for lower delay using advanced clock tree synthesis.  

---

## 🏁 Repository Structure
