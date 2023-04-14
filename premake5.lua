
-- Import this with a parent PREMAKE project

project "yaml-cpp"
    location "yaml-cpp"
    kind "StaticLib"
    language "C++"
    cppdialect "C++20"
    staticruntime "On"

    systemversion "latest"

    targetdir ("bin/"..output.."/%{prj.name}");
    objdir ("bin-int/"..output.."/%{prj.name}");

    files {
        "src/**.cpp",
        "src/**.h",
        "include/**.h"
    }

    includedirs {
        "include"
    }

    filter "configurations:Debug"
        runtime "Debug"
        symbols "On"

    filter "configurations:Release"
        runtime "Release"
        optimize "On"

    filter "configurations:Dist"
        runtime "Release"
        optimize "On"
