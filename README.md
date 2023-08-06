<div align="center">
<img src="other\logo.png" alt="Logo" >

<h2 align="center">
    Your portals. Your rules. Your colors. MultiPortals!
</h2>
</div>

## Description

MultiPortals is a collection of instances that allows the use of different colored portals in Workshop maps. It includes features such as specifying portal colors, custom sounds, and all of it within Hammer. Additionally, all portals in MultiPortals have dynamic lighting!

## How to Use

1. Download or clone this repository.
2. Place the instances in the `Portal 2\sdk_content\maps` folder.
3. Copy the contents of the `CustomContent` folder to your game directory.
4. Use `multiportals.vmf` or another instance in a `func_instance` entity. It's that simple!
5. Don't forget to assign a unique targetname to each instance for proper functionality.
6. When your map is ready, pack the content from `CustomContent` into your BSP map.

Если вы хотите, вы можете кастомизировать vmt для получения более уникальных пар порталов 

## MultiPortals includes the following set of instances:

- `multiportals_controller`: If you plan to use more than 4 pairs of portals or want to switch between portals through an instance, add one instance of this to your map.
- `multiportals.vmf`: The main instance that allows you to choose custom portal colors, sounds, and portal pair IDs. 
- `multiportals_without_light.vmf`: This instance can be used if you want to avoid using `light_dynamic` which may impact game performance. It is a cheaper but less visually appealing option.
- `multiportals_without_sounds.vmf`: Use this instance if you prefer not to use custom sounds for the portals. It provides the same functionality but without sounds.
- `multiportals_default_portals.vmf`: If you don't need custom portal colors and only want the beautiful dynamic lighting from the portals, use this instance!
> **Note**
> Do not place your map at the origin coordinates, as there will be an unnecessary portal particle (and also because it's a terrible optimization solution).

You can use up to ~127 portal pairs, which means up to ~127 MultiPortals instances. Yes, it's utter madness!!

If you're not sure how to use it, check out the examples provided in the `Examples` folder.

## Examples

The MultiPortals package includes the following example maps:

1. 8-Portal Switch
    - This map showcases the usage of 8 portals along with buttons that allow you to switch between them. It demonstrates the versatility of MultiPortals by incorporating multiple portals in a single map.

2. Custom Colored Portals
    - In this map, the original portal colors have been replaced with custom colors. It highlights the ability of MultiPortals to provide a unique and personalized visual experience by allowing you to choose the colors for your portals.

3. Dynamic Lit Default Portals
    - This map demonstrates the use of regular portals with dynamic lighting. It showcases the immersive and visually stunning effects that MultiPortals can offer by enhancing the standard portal experience with dynamic lighting.

Feel free to explore these example maps to gain a better understanding of how to utilize the MultiPortals package's features and unleash your creativity <3

## How It Works

To understand how MultiPortals works, watch the YouTube video linked here (later)

## Credits
The MultiPortals was created by <a href="https://www.youtube.com/@laVashikProductions">laVashik</a>. Please give credit to laVashik when using this library in your projects :>



Protected by the MIT license.