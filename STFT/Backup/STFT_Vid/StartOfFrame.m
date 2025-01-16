function FrameStart = StartOfFrame(FFT_TLAST, FFT_TVALID, FFT_END)

persistent state, state = xl_state(0,{xlUnsigned, 3, 0});
FFT_TLAST = xfix({xlUnsigned, 1, 0}, FFT_TLAST);
FFT_TVALID = xfix({xlUnsigned, 1, 0}, FFT_TVALID);
FFT_END = xfix({xlUnsigned, 1, 0}, FFT_END);

switch state
    case 0
        if FFT_TVALID == 1 && FFT_TLAST == 0 && FFT_END == 0
            state = 1;
            FrameStart = xfix({xlUnsigned, 1, 0}, 1);
        else
            state = 0;
            FrameStart = xfix({xlUnsigned, 1, 0}, 0);
        end
    case 1
        if FFT_TVALID == 1 && FFT_TLAST == 1 && FFT_END == 0
            state = 2;
            FrameStart = xfix({xlUnsigned, 1, 0}, 0);
        elseif FFT_TVALID == 1 && FFT_TLAST == 1 && FFT_END == 1
            state = 3;
            FrameStart = xfix({xlUnsigned, 1, 0}, 0);
        else
            state = 1;
            FrameStart = xfix({xlUnsigned, 1, 0}, 0);
        end
    case 2
        if FFT_TVALID == 1 && FFT_TLAST == 0 && FFT_END == 0
            state = 1;
            FrameStart = xfix({xlUnsigned, 1, 0}, 0);
        else
            state = 2;
            FrameStart = xfix({xlUnsigned, 1, 0}, 0);
        end
    case 3
        if FFT_TVALID == 1 && FFT_TLAST == 0 && FFT_END == 0
            state = 1;
            FrameStart = xfix({xlUnsigned, 1, 0}, 1);
        else
            state = 3;
            FrameStart = xfix({xlUnsigned, 1, 0}, 1);
        end
    otherwise
        FrameStart = xfix({xlUnsigned, 1, 0}, 0);
end