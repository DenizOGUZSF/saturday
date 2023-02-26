/* Set<String> uniqueNameSet = new Set<String>{'Tom','jerry'};

system.debug(uniqueNameSet.size());

uniqueNameSet.add('Mickey');
uniqueNameSet.add('Minnie');
system.debug(uniqueNameSet);

system.debug(uniqueNameSet.contains('Deniz'));

system.debug(uniqueNameSet.isEmpty());

uniqueNameSet.clear();
system.debug(uniqueNameSet);
system.debug(uniqueNameSet.size());
system.debug(uniqueNameSet.isEmpty()); */


Map<String,Integer>  StudentRank =new Map<String,Integer>();
StudentRank.put('STD1', 1);
StudentRank.put('STD2', 2);
StudentRank.put('STD3', 3);
StudentRank.put('STD4', 4);
system.debug(StudentRank);

Set<String> studentKey = StudentRank.keySet();
for(String eachkey:studentKey){
    system.debug(eachkey);
    system.debug('Student Name :'+ eachkey+' and Rank : '+StudentRank.get(eachkey));
       
       
}





