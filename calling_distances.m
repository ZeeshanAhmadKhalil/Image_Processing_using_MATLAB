matrix=[1 1 1 1 1;
        0 1 1 0 1;
        0 1 1 0 0;
        0 1 0 1 0];
a=Eculedian_distance(matrix,[2,2],[1,2]);
b=cityblock_distance(matrix,[2,2],[1,1]);
c=cityblock_distance(matrix,[2,2],[1,2]);
