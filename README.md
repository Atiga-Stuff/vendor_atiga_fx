AtigaFX (Dolby Atmos)
=====================

Getting Started
---------------
Clone this repository

```bash
git clone -b atiga-1.0 https://github.com/aepranata/vendor_atiga_fx.git vendor/atiga/fx
```

Patches required on device tree side

```bash
https://github.com/aepranata/device_xiaomi_rosy/commit/134baba339e8ee8627dda89012c1256a7ed49a9b
```

To build, inherit the dolby config by adding this in your device's makefile

```bash
$(call inherit-product-if-exists, vendor/atiga/fx/fx.mk)
```

-----------------------------------------------------------------------------
Credits:
========
* [**AOSPA**](https://github.com/AOSPA)
* [**AfterlifeOS**](https://github.com/AfterlifeOS)
* [**LineVall**](https://github.com/LineVall)
