function scr_bg_forest() {
	switch global.apariencia
	{
	    case 0:
	        if (global.modo_noche == 0)
	            return bg_SMB_forest;
	        else
	            return bg_SMB_night_1;
	        break
	    case 1:
	        if (global.modo_noche == 0)
	            return bg_SMB3_forest;
	        else
	            return bg_SMB3_night_1;
	        break
	    case 2:
	        if (global.modo_noche == 0)
	            return bg_forest;
	        else
	            return bg_night_1;
	        break
	    case 3:
	        if (global.modo_noche == 0)
	            return bg_NSMBU_forest;
	        else
	            return bg_NSMBU_night;
	        break
	    case 4:
	        if (global.modo_noche == 0)
	            return bg_SMB_forest;
	        else
	            return bg_SMB_night_1;
	        break
	    default:
	        return bg_ground;
	}
}
