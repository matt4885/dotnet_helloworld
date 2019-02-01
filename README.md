# dotnet_helloworld
This is a test project used to demonstrate using the dotnet CLI

```
mkdir App.HelloWorld && cd App.HelloWorld
dotnet new console
dotnet new sln

```

This generates a solution for your .NET Core app. Let's clean up the directory strcuture a bit (as if we were going to have multiple projects):

```
mkdir App.HelloWorld
mv App.HelloWorld.csproj Program.cs App.HelloWorld/
dotnet sln App.HelloWorld.sln add App.HelloWorld/App.HelloWorld.csproj
```

Okay, now that we have organized a project under our solution into it's own folder, let's try publishing the application for release.
```
dotnet publish -c Release -o out
```

This build our application in Release mode into a folder called "out". The executable project is the one that will contain all of the .dlls/.pdbs, etc. for release. Finally, let's run our application.
```
dotnet App.HelloWorld/out/App.HelloWorld.dll
```

We should see the following:
```
Hello World!
```


