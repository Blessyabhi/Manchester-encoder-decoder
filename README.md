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
## 🧠 Theory

### 🔍 Introduction
Manchester encoding is a widely used line coding technique in digital communication systems. It is a *bi-phase level coding* method where each bit period includes a *transition at the middle*, which helps the receiver maintain synchronization with the transmitter without requiring a separate clock signal.

This technique provides *self-clocking, high noise immunity, and good error detection capability, making it ideal for applications like **Ethernet (IEEE 802.3), **RFID systems, **infrared communication, and **embedded serial communication*.  

---

### ⚙ Principle of Manchester Encoding
In Manchester encoding, each bit of data is represented by a *voltage transition* in the middle of its time slot:

| *Bit Value* | *Transition Direction* | *Output Signal Behavior* |
|----------------|---------------------------|-----------------------------|
| 1 | Low → High | Rising edge in the middle |
| 0 | High → Low | Falling edge in the middle |

This guarantees at least one transition per bit period, which allows easy clock recovery and improved synchronization.  
The presence of regular transitions also eliminates DC bias, improving transmission reliability in wired or wireless systems.

---

### 🔄 Manchester Decoding
The *Manchester decoder* performs the reverse process. It detects transitions and reconstructs the original binary data from the encoded signal.  

- A *Low → High* transition corresponds to logic ‘1’.  
- A *High → Low* transition corresponds to logic ‘0’.  

The decoder circuit mainly consists of:
- *Edge detection logic* for identifying mid-bit transitions.  
- *Timing recovery circuitry* for synchronization.  
- *Decision logic* to determine the bit value based on transition direction.

In this project, both the encoder and decoder were designed in *Verilog HDL, simulated using **Cadence Xcelium, and implemented using **Cadence Genus* and *Cadence Innovus* for *90nm CMOS technology*.

---

### 💡 Need for Manchester Encoding
In serial communication, transmitting separate clock and data signals increases complexity and cost. Synchronization issues can also occur when data and clock drift apart.

Manchester encoding solves this problem by embedding clock information within the data stream itself.  

*Advantages:*
- Eliminates separate clock transmission.  
- Provides self-synchronization between transmitter and receiver.  
- Reduces DC bias and distortion.  
- Enhances noise immunity and timing accuracy.  

---

### 📈 Waveform Representation
The Manchester waveform contains one transition per bit period. A *rising edge* represents logic ‘1’, and a *falling edge* represents logic ‘0’.Here, ↑ = Logic ‘1’ (Low → High) and ↓ = Logic ‘0’ (High → Low).  
This alternating transition pattern makes the encoded signal self-clocking and easy to decode.

---

### 🧮 Mathematical Representation
The Manchester encoded signal can be represented using an XOR relationship between the data and clock signals:

\[
M(t) = D(t) \oplus C(t)
\]

where:  
- M(t) = Manchester encoded output  
- D(t) = Data signal  
- C(t) = Clock signal  
- ⊕ = XOR operation  

Thus, the Manchester encoder can be implemented using a simple XOR gate between the data and clock inputs.

---

### 🧠 Applications
| *Application Area* | *Usage* |
|------------------------|-----------|
| Ethernet (IEEE 802.3) | Physical layer data encoding |
| RFID Systems | Reader–Tag communication |
| IrDA | Infrared short-range communication |
| Automotive Networks | In-vehicle data transfer |
| Smart Sensors | Embedded serial data communication |

---

### 🧰 Implementation Summary
- *Design Tools:* Cadence Xcelium, Genus, Innovus  
- *Technology Node:* 90nm CMOS  
- *Hardware Language:* Verilog HDL  
- *Design Modules:* Encoder and Decoder  
- *Verification:* Pre-layout and Post-layout simulation  
- *Outputs:* Schematic, Netlist, Layout, and Timing Waveforms  

---

### 🌟 Conclusion
Manchester encoding offers a simple yet highly effective solution for transmitting data with inherent clock synchronization. Its balanced transitions, DC-free nature, and robust synchronization make it ideal for various communication applications.

The implemented *Manchester Encoder and Decoder* in this project successfully demonstrate correct functionality at the *RTL, gate-level, and layout levels* using 90nm CMOS technology. The waveform results confirm accurate encoding and decoding behavior with proper timing synchronization.

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

### 🔹Overall Layout View (90nm)
![Overall layout view](https://github.com/Blessyabhi/Manchester-encoder-decoder/blob/main/layout.jpg)

### 🔹 Layout View (90nm)
![Layout view](https://github.com/Blessyabhi/Manchester-encoder-decoder/blob/main/layout_zoom.jpg)

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
