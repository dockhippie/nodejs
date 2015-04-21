# NodeJS

These are docker images for NodeJS running on an
[Alpine Linux container](https://registry.hub.docker.com/u/webhippie/alpine/).
The cuurrent container size is ```162.7 MB```


## Usage

```
docker run -ti --name nodejs webhippie/nodejs:latest bash

# Execute this for further available commands
docker exec -ti nodejs manage help
```


## Versions

* [latest](https://github.com/dockhippie/nodejs/tree/master)
  available as ```webhippie/nodejs:latest``` at
  [Docker Hub](https://registry.hub.docker.com/u/webhippie/nodejs/)


## Available management commands

```bash
Usage: manage <command> [<args>]

Some useful manage commands are:
   bash      Start a shell on container
   commands  List all available sub commands
   console   Start an interactive console
```


## Contributing

Fork -> Patch -> Push -> Pull Request


## Authors

* [Thomas Boerger](https://github.com/tboerger)


## License

MIT


## Copyright

Copyright (c) 2015 Thomas Boerger <http://www.webhippie.de>
