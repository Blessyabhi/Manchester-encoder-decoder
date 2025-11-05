Project Overview:

This project focuses on the design, simulation, and verification of a Manchester Encoder and Decoder using the Cadence Virtuoso tool under the Semi-Custom VLSI Design flow. The objective of the project is to understand the transistor-level implementation of digital communication circuits and to verify their functional correctness using schematic, layout, and post-layout simulations.

 Concept and Working Principle
🔹 Manchester Encoding

Manchester Encoding is a bi-phase level line coding scheme that combines data and clock signals into a single self-synchronizing bit stream. Each bit period contains a transition at the midpoint:

Logic ‘1’ → High-to-Low transition

Logic ‘0’ → Low-to-High transition

This ensures that the clock can be recovered from the data stream, eliminating the need for a separate clock signal. Manchester encoding is widely used in Ethernet, RFID, and infrared communication.

🔹 Manchester Decoding

The Manchester Decoder performs the reverse operation. It detects transitions within each bit period to recover the original binary data. The decoder uses edge detection logic to reconstruct the data signal from the encoded waveform.

   Design and Implementation (Semi-Custom Flow)

The design was carried out using Cadence Virtuoso, following the standard semi-custom flow steps:

Transistor-Level Schematic Design:

Created the transistor-level circuits for both Manchester Encoder and Decoder using PMOS and NMOS transistors.

Logical operations such as XOR, AND, and inverters were implemented using basic CMOS logic.

Symbol Creation:

Generated symbols for both the encoder and decoder circuits to use them hierarchically in the top-level schematic.

This modular approach made it easy to connect both blocks and verify the overall system.

Functional Simulation:

Simulated the encoder and decoder schematics in Analog Design Environment (ADE) using the Spectre simulator.

Verified that the encoder produces correct Manchester waveforms and that the decoder correctly reconstructs the input data.

Layout Design:

The layout of each module was drawn manually using Cadence Virtuoso Layout Editor.

Standard layout practices such as proper transistor sizing, metal routing, and design-rule spacing were followed.

Design Rule Check (DRC):

Ensured that the layout met all foundry design rules.

DRC passed without violations.

Layout Versus Schematic (LVS):

Performed LVS to ensure electrical connectivity and device matching between schematic and layout.

LVS passed successfully.

Post-Layout Simulation:

Extracted the layout and re-simulated it to verify that parasitics did not affect functionality.

The post-layout simulation output matched the expected Manchester encoding and decoding waveforms.

  Simulation Results

The Encoder waveform clearly showed transitions at the midpoint of each bit, representing valid Manchester encoding.

The Decoder successfully recovered the original data bits from the encoded signal, confirming the correct operation.

DRC and LVS checks confirmed that both the encoder and decoder layouts were clean and matched their respective schematics.

Post-layout simulation confirmed timing and signal integrity.

 Tools and Environment
Step	                              Tool Used	                          Description
Schematic & Symbol	Cadence Virtuoso Schematic Editor	Transistor-level circuit design
Simulation	              Cadence ADE / Spectre	       Functional and post-layout simulation
Layout	                     Cadence Virtuoso Layout Editor	Physical implementation
Verification	            DRC, LVS, Parasitic Extraction	     Design verification
Platform	                   Linux Environment	                 Design execution
 
  Learning Outcomes

Gained practical understanding of semi-custom VLSI design flow.

Learned layout design, DRC, and LVS verification in Cadence Virtuoso.

Understood Manchester encoding principles and hardware-level implementation.

Verified post-layout performance and signal integrity.

 Results Summary
Parameter	       Encoder  	Decoder
DRC	                Passed ✅      Passed ✅
LVS	                Passed ✅	Passed ✅
Post-Layout Simulation	Verified ✅	Verified ✅
 
Conclusion

The Manchester Encoder and Decoder were successfully designed and verified using the Semi-Custom VLSI Design Flow in Cadence Virtuoso. Both functional and post-layout simulations confirmed the correct operation of the circuits. The project provided a comprehensive understanding of encoding/decoding logic implementation at the transistor level and the complete semi-custom design methodology