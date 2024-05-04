function scr_bg_sky() {
	switch global.apariencia
	{
	    case 0:
	        if (global.modo_noche == 0)
	            return bg_SMB_sky;
	        else
	            return bg_SMB_night_1;
	        break
	    case 1:
	        if (global.modo_noche == 0)
	            return bg_SMB3_sky;
	        else
	            return bg_SMB3_sky_night_1;
	        break
	    case 2:
	        if (global.modo_noche == 0)
	            return bg_sky;
	        else
	            return bg_sky_night_1;
	        break
	    case 3:
	        if (global.modo_noche == 0)
	            return bg_NSMBU_sky;
	        else
	            return bg_NSMBU_sky_night;
	        break
	    case 4:
	        if (global.modo_noche == 0)
	            return bg_SMB_sky;
	        else
	            return bg_SMB_night_1;
	        break
	    default:
	        return bg_ground;
	}
}
