# About
An Ansible playbook to provision ESP-IDF and its prerequisites on Ubuntu 20.04.
[ESP-IDF](https://github.com/espressif/esp-idf) is Expressif's development environment for the [ESP32](https://www.espressif.com/en/products/socs/esp32).
I use this on top of my [ansible-workhorse](https://github.com/aapit/ansible-workhorse) Ansible setup.

# Warning
Running this playbook sets the default Python version to `python3`.
Python 2 is still the default on some systems, even though it's end-of-life since 2021.
This can have unintended consequences, depending on your setup.
It works fine for me, but proceed at your own risk.

# Install
## Prerequisites
You have to have the `XDG_CONFIG_HOME` environment variable set.
Usually, this points to `~/.config`.

## Install location
This script installs the ESP-IDF tools in `$XDG_CONFIG_HOME/esp-idf`
Modify `roles/esp-idf/tasks/main.yml` if you don't like that.
It makes the tools available in your global path anyway.

## Running the whole provisioning routine
```bash
make
```

## Running provisioning modules (roles) by tag
```bash
make tag=prerequisites
make tag=idf
```
Tags are defined in `book.yml`.

# Running
After a relog, the `idf.py` script can be called upon from any location with:
```bash
idf
```
