Set<String> fruitset = new Set<String>{'Orange','Apple','Banana','Cherry'};

for (String each : fruitset) {
    System.debug(each);  
}

System.debug(fruitset.size());

fruitset.add('Apricot');
System.debug(fruitset);
System.debug(fruitset.contains('Apricot'));
System.debug(fruitset.isEmpty());

