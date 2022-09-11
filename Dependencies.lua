
-- LEGIO Dependencies

VULKAN_SDK = os.getenv("VULKAN_SDK")

IncludeDir = {}
IncludeDir["stb_image"] ="%{wks.location}/external/engine/external/stb_image"
IncludeDir["yaml_cpp"] ="%{wks.location}/external/engine/external/yaml-cpp/include"
IncludeDir["Box2D"] ="%{wks.location}/external/engine/external/Box2D/include"
IncludeDir["GLFW"] ="%{wks.location}/external/engine/external/GLFW/include"
IncludeDir["Glad"] ="%{wks.location}/external/engine/external/glad/include"
IncludeDir["ImGui"] ="%{wks.location}/external/engine/external/ImGui"
IncludeDir["ImGuizmo"] ="%{wks.location}/external/engine/external/ImGuizmo"
IncludeDir["glm"] ="%{wks.location}/external/engine/external/glm"
IncludeDir["entt"] ="%{wks.location}/external/engine/external/entt/include"
IncludeDir["shaderc"] ="%{wks.location}/external/engine/external/shaderc/include"
IncludeDir["SPIRV_Cross"] ="%{wks.location}/external/engine/external/SPIRV-Cross"
IncludeDir["VulkanSDK"] = "%{VULKAN_SDK}/Include"

LibraryDir = {}

LibraryDir["VulkanSDK"] = "%{VULKAN_SDK}/Lib"

Library = {}
Library["Vulkan"] = "%{LibraryDir.VulkanSDK}/vulkan-1.lib"
Library["VulkanUtils"] = "%{LibraryDir.VulkanSDK}/VkLayer_utils.lib"

Library["ShaderC_Debug"] = "%{LibraryDir.VulkanSDK}/shaderc_sharedd.lib"
Library["SPIRV_Cross_Debug"] = "%{LibraryDir.VulkanSDK}/spirv-cross-cored.lib"
Library["SPIRV_Cross_GLSL_Debug"] = "%{LibraryDir.VulkanSDK}/spirv-cross-glsld.lib"
Library["SPIRV_Tools_Debug"] = "%{LibraryDir.VulkanSDK}/SPIRV-Toolsd.lib"

Library["ShaderC_Release"] = "%{LibraryDir.VulkanSDK}/shaderc_shared.lib"
Library["SPIRV_Cross_Release"] = "%{LibraryDir.VulkanSDK}/spirv-cross-core.lib"
Library["SPIRV_Cross_GLSL_Release"] = "%{LibraryDir.VulkanSDK}/spirv-cross-glsl.lib"
