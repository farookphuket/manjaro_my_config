# manjaro_my_config

> my config file for manjaro created on 27 Apr 2021 
> this repo I just create for my simply setup after my clean install 


## ============ last update 26 June 2021 
> just added virt-manager to replace virtualbox as it is faster




--- 
## ============ To access share folder 
> virt-manager is very easy to access to the share folder to make this DO:


1. create the share folder in your host(in my case I create VM_SHARED in my 
home folder)
- `mkdir ~/VM_SHARE` 

2. set the permission 
- `sudo chmod 777 -R ~/VM_SHARED`

3. in your guest(do not start it yet) click on "Add Hardware " button at the 
bottom left 

[setup_share1]:https://i.ibb.co/df4QgyP/2021-06-26-sharefile-virt-1.png

![setup share file 1][setup_share1]


4. now boot your guest system up open the terminal then run command 

- `mkdir hostfiles` 
- `sudo mount -t 9p -o trans=virtio /hostshare ~/hostfiles`

[setup_share2]:https://i.ibb.co/FzW4WfB/2021-06-26-sharefile-virt-2.png
![setup share file 2][setup_share2]



> make sure you have enter the target path as "hostshare" and you have
> create the folder in your guest VM call "hostfiles".
> you should get this work very easy as I do.

---

## Manjaro 27 Apr 2021 

[manjaro_i3]:https://i.ibb.co/MG8zgFM/2021-04-27-manjaro-i3.png


![My manjaro I3wm][manjaro_i3]

