import os
import requests
import zipfile

curr_dir = os.getcwd()
premake_url = "https://github.com/premake/premake-core/releases/download/v5.0.0-beta2/premake-5.0.0-beta2-windows.zip"
vulkan_url = "https://sdk.lunarg.com/sdk/download/1.3.224.1/windows/VulkanSDK-1.3.224.1-Installer.exe"

def get_premake():
    premake_dir = curr_dir + '\\external\\premake'

    print("Getting Premake...\n")
    if not os.path.exists(premake_dir):
        print("\tCreating Premake Directory...\n")
        os.mkdir(premake_dir)
    elif os.path.exists(premake_dir + '\\premake5.exe'):
        print("\tPremake5 is already installed in the system.\n")
        return

    r = requests.get(premake_url)
    open('external/premake/premake-5.0.0-beta2-windows.zip', 'wb').write(r.content)
    zip = zipfile.ZipFile('external/premake/premake-5.0.0-beta2-windows.zip')
    
    print("\tExtracting...\n")
    zip.extract('premake5.exe', 'external/premake')
    zip.close()
    return

def get_vulkan():
    print("Getting Vulkan...\n")
    if os.environ["VULKAN_SDK"] or os.environ["VK_SDK_PATH"]:
        print("\tVulkan is already installed in the system.\n")
        return

    vulkan_dir = curr_dir + '\\external\\vulkan'
    if not os.path.exists(vulkan_dir):
        print("\tCreating Vulkan Directory...\n")
        os.mkdir(vulkan_dir)

    r = requests.get(vulkan_url)
    open('external/vulkan/VulkanSDK-1.3.224.1-Installer.exe', 'wb').write(r.content)
    os.startfile(vulkan_dir + '\\VulkanSDK-1.3.224.1-Installer.exe')
    return

if __name__ == "__main__": 
  
    get_premake()
    get_vulkan()