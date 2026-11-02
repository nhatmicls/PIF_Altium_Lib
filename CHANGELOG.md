# Changelog

All notable changes to PIF_Altium_Lib will be documented in this file.

## [2026-11-02]

### Changed
- **Altium_IC split into smaller category libraries** - libraries moved out of `Altium_IC` (files unchanged):
  - `Altium_NVM` (new) - `EEPROM`
  - `Altium_Analog_IC` (new) - `OPAMP`, plus new `Comparator` library
  - `Altium_Motor_Driver_IC` (new) - `StepDriver`, plus new `H_Bridge` library
  - `Altium_Wire_Interface` (new) - `CAN`, `Ethernet_IC`, `RS485`, `USB_Interface`
  - `Altium_Wireless_Interface` (new) - `RF`, `Wifi`
  - `Altium_Logic_IC` - `Buffer`
- **Altium_Logic_IC** - Renamed `AndGate` to `AND_Gate`
- **Altium_MOSFET** - Split `MOSFET.SchLib` into `N_MOSFET.SchLib` and `P_MOSFET.SchLib`
- **Altium_NVM** - Moved `Flash` from `Altium_Flash` (files unchanged); `Altium_Flash` removed
- **Altium_Diode** - Added new `Zener_Diodes.PcbLib` library

### Added
- **P_MOSFET.SchLib / MOSFET.PcbLib** - DMP4015SPSQ-13, IRF7416TRPBF, SI7155DP-T1-GE3, SQJ409EP-T1_GE3
- **ESD.SchLib / .PcbLib** - ESD9L5.0ST5G, SMBJ24CA, SMCJ48CA
- **Altium_Other.SchLib / .PcbLib** - Net Tie
- **Aluminum_Electrolytic_Cap.SchLib / Aluminum_THT_Cap.PcbLib** (new) - 100ZLJ100M10X20 and THT aluminum capacitor footprints (WCAP-ATG5)
- **Comparator.SchLib / .PcbLib** - LM393DR (replaces the LM358DR placeholder copied from `OPAMP`)
- **H_Bridge.SchLib / .PcbLib** - LM5106MMX/NOPB, UCC27517DBVR (replace the placeholders copied from `StepDriver`)
- **Zener_Diodes.SchLib / .PcbLib** - MMSZ5222BT1G

### Fixed
- Minor fixes in **Aluminum_Polymer_Cap.SchLib**, **Capacitor_0603/0805/1206/1210.SchLib**, **Capacitor.PcbLib**, **Inductor_0603.SchLib**, **Resistor_0603/1206/2817.SchLib**, **Fuse_SMD.SchLib**, **LM1117_family.SchLib**, **WR-PHD_Pin Header_2.54mm.SchLib**, **Altium_Module.PcbLib**
- **Aluminum_Electrolytic_Cap.SchLib** - Removed Würth 865080xxxxxx series (60 parts)

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
