# Server Core Installation and Configuration Guide

## Exercise 1: Deploy and Configure Server Core

### Scenario

As a part of the deployment plan, you'll implement Server Core and then configure it for remote management.

### Main Tasks

1. Install Server Core.
2. Configure Server Core with `sconfig` and Windows PowerShell.

### Task 1: Install Server Core
- Fresh Install (Bare metal)
- Install in Hyper-V

1. **Install Now**:
    - Select `Install now`.

2. **Select the Operating System**:
    - On the "Select the operating system you want to install" page, ensure that `Windows Server 2022 Datacenter Evaluation` is selected.
    - Select `Next`.

5. **Accept License Terms**:
    - Select the `I accept the Microsoft License Terms` checkbox.
    - Select `Next`.

6. **Choose Installation Type**:
    - On the "Which type of installation do you want?" page, select `Custom: Install Microsoft Server Operating System only (advanced)`.

7. **Select Installation Location**:
    - On the "Where do you want to install the operating system?" page, select `Next`.

8. **Complete Installation**:
    - The OS begins to install. Installation will take a few minutes and the virtual machine (VM) will restart as needed.
    - After installation completes, review the message about changing the Administrator password.
    - Select `OK`, and then press `Enter`.

9. **Set Administrator Password**:
    - You might need to press `Ctrl-Alt-Del` to unlock the screen.
    - Enter the new password `Pa55w.rd` in the `New password` and `Confirm password` text boxes.
    - Press `Enter` twice to acknowledge the password change.

10. **Server Configuration Tool (sconfig)**:
    - After a few moments, the Server Configuration tool (`sconfig`) starts automatically and presents the server management menu.

### Task 2: Configure Server Core with sconfig and PowerShell

1. **Verify Server Configuration Tool**:
    - On LON-SVR6, ensure that the Server Configuration tool is active.
    - If the tool isn't active, enter `sconfig` at the command prompt and press `Enter`.

2. **Network Settings**:
    - To access Network settings, enter `8` and press `Enter`.
    - To change adapter index #1, enter `1` and press `Enter`.
    - To set the network adapter address, enter `1` and press `Enter`.
    - To set a static IP address, enter `S` and press `Enter`.
    - Enter the IP address `172.16.0.26` and press `Enter`.
    - Enter the subnet mask `255.255.0.0` and press `Enter`.
    - Enter the default gateway `172.16.0.1` and press `Enter`.
    - Press `Enter` again to continue and return to the main management screen.

3. **DNS Settings**:
    - To access Network settings, enter `8` and press `Enter`.
    - To change adapter index #1, enter `1` and press `Enter`.
    - To set the Domain Name System (DNS) server, enter `2` and press `Enter`.
    - Enter `172.16.0.10` and press `Enter`.
    - Leave the alternate DNS server blank and press `Enter`.
    - Press `Enter` again to continue.

4. **Rename Computer**:
    - To exit to Command Line (PowerShell), enter `15` and press `Enter`.
    - At the PowerShell prompt, enter the following command and press `Enter`:
        ```powershell
        Rename-Computer -NewName LON-SVR6 -restart -force
        ```
    - The server is renamed and then restarts.

5. **Join Domain**:
    - On LON-SVR6, press `Ctrl+Alt+Del`, enter the password `Pa55w.rd`, and press `Enter`.
    - After a few moments, `sconfig` starts automatically and presents the Server Configuration tool.
    - To exit to Command Line (PowerShell), enter `15` and press `Enter`.
    - At the PowerShell prompt, enter the following command and press `Enter`:
        ```powershell
        Add-Computer -DomainName Contoso.com -Credential Contoso\Administrator -restart -force
        ```
    - In the Windows PowerShell credential request window, enter `Pa55w.rd` and select `OK`.
    - LON-SVR6 is joined to the Contoso.com domain and then restarts.

### Results

After completing this exercise, you will have installed Server Core, configured the networking settings, renamed the server, and joined the Contoso domain.