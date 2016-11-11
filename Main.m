keyboard='abcdefghijklmnopqrstuvwxyzAO____';
bestValue=AverageWPMCalculation(keyboard);

a=1
while a==1
    for i=1:32
        character=keyboard(i)
        for j=1:32
            if i>1 && i<32
                tryKey=strcat(keyboard(1:i-1),keyboard(i+1:32));
                if j == 1
                    tryKey=strcat(character,tryKey);

                elseif j>1 && j<32
                    tryKey=strcat(tryKey(1:j),character,tryKey(j+1:31));

                elseif j==32
                    tryKey=strcat(tryKey,character);   
                end

            elseif i==1
                tryKey=strcat(keyboard(2:32));
                if j == 1
                    tryKey=strcat(character,tryKey);

                elseif j>1 && j<32
                    tryKey=strcat(tryKey(1:j),character,tryKey(j+1:31));

                elseif j==32
                    tryKey=strcat(tryKey,character);   
                end


            elseif i==32
                tryKey=strcat(keyboard(1:31));
                if j == 1
                    tryKey=strcat(character,tryKey);

                elseif j>1 && j<32
                    tryKey=strcat(tryKey(1:j),character,tryKey(j+1:31));

                elseif j==32
                    tryKey=strcat(tryKey,character);   
                end

            end
            currentWPM = AverageWPMCalculation(tryKey);
            disp(tryKey)
            disp(currentWPM)
            disp(bestValue)
           
            if  currentWPM > bestValue
                bestValue= currentWPM
                bestKey=tryKey
            end
        end
    end

    if keyboard == bestKey
        a=2;
    else
       keyboard=bestKey
    end
 end
    
       

