
%%
% Wesley Peres em 21/03/2023
% wesleyperes.br@gmail.com
% Youtube: @prof.wesleyperesbr
%% Arquivo com Restrições

function [c, ceq] = restricao(x)
% ----------------------------------------------
Pg1 = x(1);     Pg2 = x(2);     Pg3 = x(3);
% ----------------------------------------------
% Restrição de Igualdade ceq(x) = 0
ceq = Pg1 + Pg2 + Pg3 - 100;
% ----------------------------------------------
% Restrição de Desigualdade  c(x) <=0 
% Não existe
c = [];
% ----------------------------------------------
end

