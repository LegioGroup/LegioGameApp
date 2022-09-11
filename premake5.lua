-- premake5.lua
include "Dependencies.lua"

workspace "Legio"
    architecture "x64"
    platforms {"x64"}

    configurations
    {
        "Debug",
        "Release",
        "Dist"
    }

    newoption
    {
        trigger = "opengl",
        description = "Force to use OpenGL for rendering"
    }
    -- solution_items
    -- {
    --     ".editorconfig"
    -- }

    flags
    {
        "MultiProcessorCompile"
    }


outputdir = "%{cfg.buildcfg}_%{cfg.system}_%{cfg.platform}"

group "Dependencies"
    --include "external/premake"
    include "external/engine/external/GLFW"
    include "external/engine/external/glad"
    include "external/engine/external/imgui"
group ""

include "external/engine"

project "App"
    kind "ConsoleApp"
    language "C++"
    cppdialect "C++17"
    staticruntime "off"

    targetdir("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
    objdir ("%{wks.location}/bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
		"src/**.h",
		"src/**.cpp"
	}

    includedirs
	{
		"%{wks.location}/external/engine/include",
		"%{wks.location}/external/engine/external/spdlog/include",
		"%{wks.location}/external/engine/external",
		"%{IncludeDir.glm}",
	}

    links
    {
        "Legio"
    }

    filter "system:windows"
		systemversion "latest"

	filter "configurations:Debug"
		defines "LG_DEBUG"
		runtime "Debug"
		symbols "on"
        optimize "on"

	filter "configurations:Release"
		defines "LG_RELEASE"
		runtime "Release"
		optimize "on"

	filter "configurations:Dist"
		defines "LG_DIST"
		runtime "Release"
		optimize "on"