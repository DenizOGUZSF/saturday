List<String> colorsList = new List<String>{'white', 'black','blue','yellow','red'};
System.debug(colorsList);
System.debug(colorsList.size());
System.debug(colorsList.contains('red'));
System.debug(colorsList.get(colorsList.size()-1));
System.debug(colorsList.get(colorsList.size()-1).toUpperCase());

List<String> colorsCodeList = new List<String>{'#FF0000', '#JF00hd','#FH8373','#PF00098'};
System.debug(colorsList.equals(colorsCodeList));

colorslist.addAll(colorsCodeList);
System.debug(colorsList);










