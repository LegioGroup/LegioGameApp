# Legio Game App

## Introduction

This repository consists in a simple applications that will serve as an starting point to develop with Legio game Engine

## Instructions

To clone the repository alongside the engine use the following command

```
git clone --recurse-submodules -j8 https://github.com/LegioGroup/LegioGameApp.git
```

Once you've downloaded the project and the submodules run

```
python GetDeps.py
```

This will download premake and the Vulkan Installer

To configure for vulkan run Configure_Vulkan_VS2022.bat

To configure for OpenGL run Configure_Opengl_VS2022.bat

## VS CODE

To open the repo with Visual Studio Code just go to the directory and type the following command
```
code .
```

The recommended extensions for Visual Studio Code are:

-  [cmake tools](https://marketplace.visualstudio.com/items?itemName=ms-vscode.cmake-tools)
-  [C/C++ for Visual Studio Code](https://marketplace.visualstudio.com/items?itemName=ms-vscode.cpptools)
-  [C/C++ Extension Pack](https://marketplace.visualstudio.com/items?itemName=ms-vscode.cpptools-extension-pack)
