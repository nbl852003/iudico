﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;
using System.Diagnostics;
using System.Runtime.InteropServices;
namespace TestingSystem.Compile
{
    /// <summary>
    /// Compiler class that is used to create *.exe file from provided source.
    /// </summary>
    public class Compiler
    {
        /// <summary>
        /// Represents the name of compilator.
        /// </summary>
        private Language name;

        /// <summary>
        /// Represents the location of compilator in file system.
        /// </summary>
        private string location;

        /// <summary>
        /// Represents the arguments of compilator to be run with.
        /// </summary>
        private string arguments;

        /// <summary>
        /// Represents the extension of source file.
        /// </summary>
        private string extension;

        /// <summary>
        /// Represents the "$CompilerDirectory$" constant string.
        /// </summary>
        /// 
        /// <remarks>
        /// This string is used in compilator arguments ant must be replaced with actual value.
        /// </remarks>
        public const string CompilerDirectory = "$CompilerDirectory$";

        /// <summary>
        /// Represents the "$SourceFilePath$" constant string.
        /// </summary>
        /// 
        /// <remarks>
        /// This string is used in compilator arguments ant must be replaced with actual value.
        /// </remarks>
        public const string SourceFilePath = "$SourceFilePath$";

        /// <summary>
        /// Gets the name of compilator.
        /// </summary>
        /// 
        /// <value>
        /// The name of compilator.
        /// </value>
        public Language Name
        {
            get
            {
                return name;
            }
        }

        /// <summary>
        /// Gets the location of compilator in file system.
        /// </summary>
        /// 
        /// <value>
        /// The name location of compilator in file system.
        /// </value>
        public string Location
        {
            get
            {
                return location;
            }
        }

        /// <summary>
        /// Gets the extension of source file.
        /// </summary>
        /// 
        /// <value>
        /// The extension of source file.
        /// </value>
        public string Extension
        {
            get
            {
                return extension;
            }
        }

        /// <summary>
        /// Gets the arguments of compilator to be run with.
        /// </summary>
        /// 
        /// <value>
        /// The arguments of compilator to be run with.
        /// </value>
        public string Arguments
        {
            get
            {
                return arguments;
            }
        }

        /// <summary>
        /// Compiles provided source file into *.exe
        /// </summary>
        /// 
        /// <param name="sourceFilePath">
        /// Path of source to compile.
        /// </param>
        /// 
        /// <returns>
        /// <see cref="CompileResult"/> class that represents the compilation result.
        /// </returns>
        /// 
        /// <exception cref="ArgumentNullException">
        /// If <paramref name="sourceFilePath"/> is null.
        /// </exception>
        /// <exception cref="FileNotFoundException">
        /// If <paramref name="sourceFilePath"/> is incorrect.
        /// </exception>
        public CompileResult Compile(string sourceFilePath)
        {
            bool compilingJava = Name == Language.Java6;
            ProjectHelper.ValidateFileExists(sourceFilePath, "sourceFilePath");
            sourceFilePath = Path.GetFullPath(sourceFilePath);

            try
            {
                using (Process process = new Process())
                {
                    //get shot pathes for compilers (some of them dont' work with long names)
                    string shortLocation = ToShortPathName(Path.GetDirectoryName(location));
                    string shortSourceFilePath = compilingJava ? sourceFilePath : ToShortPathName(sourceFilePath);

                    //set compilation arguments
                    process.StartInfo.FileName = location;
                    process.StartInfo.Arguments = arguments.
                        Replace(Compiler.CompilerDirectory, shortLocation).
                        Replace(Compiler.SourceFilePath, shortSourceFilePath);

                    process.StartInfo.WorkingDirectory = Path.GetDirectoryName(sourceFilePath);

                    //set up process info nad start
                    process.StartInfo.RedirectStandardOutput = true;
                    process.StartInfo.RedirectStandardError = true;
                    process.StartInfo.UseShellExecute = false;
                    process.StartInfo.CreateNoWindow = true;
                    process.Start();

                    //get output and error info
                    string standardOutput = process.StandardOutput.ReadToEnd();
                    string standardError = process.StandardError.ReadToEnd();
                    process.WaitForExit();

                    bool compiled = compilingJava ?
                        File.Exists(Path.ChangeExtension(sourceFilePath, "class"))
                             :
                        File.Exists(Path.ChangeExtension(sourceFilePath, "exe"));


                    //create and return the result of compilation
                    CompileResult result = new CompileResult(compiled, standardOutput, standardError);
                    return result;
                }
            }
            catch (Exception e)
            {
                throw new CompileException("Error occurred during compilation", e);
            }
        }

        /// <summary>
        /// Creates a new instance of <see cref="Compiler"/> class.
        /// </summary>
        /// 
        /// <param name="name">
        /// Name of compiler.
        /// </param>
        /// <param name="location">
        /// Location of compiler in file system.
        /// </param>
        /// <param name="arguments">
        /// Arguments of compilator to be run with.
        /// </param>
        /// <param name="extension">
        /// Extension of source file.
        /// </param>
        /// 
        /// <exception cref="ArgumentNullException">
        /// If any argument is null.
        /// </exception>
        /// <exception cref="FileNotFoundException">
        /// If <paramref name="location"/> is incorrect.
        /// </exception>
        public Compiler(Language name, string location, string arguments, string extension)
        {
            ProjectHelper.ValidateNotNull(name, "name");
            ProjectHelper.ValidateFileExists(location, "location");
            ProjectHelper.ValidateNotNull(arguments, "arguments");
            ProjectHelper.ValidateNotNull(extension, "extension");

            this.name = name;
            this.location = Path.GetFullPath(location);
            this.arguments = arguments;
            this.extension = extension;
        }

        /// <summary>
        /// Retrieves the short path form of the specified path.
        /// </summary>
        /// 
        /// <param name="lpszLongPath">
        /// The path string.
        /// </param>
        /// <param name="lpszShortPath">
        /// A pointer to a buffer to receive the null-terminated short form of the path that lpszLongPath specifies.
        /// </param>
        /// <param name="cchBuffer">
        /// The size of the buffer that lpszShortPath points to, in TCHARs.
        /// </param>
        /// 
        /// <returns>
        /// If the function succeeds, the return value is the length, in TCHARs, of the string that is copied to
        /// lpszShortPath, not including the terminating null character.
        /// If the lpszShortPath buffer is too small to contain the path, the return value is the size of the
        /// buffer, in TCHARs, that is required to hold the path and the terminating null character. 
        /// </returns>
        [DllImport("kernel32.dll", CharSet = CharSet.Unicode, SetLastError = true)]
        static extern uint GetShortPathName(
            [MarshalAs(UnmanagedType.LPTStr)] string lpszLongPath,
            [MarshalAs(UnmanagedType.LPTStr)] StringBuilder lpszShortPath,
            uint cchBuffer);

        /// <summary>
        /// Wraps GetShortPathName API function
        /// </summary>
        /// <param name="longName">
        /// The long path string.
        /// </param>
        /// 
        /// <returns>
        /// The short path string.
        /// </returns>
        public static string ToShortPathName(string longName)
        {
            StringBuilder shortNameBuffer = new StringBuilder(256);
            uint bufferSize = (uint)shortNameBuffer.Capacity;
            uint result = GetShortPathName(longName, shortNameBuffer, bufferSize);

            return shortNameBuffer.ToString();
        }

        public static Compiler VS6CPlusPlusCompiler
        {
            get
            {
                return new Compiler(Language.Vs6CPlusPlus, @"..\..\test_files\Compilers\VC6\CL.EXE",
                "/I\"$CompilerDirectory$\" $SourceFilePath$ /link /LIBPATH:\"$CompilerDirectory$\"", "cpp");
            }
        }

        public static Compiler VS8CPlusPlusCompiler
        {
            get
            {
                return new Compiler(Language.Vs8CPlusPlus, @"..\..\test_files\Compilers\VC8\CL.EXE",
                "/I\"$CompilerDirectory$\" $SourceFilePath$ /link /LIBPATH:\"$CompilerDirectory$\"", "cpp");
            }
        }

        public static Compiler DotNet2Compiler
        {
            get
            {
                return new Compiler(Language.DotNet2, @"..\..\test_files\Compilers\dotNET3\csc.exe", @"/t:exe $SourceFilePath$", "cs");
            }
        }

        public static Compiler DotNet3Compiler
        {
            get
            {
                string reference = "/reference:";
                List<string> referenceList = new List<string>() { "System.Core.dll", "System.Xml.Linq.dll", 
                 "System.WorkflowServices.dll", "System.Net.dll","System.Data.Linq.dll","System.Data.Entity.dll","System.AddIn.dll" };
                string allReferences = "";
                foreach (string systemReference in referenceList)
                {
                    allReferences += reference + systemReference + " ";
                }

                return new Compiler(Language.DotNet3, @"..\..\test_files\Compilers\dotNET3\csc.exe", @"/t:exe " + allReferences + "$SourceFilePath$", "cs");
            }
        }

        public static Compiler JavaCompiler
        {
            get
            {
                return new Compiler(Language.Java6, @"..\..\test_files\Compilers\Java6\bin\javac.exe", "$SourceFilePath$", "java");
            }
        }

        public static Compiler Delphi7Compiler
        {
            get
            {
                return new Compiler(Language.Delphi7, @"..\..\test_files\Compilers\Delphi7\Dcc32.exe", "-U\"$CompilerDirectory$\" $SourceFilePath$", "pas");
            }
        }
    }


}
