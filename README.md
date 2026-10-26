# Solar PV System with P&O MPPT and DC–DC Boost Converter

**MATLAB/Simulink | P&O MPPT | DC–DC Boost Converter | Solar PV**

A MATLAB/Simulink model of a solar photovoltaic system incorporating a **Perturb and Observe (P&O) Maximum Power Point Tracking algorithm** and a **DC–DC boost converter**. The system was designed for a **3 MW target rating** and includes MATLAB-based converter calculations and simulation result analysis.

> **Reference:** The P&O MPPT control structure was adapted from LMS Solution, *"Grid Connected PV System | Step-by-Step Implementation of 3 MW Solar Power Plant in MATLAB/Simulink"* ([Video](https://youtu.be/ZXs_lg0daRc?si=yZJlWunWrLrCupXK)). System sizing, boost-converter calculations, simulation implementation, and result analysis were completed as part of this project.

---

## System Overview

The model follows the power-conversion structure:

**Solar PV Array → DC–DC Boost Converter → DC Output**

PV voltage and current are measured and used by the P&O MPPT controller. The control signal is integrated with PWM-based switching of the boost converter to control the operating point of the PV system.

**[View Simulink Model](01_Simulink_Model/PV_mppt_boost_converter_3MW.slx)**

---

## Key Design Parameters

| Parameter             |                   Value |
| --------------------- | ----------------------: |
| Design target         |                    3 MW |
| Irradiance            |               1000 W/m² |
| Temperature           |                   25 °C |
| MPPT technique        | Perturb & Observe (P&O) |
| Converter             |   DC–DC Boost Converter |
| Input voltage         |                 383.5 V |
| Target output voltage |                   600 V |
| Switching frequency   |                  10 kHz |
| Current ripple        |                      1% |
| Voltage ripple        |                      1% |

### Boost Converter Parameters

| Parameter           | Calculated Value |
| ------------------- | ---------------: |
| Duty cycle (D)      |  0.3608 (36.08%) |
| Inductance (L)      |       ≈ 176.9 µH |
| Capacitance (C)     |        ≈ 30.1 mF |
| Load resistance (R) |           0.12 Ω |

**Design files:**
[MATLAB Calculation Script](02_Design_Calculations/Boost_converter_calculations.m) · [Calculation PDF](02_Design_Calculations/Boost_converter_calculation.pdf)

---

## Simulation Results

| Quantity                       | Approximate Simulated Value |
| ------------------------------ | --------------------------: |
| PV voltage                     |                     ≈ 435 V |
| PV current                     |                    ≈ 3.6 kA |
| PV power                       |               **≈ 1.55 MW** |
| Boost converter output voltage |                     ≈ 430 V |

**Design target:** 3 MW
**Obtained simulation output:** ≈ 1.55 MW
**Reason for not completing further validation:** Control tuning could not be completed due to MATLAB licensing limitations.

> The current results are reported as obtained. Further control tuning and model validation would be required to investigate the difference between the design target and simulated output.

**Simulation results:**
[PV Voltage, Current & Power](03_Simulation_Results/PV_voltage_current_power.png) · [Boost Converter Output](03_Simulation_Results/Boost_converter_output_voltage.png) · [Complete Simulation Model](03_Simulation_Results/Complete_simulation_model.png)

---

## Repository Structure

```text
Solar-PV-System-P-and-O-MPPT-DC-DC-Boost-Converter-MATLAB/
│
├── README.md
│
├── 01_Simulink_Model/
│   └── PV_mppt_boost_converter_3MW.slx
│
├── 02_Design_Calculations/
│   ├── Boost_converter_calculations.m
│   └── Boost_converter_calculation.pdf
│
└── 03_Simulation_Results/
    ├── Complete_simulation_model.png
    ├── PV_voltage_current_power.png
    └── Boost_converter_output_voltage.png
```

---

## How to Run

1. Download or clone the repository.
2. Open MATLAB with the required Simulink electrical components.
3. Run [`Boost_converter_Calculations.m`](02_Design_Calculations/Boost_converter_Calculations.m) to review the converter design calculations.
4. Open [`PV_mppt_boost_converter_3MW.slx`](01_Simulink_Model/PV_mppt_boost_converter_3MW.slx) in Simulink.
5. Run the simulation and observe the Scope outputs.

---

## Technical Skills Demonstrated

- MATLAB/Simulink modelling
- Solar PV system simulation
- P&O MPPT implementation
- DC–DC boost converter design
- Inductor and capacitor sizing
- Duty-cycle calculation
- PWM-based converter control
- PV voltage, current, and power analysis
- Simulation waveform interpretation

---

## Future Scope

- Tune and validate the control parameters to improve system response
- Investigate the difference between the 3 MW design target and simulated output
- Test P&O MPPT under varying irradiance and temperature
- Compare P&O with other MPPT techniques such as Incremental Conductance
- Analyze converter efficiency and system losses
- Extend the model with a grid-connected inverter stage

---

## Author

**Shweta Baviskar**

(https\:// www\.linkedin.com/in/shweta-m-baviskar/)
