FNR==1  {
	print "\n## "FILENAME
	print "##"$0"\n"
	print "\n```bash\n"
}

{print FNR"\t"$0}

ENDFILE {
	print "```\n"
}

