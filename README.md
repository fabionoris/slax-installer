# Slax Installer

Here is a simple utility to easily install [Slax](https://www.slax.org/).

## Guide

1. Get the script in Slax live:
   ```
   wget raw.githubusercontent.com/fabionoris/slax-installer/master/install.sh
   ```
2. Run the following commands:
   ```
   chmod +x install.sh
   ./install.sh
   ```
3. Remove the installation media when Slax is rebooting

## Troubleshooting

If you get a _"unable to resolve host address"_ error, change the DNS:

```
printf "nameserver 8.8.8.8\nnameserver 8.8.4.4\n" > /etc/resolv.conf
```
