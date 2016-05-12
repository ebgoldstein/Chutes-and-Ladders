%Chutes and Ladders
%written by EBG 12/3/2014

%The MIT License (MIT)
%Copyright (c) 2016 Evan B. Goldstein

clear all
close all
clc

%number of games to generate statistics
GMAX=10000;
G=zeros(1,GMAX);


%Play the games
for i=1:GMAX
    
    %erase counters
    S=0;
    C=0;
    
    %Play a game
    while S<100

        %spin the wheel
        Spin=randi(6,1);
        
        %get new position if it is not greater than 100
        if Spin+S>100
            %do nothing
        else
            %new
            S=S+Spin;
        end
        
        
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        %Ladders
        
        if S==1
            S=38;
        end
        
        if S==4
            S=14;
        end
        
        if S==9
            S=31;
        end
        
        if S==21
            S=42;
        end
        
        if S==28
            S=84;
        end
        
        if S==36
            S=44;
        end
        
        if S==51
            S=67;
        end
        
        if S==71
            S=91;
        end
        
        if S==80
            S=100;
        end
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        %Chutes
        if S==98
            S=78;
        end
        
        if S==95
            S=75;
        end
        
        if S==93
            S=73;
        end
        
        if S==87
            S=24;
        end
        
        if S==64
            S=60;
        end
        
        if S==62
            S=19;
        end
        
        if S==56
            S=53;
        end
        
        if S==49
            S=11;
        end
        
        if S==48
            S=26;
        end
        
        if S==16
            S=6;
        end
        
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        
        %advance the counter
        C=C+1;
    end
    
    %record how many turns it took for game to finish.
    G(i)=C;
    
end


%plot the histogram of game length
hist(G,20)
ylabel('count')
xlabel('# of Turns until Chutes and Ladders is over')
