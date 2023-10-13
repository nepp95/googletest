project "googletest"
    kind "StaticLib"
    language "C++"
    cppdialect "C++17"
    staticruntime "Off"

    targetdir ("%{wks.location}/Bin/" .. OutputDir .. "/%{prj.name}")
    objdir ("%{wks.location}/Bin-Int/" .. OutputDir .. "/%{prj.name}")

    files {
		"googlemock/src/**.cc",
		"googlemock/src/**.h",
        "googletest/src/**.cc",
        "googletest/src/**.h"
    }

    includedirs {
		"googlemock/include",
		"googlemock",
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
