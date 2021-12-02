# Simple Youtube tools

I watch quite a bit of youtube since covid hit and my data squirrel brain has kicked in to collect the videos I watch. This is how it goes. First I create a directory for the youtube content creator such as `classic_films`

```bash
$ mkdir -p classic_films/videos
$ tree classic_films
classic_films/
└── videos/
```

I then enter the directory and get the list of all the videos on the channel

```bash
$ cd classic_films
$ ytlist https://www.youtube.com/channel/UCTNh4uUABhjOPGnl8d0cnbg/videos > classic_films.txt
```

This lists all the available videos into a file called `classic_films.txt` and I can then download them

```bash
$ ytget
```

This will download each video in turn and add write it in the `classic_films` directory and list it in a file called `downloaded.txt`. This way I can periodically update the list with `ytlist` and when I rerun `ytget` it will only get the new videos

The next step is to get the metadata. For this I run `ytmeta` and it will write the important information in `metadata.csv`

Now I can watch the videos in publication order with `ytnext` which will show me, via `mpv`, the next video and then copy it into the `videos` directory

