function DialogResponses(_response){
	switch(_response) 
	{
	case 0: break;
	case 1:NewTextBox("You Gave Response AA",1);break;
	case 2:NewTextBox("You Gave Response BB! Any further response?",1, ["3:Yes!","0:No."]);break;
	case 3:NewTextBox("Thanks for your responses!",0);break;
	
	
	default:
		NewTextBox("What?????");

		break;
		
		
		
	}
}