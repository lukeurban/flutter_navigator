# Flutter navigator

Sample project showing modular navigation pattern

## Getting Started

There are three modules in the example: `Main`, `TestOne`, `TestTwo` (I know great names. Thank you.)
Each module has two example screens. As an example flow is like this:
```
MainTmp1                    TestOneTmp2   -CrossModule*->   TestTwoTmp1
    |                           /\                               |
    \/                           |                              \/
MainTmp2  -CrossModule*->   TestOneTmp1                     TestTwoTmp2

CrossModule* - Here happens cross modula navigation (call me Sherlock)
```
