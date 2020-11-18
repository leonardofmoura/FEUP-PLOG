%participant(Id,Age,Performance)
participant(1234, 17, 'Pé coxinho').
participant(3423, 21, 'Programar com os pés').
participant(3788, 20, 'Sing a Bit').
participant(4865, 22, 'Pontes de esparguete').
participant(8937, 19, 'Pontes de pen-drives').
participant(2564, 20, 'Moodle hack').


%performance(Id,Times)
performance(1234,[120,120,120,120]).
performance(3423,[32,120,45,120]).
performance(3788,[110,2,6,43]).
performance(4865,[120,120,110,120]).
performance(8937,[97,101,105,110]).

made_times([]) :- fail.

made_times([H|_]) :- H = 120. 

% made_times(+Times) - true if one of the members of the list is 120
made_times([_|T]) :- made_times(T).

% madeItThrough(+Participant)
madeItThrough(P) :-
    performance(P,Times),
    made_times(Times).