//Camera setup
cam = view_camera[0];

//Determine which object the player is
if (oChad) follow = oChad;
if (oSecretChad) follow = oSecretChad;

view_w_half = camera_get_view_width(cam) * 0.5;
view_h_half = camera_get_view_height(cam) * 0.5;
xTo = xstart;
yTo = ystart;