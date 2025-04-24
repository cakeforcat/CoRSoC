function out_data = limit_200(in_data)
    % Assume in_data is already fixed-point (provided by block settings)

    % Create -200 value using math instead of fi() to avoid synthesis issues
    % out_data must be same fixed-point type as in_data

    % Calculate -200 in same scale as in_data (Q10.22 for example):
    % -200 * 2^22 = -838860800

    threshold = -838860800; % raw integer value equivalent of -200 in Q22

    % Cast to same numeric type as in_data without calling fi() directly
    limit_val = numerictype(in_data);
    limit_val = cast(threshold, 'like', in_data);

    if in_data < limit_val
        out_data = limit_val;
    else
        out_data = in_data;
    end
end
