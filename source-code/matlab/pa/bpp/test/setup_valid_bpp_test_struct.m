function bppParameterStruct = setup_valid_bpp_test_struct()
%
% Copyright 2017 United States Government as represented by the
% Administrator of the National Aeronautics and Space Administration.
% All Rights Reserved.
% 
% This file is available under the terms of the NASA Open Source Agreement
% (NOSA). You should have received a copy of this agreement with the
% Kepler source code; see the file NASA-OPEN-SOURCE-AGREEMENT.doc.
% 
% No Warranty: THE SUBJECT SOFTWARE IS PROVIDED "AS IS" WITHOUT ANY
% WARRANTY OF ANY KIND, EITHER EXPRESSED, IMPLIED, OR STATUTORY,
% INCLUDING, BUT NOT LIMITED TO, ANY WARRANTY THAT THE SUBJECT SOFTWARE
% WILL CONFORM TO SPECIFICATIONS, ANY IMPLIED WARRANTIES OF
% MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE, OR FREEDOM FROM
% INFRINGEMENT, ANY WARRANTY THAT THE SUBJECT SOFTWARE WILL BE ERROR
% FREE, OR ANY WARRANTY THAT DOCUMENTATION, IF PROVIDED, WILL CONFORM
% TO THE SUBJECT SOFTWARE. THIS AGREEMENT DOES NOT, IN ANY MANNER,
% CONSTITUTE AN ENDORSEMENT BY GOVERNMENT AGENCY OR ANY PRIOR RECIPIENT
% OF ANY RESULTS, RESULTING DESIGNS, HARDWARE, SOFTWARE PRODUCTS OR ANY
% OTHER APPLICATIONS RESULTING FROM USE OF THE SUBJECT SOFTWARE.
% FURTHER, GOVERNMENT AGENCY DISCLAIMS ALL WARRANTIES AND LIABILITIES
% REGARDING THIRD-PARTY SOFTWARE, IF PRESENT IN THE ORIGINAL SOFTWARE,
% AND DISTRIBUTES IT "AS IS."
% 
% Waiver and Indemnity: RECIPIENT AGREES TO WAIVE ANY AND ALL CLAIMS
% AGAINST THE UNITED STATES GOVERNMENT, ITS CONTRACTORS AND
% SUBCONTRACTORS, AS WELL AS ANY PRIOR RECIPIENT. IF RECIPIENT'S USE OF
% THE SUBJECT SOFTWARE RESULTS IN ANY LIABILITIES, DEMANDS, DAMAGES,
% EXPENSES OR LOSSES ARISING FROM SUCH USE, INCLUDING ANY DAMAGES FROM
% PRODUCTS BASED ON, OR RESULTING FROM, RECIPIENT'S USE OF THE SUBJECT
% SOFTWARE, RECIPIENT SHALL INDEMNIFY AND HOLD HARMLESS THE UNITED
% STATES GOVERNMENT, ITS CONTRACTORS AND SUBCONTRACTORS, AS WELL AS ANY
% PRIOR RECIPIENT, TO THE EXTENT PERMITTED BY LAW. RECIPIENT'S SOLE
% REMEDY FOR ANY SUCH MATTER SHALL BE THE IMMEDIATE, UNILATERAL
% TERMINATION OF THIS AGREEMENT.
%

backgroundStruct(1).row = 251;
backgroundStruct(1).column = 7;
backgroundStruct(1).timeSeries = 1.0e+05*[3.834282524055905;   3.830854197343191; ...
    3.857302765051524;   3.830854197343191;   3.841433624426524;   3.839572237597572; ...
    3.841433624426524;   3.846723337968191;   3.836143910884857;   3.818413383430905];
backgroundStruct(1).uncertainties = 1.0e+02*[6.385827038279916;   6.383142149106481; ...
    6.403826151043066;   6.383142149106481;   6.391423782423839;   6.389967456743697; ...
    6.391423782423839;   6.395560577615516;   6.387284307991650;   6.373389644182823];
backgroundStruct(1).gapList = [3; 7];

backgroundStruct(2).row = 965;
backgroundStruct(2).column = 942;
backgroundStruct(2).timeSeries = 1.0e+05*[3.740929067134857;   3.751508494218191; ...
    3.765516248014238;   3.751508494218191;   3.740929067134857;   3.746218780676524; ...
    3.728488253222572;   3.730349640051524;   3.756798207759857;   3.740929067134857];
backgroundStruct(2).uncertainties = 1.0e+02*[6.312309592662291;   6.320684034536904; ...
    6.331755222875422;   6.320684034536904;   6.312309592662291;   6.316498201458862; ...
    6.302447481295939;   6.303924025778153;   6.324867097407374;   6.312309592662291];
backgroundStruct(2).gapList = [2; 5; 9];

backgroundStruct(3).row = 1015;
backgroundStruct(3).column = 580;
backgroundStruct(3).timeSeries = 1.0e+05*[3.740929067134857;   3.751508494218191; ...
    3.765516248014238;   3.751508494218191;   3.740929067134857;   3.746218780676524; ...
    3.728488253222572;   3.730349640051524;   3.756798207759857;   3.740929067134857];
backgroundStruct(3).uncertainties = 1.0e+02*[6.303924025778153;   6.295527289429355; ...
    6.299727056576846;   6.303924025778153;   6.308118202617934;   6.295527289429355; ...
    6.320684034536904;   6.308118202617934;   6.308118202617934;   6.302447481295939];
backgroundStruct(3).gapList = [2; 3; 5; 9];

% replace gap values with zero
nPixels = length(backgroundStruct);
for pixel = 1:nPixels 
    gapList = backgroundStruct(pixel).gapList;
    backgroundStruct(pixel).timeSeries(gapList) = 0;    
end

bppParameterStruct.backgroundStruct = backgroundStruct;
bppParameterStruct.backgroundConfigurationStruct = build_background_configuration_struct();
bppParameterStruct.cosmicRayConfigurationStruct = build_cr_configuration_struct();
bppParameterStruct.debugFlag = 1;
bppParameterStruct.cleanCosmicRays = 1;


