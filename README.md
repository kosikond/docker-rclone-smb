# This repo is very very WIP! Consider yourself warned.

## Rclone remotes shared via Samba in Docker

Ever wanted to share your Rclone remotes over SMB? As `rclone mount` exposes simple mountoint only via FUSE, it's hard to get access to files from MacOS or Windows. Why not mount it via one s6-overlay service and expose via `smbd` then? What could _go wrong_?


# TODO:

- [x] Github Actions with 
- [ ] implement [https://github.com/Mumie-hub/docker-services/tree/master/rclone-mount](Mumie-hub's rclone-mount) service and update it to s6-overlay v3
- [X] Multi-arch support for x86-64 and ARM64
- [ ] Add WSDD (Web Services Discovery Daemon)
- [ ] Test with Podman
- [ ] Publish to Docker Hub


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