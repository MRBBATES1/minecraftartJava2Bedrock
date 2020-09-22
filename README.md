This Powershell script is intended to modify the MCFunction file that is Exported from https://minecraftart.netlify.app/editor. This will convert the java elements into bedrock.

Example: Minecraft:Yello_wool -> wool 4


This is not intended to convert MCFUNCTION files from other sites and the script currently cannot handle anything complex. Must be the basic fill / setblock commands.

This was an on the spot build so it may not have all the blocks covered that needs to be. This wont stop the function from working however you may find that it has holes in it when built. If this is the case find out what the orginal java block was and let me know so i can update the script.

You should always take a backup of your orginal MC Function file before running this.

Instructions
============

1.Place your java MCFunction file in the /Convert/ folder.
2.Run ConverFunctionFile.bat
3.Take your new file from /Convert/ folder 

The MCFunction file will have _Bedrock Added to the end of the name.
