
//for(var crutchI = 0; crutchI < count; crutchI++)
//{
//	for(var crutch = 0; crutch < 100; crutch++)
//	{
//		answer[crutchI, crutch] = "END"
//	}
//}

count = 4 //!!!!
var i = 0		//I 0
sprites[i] = icon_bik
questions[i] = @"I am a Minotaur, the guard of hell deeps"
answer[i, 0] = "I wanna in!"		//1
edges[i, 0] = 1
a_count[i] = 1			///!!!!!!

i++				//I 1
sprites[i] = icon_bik
questions[i] = @"Okay, do you have Mail.ru employee ticket?"
answer[i, 0] = "Of course"				//2
answer[i, 1] = "Actually not"			//3
edges[i, 0] = 2
edges[i, 1] = 3
a_count[i] = 2

i++				//I 2
sprites[i] = icon_bik
questions[i] = @"Okay, nobody will lie about it. Here you go."
result[i] = "OKAY"	/// global.lastDialogResult
edges[i, 0] = "END"
a_count[i] = 0

i++				//I 3
sprites[i] = icon_bik
questions[i] = @"Sorry, I should beat your face, you know."
result[i] = "FIGHT"	/// global.lastDialogResult
edges[i, 0] = "END"
a_count[i] = 0

