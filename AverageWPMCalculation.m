function [wpm] = AverageWPMCalculation( keyboard )
%Computes the average input speed in words per minute for a given keyboard
%layout of a 4x8 grid.
%   Input: keyboard, string
%           The keyboard layout as a single string. 
%           Keyboard as 4x8 grid the
%           Space key is not included
% 
%   Output: wpm, double
%           average words per minute calculation using Fitt's Law

load('bigram_frequencies.mat');

alphabet=bigram_frequencies.Properties.VariableNames;

avg_mt=0;
for i=1:height(bigram_frequencies)
    for j=1:height(bigram_frequencies)

            key1 = strfind(keyboard, alphabet{i});
            key2 = strfind(keyboard, alphabet{j});
            mt = MovementTimeCalculation(key1, key2); % movement time calculation between 2 keys
        
            %average movement time calculation
            %by adding up the movement times weighted by the corresponding
            %bigram frequencies
            avg_mt = avg_mt + bigram_frequencies{i,j} * mt;                        
    end
end
wpm = 60/(5*avg_mt); % it is assumed that a word consists of 5 characters
end



