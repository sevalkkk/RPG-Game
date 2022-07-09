/// @desc set up camera

cam =view_camera[0];
follow = oPlayer;
viewWidthHalf = camera_get_view_width(cam) * 0.5;
viewHeightHalf = camera_get_view_height(cam) * 0.5;
xTo = xstart;
yTo= ystart;

shakeLength =0; // shake is going to last
shakeMagnitude=0; // how strong screen shake is
shakeRemain=0; //how much of this particular screen shake is left to go



