[Mesh]
file = mnr_active.msh
[]


[Outputs]
exodus = true
[]


[Executioner]
type = Eigenvalue
[]


[Kernels]
[diffusion]
    type = ArrayDiffusion 
    variable = flux 
    diffusion_coefficient = diffusivity
[]
[absorption]
    type = ArrayReaction
    variable = flux
    reaction_coefficient = sigma_r
[]
[scattering]
    type = ArrayReaction
    variable = flux
    reaction_coefficient = sigma_s
[]
[fission]
    type = ArrayReaction
    variable = flux
    reaction_coefficient = chi_nu_sigma_f
    extra_matrix_tags = 'eigen'
[]
[]



[Variables]
[./flux]
    type = ArrayMooseVariable
    components = 4
[../]
[]

[BCs]
[./albedo]
	variable = flux
	type = L2ArrayAlbedoBC
    gamma_factors = '1 1 1 1'
	boundary = 'north south west east bottom top'
	albedo_matrix = '0.0891189 0.        0.        0.       ; 0.138508 0.172594 0.       0.      ; 8.54641e-02 2.32111e-01 2.40165e-01 8.01466e-06; 0.101378 0.169605 0.38213  0.772756 '
[]
[]


[Materials]
[./mat_gcu_F9plug]
	block = 'F9plug'
	type = NuclearMaterial
	nu_sigma_f = '0. 0. 0. 0.'
	diffusivity = '3.11862  0.993103 0.553047 0.149958'
	sigma_r = '0.104605  0.166296  0.166123  0.0191448'
	chi = '0. 0. 0. 0.'
	sigma_s = '0. 0. 0. 0.; 0.103492 0.       0.       0.      ; 6.48350e-04 1.66261e-01 0.00000e+00 5.12807e-05; 0.00000e+00 1.87555e-05 1.65088e-01 0.00000e+00'
[]
[./mat_gcu_F8graph]
	block = 'F8graph'
	type = NuclearMaterial
	nu_sigma_f = '0. 0. 0. 0.'
	diffusivity = '2.42391  1.02735  0.758627 0.331394'
	sigma_r = '0.0481148  0.0570743  0.0556598  0.00765093'
	chi = '0. 0. 0. 0.'
	sigma_s = '0. 0. 0. 0.; 0.0476666 0.        0.        0.       ; 2.19841e-04 5.70494e-02 0.00000e+00 5.38762e-05; 0.00000e+00 6.46190e-06 5.52402e-02 0.00000e+00'
[]
[./mat_gcu_F7rifl]
	block = 'F7rifl'
	type = NuclearMaterial
	nu_sigma_f = '0. 0. 0. 0.'
	diffusivity = '4.69079  1.63391  0.948161 0.265812'
	sigma_r = '0.0639809 0.0896838 0.0859513 0.0119117'
	chi = '0. 0. 0. 0.'
	sigma_s = '0. 0. 0. 0.; 0.0633677 0.        0.        0.       ; 3.86224e-04 8.96553e-02 0.00000e+00 8.33836e-05; 9.13744e-08 8.47442e-06 8.53220e-02 0.00000e+00'
[]
[./mat_gcu_MNR396]
	block = 'MNR396'
	type = NuclearMaterial
	nu_sigma_f = '0.00130493 0.00060899 0.00898086 0.112277  '
	diffusivity = '2.90336  1.14342  0.760723 0.246682'
	sigma_r = '0.0793568 0.0916581 0.0998301 0.0724665'
	chi = '7.61279e-01 2.38555e-01 1.66238e-04 0.00000e+00'
	sigma_s = '5.e-06 0.e+00 0.e+00 0.e+00; 0.0780522 0.        0.        0.       ; 0.00045103 0.0911382  0.         0.00021007; 3.55627e-08 9.65217e-06 8.85433e-02 0.00000e+00'
[]
[./mat_gcu_MNR375]
	block = 'MNR375'
	type = NuclearMaterial
	nu_sigma_f = '0.00111622 0.00041414 0.00624669 0.0851267 '
	diffusivity = '2.89967  1.13871  0.75975  0.246465'
	sigma_r = '0.0792776 0.0932069 0.0995245 0.0608477'
	chi = '7.62326e-01 2.37500e-01 1.73592e-04 0.00000e+00'
	sigma_s = '5.e-06 0.e+00 0.e+00 0.e+00; 0.0780396 0.        0.        0.       ; 0.00045173 0.0927745  0.         0.00021369; 0.00000e+00 9.61447e-06 8.86539e-02 0.00000e+00'
[]
[./mat_gcu_MNR374]
	block = 'MNR374'
	type = NuclearMaterial
	nu_sigma_f = '0.00108273 0.00037394 0.00561011 0.0787774 '
	diffusivity = '2.90235  1.13744  0.758976 0.245405'
	sigma_r = '0.0793548 0.0937816 0.0999351 0.0581552'
	chi = '7.62478e-01 2.37357e-01 1.64682e-04 0.00000e+00'
	sigma_s = '4.e-06 0.e+00 0.e+00 0.e+00; 0.0781343 0.        0.        0.       ; 0.00044191 0.0933651  0.         0.00020166; 2.63910e-08 9.95980e-06 8.90979e-02 0.00000e+00'
[]
[./mat_gcu_MNR372]
	block = 'MNR372'
	type = NuclearMaterial
	nu_sigma_f = '0.00111198 0.00041217 0.00621282 0.0847196 '
	diffusivity = '2.89887  1.13932  0.760264 0.246237'
	sigma_r = '0.0792256 0.0932745 0.0994021 0.0607088'
	chi = '7.62254e-01 2.37581e-01 1.64763e-04 0.00000e+00'
	sigma_s = '5.e-06 0.e+00 0.e+00 0.e+00; 0.0779863 0.        0.        0.       ; 0.0004564  0.0928285  0.         0.00022021; 0.00000e+00 1.08329e-05 8.85431e-02 0.00000e+00'
[]
[./mat_gcu_MNR382]
	block = 'MNR382'
	type = NuclearMaterial
	nu_sigma_f = '0.00120682 0.00050843 0.00762897 0.0994471 '
	diffusivity = '2.89821  1.14087  0.760438 0.248046'
	sigma_r = '0.0794534 0.0925781 0.099779  0.0671801'
	chi = '7.61992e-01 2.37835e-01 1.72666e-04 0.00000e+00'
	sigma_s = '5.e-06 0.e+00 0.e+00 0.e+00; 0.0781857 0.        0.        0.       ; 0.00044562 0.0921011  0.         0.0002213 ; 5.29476e-08 1.00523e-05 8.87179e-02 0.00000e+00'
[]
[./mat_gcu_MNR389]
	block = 'MNR389'
	type = NuclearMaterial
	nu_sigma_f = '0.00123701 0.00053697 0.007972   0.101806  '
	diffusivity = '2.90219  1.14298  0.760892 0.245652'
	sigma_r = '0.0790897 0.0916723 0.0995857 0.0679892'
	chi = '7.61634e-01 2.38190e-01 1.76472e-04 0.00000e+00'
	sigma_s = '3.e-06 0.e+00 0.e+00 0.e+00; 0.0778085 0.        0.        0.       ; 0.00044515 0.0911855  0.         0.00020752; 7.60919e-08 9.99794e-06 8.84902e-02 0.00000e+00'
[]
[./mat_gcu_E9rifl]
	block = 'E9rifl'
	type = NuclearMaterial
	nu_sigma_f = '0. 0. 0. 0.'
	diffusivity = '4.86891  1.61413  0.945829 0.260249'
	sigma_r = '0.0616869 0.0952129 0.0954094 0.0119226'
	chi = '0. 0. 0. 0.'
	sigma_s = '6.e-07 0.e+00 0.e+00 0.e+00; 0.0610303 0.        0.        0.       ; 3.76489e-04 9.51829e-02 0.00000e+00 3.62044e-05; 0.00000e+00 7.54254e-06 9.47563e-02 0.00000e+00'
[]
[./mat_gcu_E8graph]
	block = 'E8graph'
	type = NuclearMaterial
	nu_sigma_f = '0. 0. 0. 0.'
	diffusivity = '2.39898  1.02848  0.758921 0.334602'
	sigma_r = '0.0495175  0.0562513  0.0539235  0.00760578'
	chi = '0. 0. 0. 0.'
	sigma_s = '0. 0. 0. 0.; 0.0490782 0.        0.        0.       ; 2.25551e-04 5.62229e-02 0.00000e+00 6.78699e-05; 0.00000e+00 7.20550e-06 5.35178e-02 0.00000e+00'
[]
[./mat_gcu_MNR394]
	block = 'MNR394'
	type = NuclearMaterial
	nu_sigma_f = '0.00131242 0.00060022 0.00878206 0.111273  '
	diffusivity = '2.89696  1.14081  0.760541 0.247015'
	sigma_r = '0.0797295 0.091555  0.100372  0.0722888'
	chi = '7.61709e-01 2.38116e-01 1.74079e-04 0.00000e+00'
	sigma_s = '4.e-06 0.e+00 0.e+00 0.e+00; 0.0784228 0.        0.        0.       ; 0.00045163 0.0910404  0.         0.00019627; 0.00000e+00 9.81891e-06 8.91741e-02 0.00000e+00'
[]
[./mat_gcu_MNRC77]
	block = 'MNRC77'
	type = NuclearMaterial
	nu_sigma_f = '0.0005586  0.00017955 0.0027109  0.0386919 '
	diffusivity = '2.87531  1.1314   0.751113 0.230838'
	sigma_r = '0.0789928 0.0964924 0.104775  0.0502795'
	chi = '7.62740e-01 2.37094e-01 1.66140e-04 0.00000e+00'
	sigma_s = '3.e-06 0.e+00 0.e+00 0.e+00; 0.0779004 0.        0.        0.       ; 0.00044333 0.0955719  0.         0.00019622; 0.00000e+00 1.07010e-05 8.75136e-02 0.00000e+00'
[]
[./mat_gcu_MNR377]
	block = 'MNR377'
	type = NuclearMaterial
	nu_sigma_f = '0.001135   0.00045715 0.00689069 0.0926749 '
	diffusivity = '2.89487  1.14006  0.760966 0.248537'
	sigma_r = '0.0793522 0.093253  0.0989164 0.0642721'
	chi = '7.61616e-01 2.38209e-01 1.74821e-04 0.00000e+00'
	sigma_s = '4.e-06 0.e+00 0.e+00 0.e+00; 0.0781024 0.        0.        0.       ; 0.00045273 0.0927964  0.         0.0002503 ; 9.63656e-08 9.08440e-06 8.80464e-02 0.00000e+00'
[]
[./mat_gcu_MNRC76]
	block = 'MNRC76'
	type = NuclearMaterial
	nu_sigma_f = '0.00054549 0.00017014 0.00257365 0.0369016 '
	diffusivity = '2.87142  1.13155  0.751841 0.231004'
	sigma_r = '0.078956  0.0966205 0.104899  0.0499961'
	chi = '7.62485e-01 2.37335e-01 1.80062e-04 0.00000e+00'
	sigma_s = '3.e-06 0.e+00 0.e+00 0.e+00; 0.0778733 0.        0.        0.       ; 0.00043971 0.0956783  0.         0.00020283; 4.23578e-08 1.07171e-05 8.73395e-02 0.00000e+00'
[]
[./mat_gcu_MNR395]
	block = 'MNR395'
	type = NuclearMaterial
	nu_sigma_f = '0.00126161 0.00060247 0.00895733 0.112376  '
	diffusivity = '2.89279  1.14195  0.761015 0.250517'
	sigma_r = '0.079631  0.0924988 0.0989493 0.0727   '
	chi = '7.61440e-01 2.38377e-01 1.82420e-04 0.00000e+00'
	sigma_s = '4.e-06 0.e+00 0.e+00 0.e+00; 0.0783405 0.        0.        0.       ; 0.00045026 0.0919764  0.         0.00027586; 1.55228e-08 9.63925e-06 8.77075e-02 0.00000e+00'
[]
[./mat_gcu_MNRC80]
	block = 'MNRC80'
	type = NuclearMaterial
	nu_sigma_f = '0.0006417  0.0002597  0.00376571 0.047935  '
	diffusivity = '2.86642  1.13171  0.747909 0.234058'
	sigma_r = '0.0787204 0.0954285 0.0978929 0.0444568'
	chi = '7.61792e-01 2.38029e-01 1.79874e-04 0.00000e+00'
	sigma_s = '3.e-06 0.e+00 0.e+00 0.e+00; 0.0776725 0.        0.        0.       ; 0.00044464 0.095136   0.         0.00020698; 0.00000e+00 1.06168e-05 9.14397e-02 0.00000e+00'
[]
[./mat_gcu_MNR387]
	block = 'MNR387'
	type = NuclearMaterial
	nu_sigma_f = '0.00120459 0.00052351 0.00781322 0.100643  '
	diffusivity = '2.89656  1.14278  0.761671 0.246218'
	sigma_r = '0.0791719 0.0919926 0.0991135 0.0675218'
	chi = '7.61623e-01 2.38206e-01 1.70919e-04 0.00000e+00'
	sigma_s = '4.e-06 0.e+00 0.e+00 0.e+00; 0.0779037 0.        0.        0.       ; 0.00045456 0.0915092  0.         0.00023486; 5.49463e-08 9.47308e-06 8.80670e-02 0.00000e+00'
[]
[./mat_gcu_D9graph]
	block = 'D9graph'
	type = NuclearMaterial
	nu_sigma_f = '0. 0. 0. 0.'
	diffusivity = '2.45873  1.02383  0.760025 0.329627'
	sigma_r = '0.047846   0.0589014  0.0584258  0.00769898'
	chi = '0. 0. 0. 0.'
	sigma_s = '0. 0. 0. 0.; 0.0473676 0.        0.        0.       ; 2.33779e-04 5.88857e-02 0.00000e+00 4.20898e-05; 0.00000e+00 4.63115e-06 5.79882e-02 0.00000e+00'
[]
[./mat_gcu_D8graph]
	block = 'D8graph'
	type = NuclearMaterial
	nu_sigma_f = '0. 0. 0. 0.'
	diffusivity = '2.39862  1.02443  0.759466 0.332619'
	sigma_r = '0.0491696  0.0571158  0.055134   0.00765261'
	chi = '0. 0. 0. 0.'
	sigma_s = '0. 0. 0. 0.; 0.0487447 0.        0.        0.       ; 2.13736e-04 5.70914e-02 0.00000e+00 7.02279e-05; 0.00000e+00 5.03848e-06 5.47139e-02 0.00000e+00'
[]
[./mat_gcu_D7rifl]
	block = 'D7rifl'
	type = NuclearMaterial
	nu_sigma_f = '0. 0. 0. 0.'
	diffusivity = '4.6804   1.63164  0.949616 0.268702'
	sigma_r = '0.0644465 0.0896697 0.0848347 0.0118153'
	chi = '0. 0. 0. 0.'
	sigma_s = '1.e-06 0.e+00 0.e+00 0.e+00; 0.0638382 0.        0.        0.       ; 0.00039052 0.0896437  0.         0.00010301; 0.00000e+00 1.02413e-05 8.42281e-02 0.00000e+00'
[]
[./mat_gcu_MNR392]
	block = 'MNR392'
	type = NuclearMaterial
	nu_sigma_f = '0.00124693 0.00057029 0.00845678 0.107829  '
	diffusivity = '2.89625  1.14204  0.760955 0.247225'
	sigma_r = '0.0794741 0.092359  0.0992497 0.0710321'
	chi = '7.61575e-01 2.38254e-01 1.71163e-04 0.00000e+00'
	sigma_s = '5.e-06 0.e+00 0.e+00 0.e+00; 0.0781954 0.        0.        0.       ; 0.00044887 0.0918571  0.         0.00023955; 0.00000e+00 9.26802e-06 8.81007e-02 0.00000e+00'
[]
[./mat_gcu_MNR381]
	block = 'MNR381'
	type = NuclearMaterial
	nu_sigma_f = '0.00115747 0.00046212 0.00692378 0.0933299 '
	diffusivity = '2.896    1.13839  0.759132 0.248018'
	sigma_r = '0.0795611 0.0932513 0.0996373 0.0648294'
	chi = '7.61910e-01 2.37916e-01 1.74362e-04 0.00000e+00'
	sigma_s = '4.e-06 0.e+00 0.e+00 0.e+00; 0.0783134 0.        0.        0.       ; 0.00045101 0.0927979  0.         0.00022214; 3.27326e-08 9.60539e-06 8.86785e-02 0.00000e+00'
[]
[./mat_gcu_MNR391]
	block = 'MNR391'
	type = NuclearMaterial
	nu_sigma_f = '0.00121349 0.00053942 0.00807378 0.104351  '
	diffusivity = '2.89218  1.13955  0.759546 0.249236'
	sigma_r = '0.0797228 0.0931294 0.0990399 0.0696293'
	chi = '7.61638e-01 2.38190e-01 1.72404e-04 0.00000e+00'
	sigma_s = '5.e-06 0.e+00 0.e+00 0.e+00; 0.0784611 0.        0.        0.       ; 0.00044689 0.0926371  0.         0.00025822; 4.20098e-08 1.01743e-05 8.79450e-02 0.00000e+00'
[]
[./mat_gcu_MNR388]
	block = 'MNR388'
	type = NuclearMaterial
	nu_sigma_f = '0.00119283 0.00052708 0.00790559 0.102549  '
	diffusivity = '2.89313  1.13991  0.760558 0.249642'
	sigma_r = '0.0796128 0.0931641 0.0988769 0.0687166'
	chi = '7.61895e-01 2.37930e-01 1.74797e-04 0.00000e+00'
	sigma_s = '4.e-06 0.e+00 0.e+00 0.e+00; 0.0783589 0.        0.        0.       ; 0.00045091 0.0926816  0.         0.0002681 ; 1.39468e-08 1.02475e-05 8.78136e-02 0.00000e+00'
[]
[./mat_gcu_MNR378]
	block = 'MNR378'
	type = NuclearMaterial
	nu_sigma_f = '0.00114085 0.00045232 0.00680818 0.0924034 '
	diffusivity = '2.89028  1.13901  0.759508 0.248273'
	sigma_r = '0.079856  0.093668  0.0993732 0.0642553'
	chi = '7.62209e-01 2.37611e-01 1.79818e-04 0.00000e+00'
	sigma_s = '4.e-06 0.e+00 0.e+00 0.e+00; 0.0786222 0.        0.        0.       ; 0.00044499 0.0932165  0.         0.00024392; 9.01977e-08 1.02864e-05 8.84424e-02 0.00000e+00'
[]
[./mat_gcu_MNR390]
	block = 'MNR390'
	type = NuclearMaterial
	nu_sigma_f = '0.00123115 0.00054879 0.00818446 0.103821  '
	diffusivity = '2.89607  1.1427   0.761077 0.246444'
	sigma_r = '0.0792528 0.0920847 0.0994223 0.069072 '
	chi = '7.61636e-01 2.38198e-01 1.66108e-04 0.00000e+00'
	sigma_s = '4.e-06 0.e+00 0.e+00 0.e+00; 0.0779719 0.        0.        0.       ; 0.00044829 0.0915893  0.         0.0002369 ; 0.00000e+00 9.58623e-06 8.82852e-02 0.00000e+00'
[]
[./mat_gcu_C9rifl]
	block = 'C9rifl'
	type = NuclearMaterial
	nu_sigma_f = '0. 0. 0. 0.'
	diffusivity = '4.8205   1.60332  0.944487 0.259579'
	sigma_r = '0.0621151 0.0961566 0.095206  0.0119624'
	chi = '0. 0. 0. 0.'
	sigma_s = '0. 0. 0. 0.; 0.0614596 0.        0.        0.       ; 3.86498e-04 9.61142e-02 0.00000e+00 3.84839e-05; 0.00000e+00 9.68778e-06 9.45246e-02 0.00000e+00'
[]
[./mat_gcu_C8graph]
	block = 'C8graph'
	type = NuclearMaterial
	nu_sigma_f = '0. 0. 0. 0.'
	diffusivity = '2.3917   1.02752  0.759049 0.334723'
	sigma_r = '0.049758   0.0565233  0.0537303  0.00761828'
	chi = '0. 0. 0. 0.'
	sigma_s = '0. 0. 0. 0.; 0.0493262 0.        0.        0.       ; 2.28530e-04 5.65037e-02 0.00000e+00 7.66427e-05; 0.00000e+00 4.56010e-06 5.33245e-02 0.00000e+00'
[]
[./mat_gcu_MNR379]
	block = 'MNR379'
	type = NuclearMaterial
	nu_sigma_f = '0.00113498 0.00042594 0.00637878 0.0875655 '
	diffusivity = '2.8919   1.13768  0.759341 0.245278'
	sigma_r = '0.0797374 0.0934143 0.0997699 0.0619931'
	chi = '7.62246e-01 2.37585e-01 1.68772e-04 0.00000e+00'
	sigma_s = '5.e-06 0.e+00 0.e+00 0.e+00; 0.0784965 0.        0.        0.       ; 0.00044847 0.0929711  0.         0.00020564; 0.00000e+00 1.01354e-05 8.88893e-02 0.00000e+00'
[]
[./mat_gcu_MNR393]
	block = 'MNR393'
	type = NuclearMaterial
	nu_sigma_f = '0.00126988 0.00058831 0.00872992 0.110395  '
	diffusivity = '2.89745  1.14341  0.761156 0.245009'
	sigma_r = '0.0792575 0.0917079 0.0994325 0.0721724'
	chi = '7.61735e-01 2.38093e-01 1.72344e-04 0.00000e+00'
	sigma_s = '4.e-06 0.e+00 0.e+00 0.e+00; 0.0779757 0.        0.        0.       ; 0.00044161 0.0911905  0.         0.00023107; 2.09790e-08 1.02852e-05 8.81819e-02 0.00000e+00'
[]
[./mat_gcu_010400]
	block = 'u10400'
	type = NuclearMaterial
	nu_sigma_f = '0. 0. 0. 0.'
	diffusivity = '2.96241  1.02975  0.604125 0.171621'
	sigma_r = '0.102644  0.143947  0.13624   0.0181496'
	chi = '0. 0. 0. 0.'
	sigma_s = '0. 0. 0. 0.; 0.101665 0.       0.       0.      ; 6.24217e-04 1.43908e-01 0.00000e+00 1.37315e-04; 0.00000e+00 1.38232e-05 1.35264e-01 0.00000e+00'
[]
[./mat_gcu_MNR384]
	block = 'MNR384'
	type = NuclearMaterial
	nu_sigma_f = '0.00121365 0.00052802 0.00788104 0.103067  '
	diffusivity = '2.89508  1.14142  0.760797 0.245909'
	sigma_r = '0.0794454 0.0924884 0.0994339 0.0692171'
	chi = '7.62035e-01 2.37797e-01 1.68109e-04 0.00000e+00'
	sigma_s = '5.e-06 0.e+00 0.e+00 0.e+00; 0.0781772 0.        0.        0.       ; 0.00044766 0.0920062  0.         0.00023444; 4.58842e-08 9.21563e-06 8.83624e-02 0.00000e+00'
[]
[./mat_gcu_MNR383]
	block = 'MNR383'
	type = NuclearMaterial
	nu_sigma_f = '0.00113586 0.00045702 0.00689288 0.092643  '
	diffusivity = '2.892    1.13975  0.761264 0.248382'
	sigma_r = '0.0795138 0.0934126 0.0989189 0.0643708'
	chi = '7.62489e-01 2.37339e-01 1.72498e-04 0.00000e+00'
	sigma_s = '4.e-06 0.e+00 0.e+00 0.e+00; 0.0782783 0.        0.        0.       ; 0.00044436 0.0929606  0.         0.0002547 ; 3.13641e-08 9.74943e-06 8.79765e-02 0.00000e+00'
[]
[./mat_gcu_MNRC74]
	block = 'MNRC74'
	type = NuclearMaterial
	nu_sigma_f = '0.0005067  0.00013747 0.00208912 0.0308835 '
	diffusivity = '2.87016  1.13099  0.753149 0.2302  '
	sigma_r = '0.0787837 0.0968273 0.105194  0.0474105'
	chi = '7.62437e-01 2.37400e-01 1.63792e-04 0.00000e+00'
	sigma_s = '3.e-06 0.e+00 0.e+00 0.e+00; 0.0776941 0.        0.        0.       ; 0.00044411 0.0958722  0.         0.00018758; 0.00000e+00 1.08912e-05 8.73147e-02 0.00000e+00'
[]
[./mat_gcu_MNR361]
	block = 'MNR361'
	type = NuclearMaterial
	nu_sigma_f = '0.00103408 0.00033007 0.0049711  0.0710522 '
	diffusivity = '2.89837  1.14031  0.761699 0.242774'
	sigma_r = '0.0788692 0.0931691 0.0995976 0.0545288'
	chi = '7.62741e-01 2.37082e-01 1.76356e-04 0.00000e+00'
	sigma_s = '4.e-06 0.e+00 0.e+00 0.e+00; 0.0776733 0.        0.        0.       ; 0.00044152 0.092774   0.         0.00019819; 0.00000e+00 9.52153e-06 8.89259e-02 0.00000e+00'
[]
[./mat_gcu_B9plug]
	block = 'B9plug'
	type = NuclearMaterial
	nu_sigma_f = '0. 0. 0. 0.'
	diffusivity = '3.06249  0.988651 0.553659 0.150516'
	sigma_r = '0.107379  0.167423  0.165993  0.0191648'
	chi = '0. 0. 0. 0.'
	sigma_s = '0. 0. 0. 0.; 0.106271 0.       0.       0.      ; 6.70016e-04 1.67392e-01 0.00000e+00 5.82283e-05; 0.00000e+00 1.91821e-05 1.64879e-01 0.00000e+00'
[]
[./mat_gcu_B8graph]
	block = 'B8graph'
	type = NuclearMaterial
	nu_sigma_f = '0. 0. 0. 0.'
	diffusivity = '2.39505  1.02866  0.759426 0.335115'
	sigma_r = '0.050015   0.0561533  0.0533971  0.00760193'
	chi = '0. 0. 0. 0.'
	sigma_s = '0. 0. 0. 0.; 0.0495896 0.        0.        0.       ; 2.26817e-04 5.61316e-02 0.00000e+00 7.72611e-05; 0.00000e+00 4.67501e-06 5.29955e-02 0.00000e+00'
[]
[./mat_gcu_MNR398]
	block = 'MNR398'
	type = NuclearMaterial
	nu_sigma_f = '0.00129111 0.00060804 0.00896241 0.112993  '
	diffusivity = '2.89347  1.14213  0.76095  0.248207'
	sigma_r = '0.0797099 0.0920908 0.0993363 0.0726869'
	chi = '7.61643e-01 2.38198e-01 1.59784e-04 0.00000e+00'
	sigma_s = '4.e-06 0.e+00 0.e+00 0.e+00; 0.0784021 0.        0.        0.       ; 0.00045833 0.0915758  0.         0.00022863; 7.23577e-08 9.03013e-06 8.81111e-02 0.00000e+00'
[]
[./mat_gcu_MNRC79]
	block = 'MNRC79'
	type = NuclearMaterial
	nu_sigma_f = '0.0006354  0.00025471 0.00379843 0.0514874 '
	diffusivity = '2.87663  1.1339   0.750395 0.23189 '
	sigma_r = '0.0790141 0.0954997 0.104571  0.0562665'
	chi = '7.61815e-01 2.38018e-01 1.66650e-04 0.00000e+00'
	sigma_s = '3.e-06 0.e+00 0.e+00 0.e+00; 0.0778939 0.        0.        0.       ; 0.00044165 0.0945522  0.         0.00020994; 6.05659e-08 9.93464e-06 8.73090e-02 0.00000e+00'
[]
[./mat_gcu_MNR385]
	block = 'MNR385'
	type = NuclearMaterial
	nu_sigma_f = '0.00122458 0.0005291  0.00790958 0.102876  '
	diffusivity = '2.89969  1.1405   0.760404 0.24917 '
	sigma_r = '0.079434  0.0922575 0.0995668 0.0689111'
	chi = '7.61751e-01 2.38071e-01 1.78005e-04 0.00000e+00'
	sigma_s = '5.e-06 0.e+00 0.e+00 0.e+00; 0.078159 0.       0.       0.      ; 0.00044654 0.0917695  0.         0.00021968; 2.13651e-08 9.35353e-06 8.84927e-02 0.00000e+00'
[]
[./mat_gcu_MNRC78]
	block = 'MNRC78'
	type = NuclearMaterial
	nu_sigma_f = '0.00056946 0.00019078 0.00286677 0.0407149 '
	diffusivity = '2.87398  1.13276  0.751593 0.230811'
	sigma_r = '0.0788835 0.0961756 0.105087  0.0515798'
	chi = '7.62800e-01 2.37023e-01 1.76625e-04 3.12460e-07'
	sigma_s = '2.e-06 0.e+00 0.e+00 0.e+00; 0.0777902 0.        0.        0.       ; 0.00044143 0.095232   0.         0.00019389; 2.49368e-08 9.41889e-06 8.75952e-02 0.00000e+00'
[]
[./mat_gcu_MNR358]
	block = 'MNR358'
	type = NuclearMaterial
	nu_sigma_f = '0.00103998 0.00034822 0.00529577 0.0751367 '
	diffusivity = '2.89026  1.13751  0.760339 0.246113'
	sigma_r = '0.0794942 0.0940705 0.099222  0.0564704'
	chi = '7.62481e-01 2.37350e-01 1.69220e-04 0.00000e+00'
	sigma_s = '4.e-06 0.e+00 0.e+00 0.e+00; 0.0782966 0.        0.        0.       ; 0.0004498  0.0936635  0.         0.00022465; 6.43741e-08 9.60738e-06 8.84970e-02 0.00000e+00'
[]
[./mat_gcu_MNR373]
	block = 'MNR373'
	type = NuclearMaterial
	nu_sigma_f = '0.00109711 0.00039192 0.00592151 0.0828512 '
	diffusivity = '2.88466  1.13394  0.759522 0.246094'
	sigma_r = '0.0802053 0.0944366 0.099318  0.0599807'
	chi = '7.62098e-01 2.37738e-01 1.63818e-04 0.00000e+00'
	sigma_s = '4.e-06 0.e+00 0.e+00 0.e+00; 0.0789766 0.        0.        0.       ; 0.00045473 0.094004   0.         0.0002152 ; 0.00000e+00 1.00252e-05 8.84689e-02 0.00000e+00'
[]
[./mat_gcu_MNR365]
	block = 'MNR365'
	type = NuclearMaterial
	nu_sigma_f = '0.00108236 0.00037386 0.00563215 0.0781857 '
	diffusivity = '2.89592  1.13986  0.760757 0.243056'
	sigma_r = '0.0792581 0.0930873 0.0997046 0.0576047'
	chi = '7.62390e-01 2.37444e-01 1.65888e-04 0.00000e+00'
	sigma_s = '4.e-06 0.e+00 0.e+00 0.e+00; 0.0780395 0.        0.        0.       ; 0.00044348 0.092676   0.         0.00019731; 8.08787e-08 9.62986e-06 8.89460e-02 0.00000e+00'
[]
[./mat_gcu_A9plug]
	block = 'A9plug'
	type = NuclearMaterial
	nu_sigma_f = '0. 0. 0. 0.'
	diffusivity = '3.107    0.992361 0.553428 0.149981'
	sigma_r = '0.104585  0.166129  0.165531  0.0192008'
	chi = '0. 0. 0. 0.'
	sigma_s = '0. 0. 0. 0.; 0.103555 0.       0.       0.      ; 6.26590e-04 1.66100e-01 0.00000e+00 5.28179e-05; 0.00000e+00 1.85480e-05 1.64426e-01 0.00000e+00'
[]
[./mat_gcu_A8graph]
	block = 'A8graph'
	type = NuclearMaterial
	nu_sigma_f = '0. 0. 0. 0.'
	diffusivity = '2.41829  1.02565  0.759458 0.331847'
	sigma_r = '0.0483474  0.0571411  0.0555442  0.00763018'
	chi = '0. 0. 0. 0.'
	sigma_s = '0. 0. 0. 0.; 0.0479198 0.        0.        0.       ; 2.09039e-04 5.71119e-02 0.00000e+00 5.51709e-05; 0.00000e+00 6.27731e-06 5.51188e-02 0.00000e+00'
[]
[./mat_gcu_A7rifl]
	block = 'A7rifl'
	type = NuclearMaterial
	nu_sigma_f = '0. 0. 0. 0.'
	diffusivity = '4.69079  1.63012  0.948735 0.266264'
	sigma_r = '0.0640912 0.0899445 0.0859849 0.011858 '
	chi = '0. 0. 0. 0.'
	sigma_s = '1.e-06 0.e+00 0.e+00 0.e+00; 0.0634771 0.        0.        0.       ; 3.86026e-04 8.99134e-02 0.00000e+00 8.21468e-05; 0.00000e+00 9.16225e-06 8.53645e-02 0.00000e+00'
[]
[./mat_gcu_MNR397]
	block = 'MNR397'
	type = NuclearMaterial
	nu_sigma_f = '0.00130843 0.00060917 0.0089763  0.112621  '
	diffusivity = '2.89975  1.14334  0.760953 0.246642'
	sigma_r = '0.0794751 0.0915963 0.0997929 0.0726288'
	chi = '7.61666e-01 2.38153e-01 1.81414e-04 0.00000e+00'
	sigma_s = '5.e-06 0.e+00 0.e+00 0.e+00; 0.0781597 0.        0.        0.       ; 0.00045168 0.091073   0.         0.0002136 ; 3.62806e-08 1.02471e-05 8.85148e-02 0.00000e+00'
[]
[./mat_gcu_MNR376]
	block = 'MNR376'
	type = NuclearMaterial
	nu_sigma_f = '0.00111558 0.00041537 0.00622722 0.0852317 '
	diffusivity = '2.90025  1.13955  0.759948 0.246477'
	sigma_r = '0.0792893 0.0930839 0.0994835 0.0609191'
	chi = '7.62647e-01 2.37176e-01 1.76773e-04 0.00000e+00'
	sigma_s = '3.e-06 0.e+00 0.e+00 0.e+00; 0.0780565 0.        0.        0.       ; 0.00044957 0.0926509  0.         0.00021132; 0.00000e+00 1.01894e-05 8.86200e-02 0.00000e+00'
[]
[./mat_gcu_MNR366]
	block = 'MNR366'
	type = NuclearMaterial
	nu_sigma_f = '0.00104594 0.00032972 0.00496001 0.0712089 '
	diffusivity = '2.89639  1.13705  0.759405 0.244052'
	sigma_r = '0.0794251 0.0940169 0.100085  0.0547354'
	chi = '7.62683e-01 2.37150e-01 1.67007e-04 0.00000e+00'
	sigma_s = '4.e-06 0.e+00 0.e+00 0.e+00; 0.0782074 0.        0.        0.       ; 0.00044895 0.093618   0.         0.00018833; 3.21466e-08 8.93246e-06 8.94053e-02 0.00000e+00'
[]
[./mat_gcu_MNR362]
	block = 'MNR362'
	type = NuclearMaterial
	nu_sigma_f = '0.00102975 0.00030871 0.0046611  0.0673447 '
	diffusivity = '2.88525  1.13432  0.760538 0.242401'
	sigma_r = '0.0798225 0.0944657 0.100104  0.0530219'
	chi = '7.62743e-01 2.37088e-01 1.69545e-04 0.00000e+00'
	sigma_s = '5.e-06 0.e+00 0.e+00 0.e+00; 0.0786128 0.        0.        0.       ; 0.00046667 0.0940792  0.         0.00017459; 3.45704e-08 1.02524e-05 8.94035e-02 0.00000e+00'
[]
[./mat_gcu_010500]
	block = 'u10500'
	type = NuclearMaterial
	nu_sigma_f = '0. 0. 0. 0.'
	diffusivity = '1.78755  0.689946 0.496167 0.304733'
	sigma_r = '0.0668347  0.0464534  0.0447949  0.00587421'
	chi = '0. 0. 0. 0.'
	sigma_s = '0.004052 0.       0.       0.      ; 0.0698241 0.        0.        0.       ; 0.00015301 0.0464439  0.         0.00012686; 6.35130e-08 3.69162e-06 4.45123e-02 0.00000e+00'
[]
[./mat_gcu_MNR369]
	block = 'MNR369'
	type = NuclearMaterial
	nu_sigma_f = '0.00111097 0.00037655 0.00561638 0.0777598 '
	diffusivity = '2.88753  1.13801  0.761052 0.240268'
	sigma_r = '0.0794986 0.0928421 0.100338  0.0574982'
	chi = '7.61809e-01 2.38012e-01 1.79197e-04 0.00000e+00'
	sigma_s = '4.e-06 0.e+00 0.e+00 0.e+00; 0.0782772 0.        0.        0.       ; 0.0004445  0.0924236  0.         0.00016084; 0.00000e+00 9.82935e-06 8.95280e-02 0.00000e+00'
[]
[]
