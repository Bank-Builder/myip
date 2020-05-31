# myip 
A convenient tool to get my IP information

To install:

```
git clone git@github.com:Bank-Builder/myip.git
sudo cp myip/myip.sh  /usr/bin/myip
sudo chmod +x /usr/bin/myip
rm -rf myip/
```

Now whenever you need that IP info you are always looking for, use the `myip` command:
```
~$ myip
-----------------------------------------
 NETWORK INFORMATION ver 1.0             
-----------------------------------------

        IP Address: 10.0.0.122/24
   Network Adapter: enp2s0
     Wildcard Mask: 10.0.0.255
           Gateway: 10.0.0.2
         Public IP: 207.245.270.253
        Active DNS: 1.1.1.1

-----------------------------------------
```

Note: A **wildcard mask** is the invert of a **subnet mask**.<br>
See Wikipedia [Wildcard Mask](https://en.wikipedia.org/wiki/Wildcard_mask)


---
 License: MIT<br>
 Copyright (c) 2020 bank-builder
 
