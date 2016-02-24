
{
	#print subj;
	#print theme;
	m=match(FILENAME,subj"_"theme".*");
	if(m!=0){
		printf("%s %s\n",$1,"присутствовал");
	}
	#print m;
}
