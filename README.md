Minecraftart Pixle Art Converter
=================================

This Powershell script is intended to modify the MCFunction file that is Exported from https://minecraftart.netlify.app/editor. This will convert the java elements into bedrock.

Example: minecraft:yellow_wool -> wool 4

This is not intended to convert MCFUNCTION files from other sites and the script currently cannot handle anything complex. Must be the basic fill / setblock commands.

This was an on the spot build so it may not have all the blocks covered that needs to be.(But i will continue to update as and when i find them). This wont stop the function from working however you may find your image might have holes in it when built or you may have unintended blocks.

If this is the case find out what the orginal java block was and let me know so i can update the script.

You should always take a backup of your world before using anything generated by this script. You should always keep an orginal of your MC Function file.

When exporting the MCFUNCTION file from https://minecraftart.netlify.app/editor; Please use the following settings:

Convert Method: .mcfunction file

Minecraft Version: 1.13

Any other settings on this page is based on how you need it to spawn in and will not affect this script.

Please Note:

You can be on the latest addition of Minecraft; the 1.13 is just the highest that MinecraftArt have.

As the older versions would need to be written differently; I did not see a need for this.

Use at your own risk.

Instructions
============

1.Create a folder called /Convert/ in the main folder (make sure it has a capital C) and place your java MCFunction in it.

2.Run ConverFunctionFile.bat

3.Take your new file from /Convert/ folder

A new file will be created in the Convert folder with the same name but with Bedrock added to the end.

Simply copy this version of the MCFUNCTION file to your functions folder. You should then be able to fun the function as normal.

History of the Script.
=======================

I do not own nor am i affiliated with https://minecraftart.netlify.app/editor; i made this script as i could not find a good pixle art generator for Bedrock Edition only for Java. 

So after doing research i found this site had the better interface and export options was the eaisest to do.

I was orginally then converting them by hand but since some can be many thousands of lines long this was not practicle; so this script was created to do it for me.

I have shared here in the hopes that it help other uses running into the same problem.
