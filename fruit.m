%Test 2, Program 1
%Carter Hickel's Code


function primes = fruit(N)
    % This function prints for values from 1 to N:
    % "apple" if the value is divisible by 2
    % "banana" if the value is divisible by 5
    % The number itself if neither is true
    % "applebanana" if both are true

    %I do not know why primes is needed so I chose to make primes a
    %repository of all values which do not return 'apple',  'banana', or
    %'applebanana'
    
    primes = []; 


 for i = 1:N
        if rem(i, 2) ~= 0 && rem(i, 5) ~= 0 %not divisible by 2 or 5 
            fprintf('%d\n', i);  %if neither, print input number
            primes = [primes, i]; %add to 'primes' if neither divisible by 2 or 5 
        else
            %if divisible by 2 or 5, print the corrisponding word(s)
            if rem(i, 2) == 0 && rem(i, 5) == 0 %divisible by both 2 and 5
                fprintf('applebanana\n');

            elseif rem(i, 2) == 0 %divixible by 2
                fprintf('apple\n');

            elseif rem(i, 5) == 0 %divisible  by 5
                fprintf('banana\n');


            end
        end

 end


end
