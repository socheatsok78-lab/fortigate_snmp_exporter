<img width="256" alt="image" src="https://github.com/user-attachments/assets/2548bf34-be30-445b-9140-011e9e4533d6" />
<br /><br />

FortiGate SNMP Exporter Config Generator

This config generator uses NetSNMP to parse FortiGate MIBs, and generates configs for the snmp_exporter using them.

## Usage

1. Add FortiGate MIBs to the `fortigate` directory with versioned subdirectories (e.g., `fortigate/v7.2/`).
2. Run `make` to generate the `snmp.yml` config file for the specified FortiGate version.
3. The generated `snmp.yml` will be located in the corresponding versioned directory (e.g., `fortigate/v7.2/snmp.yml`).

```sh
make
# or
make FORTIGATE_VERSION=v7.x
```
