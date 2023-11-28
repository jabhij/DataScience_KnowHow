% Initialize option pricing parameters
ScrambleDigitalNet = optPrice(IID);
ScrambleDigitalNet.priceParam.cubMethod = 'Sobol'; % Use scrambled digital net
[ScrambleDigitalNetPrice, outScrambleDigitalNet] = genOptPrice(ScrambleDigitalNet);

% Display results
disp(['Price of down and in put option using Scramble Digital Net Sampling : $' num2str(ScrambleDigitalNetPrice) ' +/- $' num2str(max(ScrambleDigitalNet.priceParam.absTol, ...
ScrambleDigitalNet.priceParam.relTol*ScrambleDigitalNetPrice)) ])
disp(['Time taken (in seconds): ' num2str(outScrambleDigitalNet.time)])
disp(['Time saved from IID Sampling (in seconds): ' num2str(out.time - outScrambleDigitalNet.time)])
disp(['Number of Paths saved from IID Sampling : ' num2str(out.nPaths - outScrambleDigitalNet.nPaths)])
