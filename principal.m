
%% Solução de um problema de otimização via FMINCON
% Wesley Peres em 21/03/2023
% wesleyperes.br@gmail.com
% Youtube: @prof.wesleyperesbr
%%
clear all;  close all;  clc
%% OPÇÕES
itermax = 50;
% -------------------------------------------------------------
options = optimset('Display','iter','TolX', 1e-6,'MaxIter', itermax, ...
          'TolFun',1e-2,'Algorithm','interior-point', 'TolCon', 1e-3);
% -------------------------------------------------------------       
%% Restrições de Desigualdade Lineares  (A*x <= b)
A = [];    b = [];
%% Restrições de Igualdade Lineares  (Aeq*x = beq)
Aeq = [];    beq = [];
%% BOUNDS
xmin = [ 0  0  0]; 
xmax = [ 40 40 40];
%% SOLUÇÃO INICIAL
x0   = [20 20 20];
%% ARQUIVO COM A FOB
fun1 = @fob;
%% ARQUIVO COM AS RESTRIÇÕES
fun2 = @restricao;
%% RESOLVENDO
[z,fval,exitflag,output,lambda]= fmincon(fun1,x0,A,...
                                 b,Aeq,beq,xmin,xmax,fun2,options);

format short g
Pg1 = z(1) ,    Pg2 = z(2) ,    Pg3 = z(3)
CO = fval


