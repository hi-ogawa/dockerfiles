# Usage

```
$ docker run --name dwww -d -p 80:80 \
    -v /var/lib/doc-base:/var/lib/doc-base:ro \
    -v /usr/share/doc:/usr/share/doc:ro \
    -v /usr/share/man:/usr/share/man:ro \
    hiogawa/dockerfiles:dwww
```

Then, visit http://localhost/dwww.
