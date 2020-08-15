# About
An Ansible playbook to provision ESP-IDF and its prerequisites.
[ESP-IDF](https://github.com/espressif/esp-idf) is Expressif's development environment for the [ESP32](https://www.espressif.com/en/products/socs/esp32).
I use this on top of my [ansible-workhorse](https://github.com/aapit/ansible-workhorse) Ansible setup.

# Warning
Running this playbook sets the default Python version to `python3`.
Python 2 is still the default on some systems, even though it's end-of-life since 2021.

# Prerequisites
You have to have the `XDG_CONFIG_HOME` environment variable set.
Usually, this points to `~/.config`.

# Running the whole provisioning routine
```bash
make
```

# Running provisioning modules (roles) by tag
```bash
make tag=prerequisites
make tag=idf
```

Tags are defined in `book.yml`.
