opcode Noise, kFreq, kNoiseType, kAmp

    if (kNoiseType == 1) then     ;pinknoise ---------------------------------------
	       apink pinker
           aout = apink
    elseif (kNoiseType == 2) then ;Gaussian noise ----------------------------------
	   agauss gauss 1
       aout = agauss
    elseif (kNoiseType == 2) then ;rand Random noise--------------------------------
	       arand rand 1 , 2, 1
           aout = arand
    elseif (kNoiseType == 2) then ; jitter -----------------------------------------
    	kcpsMin = 10000
    	kcpsMax = 20000
    	kjitter jitter 1, kcpsMin, kcpsMax
    	ajitter = a(kjitter)
        aout = ajitter
    elseif (kNoiseType == 2) then ;trianglular -------------------------------------
    	ares oscil 1, 5
    	krange = k(ares)
    	ares trirand kamp
        aout = ares
    endif
    xout aout * kAmp
endop
