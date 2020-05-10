var febdays, x, s, d, m, spaces, sum, lyears, ldays, nldays, tdays, plusdays, four, hund, fhund, y, days, month, year
fun init() {
sprint("Su \t Mo \t Tu \t We \t Th \t Fr \t Sa")
month : iread()
year : iread()

if (.month == 1| .month == 3| .month == 5| .month == 7| .month == 8| .month == 10 | .month == 12) {
days : 31
}
else if (.month == 4 | .month == 6| .month == 9| .month == 11) {
days : 30
}
else {
if .year%4 == 0 {
	if .year%100==0 {
		if .year%400== 0 {
			days : 29
			febdays : 29
			}
		else{
			days : 28
			febdays : 28
			}
	}
	else{
		days : 29
		febdays : 29
		}
}
else{
days : 28
febdays : 28
}
}

y : 1753

loop{
	until .y > .year - 1
	if .y%4 == 0{
		four : .four + 1
		
	}
	if .y%4 == 0 & .y%100 == 0 {
		hund : .hund + 1
		
	}
	if .y%4 == 0 & .y%400 == 0{
		fhund : .fhund + 1
		
	}
	y : .y + 1
}

lyears : .four - .hund + .fhund

ldays : .lyears * 366
nldays : (.year - 1753 - .lyears)*365
tdays : .nldays + .ldays
plusdays : .tdays%7

m : 1
sum : 0
spaces : 1 + .plusdays

loop {
	until .m >= .month
	if (.m == 1 | .m == 3| .m == 5| .m == 7| .m == 8| .m == 10 | .m == 12){
		sum : .sum + 31
	}
	if .m == 2{
		sum :.sum + .febdays
	}
	if (.m == 4 | .m == 6| .m == 9| .m == 11){
		sum : .sum + 30
	}
	m : .m + 1
	}

sum : .sum%7
spaces : .spaces + .sum

if .spaces > 7 {
	spaces : .spaces%7
}

x : .spaces + 1
s : 1
d : 1

sprint("\n")

loop {
		until .s > .spaces
		sprint(" \t" )
		s : .s + 1
	}

loop {
	until .x >= 8
	iprint(.d)
	sprint("\t")
	x : .x + 1
	d : .d + 1
	}
sprint("\n")
x : 1
loop {
	until .x >= 8
	iprint(.d)
	sprint("\t")
	x : .x + 1
	d : .d + 1
	}
sprint("\n")
x : 1
loop {
	until .x >= 8
	iprint(.d)
	sprint("\t")
	x : .x + 1
	d : .d + 1
	}
sprint("\n")
x : 1
loop {
	until .x >= 8
	if .d <= .days{
	iprint(.d)
	}
	sprint("\t")
	x : .x + 1
	d : .d + 1
	}
sprint("\n")
x : 1
loop {
	until .x >= 8
	if .d <= .days{
	iprint(.d)
	}
	sprint("\t")
	x : .x + 1
	d : .d + 1
	}
sprint("\n")
x : 1
loop {
	until .x >= 8
	if .d <= .days{
	iprint(.d)
	}
	sprint("\t")
	x : .x + 1
	d : .d + 1
	}
sprint("\n")
}
