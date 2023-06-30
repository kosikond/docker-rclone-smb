# This repo is very very WIP! Consider yourself warned.

## Rclone remotes shared via Samba in Docker

Ever wanted to share your Rclone remotes over SMB? As `rclone mount` exposes simple mountoint only via FUSE, it's hard to get access to files from MacOS or Windows. Why not mount it via one s6-overlay service and expose via `smbd` then? What could _go wrong_?

TODO and Ideas:

- [x] setup initial Github Actions 
- [ ] s6-overlay structure for v3
- [ ] implement Mumie-hub/docker-services/rclone-mount service
- [ ] Proper multi-arch support for x86-64 and ARM64
- [ ] investigate if WSDD (WebServices Discovery Daemon) has any benefit
- [ ] It's 2023, test it with Podman.
- [ ] publish to Docker Hub


# MIT License

Copyright (c) 2023 Ondra Kosik

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.