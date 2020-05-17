
% ENSE 622 Project 
% Calculations
% Author - Oghenetekevwe Akoroda
% Submitted 05/11/2020

% Monte Carlo simulation

k = 2000; % number of Monte Carlo trials

DroneCost = zeros(1,k);  % Monte Carlo drone cost for design 1
for i = 1:k
    frameCost = random3(frame_cost); % per unit cost of drone frame
    battCost = random3(batt_cost); % per unit cost of battery
    motorCost = random3(motor_cost); % per unit cost of electric motor
    escCost = random3(ESC_cost); % per unit cost of electric speed controller
    propCost = random3(prop_cost); % per unit cost of propeller
    mcCost = random3(MC_cost); % per unit cost of microcontroller
    flcCost = random3(FLC_cost); % per unit cost of flight controller
    vsCost = random3(VS_cost); % per unit cost of vision system
    navCost = random3(nav_cost); % per unit cost of navigation system
    commCost = random3(comm_cost); % per unit cost of communication system
    % calculate unit drone cost
    DroneCost(i) = frameCost + battCost + motorCost + escCost + propCost + ...
     + mcCost + flcCost + vsCost + navCost + commCost;
end
AveDroneCost = mean(DroneCost); % Average drone design 1 cost


DroneCost2 = zeros(1,k);  % Monte Carlo drone cost for design 2
for i = 1:k
    frameCost = random3(frame_cost2);
    battCost = random3(batt_cost2);
    motorCost = random3(motor_cost2);
    escCost = random3(ESC_cost2);
    propCost = random3(prop_cost2);
    mcCost = random3(MC_cost2);
    flcCost = random3(FLC_cost2);
    vsCost = random3(VS_cost2);
    navCost = random3(nav_cost2);
    commCost = random3(comm_cost2);
    % calculate unit drone cost
    DroneCost2(i) = frameCost + battCost + motorCost + escCost + propCost + ...
     + mcCost + flcCost + vsCost + navCost + commCost;
end

AveDroneCost2 = mean(DroneCost2); % Average drone design 2 cost

DroneCost3 = zeros(1,k);  % Monte Carlo drone cost for design 3
for i = 1:k
    frameCost = random3(frame_cost3);
    battCost = random3(batt_cost3);
    motorCost = random3(motor_cost3);
    escCost = random3(ESC_cost3);
    propCost = random3(prop_cost3);
    mcCost = random3(MC_cost3);
    flcCost = random3(FLC_cost3);
    vsCost = random3(VS_cost3);
    navCost = random3(nav_cost3);
    commCost = random3(comm_cost3);
    % calculate unit drone cost
    DroneCost3(i) = frameCost + battCost + motorCost + escCost + propCost + ...
     + mcCost + flcCost + vsCost + navCost + commCost;
end

AveDroneCost3 = mean(DroneCost3); % Average drone design 3 cost


DroneCost4 = zeros(1,k);  % Monte Carlo drone cost for design 4
for i = 1:k
    frameCost = random3(frame_cost4);
    battCost = random3(batt_cost4);
    motorCost = random3(motor_cost4);
    escCost = random3(ESC_cost4);
    propCost = random3(prop_cost4);
    mcCost = random3(MC_cost4);
    flcCost = random3(FLC_cost4);
    vsCost = random3(VS_cost4);
    navCost = random3(nav_cost4);
    commCost = random3(comm_cost4);
    % calculate unit drone cost
    DroneCost4(i) = frameCost + battCost + motorCost + escCost + propCost + ...
     + mcCost + flcCost + vsCost + navCost + commCost;
end

AveDroneCost4 = mean(DroneCost4); % Average drone design 4 cost


function randval = random3(Low,Med,High,pLow,pMed)

% Low is the low cost, Med is the medium cost and High is the high cost 
% pLow is the probability of getting the low cost
% pMed is the probability of getting the medium cost
% pHigh is the probability of getting the high cost

rand22 = rand;
if rand22 < pLow
    randval = Low;
elseif rand22 >= pLow && rand22 < pLow + pMed
    randval = Med;
else
    randval = High;
end
end


