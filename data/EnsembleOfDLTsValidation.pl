loanAmount(L) ~ gaussian(150977.204211,13028602318.4) := true.
loanStatus(L) ~ finite([Probability1:a,Probability2:b,Probability3:c,Probability4:d]) := findall_forward(Aavn_M,(hasLoan(A_M,L)~=true,avgNrWith(A_M)~=Aavn_M),X_T_5_Temp),avg(X_T_5_Temp)~=X_T_5, softmax([[0.11057499634796533,-1.1107191965556553],[0.058192379540629044,-1.7929928538850157],[-0.08743564229603448,2.55821587537412],[-0.08133173359254456,0.34549617506658536]],[X_T_5],[Probability1,Probability2,Probability3,Probability4]).
loanStatus(L) ~ finite([0.30105263157894735:a,0.5747368421052632:c,0.056842105263157895:b,0.06736842105263158:d]) := true.
gender(C) ~ finite([0.5134630765129299:m,0.4865369234870701:f]) := true.
freq(A) ~ finite([0.02097902097902098:i,0.8741258741258742:m,0.1048951048951049:w]) := findall_forward(Ls_M,(hasLoan(A,L_M)~=true,loanStatus(L_M)~=Ls_M),X_T_3),maxMod(X_T_3)~=a.
freq(A) ~ finite([0.1111111111111111:i,0.6666666666666666:m,0.2222222222222222:w]) := findall_forward(Ls_M,(hasLoan(A,L_M)~=true,loanStatus(L_M)~=Ls_M),X_T_4),maxMod(X_T_4)~=b.
freq(A) ~ finite([0.05128205128205128:i,0.8205128205128205:m,0.1282051282051282:w]) := findall_forward(Ls_M,(hasLoan(A,L_M)~=true,loanStatus(L_M)~=Ls_M),X_T_5),maxMod(X_T_5)~=c.
freq(A) ~ finite([0.0625:i,0.8125:m,0.125:w]) := findall_forward(Ls_M,(hasLoan(A,L_M)~=true,loanStatus(L_M)~=Ls_M),X_T_6),maxMod(X_T_6)~=d.
freq(A) ~ finite([0.017241379310344827:i,0.9434032983508246:m,0.03935532233883059:w]) := findall_forward(Ls_M,(hasLoan(A,L_M)~=true,loanStatus(L_M)~=Ls_M),X_T_7),\+maxMod(X_T_7)~=_.
freq(A) ~ finite([0.021635380209990455:i,0.9258670060451798:m,0.05249761374482978:w]) := true.
avgSumOfInc(A) ~ gaussian(Mean,73398896.00633186) := avgSumOfW(A)~=Aavw_M,stdMonthInc(A)~=Astdmi_M,freq(A)~=Afr_M,Afr_M==i,findall_forward(Ls_M,(hasLoan(A,L_M)~=true,loanStatus(L_M)~=Ls_M),X_T_55),\+maxMod(X_T_55)~=_,getMean([Aavw_M,Astdmi_M],[1.0326862495614284,0.5521171304872143,-4611.043020617799],Mean).
avgSumOfInc(A) ~ gaussian(Mean,52237770.74825149) := avgSumOfW(A)~=Aavw_M,stdMonthInc(A)~=Astdmi_M,freq(A)~=Afr_M,Afr_M==w,findall_forward(Ls_M,(hasLoan(A,L_M)~=true,loanStatus(L_M)~=Ls_M),X_T_91),maxMod(X_T_91)~=c,getMean([Aavw_M,Astdmi_M],[0.9420103525305241,0.6695629189928006,-4073.629223317228],Mean).
avgSumOfInc(A) ~ gaussian(Mean,78855191.43906197) := avgSumOfW(A)~=Aavw_M,stdMonthInc(A)~=Astdmi_M,freq(A)~=Afr_M,Afr_M==w,findall_forward(Ls_M,(hasLoan(A,L_M)~=true,loanStatus(L_M)~=Ls_M),X_T_93),\+maxMod(X_T_93)~=_,getMean([Aavw_M,Astdmi_M],[0.9213420861540307,0.8023373933201662,-3226.4878655453067],Mean).
avgSumOfInc(A) ~ gaussian(Mean,77092465.01310544) := avgSumOfW(A)~=Aavw_M,stdMonthInc(A)~=Astdmi_M,freq(A)~=Afr_M,Afr_M==m,findall_forward(Ls_M,(hasLoan(A,L_M)~=true,loanStatus(L_M)~=Ls_M),X_T_138),maxMod(X_T_138)~=a,getMean([Aavw_M,Astdmi_M],[0.9895287347971913,0.6758172858216742,-9279.654098708968],Mean).
avgSumOfInc(A) ~ gaussian(Mean,5540155.754490944) := avgSumOfW(A)~=Aavw_M,stdMonthInc(A)~=Astdmi_M,freq(A)~=Afr_M,Afr_M==m,findall_forward(Ls_M,(hasLoan(A,L_M)~=true,loanStatus(L_M)~=Ls_M),X_T_139),maxMod(X_T_139)~=b,findall_forward(Ge_M,(hasAccount(C_M,A)~=true,gender(C_M)~=Ge_M),X_T_169),maxMod(X_T_169)~=m,findall_forward(Dav_M,(districtClientAccount(D_M,C_M_1,A),avgSalary(D_M)~=Dav_M),X_T_178_Temp),avg(X_T_178_Temp)~=X_T_178,avgNrWith(A)~=Aavn_M,findall_forward(Drat_M,(districtClientAccount(D_M_1,C_M_1,A),ratUrbInhab(D_M_1)~=Drat_M),X_T_188_Temp),avg(X_T_188_Temp)~=X_T_188,stdMonthW(A)~=Astdmw_M,getMean([Aavw_M,Astdmi_M,X_T_178,Aavn_M,X_T_188,Astdmw_M],[0.24228138680905809,0.3555556438638172,10.993101161503796,2914.8810417416544,413.7531010190908,0.911252859230246,-133659.2401224248],Mean).
avgSumOfInc(A) ~ gaussian(Mean,27143354.198476173) := avgSumOfW(A)~=Aavw_M,stdMonthInc(A)~=Astdmi_M,freq(A)~=Afr_M,Afr_M==m,findall_forward(Ls_M,(hasLoan(A,L_M)~=true,loanStatus(L_M)~=Ls_M),X_T_140),maxMod(X_T_140)~=c,getMean([Aavw_M,Astdmi_M],[1.0014694190316347,0.4453503691346681,-2544.9890589612187],Mean).
avgSumOfInc(A) ~ gaussian(Mean,17393562.0809802) := avgSumOfW(A)~=Aavw_M,stdMonthInc(A)~=Astdmi_M,freq(A)~=Afr_M,Afr_M==m,findall_forward(Ls_M,(hasLoan(A,L_M)~=true,loanStatus(L_M)~=Ls_M),X_T_141),maxMod(X_T_141)~=d,findall_forward(Ge_M,(hasAccount(C_M,A)~=true,gender(C_M)~=Ge_M),X_T_219),maxMod(X_T_219)~=m,getMean([Aavw_M,Astdmi_M],[1.007783220147533,1.1171012144177705,-18968.67551299822],Mean).
avgSumOfInc(A) ~ gaussian(Mean,42758245.789968416) := avgSumOfW(A)~=Aavw_M,stdMonthInc(A)~=Astdmi_M,freq(A)~=Afr_M,Afr_M==m,findall_forward(Ls_M,(hasLoan(A,L_M)~=true,loanStatus(L_M)~=Ls_M),X_T_141),maxMod(X_T_141)~=d,findall_forward(Ge_M,(hasAccount(C_M,A)~=true,gender(C_M)~=Ge_M),X_T_220),maxMod(X_T_220)~=f,avgNrWith(A)~=Aavn_M,getMean([Aavw_M,Astdmi_M,Aavn_M],[1.975581454354373,-1.4953750335253582,-1926.6070213997102,10157.595824977645],Mean).
avgSumOfInc(A) ~ gaussian(Mean,21972505.853142932) := avgSumOfW(A)~=Aavw_M,stdMonthInc(A)~=Astdmi_M,freq(A)~=Afr_M,Afr_M==m,findall_forward(Ls_M,(hasLoan(A,L_M)~=true,loanStatus(L_M)~=Ls_M),X_T_142),\+maxMod(X_T_142)~=_,avgNrWith(A)~=Aavn_M,stdMonthW(A)~=Astdmw_M,getMean([Aavw_M,Astdmi_M,Aavn_M,Astdmw_M],[0.9526717257809835,0.35682077613157387,-120.65157440100938,0.2037741439157028,26.320463710158947],Mean).
avgSumOfInc(A) ~ gaussian(59764.3727914,3060651923.19) := true.
stdMonthInc(A) ~ gaussian(Mean,39217622.015022926) := avgSumOfW(A)~=Aavw_M,avgNrWith(A)~=Aavn_M,findall_forward(Ls_M,(hasLoan(A,L_M)~=true,loanStatus(L_M)~=Ls_M),X_T_29),maxMod(X_T_29)~=a,getMean([Aavw_M,Aavn_M],[0.3044571628135459,-409.4025348724985,14444.016802456987],Mean).
stdMonthInc(A) ~ gaussian(Mean,43572404.75003108) := avgSumOfW(A)~=Aavw_M,avgNrWith(A)~=Aavn_M,findall_forward(Ls_M,(hasLoan(A,L_M)~=true,loanStatus(L_M)~=Ls_M),X_T_30),maxMod(X_T_30)~=b,getMean([Aavw_M,Aavn_M],[0.3444285481097924,-815.8770702404125,20321.62460643927],Mean).
stdMonthInc(A) ~ gaussian(Mean,35277795.12555424) := avgSumOfW(A)~=Aavw_M,avgNrWith(A)~=Aavn_M,findall_forward(Ls_M,(hasLoan(A,L_M)~=true,loanStatus(L_M)~=Ls_M),X_T_31),maxMod(X_T_31)~=c,getMean([Aavw_M,Aavn_M],[0.3579992585025775,-518.869965961403,12335.761721544615],Mean).
stdMonthInc(A) ~ gaussian(Mean,16835542.592762016) := avgSumOfW(A)~=Aavw_M,avgNrWith(A)~=Aavn_M,findall_forward(Ls_M,(hasLoan(A,L_M)~=true,loanStatus(L_M)~=Ls_M),X_T_32),maxMod(X_T_32)~=d,getMean([Aavw_M,Aavn_M],[0.39288868105511954,-833.1475471597397,13291.588709423282],Mean).
stdMonthInc(A) ~ gaussian(Mean,18005862.489619248) := avgSumOfW(A)~=Aavw_M,avgNrWith(A)~=Aavn_M,findall_forward(Ls_M,(hasLoan(A,L_M)~=true,loanStatus(L_M)~=Ls_M),X_T_33),\+maxMod(X_T_33)~=_,getMean([Aavw_M,Aavn_M],[0.35418693203804713,-404.6227694949124,6831.577634513771],Mean).
stdMonthInc(A) ~ gaussian(21174.3861777,270758185.623) := true.
stdMonthW(A) ~ gaussian(Mean,125233619.0885956) := stdMonthInc(A)~=Astdmi_M,findall_forward(Ls_M,(hasLoan(A,L_M)~=true,loanStatus(L_M)~=Ls_M),X_T_16),maxMod(X_T_16)~=a,freq(A)~=Afr_M,Afr_M==w,getMean([Astdmi_M],[0.510721944672866,10504.22987652514],Mean).
stdMonthW(A) ~ gaussian(Mean,29812545.14206453) := stdMonthInc(A)~=Astdmi_M,findall_forward(Ls_M,(hasLoan(A,L_M)~=true,loanStatus(L_M)~=Ls_M),X_T_16),maxMod(X_T_16)~=a,freq(A)~=Afr_M,Afr_M==m,avgSumOfW(A)~=Aavw_M,avgNrWith(A)~=Aavn_M,findall_forward(La_M,(hasLoan(A,L_M_1)~=true,loanAmount(L_M_1)~=La_M),X_T_61_Temp),avg(X_T_61_Temp)~=X_T_61,getMean([Astdmi_M,Aavw_M,Aavn_M,X_T_61],[0.07492194907724145,0.2582050012161812,-535.6517669897322,-0.02734139476329256,9639.571895622787],Mean).
stdMonthW(A) ~ gaussian(Mean,21476922.935472455) := stdMonthInc(A)~=Astdmi_M,findall_forward(Ls_M,(hasLoan(A,L_M)~=true,loanStatus(L_M)~=Ls_M),X_T_17),maxMod(X_T_17)~=b,freq(A)~=Afr_M,Afr_M==m,avgSumOfW(A)~=Aavw_M,getMean([Astdmi_M,Aavw_M],[0.2603031375998546,0.18326337217675534,700.1424442621574],Mean).
stdMonthW(A) ~ gaussian(Mean,15359998.099138228) := stdMonthInc(A)~=Astdmi_M,findall_forward(Ls_M,(hasLoan(A,L_M)~=true,loanStatus(L_M)~=Ls_M),X_T_18),maxMod(X_T_18)~=c,avgSumOfW(A)~=Aavw_M,avgNrWith(A)~=Aavn_M,findall_forward(La_M,(hasLoan(A,L_M_1)~=true,loanAmount(L_M_1)~=La_M),X_T_115_Temp),avg(X_T_115_Temp)~=X_T_115,getMean([Astdmi_M,Aavw_M,Aavn_M,X_T_115],[0.20486935127801992,0.249326823829376,-492.88748373699303,-0.013599985718652563,5819.773984374624],Mean).
stdMonthW(A) ~ gaussian(Mean,17179018.42595406) := stdMonthInc(A)~=Astdmi_M,findall_forward(Ls_M,(hasLoan(A,L_M)~=true,loanStatus(L_M)~=Ls_M),X_T_19),maxMod(X_T_19)~=d,freq(A)~=Afr_M,Afr_M==m,getMean([Astdmi_M],[0.7924552253893409,-1371.2948609112827],Mean).
stdMonthW(A) ~ gaussian(Mean,9670941.974356804) := stdMonthInc(A)~=Astdmi_M,findall_forward(Ls_M,(hasLoan(A,L_M)~=true,loanStatus(L_M)~=Ls_M),X_T_20),\+maxMod(X_T_20)~=_,avgSumOfW(A)~=Aavw_M,avgNrWith(A)~=Aavn_M,freq(A)~=Afr_M,Afr_M==i,getMean([Astdmi_M,Aavw_M,Aavn_M],[0.440169424053858,0.18271772387080348,-413.035174501706,1410.0186309899655],Mean).
stdMonthW(A) ~ gaussian(Mean,28735740.750919417) := stdMonthInc(A)~=Astdmi_M,findall_forward(Ls_M,(hasLoan(A,L_M)~=true,loanStatus(L_M)~=Ls_M),X_T_20),\+maxMod(X_T_20)~=_,avgSumOfW(A)~=Aavw_M,avgNrWith(A)~=Aavn_M,freq(A)~=Afr_M,Afr_M==w,getMean([Astdmi_M,Aavw_M,Aavn_M],[0.3416668310038503,0.1633648637698785,-76.88265394447534,2846.5822966839805],Mean).
stdMonthW(A) ~ gaussian(Mean,7537885.023524202) := stdMonthInc(A)~=Astdmi_M,findall_forward(Ls_M,(hasLoan(A,L_M)~=true,loanStatus(L_M)~=Ls_M),X_T_20),\+maxMod(X_T_20)~=_,avgSumOfW(A)~=Aavw_M,avgNrWith(A)~=Aavn_M,freq(A)~=Afr_M,Afr_M==m,getMean([Astdmi_M,Aavw_M,Aavn_M],[0.4691576521897629,0.13044933862820224,-186.8341733125817,974.8837784714833],Mean).
stdMonthW(A) ~ gaussian(15417.1924592,181471706.504) := true.
