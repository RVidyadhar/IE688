totals=[zeros(14,1);10000
9997
9993
9988
9982
9974
9963
9949
9931
9908
9879
9843
9799
9745
9679
9600
9506
9395
9265
9115
8943
8749
8531
8289
8023
7733
7421
7088
6736
6368
5987
5596
5199
4801
4404
4013
3632
3264
2912
2579
2267
1977
1711
1469
1251
1057
885
735
605
494
400
321
255
201
157
121
92
69
51
37
26
18
12
7
3
];
totals1=totals
maxcap=40*6;
n=size(totals,1);
//tot_ass=0;
//for i=n:-1:15
  //  assem(i-14)=min(maxcap,totals(i));
    //tot_ass = tot_ass+assem(i-14);
    //totals(i-1)= totals(i-1)-tot_ass;
//end
disp(n);
tot_ass=0;
ass_pattern=30:30:240;
for i=n:-1:15
	if (totals1(i)>=ass_pattern(1)) then
		for j = 2:8 
			if (totals1(i)<ass_pattern(j)) then
				assem1(i-14)=ass_pattern(j-1);
				break;
			elseif (totals1(i)>=ass_pattern(8)) then
				assem1(i-14)=ass_pattern(8);
				break;
			end
		end
		tot_ass = tot_ass+assem1(i-14);
		totals1(i-1)= totals1(i-1)-tot_ass;
	else
		assem1(i-14)=0;
	end
end
disp(assem1);
disp(totals1);
disp(sum(assem1));
