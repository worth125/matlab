diary ON; 

c = clock();
fprintf('%2.0f, ',c);
fprintf('\n');
name = input('What is your name?', 's');
spark = input('Are all spark plugs OK? (Y/N)', 's');
if spark == 'Y'
    fluid = input('Are all fluid levels OK? (Y/N)','s');
    if fluid == 'Y'
        miles = input('Vehicle miles > 200,000? (Y/N)','s');
        if miles == 'Y'
            disp('You should probably sell this car for scrap');
        elseif miles == 'N'
            disp('Send vehicle to factory for an expensive repair');
        else
            disp('That is not a valid response, start over');
        end
    elseif fluid == 'N'
        disp('Refill engine fluids');
    else
        disp('That is not a valid response, start over');
    end
elseif spark == 'N'
    disp('Replace the spark plugs');
else 
    disp('That is not a valid response, start over');
end
diary OFF;