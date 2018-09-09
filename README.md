# rtsp-streamer
This is a simple RTSP (RFC) streaming demo using gstreamer on the Nvidia TX2 jetson.

# Setup
To install gstreamer install the following packages:
```
sudo apt-get install gstreamer1.0-tools libgstreamer1.0-dev
```
# Building
```
make rtsp-streamer
```
# Testing
To start RTSP streaming using the gstramer lanuch tool these pipelines can be used fro testing:
```
# Most basic video pipeline (non streaming)
gst-launch-1.0 videotestsrc ! video/x-raw,width=640,height=480,framerate=25/1 ! xvimagesink

```
