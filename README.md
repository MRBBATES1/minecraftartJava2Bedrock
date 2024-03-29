Minecraftart Pixle Art Converter
=================================

This Powershell script is intended to modify the MCFunction file that is Exported from https://minecraftart.netlify.app/editor. This will convert the java elements into bedrock.

Example: ```minecraft:yellow_wool -> wool 4```

This is not intended to convert MCFUNCTION files from other sites and the script currently cannot handle anything complex. Must be the basic fill / setblock commands.

This was an on the spot build so it may not have all the blocks covered that needs to be. This wont stop the function from working however you may find your image might have holes in it when built or you may have unintended blocks.

If this is the case find out what the orginal java block was and let me know so i can update the script.

You should always take a backup of your world before using anything generated by this script. You should always keep an orginal of your MC Function file.

## How to Create Your Pixel Art

1. Navigate to https://minecraftart.netlify.app/editor, Upload the image you wish to convert.

2. Once your image has been uploaded select what ever settings you need. Leave the Minecraft version as default

3. Once you have set your settings click 'Convert'

4. This will generate your image for you. When you are ready to export this click on the 'Convert to Commands..' button.

5. Set the following 3 options underneath your image.
   
   __Convert Method:__ _.mcfunction file_ | 
   __Minecraft Version:__ _1.13_ | 
   __Spawn towards:__ _Any Direction you wish_

6. Click 'Download as..' and save your file to the 'Convert' folder created in the instructions below.


## How to Convert the Java Function File

1. Create a folder called /Convert/ in the main folder (make sure it has a capital C) 

2. Place your java MCFunction that you saved previously into the /Convert/ folder.

3. Run ConverFunctionFile.bat

4. A new file will be created in the /Convert/ folder with the same name but with Bedrock added to the end, Copy this version of the MCFUNCTION file to your functions folder.

5. Load up Minecraft and attached your functions pack to your world. When in game use ```/Function <nameoffunction>``` to spawn in your image, this will spawm where you are standing and will spawn in the direction you specificed on the Minecraft Art's site.


## History of the Script.

I do not own nor am i affiliated with https://minecraftart.netlify.app/editor; i made this script as i could not find a good pixle art generator for Bedrock Edition only for Java. 

So after doing research i found this site had the better interface and export options was the eaisest to do.

I was orginally then converting them by hand but since some can be many thousands of lines long this was not practicle; so this script was created to do it for me.

## Disclaimer

I have shared this here in the hopes that it help other uses running into the same problem, You are choosing to run this convert script at your own risk.
