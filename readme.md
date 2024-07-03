# frp-fireworks

A simple fireworks script for the 4th of July in Family Roleplay.

## Installation

1. Download the script by using the green "Code" button and selecting "Download ZIP".
2. Extract the ZIP and ensure it's name is `frp-fireworks` when placed in your `resources` folder.
3. Ensure this resource using `ensure frp-fireworks` in your `server.cfg` or place it in a resource group and ensure the group.
4. Start your server and enjoy!

## Usage

1. Use the command `/fireworks` to launch fireworks at your location. Anyone with the `qbcore.admin` permission can use this command.

## Changing permissions

1. Open the `server/sv_main.lua` file.
2. Change the permission in the `QBCore.Commands.Add` function to your desired permission. The default is `qbcore.admin`.
