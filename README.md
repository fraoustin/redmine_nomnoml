# RedmineViz

## Summary

Add [nomnoml](http://www.nomnoml.com/) in [Redmine](http://www.redmine.org/)  

## Usage

You can add your nomnoml code in wiki or issue by editor

```
    my text with my code
    {{nommol
    Pirate|eyeCount: Int|raid();pillage()|
    [beard]--[parrot]
    [beard]-:>[foul mouth]
    ]

    [<abstract>Marauder]<:--[Pirate]
    [Pirate]- 0..7[mischief]
    [jollyness]->[Pirate]
    [jollyness]->[rum]
    [jollyness]->[singing]
    [Pirate]-> *[rum|tastiness: Int|swig()]
    [Pirate]->[singing]
    [singing]<->[rum]

    [<start>st]->[<state>plunder]
    [plunder]->[<choice>more loot]
    [more loot]->[st]
    [more loot] no ->[<end>e]

    [<actor>Sailor] - [<usecase>shiver me;timbers]
    }}
```

## Installation
```
$ cd redmine/plugins
$ git clone https://github.com/fraoustin/redmine_nomnoml.git
```

restart Redmine
