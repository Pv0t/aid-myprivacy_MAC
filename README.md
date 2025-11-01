>[!IMPORTANT]
> This repository is no longer maintained and will not receive further updates after 01/11/2025. The reason for this is that closed-source operating systems can still collect your data without your knowledge, and tools like LuLu can be easily bypassed. If you’re seeking a truly privacy-respecting operating system, I highly suggest to start using Linux for better control over your data and your operating system. However, this repository may still be helpful if your goal is just to reduce the amount of data Apple collects.

# 1.0 Aid My Privacy on MAC
This repository is designed to significantly reduce the data that our Mac devices transmit to Apple servers, empowering us to protect our privacy more effectively. This guide assumes you don't use any of the services provided by Apple.

>[!WARNING] 
> This script is crafted to disable specific features on macOS, including Spotlight, and employs the LuLu application to block all services and applications provided by Apple, with the exception of software updates so you can still update your MAC.

## 1.1 Features
- **Disabling Spotlight**:  
By disabling Spotlight, you stop macOS from indexing your files, search history, and other personal data. This reduces the risk of that data being exposed, either locally or in case of a security breach.
- **Installing Homebrew**:  
The script installs Homebrew, along with essential tools such as 'wget,' 'bash,' and 'curl.' It also clears the cache and disables Homebrew analytics.
- **Updating Software and Installing Rosetta**:  
The script installs the latest available software updates and Rosetta software.
- **Installing the LuLu Application**:  
The script installs the LuLu application and applies preconfigured settings to block all connections from the packages to internet, except for software update connections. For more information, please refer to the LuLu configuration section.

## 1.2 Installation
You have two options for installation. The first option is to install the .sh file along with the LuLu configuration folder. The second option is to download the tar.xz file, extract its contents, and run the script. The second method is more convenient than the first.

You can download the tar.gz file from this [page](https://github.com/Pv0t/aid-myprivacy_MAC/releases).

```bash
mylaptop@MyLaptops-MacBook-Air$ tar -xvzf aid_myprivacy.tar.gz
mylaptop@MyLaptops-MacBook-Air$ chmod +x aid_myprivacy.sh
mylaptop@MyLaptops-MacBook-Air$ ./aid_myprivacy.sh
```

# 2.0 LuLu Settings
The scripts also include my LuLu settings, so once the script has finished running, you'll need to adjust them to fit your preferences. My settings may be a bit excessive, as I have configured LuLu to operate in passive mode. This means that any connection attempt made by an application will automatically generate rules to block it, without displaying any pop-up notifications.

>[!IMPORTANT]
>If you're having trouble with an application not connecting to the internet, it's likely due to LuLu. To resolve this, go to the rules section, find the application, and change its action from blocked to allowed.


