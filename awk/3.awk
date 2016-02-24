{
	if(FNR==1) printf("%s\n",FILENAME);
	if($2>6){
		printf("%s\n",$0);
	}
}
