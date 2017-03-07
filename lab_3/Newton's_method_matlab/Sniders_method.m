x = 53;
yn = .1375;

test =(yn*(3-(x*yn^2)))/2
for i = 0:5
    yn1 = (yn*(3-(x*yn^2)))/2
    yn = yn1;
    
end 


invsq = 1/(sqrt(53))