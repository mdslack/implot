project "implot"
	kind "StaticLib"
	language "C++"

    targetdir ("%{wks.location}/bin/vendor/" .. output_dir .. "/%{prj.name}")
    objdir ("%{wks.location}/obj/vendor/" .. output_dir .. "/%{prj.name}")

	files
	{
		"implot.h",
		"implot_internal.h",
		"implot.cpp",
		"implot_demo.cpp",
		"implot_items.cpp",
	}

	filter "system:windows"
		systemversion "latest"
		cppdialect "C++17"
		staticruntime "On"

	filter "system:linux"
		pic "On"
		systemversion "latest"
		cppdialect "C++17"
		staticruntime "On"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"
