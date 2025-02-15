project "Box2D"

	kind "StaticLib"
	language "C++"
	cppdialect "C++11"
	staticruntime "off"
	
	targetdir ("bin/%{prj.name}/%{cfg.buildcfg}")
	objdir ("obj/%{prj.name}/%{cfg.buildcfg}")
	
	files
	{
		"src/**.h",
		"src/**.cpp",
		"include/**.h"
	}
	
	includedirs
	{
		"include",
		"src"
	}
	
	filter "system:windows"
		systemversion "latest"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"

	filter "configurations:Dist"
		runtime "Release"
		optimize "on"
        symbols "off"