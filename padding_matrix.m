matrix=[1 2 3 4 5;
        4 5 6 4 6;
        7 8 9 3 7;
        5 4 3 2 1;
        5 6 7 8 9];
symmetric_padding=padarray(matrix,[2,2],'symmetric');
replicate_padding=padarray(matrix,[2,2],'replicate');
circular_padding=padarray(matrix,[2,2],'circular')
zero_padding=padarray(matrix,[2,2],0);