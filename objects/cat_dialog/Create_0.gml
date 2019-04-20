count = 3
for(var crutchI = 0; crutchI < count; crutchI++)
{
	for(var crutch = 0; crutch < 100; crutch++)
	{
		answer[crutchI, crutch] = "END"
	}
}
var i = 0		//I 0
sprites[i] = icon_cat
questions[i] = @"Gleb gave me Pizza?"
answer[i, 0] = "No"					//1
answer[i, 1] = "Yes"				//2
edges[i, 0] = 1		
edges[i, 1] = 2
a_count[i] = 2

i++				//I 1
sprites[i] = icon_cat
questions[i] = @"Owww"
answer[i, 0] = "Sadly"				//2
edges[i, 0] = 2
a_count[i] = 1

i++				//I 2
sprites[i] = icon_cat
questions[i] = @"Okay, never mind"		//no
result[i] = "OKAY"
a_count[i] = 0

