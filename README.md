# Ubuntu 24.04 TimeCamp Installation Fix

## STEP 1

Install below deb packages in given order using below command.

```bash
sudo apt-get install ./deb_file_name.deb
```

1. **libdbusmenu-gtk4_18.10.20180917~bzr492+repack1-2_amd64.deb**
2. **libayatana-indicator7_0.8.4-1+deb11u2_amd64.deb**
3. **libayatana-appindicator1_0.5.5-2+deb11u2_amd64.deb**

## STEP 2

Install timecamp.deb package.

```bash
sudo apt-get-install ./timecamp.deb
```

## STEP 3

Open the libs folder in terminal. Copy the library files to below path.

```bash
sudo cp * /usr/lib/x86_64-linux-gnu/
```
