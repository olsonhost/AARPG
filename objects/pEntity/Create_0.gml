/// @desc Essential Entity Setup
collisionMap = layer_tilemap_get_id(layer_get_id("Col"))
// This is also in Room Start but it's bitching about it not being in the create event?

z = 0;
fflash = 0;
uFlash = shader_get_uniform(shWhiteFlash, "fflash");
