function inverseCantorPairing(z)
	w = floor((sqrt(8*z+1)-1)/2);
	t = w*(w+1)/2;
	y = z - t;
	x = w - y;
	return Int64[x ,y];
end

