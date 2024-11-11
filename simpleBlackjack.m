%Test 2, Program 2
%Carter Hickel's Code

%this code simulates a bare bones version of the popular game blackjack. A
%player (user) calls upon the function and inputs a chosen score limit 
%up to which the player will always hitas well as a desired number of 
%trials. There are 12 cards available, excluding the ace cards (presumably
%because aces can be worth either 1 or 11 points and that would be hard 
% for us to simulate at this point). The function returns the average 
%final score of all trials. 

%inputs :
%limit  -- player hits if their hand's score is less than this limit
%trials -- number of times to run the simulation

%output:
%avgScore -- The average end score of all hands


function avgScore = simpleBlackjack(limit, trials)
    %card values: J, Q, K are all equal to 10, there is no ace in this simulation
    cards = [2 3 4 5 6 7 8 9 10 10 10 10];
    %total sum of all triaals
    sum = 0;

    %loop over the number of trials
    for t = 1:trials
        %start w score of 0
        handScore = 0;

        %keep drawing cards while score is less than  limit
        while handScore < limit
            %random select a card between 1 and 12
            cardVal = cards(randi(12));
            %add the card value to the hand score
            handScore = handScore + cardVal;

        end

        % sum of all trials
        sum = sum + handScore;
    end

    %calculate average score over all trials
    avgScore = sum / trials;



end
