﻿<?xml version="1.0" encoding="utf-8" standalone="no"?>
<Project xmlns="http://schemas.microsoft.com/developer/msbuild/2003" DefaultTargets="Build" ToolsVersion="4.0">
  <PropertyGroup>
    <RootNamespace>Swift</RootNamespace>
    <ProjectGuid>8F87CCEF-C142-49A8-8828-32211B2CBFBE</ProjectGuid>
    <OutputType>StaticLibrary</OutputType>
    <AssemblyName>Swift</AssemblyName>
    <AllowGlobals>False</AllowGlobals>
    <AllowLegacyWith>False</AllowLegacyWith>
    <AllowLegacyOutParams>False</AllowLegacyOutParams>
    <AllowLegacyCreate>False</AllowLegacyCreate>
    <AllowUnsafeCode>False</AllowUnsafeCode>
    <Configuration Condition="'$(Configuration)' == ''">Release</Configuration>
    <SDK>OS X</SDK>
    <CreateHeaderFile>True</CreateHeaderFile>
    <DefaultUses>Foundation,RemObjects.Elements.Linq</DefaultUses>
    <DeploymentTargetVersion>10.9</DeploymentTargetVersion>
	<Mode>Nougat</Mode>
  </PropertyGroup>
  <PropertyGroup Condition=" '$(Configuration)' == 'Debug' ">
    <Optimize>false</Optimize>
    <OutputPath>.\bin\Debug</OutputPath>
    <DefineConstants>DEBUG;TRACE;</DefineConstants>
    <GenerateDebugInfo>True</GenerateDebugInfo>
    <EnableAsserts>True</EnableAsserts>
    <TreatWarningsAsErrors>False</TreatWarningsAsErrors>
    <CaptureConsoleOutput>False</CaptureConsoleOutput>
    <WarnOnCaseMismatch>True</WarnOnCaseMismatch>
  </PropertyGroup>
  <PropertyGroup Condition=" '$(Configuration)' == 'Release' ">
    <Optimize>true</Optimize>
    <OutputPath>.\bin\Release</OutputPath>
    <GenerateDebugInfo>False</GenerateDebugInfo>
    <EnableAsserts>False</EnableAsserts>
    <TreatWarningsAsErrors>False</TreatWarningsAsErrors>
    <CaptureConsoleOutput>False</CaptureConsoleOutput>
    <WarnOnCaseMismatch>True</WarnOnCaseMismatch>
  </PropertyGroup>
  <ItemGroup>
    <Reference Include="C:\Program Files (x86)\RemObjects Software\Elements\Nougat\SDKs\OS X 10.11\CoreGraphics.fx" />
    <Reference Include="C:\Program Files (x86)\RemObjects Software\Elements\Nougat\SDKs\OS X 10.11\Foundation.fx" />
    <Reference Include="C:\Program Files (x86)\RemObjects Software\Elements\Nougat\SDKs\OS X 10.11\rtl.fx" />
    <Reference Include="C:\Program Files (x86)\RemObjects Software\Elements\Nougat\Reference Libraries\OS X\libNougat.fx" />
  </ItemGroup>
  <ItemGroup>
       <Compile Include="Protocols.swift"/>
        <Compile Include="SequenceFunctions.swift"/>
        <Compile Include="Functions.swift"/>
        <Compile Include="Extensions.swift"/>
        <Compile Include="Dictionary.swift"/>
        <Compile Include="Commandline.swift"/>
        <Compile Include="Array.swift"/>
        <Compile Include="Aliases.swift"/>
        <Compile Include="Range.swift"/>
        <Compile Include="LiteralConvertibles.swift"/>
        <Compile Include="Set.swift"/>
        <Compile Include="String.swift"/>
        <Compile Include="Functions_ObjC.swift"/>  
  </ItemGroup>
  <Import Project="$(MSBuildExtensionsPath)/RemObjects Software/Oxygene/RemObjects.Oxygene.Nougat.targets" />
 
</Project>