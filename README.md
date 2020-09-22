Minecraftart Pixle Art Converter
=================================

This Powershell script is intended to modify the MCFunction file that is Exported from https://minecraftart.netlify.app/editor. This will convert the java elements into bedrock.

Example: minecraft:yellow_wool -> wool 4

This is not intended to convert MCFUNCTION files from other sites and the script currently cannot handle anything complex. Must be the basic fill / setblock commands.

This was an on the spot build so it may not have all the blocks covered that needs to be.(But i will continue to update as and when i find them). This wont stop the function from working however you may find that it has holes in it when built. If this is the case find out what the orginal java block was and let me know so i can add in the block.

You should always take a backup of your orginal MC Function file before running this.

Use at your own risk.

Instructions
============

1.Create a folder called /Convert/ in the main folder and place your java MCFunction in it.

2.Run ConverFunctionFile.bat

3.Take your new file from /Convert/ folder

A new file will be created in the Convert folder with the same name but with Bedrock added to the end.

Simply copy this version of the MCFUNCTION file to your functions folder. You should then be able to fun the function as normal.

History of the Script.
=======================

I do not own nor am i affiliated with https://minecraftart.netlify.app/editor; i made this as i could not find a good pixle art generator for bedrock only for java. So after doing research i found this site had the better interface and export options so i choose this.

I was orginally then converting them by hand but since some can be many thousands of lines long this was not practicle; so this script will now do it for me.

I have shared here in the hopes that it help other uses running into the same problem.
