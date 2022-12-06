# Legio Game App

## Introduction

This repository consists in a simple applications that will serve as an starting point to develop with Legio game Engine

## Instructions

To clone the repository alongside the engine use the following command

```
git clone -b --recurse-submodules -j8 https://github.com/LegioGroup/LegioGameApp.git
```

Once you've downloaded the project and the submodules run

```
python GetDeps.py
```

This will download premake and the Vulkan Installer

To configure for vulkan run Configure_Vulkan_VS2022.bat

To configure for OpenGL run Configure_Opengl_VS2022.bat

If you want to configure for VS2019 or any other visualStudio version just modify the previous scripts and change the VS2022 parameter to the desired Visual Studio version.

## VS CODE

To open the repo with Visual Studio Code just go to the directory and type the following command
```
code .
```

The recommended extensions for Visual Studio Code are:

-  [C/C++ for Visual Studio Code](https://marketplace.visualstudio.com/items?itemName=ms-vscode.cpptools)
-  [C/C++ Extension Pack](https://marketplace.visualstudio.com/items?itemName=ms-vscode.cpptools-extension-pack)
