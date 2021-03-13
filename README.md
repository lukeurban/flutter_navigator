# Flutter navigator

Sample project showing modular navigation pattern

## Getting Started

There are three modules in the example: `ModuleA`, `ModuleB`, `ModuleC` (I know great names. Thank you.)
Each module has two example screens. As an example flow is like this:

```
ModuleATmp1                    ModuleBTmp2   -CrossModule*->   ModuleCTmp1
    |                           /\                               |
    \/                           |                              \/
ModuleATmp2  -CrossModule*->   ModuleBTmp1                     ModuleCTmp2

CrossModule* - Here happens cross modula navigation (call me Sherlock)
```
