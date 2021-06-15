project "ImGui"
	kind "StaticLib"
	language "C++"
    
	targetdir (outputdir)
    objdir (intdir)

    files
    {
    	"*.h",
    	"*.cpp"
    }

    filter "system:windows"
    systemversion "latest"
    cppdialect "C++17"
    staticruntime "On"

    filter { "system:windows", "configurations:Release"}
    	buildoptions "/MT"
