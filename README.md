# Redmine Nomnoml

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

I had an issue with Redmine 6.0: the redmine/public folder was empty. I manually created the missing directories.

```
$ cd redmine/public/plugin_assets
$ mkdir redmine_nomnoml
$ cd redmine_nomnoml
$ ln -s ln -s ../../../plugins/redmine_nomnoml/assets/javascripts javascripts
$ ln -s ln -s ../../../plugins/redmine_nomnoml/assets/stylesheets stylesheets
```
