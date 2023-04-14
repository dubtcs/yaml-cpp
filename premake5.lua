
project "yaml"
    kind "StaticLib"
    language "C++"

    targetdir("bin/"..output.."/%{prj.name}");
    objdir("bin-int/"..output.."/%{prj.name}")

    files {
        "src/**.cpp",
        "src/**.h",
        "include/**.h",
    }

    includedirs {
        "include"
    }

    filter "system:windows"
        systemversion "latest"
        cppdialect "C++20"
        staticruntime "On"

    filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"
        