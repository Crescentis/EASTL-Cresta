project "EASTL"
    kind "StaticLib"
    language "C++"
    cppdialect(CppVersion)
    staticruntime "off"

    targetdir ("%{wks.location}/Cresta/Build/Bin/" .. OutputDirectory .. "/%{prj.name}")
    objdir ("%{wks.location}/Cresta/Build/Obj/" .. OutputDirectory .. "/%{prj.name}")

    files
    {
        "include/*.h",
        "source/*.cpp"
    }

    includedirs { "include", "%{wks.location}/Cresta/Source/ThirdParty/EABase/include/Common" }
    defines { "EASTL_OPENSOURCE=1" }

    filter "system:windows"
        defines { "_CRT_SECURE_NO_WARNINGS", "_SCL_SECURE_NO_WARNINGS" }