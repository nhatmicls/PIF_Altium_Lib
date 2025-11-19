# PIF_Altium_Lib

<img src="./img/altium_logo.png" alt="altium" width="200"/>
<img src="./img/PIF_Lab_logo.png" alt="pif" width="200"/>

## Content

**List of things add in this:**

- Capacitor:
  - Alutinum Capacitor
  - Tanta Capacitor
  - Ceramic Capacitor
- Resistor:
- Inductor:
  - SMD Inductor
  - Coil Inductor
  - EMI Coil
  - Ferrit
- Self recovery fuse and fuse box
- SMD LED (blur, clear)
- Mechanical stuff (Tooling hole, mounting hole, fiducial)
- Terminal block, connector, USB, ...
- Mounting and SMD Antenna
- Multi MCU (Nordic, STM32, ESP)
- Multi power supply IC
- Relay SPST, PDT case, SPST case

**Support size SMD:**

- 0805
- 0603

**List of things WIP:**

- Varistors
- Variable Resitor
- Multi-type ICs

## Contributors

[Ngoc Tinh](https://github.com/Hnit3003), [Thao Vy](https://github.com/Vytran4642), [Phuc Pham](https://github.com/phucpham3450543), [Quoc Thang](https://github.com/QuocThang2404), [DongKhoa](https://github.com/DONGKHOA), [Duc Minh](https://github.com/hni29m), [Pham Tuan](https://github.com/TransistorTun), [Nhi](https://github.com/Long-Tam), [Hoang Kien](https://github.com/kientran0502).

## License

This project is licensed under the [MIT](LICENSE) license.

## Build Scripts

This repository includes batch scripts to manage the release folder.

### BuildReleaseFolder.bat

This script copies all `.IntLib` files from the `src` directory and its subdirectories to the `release` folder.

**Usage:**

```batch
BuildReleaseFolder.bat
```

**What it does:**

1. Creates the `release` folder if it doesn't exist
2. Recursively finds all `.IntLib` files in the `src` directory
3. Copies each file to the `release` folder (overwrites existing files)
4. Displays progress for each file copied
5. Shows a summary of total files copied
6. Automatically runs verification to ensure files were copied correctly

### VerifyRelease.bat

This script verifies that all `.IntLib` files in the `release` folder match their source files in the `src` directory.

**Usage:**

```batch
VerifyRelease.bat
```

**What it does:**

1. Compares each `.IntLib` file in `src` with its corresponding file in `release`
2. Checks file existence, size, and performs binary comparison
3. Reports the status of each file:
   - **MATCH**: File exists in release and is identical to source
   - **MISMATCH**: File exists but differs from source (size or content)
   - **MISSING**: File exists in source but not in release
4. Displays a summary of verification results

**Note:** The `release` folder is automatically generated and should not be edited manually. All changes should be made in the `src` directory, then rebuild using the script.

## Document

Please go to `doc` folder for more detail about this project

## Disclaim

- Local supplier only availble at Viet Nam.
- For local supplier not always supply right manufacturer of passive component so I choice a passive component with same vaule with design. If your product need to use right manufacturer please use global supplies.
- Some component will have wrong parameter please open an issuse for me to fix it asap.
