# THIS SCRIPT IS ONLY INTENDED TO CONVERT THE MCFUNCTION FILE OUTPUTED BY https://minecraftart.netlify.app/editor
# THIS WILL REPLACE THE JAVA VERSION OF THE BLOCKS TO THE BEDROCK VERSION.

# CREATED BY MRBBATES1 aka 'Bobbins'

# USE AT YOUR OWN RISK. ALWAYS BACKUP YOUR FILES FIRST.

$ScriptDir = Split-Path $script:MyInvocation.MyCommand.Path

function J2B
{

# SET THE CONVERT LOCATION
$convertlocation = $ScriptDir + '\Convert\'
#$convertlocation = 'C:\Users\bobby\Desktop\J2B\Convert\'

#LIST ALL FILES THAT HAVE A .MCFunction EXTENSTION.
$Files2Convert = get-childitem  $convertlocation | Where-Object {$_.Extension -eq ".MCFunction"}

#THIS IS WHERE THE FILE(S) IS IMPORTED AND THE REPLACE PROCESS BEGINS.

foreach($file in $Files2Convert)
{
    # OPEN FILE INTO MEMORY (RAM) MAX NUMBER OF COMMANDS IS 10K (THIS LIMIT IS THE MAX MINECRAFT WILL RUN FROM A FUNCTION FILE)

    $FileToOpen = $convertlocation + $file.Name
    $FileContents = Get-Content $FileToOpen -read 10000

    # SET NEW NAME FOR EXPORT

    $tmp = $file.Name -replace ".mcfunction",""
    $NewFileName = $tmp + '_Bedrock.mcfunction'
    Remove-Variable tmp
    $Export = $convertlocation + $NewFileName
    Remove-Variable NewFileName

    # BEGIN REPLACE PROCESS
    # IF THERES A BETTER WAY TO DO THIS THAN BELOW PLEASE LET ME KNOW AS THIS WOULD BE MUCH EASYIER THANK HAVING TO WRITE OUT EACH LINE.

    #CONCRETE POWDER
    
    $FileContents = $FileContents -replace "minecraft:white_concrete_powder","concretepowder 0"
    $FileContents = $FileContents -replace "minecraft:orange_concrete_powder","concretepowder 1"
    $FileContents = $FileContents -replace "minecraft:magenta_concrete_powder","concretepowder 2"
    $FileContents = $FileContents -replace "minecraft:light_blue_concrete_powder","concretepowder 3"
    $FileContents = $FileContents -replace "minecraft:yellow_concrete_powder","concretepowder 4"
    $FileContents = $FileContents -replace "minecraft:lime_concrete_powder","concretepowder 5"
    $FileContents = $FileContents -replace "minecraft:pink_concrete_powder","concretepowder 6"
    $FileContents = $FileContents -replace "minecraft:gray_concrete_powder","concretepowder 7"
    $FileContents = $FileContents -replace "minecraft:light_gray_concrete_powder","concretepowder 8"
    $FileContents = $FileContents -replace "minecraft:cyan_concrete_powder","concretepowder 9"
    $FileContents = $FileContents -replace "minecraft:purple_concrete_powder","concretepowder 10"
    $FileContents = $FileContents -replace "minecraft:blue_concrete_powder","concretepowder 11"
    $FileContents = $FileContents -replace "minecraft:brown_concrete_powder","concretepowder 12"
    $FileContents = $FileContents -replace "minecraft:green_concrete_powder","concretepowder 13"
    $FileContents = $FileContents -replace "minecraft:red_concrete_powder","concretepowder 14"
    $FileContents = $FileContents -replace "minecraft:black_concrete_powder","concretepowder 15"

    # CONCRETE

    $FileContents = $FileContents -replace "minecraft:white_concrete","concrete 0"
    $FileContents = $FileContents -replace "minecraft:orange_concrete","concrete 1"
    $FileContents = $FileContents -replace "minecraft:magenta_concrete","concrete 2"
    $FileContents = $FileContents -replace "minecraft:light_blue_concrete","concrete 3"
    $FileContents = $FileContents -replace "minecraft:yellow_concrete","concrete 4"
    $FileContents = $FileContents -replace "minecraft:lime_concrete","concrete 5"
    $FileContents = $FileContents -replace "minecraft:pink_concrete","concrete 6"
    $FileContents = $FileContents -replace "minecraft:gray_concrete","concrete 7"
    $FileContents = $FileContents -replace "minecraft:light_gray_concrete","concrete 8"
    $FileContents = $FileContents -replace "minecraft:cyan_concrete","concrete 9"
    $FileContents = $FileContents -replace "minecraft:purple_concrete","concrete 10"
    $FileContents = $FileContents -replace "minecraft:blue_concrete","concrete 11"
    $FileContents = $FileContents -replace "minecraft:brown_concrete","concrete 12"
    $FileContents = $FileContents -replace "minecraft:green_concrete","concrete 13"
    $FileContents = $FileContents -replace "minecraft:red_concrete","concrete 14"
    $FileContents = $FileContents -replace "minecraft:black_concrete","concrete 15"

    #PLANKS

    $FileContents = $FileContents -replace "minecraft:oak_planks","planks 0"
    $FileContents = $FileContents -replace "minecraft:spruce_planks","planks 1"
    $FileContents = $FileContents -replace "minecraft:birch_planks","planks 2"
    $FileContents = $FileContents -replace "minecraft:jungle_planks","planks 3"
    $FileContents = $FileContents -replace "minecraft:acacia_planks","planks 4"
    $FileContents = $FileContents -replace "minecraft:dark_oak_planks","planks 5"

    # LOGS    
    
    $FileContents = $FileContents -replace "minecraft:oak_log","log 0"
    $FileContents = $FileContents -replace "minecraft:spruce_log","log 1"
    $FileContents = $FileContents -replace "minecraft:birch_log","log 2"
    $FileContents = $FileContents -replace "minecraft:jungle_log","log 3"
    $FileContents = $FileContents -replace "minecraft:acacia_log","log2 0"
    $FileContents = $FileContents -replace "minecraft:dark_oak_log","log2 1"

    # LEAVES
    
    $FileContents = $FileContents -replace "minecraft:oak_leaves","leaves 0"
    $FileContents = $FileContents -replace "minecraft:spruce_leaves","leaves 1"
    $FileContents = $FileContents -replace "minecraft:birch_leaves","leaves 2"
    $FileContents = $FileContents -replace "minecraft:jungle_leaves","leaves 3"
    $FileContents = $FileContents -replace "minecraft:acacia_leaves","leaves2 0"
    $FileContents = $FileContents -replace "minecraft:dark_oak_leaves","leaves2 1"

    # SANDSTONE

    $FileContents = $FileContents -replace "minecraft:chiseled_sandstone","sandstone 1"
    $FileContents = $FileContents -replace "minecraft:cut_sandstone","sandstone 2"
    $FileContents = $FileContents -replace "minecraft:smooth_sandstone","sandstone 3"

    # RED SANDSTONE

    $FileContents = $FileContents -replace "minecraft:chiseled_red_sandstone","red_sandstone 1"
    $FileContents = $FileContents -replace "minecraft:cut_red_sandstone","red_sandstone 2"

    # WOOL

    $FileContents = $FileContents -replace "minecraft:white_wool","wool 0"
    $FileContents = $FileContents -replace "minecraft:orange_wool","wool 1"
    $FileContents = $FileContents -replace "minecraft:magenta_wool","wool 2"
    $FileContents = $FileContents -replace "minecraft:light_blue_wool","wool 3"
    $FileContents = $FileContents -replace "minecraft:yellow_wool","wool 4"
    $FileContents = $FileContents -replace "minecraft:lime_wool","wool 5"
    $FileContents = $FileContents -replace "minecraft:pink_wool","wool 6"
    $FileContents = $FileContents -replace "minecraft:gray_wool","wool 7"
    $FileContents = $FileContents -replace "minecraft:light_gray_wool","wool 8"
    $FileContents = $FileContents -replace "minecraft:cyan_wool","wool 9"
    $FileContents = $FileContents -replace "minecraft:purple_wool","wool 10"
    $FileContents = $FileContents -replace "minecraft:blue_wool","wool 11"
    $FileContents = $FileContents -replace "minecraft:brown_wool","wool 12"
    $FileContents = $FileContents -replace "minecraft:green_wool","wool 13"
    $FileContents = $FileContents -replace "minecraft:red_wool","wool 14"
    $FileContents = $FileContents -replace "minecraft:black_wool","wool 15"

    # STONE

    $FileContents = $FileContents -replace "minecraft:granite","stone 1"
    $FileContents = $FileContents -replace "minecraft:polished_granite","stone 2"
    $FileContents = $FileContents -replace "minecraft:diorite","stone 3"
    $FileContents = $FileContents -replace "minecraft:polished_diorite","stone 4"
    $FileContents = $FileContents -replace "minecraft:andesite","stone 5"
    $FileContents = $FileContents -replace "minecraft:polished_andesite","stone 6"

    # DIRT

    $FileContents = $FileContents -replace "minecraft:coarse_dirt","dirt 1"
    $FileContents = $FileContents -replace "minecraft:podzol","dirt 2"

    # WOOD / ALL BARK LOG

    $FileContents = $FileContents -replace "minecraft:oak_wood","wood 0"
    $FileContents = $FileContents -replace "minecraft:spruce_wood","wood 1"
    $FileContents = $FileContents -replace "minecraft:birch_wood","wood 2"
    $FileContents = $FileContents -replace "minecraft:jungle_wood","wood 3"
    $FileContents = $FileContents -replace "minecraft:acacia_wood","wood 4"
    $FileContents = $FileContents -replace "minecraft:dark_oak_wood","wood 5"

    # QUARTZ

    $FileContents = $FileContents -replace "minecraft:chiseled_quartz_block","quartz_block 1"
    $FileContents = $FileContents -replace "minecraft:quartz_pillar","quartz_block 2"
    $FileContents = $FileContents -replace "minecraft:smooth_quartz","quartz_block 3"
    $FileContents = $FileContents -replace "minecraft:nether_quartz_ore","quartz_ore"

    # TERRACOTTA

    $FileContents = $FileContents -replace "minecraft:white_terracotta","stained_hardened_clay 0"
    $FileContents = $FileContents -replace "minecraft:orange_terracotta","stained_hardened_clay 1"
    $FileContents = $FileContents -replace "minecraft:magenta_terracotta","stained_hardened_clay 2"
    $FileContents = $FileContents -replace "minecraft:light_blue_terracotta","stained_hardened_clay 3"
    $FileContents = $FileContents -replace "minecraft:yellow_terracotta","stained_hardened_clay 4"
    $FileContents = $FileContents -replace "minecraft:lime_terracotta","stained_hardened_clay 5"
    $FileContents = $FileContents -replace "minecraft:pink_terracotta","stained_hardened_clay 6"
    $FileContents = $FileContents -replace "minecraft:gray_terracotta","stained_hardened_clay 7"
    $FileContents = $FileContents -replace "minecraft:light_gray_terracotta","stained_hardened_clay 8"
    $FileContents = $FileContents -replace "minecraft:cyan_terracotta","stained_hardened_clay 9"
    $FileContents = $FileContents -replace "minecraft:purple_terracotta","stained_hardened_clay 10"
    $FileContents = $FileContents -replace "minecraft:blue_terracotta","stained_hardened_clay 11"
    $FileContents = $FileContents -replace "minecraft:brown_terracotta","stained_hardened_clay 12"
    $FileContents = $FileContents -replace "minecraft:green_terracotta","stained_hardened_clay 13"
    $FileContents = $FileContents -replace "minecraft:red_terracotta","stained_hardened_clay 14"
    $FileContents = $FileContents -replace "minecraft:black_terracotta","stained_hardened_clay 15"
    $FileContents = $FileContents -replace "minecraft:terracotta","hardened_clay"

    # STAINED GLASS

    $FileContents = $FileContents -replace "minecraft:white_stained_glass","stained_glass 0"
    $FileContents = $FileContents -replace "minecraft:orange_stained_glass","stained_glass 1"
    $FileContents = $FileContents -replace "minecraft:magenta_stained_glass","stained_glass 2"
    $FileContents = $FileContents -replace "minecraft:light_blue_stained_glass","stained_glass 3"
    $FileContents = $FileContents -replace "minecraft:yellow_stained_glass","stained_glass 4"
    $FileContents = $FileContents -replace "minecraft:lime_stained_glass","stained_glass 5"
    $FileContents = $FileContents -replace "minecraft:pink_stained_glass","stained_glass 6"
    $FileContents = $FileContents -replace "minecraft:gray_stained_glass","stained_glass 7"
    $FileContents = $FileContents -replace "minecraft:light_gray_stained_glass","stained_glass 8"
    $FileContents = $FileContents -replace "minecraft:cyan_stained_glass","stained_glass 9"
    $FileContents = $FileContents -replace "minecraft:purple_stained_glass","stained_glass 10"
    $FileContents = $FileContents -replace "minecraft:blue_stained_glass","stained_glass 11"
    $FileContents = $FileContents -replace "minecraft:brown_stained_glass","stained_glass 12"
    $FileContents = $FileContents -replace "minecraft:green_stained_glass","stained_glass 13"
    $FileContents = $FileContents -replace "minecraft:red_stained_glass","stained_glass 14"
    $FileContents = $FileContents -replace "minecraft:black_stained_glass","stained_glass 15"

    # MISC / UNCATEGORIZED

    $FileContents = $FileContents -replace "minecraft:red_sand","sand 1"
    $FileContents = $FileContents -replace "minecraft:grass_block","grass"
    $FileContents = $FileContents -replace "minecraft:wet_sponge","sponge 1"
    $FileContents = $FileContents -replace "minecraft:nether_bricks","nether_brick"
    $FileContents = $FileContents -replace "minecraft:red_nether_bricks","red_nether_brick"
    $FileContents = $FileContents -replace "minecraft:dark_prismarine","prismarine 1"
    $FileContents = $FileContents -replace "minecraft:prismarine_bricks","prismarine 2"
    $FileContents = $FileContents -replace "minecraft:melon","melon_block"

    # FINAL UPDATE
    # EVERYTHING ELSE SHOULD JUST BE THE SAME BUT WITHOUT THE MINECRAFT: SO THIS WILL REMOVE THIS FROM THE REMAINING LINES.

    $FileContents = $FileContents -replace "minecraft:",""

    # THIS WILL NOW SAVE A NEW COPY OF THE FUNCTION FILE IN THE CONVERT FOLDER

    $FileContents | Out-File $Export -Encoding ascii

    # TIDY UP TO PREVENT ANYTHING FROM BEING LEFT OVER BEFORE STARTING THE NEXT FILE.

    Remove-Variable FileToOpen
    Remove-Variable FileContents
    Remove-Variable Export

}

Remove-Variable file
Remove-Variable Files2Convert

}

J2B