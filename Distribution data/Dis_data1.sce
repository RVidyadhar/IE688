totals=[zeros(14,1);3
4
5
6
8
11
14
18
23
29
36
44
54
66
79
94
111
130
150
172
194
218
242
266
290
312
333
352
368
381
391
397
398
397
391
381
368
352
333
312
290
266
242
218
194
172
150
130
111
94
79
66
54
44
36
29
23
18
14
11
8
6
5
4
3
];
maxcap=40*6;
n=size(totals,1);
tot_ass=0;
ass_pattern = 3:3:240;
disp(ass_pattern(80));
for i = 15:n-1
	for j = 1:80
		if (totals(i) >= ass_pattern(80)) then
			assem(i-14) = ass_pattern(80);
			totals(i+1) = totals(i+1) + totals(i) - assem(i-14);
			break;
		elseif (totals(i) <= ass_pattern(j)) then
			assem(i-14) = ass_pattern(j);
			totals(i+1) = totals(i+1) + totals(i) - assem(i-14);
			break;
		end		
	end
end

for j = 1:80
		if (totals(n) >= ass_pattern(80)) then
			assem(n-14) = ass_pattern(80);
			break;
		elseif (totals(n) <= ass_pattern(j)) then
			assem(n-14) = ass_pattern(j);
			break;
		end		
end
disp(totals);


disp(n);

disp(assem);
disp(sum(assem));
