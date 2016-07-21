#!/bin/sh

curl -XPUT 'http://fedora:9200/modularity/module/base-module-1.0-1' -d '
{
    "name": "base-module",
    "version": "1.0",
    "release": "1",
    "summary": "The base module",
    "dependencies": [],
    "build-state": "wait"
}
'

curl -XPUT 'http://fedora:9200/modularity/module/hello-world-1.0-1' -d '
{
    "name": "hello-world",
    "version": "1.0",
    "release": "1",
    "summary": "Some kind of random madness",
    "dependencies": [
        "base-module-1.0-1"
    ],
    "build-state": "wait"
}
'
curl -XPUT 'http://fedora:9200/modularity/module/hello-world-2.5-1' -d '
{
    "name": "hello-world",
    "version": "2.5",
    "release": "1",
    "summary": "Some kind of random madness",
    "dependencies": [
        "base-module-1.0-1"
    ],
    "build-state": "wait"
}
'

curl -XPUT 'http://fedora:9200/modularity/module/hello-world-2.4-1' -d '
{
    "name": "hello-world",
    "version": "2.4",
    "release": "1",
    "summary": "Some kind of random madness",
    "dependencies": [
        "base-module-1.0-1"
    ],
    "build-state": "wait"
}
'

curl -XPUT 'http://fedora:9200/modularity/module/cheese-pizza-1.0-1' -d '
{
    "name": "cheese-pizza",
    "version": "1.0",
    "release": "1",
    "summary": "A cheese pizza packaged as a module!",
    "dependencies": [
        "base-module-1.0-1"
    ],
    "build-state": "wait"
}
'

curl -XPUT 'http://fedora:9200/modularity/module/cheese-pizza-2.0-1' -d '
{
    "name": "cheese-pizza",
    "version": "2.0",
    "release": "1",
    "summary": "A cheese pizza packaged as a module!",
    "dependencies": [
        "base-module-1.0-1"
    ],
    "build-state": "wait"
}
'

curl -XPUT 'http://fedora:9200/modularity/module/cheese-pizza-2.0-2' -d '
{
    "name": "cheese-pizza",
    "version": "2.0",
    "release": "2",
    "summary": "A cheese pizza packaged as a module!",
    "dependencies": [
        "base-module-1.0-1"
    ],
    "build-state": "wait"
}
'

