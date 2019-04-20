BEGIN{
#print "BYTES","\t","FILE"
    printf("%5s\t%-20s\n","COUNT","USER")
    
}

NR>1{
    line[NR]=$1  
}


END {
    
    i=NR
    for(i=NR;i>1;i=i-1)
    {
        
        if ( line[i] in users)
        {
            users[line[i]]++
        }
        else
        {
            users[line[i]]=1
            #printf("%d\t%s\n",users[line[i]],line[i])
        }
    }
#for(var in users)
#printf("%5d\t%-20s\n",users[var],var)
    for(var in users)
    {printf("%5d\t%-20s\n",users[var],var) |"sort -r -n -k1";}
}
