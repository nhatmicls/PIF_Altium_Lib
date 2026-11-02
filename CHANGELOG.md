# Changelog

All notable changes to PIF_Altium_Lib will be documented in this file.

## [2026-11-02]

### Changed
- **Altium_IC split into smaller category libraries** - libraries moved out of `Altium_IC` (files unchanged):
  - `Altium_NVM` (new) - `EEPROM`
  - `Altium_Analog_IC` (new) - `OPAMP`
  - `Altium_Motor_Driver_IC` (new) - `StepDriver`
  - `Altium_Wire_Interface` (new) - `CAN`, `Ethernet_IC`, `RS485`, `USB_Interface`
  - `Altium_Wireless_Interface` (new) - `RF`, `Wifi`
  - `Altium_Logic_IC` - `Buffer`
- **Altium_Logic_IC** - Renamed `AndGate` to `AND_Gate`
- **Altium_MOSFET** - Split `MOSFET.SchLib` into `N_MOSFET.SchLib` and `P_MOSFET.SchLib`

### Added
- **Comparator.SchLib / .PcbLib** (`Altium_Analog_IC`) - LM358DR
- **H_Bridge.SchLib / .PcbLib** (`Altium_Motor_Driver_IC`) - DRV8461DDWR, TMC5160A-TA-T
- **P_MOSFET.SchLib** - DMP4015SPSQ-13, IRF7416TRPBF, SI7155DP-T1-GE3, SQJ409EP-T1_GE3 (plus P-channel parts moved from `MOSFET.SchLib`)
- **Aluminum_THT_Cap.PcbLib** - Through-hole aluminum capacitor footprints
- **Aluminum_Electrolytic_Cap.SchLib** - 100ZLJ100M10X20
- **Aluminum_Polymer_Cap.SchLib** - PCR1H181MCL1GS, RYHV100V68UF10*10
- **AND_Gate.SchLib** - SN74LVC08ADR, SN74LVC1G08DBVR
- **ESD.SchLib** - ESD9L5.0ST5G, SMBJ24CA, SMCJ48CA
- **Fuse_SMD.SchLib** - 0451001.MRL
- **Capacitor_1210.SchLib** - 01121010610100
- **Inductor_0603.SchLib** - 02060324302500
- **Resistor_2817.SchLib** - 002817R0331
- **Altium_Other.SchLib** - Net Tie

### Removed
- **Aluminum_Electrolytic_Cap.SchLib** - Würth 865080xxxxxx series (60 parts)
- **Capacitor_1206.SchLib** - 01120610610100

### Updated
- Footprints in **Capacitor.PcbLib**, **ESD.PcbLib**, **MOSFET.PcbLib**, **Altium_Module.PcbLib**, **Altium_Other.PcbLib**
- Component parameters in **Capacitor_0603/0805.SchLib**, **Resistor_1206.SchLib**, **Inductor_0603.SchLib**, **LM1117_family.SchLib**, **WR-PHD_Pin Header_2.54mm.SchLib**

## [2026-06-23]

### Updated
- **DAC.SchLib** - Updated LCSC part numbers and minor corrections
- **Ethernet_IC.PcbLib** - Updated pin assignments and minor refinements
- **STM32.PcbLib** - Updated footprints and pin assignments for STM32 components
- **STM32.SchLib** - Updated LCSC part numbers and pin assignments for STM32 symbols
- **RAM.SchLib** - Updated LCSC part numbers and general corrections

## [2025-04-17]

### Added
- IBIS simulation models

## [2025-03-25]

### Updated
- Added more LCSC part numbers across libraries

## [2025-03-24]

### Changed
- Updated `.gitignore` configuration

## [2025-01-02]

### Added
- 2 automation scripts (`BuildReleaseFolder.bat`, `VerifyRelease.bat`)
- New release build to main folder

## [2024-12-26]

### Added
- More Zener diode components
- 5A fuse component
- Digital isolator components
- SM712-02HTG TVS diode
- LCSC supplier data across libraries
- STM32F103VCT6 MCU
