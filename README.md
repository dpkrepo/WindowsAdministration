# Windows System Administration Guide

## Table of Contents
1. [Introduction](#introduction)
2. [System Requirements](#system-requirements)
3. [Installation](#installation)
4. [User Management](#user-management)
5. [File System Management](#file-system-management)
6. [Network Configuration](#network-configuration)
7. [Security](#security)
8. [Maintenance](#maintenance)
9. [Troubleshooting](#troubleshooting)

## Introduction
This guide provides step-by-step instructions for administering a Windows system.

## System Requirements
- Windows 10 or later
- Administrative privileges

## Installation
1. **Download Windows**: Obtain the Windows installation media from the official Microsoft website.
3. **Create Installation Media**: Use the Media Creation Tool to create a bootable USB drive.
4. **Install Windows**: Boot from the USB drive and follow the on-screen instructions to install Windows.
 - [Windows Server Core Installation](https://github.com/dpkrepo/WindowsAdministration/blob/main/ServerCoreInstallation.md)

## User Management
1. **Create a New User**:
    - Open `Settings` > `Accounts` > `Family & other users`.
    - Click `Add someone else to this PC`.
2. **Change User Permissions**:
    - Open `Control Panel` > `User Accounts`.
    - Select the user and click `Change the account type`.

## File System Management
1. **Disk Management**:
    - Open `Disk Management` by right-clicking the Start button and selecting `Disk Management`.
    - Create, format, or resize partitions as needed.
2. **File Permissions**:
    - Right-click a file or folder, select `Properties`, and go to the `Security` tab.
    - Modify permissions as needed.

## Network Configuration
1. **Set Up a Network Connection**:
    - Open `Settings` > `Network & Internet`.
    - Select `Wi-Fi` or `Ethernet` and configure the connection.
2. **Configure IP Settings**:
    - Open `Control Panel` > `Network and Sharing Center`.
    - Click `Change adapter settings`, right-click your network adapter, and select `Properties`.
    - Select `Internet Protocol Version 4 (TCP/IPv4)` and click `Properties` to configure IP settings.

## Security
1. **Enable Windows Defender**:
    - Open `Settings` > `Update & Security` > `Windows Security`.
    - Click `Open Windows Security` and ensure all protections are enabled.
2. **Set Up a Firewall**:
    - Open `Control Panel` > `Windows Defender Firewall`.
    - Click `Turn Windows Defender Firewall on or off` and configure as needed.

## Maintenance
1. **Windows Update**:
    - Open `Settings` > `Update & Security` > `Windows Update`.
    - Click `Check for updates` and install any available updates.
2. **Disk Cleanup**:
    - Open `Disk Cleanup` by searching for it in the Start menu.
    - Select the drive to clean up and follow the prompts.

## Troubleshooting
1. **Event Viewer**:
    - Open `Event Viewer` by searching for it in the Start menu.
    - Check the logs for any errors or warnings.
2. **System Restore**:
    - Open `Control Panel` > `Recovery`.
    - Click `Open System Restore` and follow the prompts to restore your system to a previous state.
