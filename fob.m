%%
% Wesley Peres em 21/03/2023
% wesleyperes.br@gmail.com
% Youtube: @prof.wesleyperesbr
%%
function CO = fob(x)
Pg1 = x(1);     Pg2 = x(2);     Pg3 = x(3);

CO = 10*Pg1 + 17*Pg2 + 28*Pg3;

% Fmincon é para minimização. Se fosse maximizar, deve-se colocar uma sinal
% negativo. 

end