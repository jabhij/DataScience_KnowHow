% Q3)

%% Part a)
DownIn1= optPrice;

DownInl.timeDim.timeVector=1/52:1/52:1/2; 
DownIn1.assetParam.interest = 0.01;
DownInl.assetParam.volatility = 0.4;
DownIn1.assetParam.initPrice = 60;
DownInl.payoffParam.strike = 60;
DownInl.priceParam.absTol = 0.01;
DownIn1.payoffParam.barrier = 55;
DownInl.priceParam.relTol = 0;

IID = optPrice(DownInl);
IID.payoffParam = struct( ...
'optType',{{'downin'}},...
'putCallType',{{'put'}}); 

[OptionPrice,out] = genOptPrice(IID);

disp(['Price of down and in put option using IID: $' num2str(OptionPrice) ... 
    ' +/- $' num2str(max(DownIn1.priceParam.absTol, ...
DownIn1.priceParam.relTol*OptionPrice)) ]) 
disp(['Time taken (in seconds): ' num2str(out.time)]) 
disp(['Number of paths:' num2str(out.nPaths)])

%% Part b)
DownIn2 = optPrice(DownIn1); 
DownIn2.payoffParam.strike=60; 
DownIn2.payoffParam = struct( ...
'optType',{{'downin','euro'}},...
'putCallType',{{'put','call'}});

[OptionPrice1, AEout] = meanMC_g(@(n) YoptPrice_CV(DownIn2,n),0.1,0.0);

disp(['Price of down and in put option using European call as Control Variate at Strike price $60 :' num2str(OptionPrice1) ... 
    ' +/- $' num2str(max(DownIn1.priceParam.absTol, ...
DownIn1.priceParam.relTol*OptionPrice1)) ]) 

disp(['Time taken (in seconds): ' num2str(AEout.time)])
disp(['Time saved from IID Sampling (in seconds): ' num2str(out.time-AEout.time) ]); 
disp(['Number of Paths saved from IID Sampling : ' num2str(out.nPaths-AEout.ntot)]);


%% Part c) 
DownIn3 = optPrice(DownIn1); 
DownIn3.payoffParam.strike=60; 
DownIn3.payoffParam = struct( ...
'optType',{{'downin','euro'}},...
'putCallType',{{'put','put'}});

[OptionPrice2, AEout2] = meanMC_g(@(n) YoptPrice_CV(DownIn3,n),0.1,0.0);

disp(['Price of down and in put option using European put as Control Variate at Strike price $60 :' num2str(OptionPrice2) ... 
    ' +/- $' num2str(max(DownIn1.priceParam.absTol, ...
DownIn1.priceParam.relTol*OptionPrice2)) ]) 

disp(['Time taken (in seconds): ' num2str(AEout2.time)])
disp(['Time saved from IID Sampling (in seconds): ' num2str(out.time-AEout2.time) ]); 
disp(['Number of Paths saved from IID Sampling : ' num2str(out.nPaths-AEout2.ntot)]);


%% Part d)
Lattice = optPrice(IID); 
Lattice.priceParam.cubMethod = 'lattice';

[LatticePrice,outLattice] = genOptPrice(Lattice);
disp(['Price of down and in put option using Lattice Sampling : $' num2str(LatticePrice) ' +/- $' num2str(max(Lattice.priceParam.absTol, ...
Lattice.priceParam.relTol*LatticePrice)) ])
disp(['Time taken (in seconds): ' num2str(outLattice.time)])
disp(['Time saved from IID Sampling (in seconds): ' num2str(out.time-outLattice.time)]) 
disp(['Number of Paths saved from IID Sampling : ' num2str(out.nPaths-outLattice.nPaths)])




