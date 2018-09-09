# rtsp-streamer
This is a simple RTSP (RFC) streaming demo using gstreamer on the Nvidia TX2 jetson.

# Setup
To install gstreamer install the following packages (quick setup some packages may not be required):
```
sudo apt-get install gstreamer1.0-tools libgstreamer1.0-dev libgstrtspserver-1.0 libgstrtspserver-1.0-dev libglib2.0-dev vlc
```
# Building
```
make rtsp-streamer
```
# Testing
To start RTSP streaming using the gstramer lanuch tool these pipelines can be used for testing
## gstreamer
```
# Most basic video pipeline (non streaming)
gst-launch-1.0 videotestsrc ! video/x-raw,width=640,height=480,framerate=25/1 ! xvimagesink

```
## VLC
When starting the server now and directing an RTP client to the URL (like with vlc, mplayer or gstreamer):
```
rtsp://localhost:8554/test
```
