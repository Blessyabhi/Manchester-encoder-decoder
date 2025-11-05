# =====================================================================
# Cadence Genus Synthesis Script for Manchester Encoder–Decoder
# Target Technology : 90 nm Digital CMOS
# Author            : Lathika Kamala
# Date              : 2025-11-01
# =====================================================================

# ------------------------------------------------------------
# Library Setup
# ------------------------------------------------------------
# Update the following path and library file according to your 90nm PDK setup
set_db init_lib_search_path {/home/install/FOUNDRY/digital/90nm/dig/lib/}

# Specify standard cell library (example: slow.lib / typical.lib / fast.lib)
set_db library slow.lib

# ------------------------------------------------------------
# Read RTL Source Files
# ------------------------------------------------------------
read_hdl {./manchester_encoder.v}
read_hdl {./manchester_decoder.v}
read_hdl {./top_manchester.v}

# ------------------------------------------------------------
# Elaborate and Set Current Design
# ------------------------------------------------------------
elaborate top_manchester
current_design top_manchester

# ------------------------------------------------------------
# Apply Timing Constraints
# ------------------------------------------------------------
# Check if constraint file exists, else set default clock constraints
if {[file exists "./constraint_manchester_90nm.sdc"]} {
    read_sdc ./constraint_manchester_90nm.sdc
} else {
    # Default constraints for 100 MHz clock (10 ns period)
    create_clock -name CLK -period 10 [get_ports clk]
    set_input_delay 1 -clock CLK [all_inputs]
    set_output_delay 1 -clock CLK [all_outputs]
}

# ------------------------------------------------------------
# Set Synthesis Effort Levels
# ------------------------------------------------------------
set_db syn_generic_effort medium
set_db syn_map_effort medium
set_db syn_opt_effort medium

# ------------------------------------------------------------
# Run Full Synthesis Flow
# ------------------------------------------------------------
syn_generic
syn_map
syn_opt

# ------------------------------------------------------------
# Write Synthesized Netlist and Constraint Outputs
# ------------------------------------------------------------
write_hdl > top_manchester_90nm_netlist.v
write_sdc > top_manchester_90nm_output.sdc

# ------------------------------------------------------------
# Generate Reports
# ------------------------------------------------------------
report timing > top_manchester_90nm_timing.rpt
report power  > top_manchester_90nm_power.rpt
report area   > top_manchester_90nm_area.rpt
report gates  > top_manchester_90nm_gates.rpt

# ------------------------------------------------------------
# Optional GUI Launch
# ------------------------------------------------------------
# gui_show  ;# Uncomment if you want to open the GUI after synthesis

# =====================================================================
# End of Script
# =====================================================================
