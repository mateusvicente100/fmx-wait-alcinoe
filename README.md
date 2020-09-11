# fmx-wait
![Delphi Supported Versions](https://img.shields.io/badge/Delphi%20Supported%20Version-10.3%20Rio-blue.svg)
![Platforms](https://img.shields.io/badge/Supported%20platforms-Windows,%20Android%20and%20IOS-red.svg)

Simple customized wait for firemonkey.

## Prerequisites
 * `[Alcinoe]` For this project I used Alcinoe controls. You can dowload and install the component [**here**](https://github.com/Zeus64/alcinoe). You can use native controls like TRectangle, TLayout. I prefer Alcinoe because the visual look better than Delphi components, and is more fast too. Take a time to read about Alcinoe lib.

 * `[Optional]` For ease I recommend using the [**Boss**](https://github.com/HashLoad/boss) (Dependency Manager for Delphi) for installation.
 
 ## Boss Installation
```
boss install github.com/mateusvicente100/fmx-wait
```

## Manual Installation
If you choose to install manually, simply add the following folders to your project, in *Project > Options > Resource Compiler > Directories and Conditionals > Include file search path*
```
../fmx-wait/src
```

## Getting Started
All features offered by this project are located in the unit FMX.Wait. To get your project started, simply add your reference where your functionality is needed. Here's an example:
```pascal
uses FMX.Wait;
```

To create a new wait you must use the class "TWait". You can do a loading in all screen or in a specific control:
```pascal
begin
  // Show loading frame in all screen.
  TWait.Start(
    procedure
    begin
      // Do your process.
    end);

  // Show loading frame in specific component.
  TWait.Start(LMyComponent,
    procedure
    begin
      // Do your process.
    end);

  // Not show loading frame.
  TWait.Run(
    procedure
    begin
      // Do your process.
    end);        

  // Use syncronize for visual changes.
  TWait.Synchronize    
    procedure
    begin
      // Do your process.
    end);        
end;
``` 

The wait class works with an interface, so you don't need to destruct it.

## Samples
Check out our sample project for each situation presented above in operation. If you have any questions or suggestion, please contact, make your pull request or create an issue.

`fmx-wait` is free and open-source software licensed under the [MIT License](https://github.com/mateusvicente100/fmx-wait/blob/master/LICENSE).