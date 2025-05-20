# Aid My Privacy on MAC
This repository is designed to significantly reduce the data that our Mac devices transmit to Apple servers, empowering us to protect our privacy more effectively.

>[!WARNING] 
> This script is crafted to disable specific features on macOS, including Spotlight, and employs the LuLu application to block all services and applications provided by Apple, with the exception of software updates to maintain essential security. For more information, please consult the key features section.

## Key Features
- **Disabling Spotlight**:  
By disabling Spotlight, you stop macOS from indexing your files, search history, and other personal data. This reduces the risk of that data being exposed, either locally or in case of a security breach.
- **Installing Homebrew**:  
The script installs Homebrew, along with essential tools such as 'wget,' 'bash,' and 'curl.' It also clears the cache and disables Homebrew analytics.
- **Updating Software and Installing Rosetta**:  
The script installs the latest available software updates and Rosetta software.
- **Installing the LuLu Application**:  
The script installs the LuLu application and applies preconfigured settings to block all connections from the packages to internet, except for software update connections. For more information, please refer to the LuLu configuration section.

## Installation
You have two options for installation. The first option is to install the .sh file along with the LuLu configuration folder. The second option is to download the tar.xz file, extract its contents, and run the script. The second method is more convenient than the first.

You can download the tar.gz file from this [page](https://github.com/Pv0t/aid-myprivacy_MAC/releases).

```bash
mylaptop@MyLaptops-MacBook-Air$ tar -xvzf aid_myprivacy.tar.gz
mylaptop@MyLaptops-MacBook-Air$ chmod +x aid_myprivacy.sh
mylaptop@MyLaptops-MacBook-Air$ ./aid_myprivacy.sh
```

## LuLu Settings
The scripts also include my LuLu settings, so once the script has finished running, you'll need to adjust them to fit your preferences. My settings may be a bit excessive, as I have configured LuLu to operate in passive mode. This means that any connection attempt made by an application will automatically generate rules to block it, without displaying any pop-up notifications.

>[!IMPORTANT]
>If you're having trouble with an application not connecting to the internet, it's likely due to LuLu. To resolve this, go to the rules section, find the application, and change its action from blocked to allowed.

## LuLu Rules
In this section, I've compiled a list of all the packages in my rules that have attempted to connect to the internet.

<details> 
<summary>All blocked Apple packages that connect to the Apple Server:</summary>

```
| NAME                                  | PACKAGE NAME                                                     | ACTION |
_______________________________________________________________________________________________________________________________
| adprivacyd                            | com.apple.ap.adprivacyd                                          | Block  |
| airportd                              | com.apple.airport.airportd                                       | Block  |
| akd                                   | com.apple.akd                                                    | Block  |
| AMPLibraryAgent                       | com.apple.AMPLibraryAgent                                        | Block  | 
| amsaccountsd                          | com.apple.amsaccountsd                                           | Block  | 
| amsengagementd                        | com.apple.amsengagementd                                         | Block  |
| amsondevicestoraged                   | com.apple.amsondevicestoraged                                    | Block  | 
| appleaccountd                         | com.apple.appleaccountd                                          | Block  |
| appstoreagent                         | com.apple.appstoreagent                                          | Block  |
| apsd                                  | com.apple.apsd                                                   | Block  |
| askpermissiond                        | com.apple.askpermissiond                                         | Block  |
| AssetCacheLocatorService              | com.apple.AssetCacheLocatorService                               | Block  |
| AuthenticationServicesAgent           | com.apple.AuthenticationServicesCore.AuthenticationServicesAgent | Block  |
| CallHistorySyncHelper                 | com.apple.CallHistorySynchelper                                  | Block  |
| captiveagent                          | com.apple.captiveagent                                           | Block  |
| Categories Services                   | com.apple.ctcategories.services                                  | Block  |
| cloudd                                | com.apple.cloudd                                                 | Block  |
| CloudTelemetryService                 | com.apple.CloudTelemetryService.xpc                              | Block  |
| com.apple.geod                        | com.apple.geod                                                   | Block  |
| com.apple.Safari.SafeBrowsing.Service | com.apple.Safari.SafeBrowsing                                    | Block  |
| com.apple.Safari.SearchHelper.xpc     | com.apple.Safari.SearchHelper                                    | Block  |
| com.apple.Virtualization.Installation | com.apple.virtualization.Installation                            | Block  |
| com.apple.WebKit.Networking.xpc       | com.apple.WebKit.Networking                                      | Block  |
| configd                               | com.apple.configd                                                | Block  |
| ControlCenter                         | com.apple.controlcenter                                          | Block  |
| CrashReporterSupportHelper            | com.apple.CrashReporterSupportHelper                             | Block  |
| familycircled                         | com.apple.familycircled                                          | Block  |
| findmylocateagent                     | com.apple.findmy.findmylocalagent                                | Block  |
| git-remote-http                       | com.apple.git-remote-http                                        | Block  |
| helpd                                 | com.apple.helpd                                                  | Block  |
| homed                                 | com.apple.homed                                                  | Block  |
| icloudmailagent                       | com.apple.icloudmailagent                                        | Block  |
| iCloudNotificationAgent               | com.apple.iCloudNotificationAgent                                | Block  |
| identityservicesd                     | com.apple.identityservicesd                                      | Block  |
| idleassetsd                           | com.apple.idleassetsd                                            | Block  |
| itunescloudd                          | com.apple.itunescloudd                                           | Block  |
| locationd                             | com.apple.locationd                                              | Block  | 
| mDNSResponder                         | com.apple.mDNSResponder                                          | Block  |
| mobileactivationd                     | com.apple.activationd                                            | Block  | 
| mobileassetd                          | com.apple.mobileassetd                                           | Block  |
| mount_nfs                             | com.apple.mount_nfs                                              | Block  |
| mount_url                             | com.apple.mount_url                                              | Block  |
| Music                                 | com.apple.Music                                                  | Block  |
| nbagent                               | com.apple.nbagent                                                | Block  |
| ndoagent                              | com.apple.ndoagent                                               | Block  |
| nehelper                              | com.apple.nehelper                                               | Block  |
| netbiosd                              | com.apple.netbiosd                                               | Block  |
| networkserviceproxy                   | com.apple.networkserviceproxy                                    | Block  | 
| nsurlsessiond                         | com.apple.nsurlsessiond                                          | Block  |
| ocspd                                 | com.apple.ocspd                                                  | Block  |
| parsec-fbf                            | com.apple.parsec-fbf                                             | Block  |
| parsecd                               | com.apple.persecd                                                | Block  |
| passd                                 | com.apple.passd                                                  | Block  |
| PasswordBreachAgent                   | com.apple.Safari.PasswordBreachAgent                             | Block  |
| promotedcontentd                      | com.apple.ap.promotedcontentd                                    | Block  |
| remindd                               | com.apple.remindd                                                | Block  | 
| rtcreportingd                         | com.apple.rtcreportingd                                          | Block  |
| Safari                                | com.apple.Safari                                                 | Block  |
| searchpartyuseragent                  | com.apple.icloud.searchpartyuseragent                            | Block  |
| sntp                                  | com.apple.sntp                                                   | Block  |
| Spotlight                             | com.apple.Spotlight                                              | Block  |
| StocksWidget                          | com.apple.stocks.widget                                          | Block  |
| storekitagent                         | com.apple.storekitagent                                          | Block  |
| studentd                              | com.apple.studentd                                               | Block  |
| swcd                                  | com.apple.swcd                                                   | Block  |
| swtransparencyd                       | com.apple.swtransparencyd                                        | Block  |
| syspolicyd                            | com.apple.syspolicyd                                             | Block  |
| systemmigrationd                      | com.apple.installandsetup.systemmigrationd                       | Block  |
| timed                                 | com.apple.timed                                                  | Block  |
| tipsd                                 | com.apple.tipsd                                                  | Block  |
| trustd                                | com.apple.trustd                                                 | Block  |
| weatherd                              | com.apple.weatherd                                               | Block  |
| WeatherWidget                         | com.apple.weather.widget                                         | Block  |
| webprivacyd                           | com.apple.webprivacyd                                            | Block  |
| WiFiAgent                             | com.apple.wifi.WiFiAgent                                         | Block  |
| wifivelocityd                         | com.apple.wifivelocityd                                          | Block  |
```
</details>


<details> 
<summary>All allowed Apple packages that connect to the Apple Server:</summary>

```
| NAME            | PACKAGE NAME               | ACTION |
_________________________________________________________
| curl            | com.apple.curl             | Allow  |
| softwareupdate  | com.apple.softwareupdate   | Allow  |
| softwareupdated | com.apple.software.updated | Allow  |
| wget            | wget                       | Allow  |
```
</details>


<details> 
<summary>All my third-party app packages that have established a connection:</summary>

```
| NAME              | PACKAGE NAME                 | ACTION |
_____________________________________________________________
| Brave             | com.brave.Browser            | Block  | 
| Brave Helper      | com.brave.Browser.helper     | Block  |
| Electron Helper   | md.obsidian.helper           | Block  |
| Electron Helper   | FreeTube Helper.app          | Allow  | 
| Grammarly Desktop | com.grammarly.ProjecyLlama   | Block  |
| LuLu              | com.object-see.lulu.app      | Block  |
| Mullvad Browser   | net.mullvad.mullvadbrowser   | Allow  | 
| mullvad-daemon    | mullvad-daemon               | Allow  |
| MullvadVPNLoader  | net.mullvad.MullvadVPNLoader | Allow  | 
| Netiquette        | com.objective-see.Netiquette | Block  |
| Proton Drive      | com.protonmail.drive         | Allow  |
``` 
</details>

>[!NOTE]
>This repository will be updated monthly with new configurations for rules and additional commands for the script.



