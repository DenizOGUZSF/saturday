public  class ListPractice {
    

    public static List<Planets> planetsList = new List<Planets>();

    public static String addPlanet(String name, Integer planetNumber, Integer moonNumber) {
    
        if (name.length()!=0) {
            Planets pl = new Planets();
            pl.name = name;
            pl.moonNumber = moonNumber;
            pl.planetNumber=planetNumber;
            planetsList.add(pl);
            return 'Planet added successfully';
        } else {
            return 'Planet without a name cannot be added to the list';
            
        }
         
    }



}