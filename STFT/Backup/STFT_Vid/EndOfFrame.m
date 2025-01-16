function FrameEnd = EndOfFrame(FFT_TVALID, FFT_TLAST)

persistent state, state = xl_state(0,{xlUnsigned, 2, 0});
FFT_TLAST = xfix({xlUnsigned, 1, 0}, FFT_TLAST);
FFT_TVALID = xfix({xlUnsigned, 1, 0}, FFT_TVALID);

switch state
    case 0
        if FFT_TVALID == 1 && FFT_TLAST == 0
            state = 1;
            FrameEnd = xfix({xlUnsigned, 1, 0}, 0);
        else
            state = 0;
            FrameEnd = xfix({xlUnsigned, 1, 0}, 0);
        end
    case 1
        if FFT_TVALID == 1 && FFT_TLAST == 1
            state = 2;
            FrameEnd = xfix({xlUnsigned, 1, 0}, 1);
        else
            state = 1;
            FrameEnd = xfix({xlUnsigned, 1, 0}, 0);
        end
    case 2
        if FFT_TVALID == 1 && FFT_TLAST == 0 
            state = 1;
            FrameEnd = xfix({xlUnsigned, 1, 0}, 0);
        else
            state = 2;
            FrameEnd = xfix({xlUnsigned, 1, 0}, 1);
        end
    otherwise
        FrameEnd = xfix({xlUnsigned, 1, 0}, 0);
end