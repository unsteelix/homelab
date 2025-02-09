# Homelab

Configs and basic usage tips for personal Homelab.

## Purpose

Move out from major IT tech giants like Apple, Google, MS and etc., and selfhost all needed services by myself and store all my data locally.  
Use much better analog of Apple photos - Immich, Notion - Obsidian, Google Drive/iCloud Drive - Filebrowser/Samba and etc... 

## Folder structure

```
Flash
└── docker
    ├── samba
    │   ├── docker-compose.yml
    │   ├── config/
    │   └── .env
    ├── jellyfin
    │   ├── docker-compose.yml
    │   ├── config/
    │   └── .env
    ├── filebrowser
    │   ├── docker-compose.yml
    │   └── config/
    └── prowlarr
        ├── docker-compose.yml
        └── config/
SSD
├── downloads
│   ├── incomplete
│   └── complete
├── media
│   ├── movies
│   ├── tvs
│   ├── photos
│   └── books
├── obsidian
│   └── vault
│       ├── page1.md
│       └── page2.md
├── software
└── miscellaneous         
```

**Flash** - small system nand flash using for storing OS (Ubuntu Server) and docker files. Each service should have own folder consist docker-compose.yml file, config folder for service configuration and the files necessary for the container work, also an optional .env file with environment variables.  

**SSD** - huge exernal drive for storing persistant data (Movies, photos, docs, etc...). All volumes must be attached to the persistant storage - NOT to the container's config folder or docker folder.

## Best practice

Do not store persistant media in specific *arr folders. All media should be in one place, divided by type (/movies, /tvs, etc...). All *arr services should use one source of media and do not has multiple copies of each media in spicific *arr folder.
For example - do not store _transformer2007.mkv_ at PLEX, Radarr, qBittorrent, Prowlarr, Jellifin folders. _transformer2007.mkv_ should be only at one place (ex: /media/movies) and all services should import that folder.

Do not import root folder to docker volumes - it may be affect to perfomance. For example - use "/SSD/media/movies" instead of "/SSD" - if you need only that specific folder.


## Usage

```bash
git clone ...
```
Go to each folder and use:
```bash
docker-compose up -d 
```
And don't forget add necessary **.env** file to specific folder.

For adding all **docker-compose.yml** files to commit use:
```bash
./gitadd.sh
```

## Inspiration and useful links

- [trash-guides](https://trash-guides.info)
- [alternateoss](https://alternateoss.com/)
- [selfh.st](https://selfh.st/apps/)
- [r/selfhosted](https://www.reddit.com/r/selfhosted/)
- [r/homelab](https://www.reddit.com/r/homelab/)

## License

[MIT](https://choosealicense.com/licenses/mit/)