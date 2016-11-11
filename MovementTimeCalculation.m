function [ mt ] = MovementTimeCalculation(key1, key2 )
%Predicts the time in s to move from key1 to key2 in a 4x8 key grid, based on Fitts Law.
%   Input: key1, int
%           The linear index of the start key
%
%          key2, int
%           The linear index of the target key
%
%   Output: mt, int
%           The time in ms it takes to move from key1 to key2.

%special case: pressing a key twice, fixed MT of 153 ms as suggested in 
%[MacKenzie,1995]
if(key1 == key2)
    mt = 0.153;
    return;
end

% Compute the x,y position of the keys
key1_y = floor((key1-1)/ 4)+1;
key1_x = mod(key1-1, 8)+1;
key2_y = floor((key2-1)/ 4)+1;
key2_x = mod(key2-1, 8)+1;

%Compute the euclidean distance of the keys
D = sqrt( (key1_x-key2_x)^2 + (key1_y-key2_y)^2 );

%Predict MT, target width is set to W=1, a=0, b=1/4.9, as suggested in 
%[MacKenzie, 1995].
mt = 0 + 1/4.9 * log2(D/1 + 1);


end

