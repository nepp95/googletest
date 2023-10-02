project "googletest"
    kind "StaticLib"
    language "C++"
    cppdialect "C++17"
    staticruntime "Off"

    targetdir ("%{wks.location}/Bin/" .. OutputDir .. "/%{prj.name}")
    objdir ("%{wks.location}/Bin-Int/" .. OutputDir .. "/%{prj.name}")

    files {
        "googletest/src/**.cc",
        "googletest/src/**.h"
    }

    includedirs {
        "googletest/include",
        "googletest"
    }

    filter "Configurations:Debug"
        runtime "Debug"
        symbols "On"
    
    filter "Configurations:Release"
        runtime "Release"
        optimize "On"
    
    filter "Configurations:Dist"
        runtime "Release"
        optimize "On"