public class ValidateAddress{


    public void validateHomeAddress(){
        String houseName = 'Willow';
        String streetName = '1234 Willow wood street';
        String cityName = 'Maplegrove';
        String stateName = 'NewYork';
        String stateIsoCode = 'NY';
        String countryName = 'United Sates';
        String countryIsoCode = 'US';

        Integer streetNameLength = streetName.length();
        System.debug('streetName length is ' + streetNameLength);

        boolean streetNameContainsHouseName = streetName.contains(houseName);
        System.debug('streetNameContains ' +  streetNameContainsHouseName);

        boolean streetNameContainsStateIsoCode = streetName.contains(stateIsoCode);
        System.debug('streetNameContains ' + streetNameContainsStateIsoCode );

        String stateIsoCodeUpper = stateIsoCode.toUpperCase();
        System.debug('stateIsoCodeUpper '+ stateIsoCodeUpper );
        String countryIsoCodeUpper = countryIsoCode.toUpperCase();
        System.debug('countryIsoCodeUpper '+ countryIsoCodeUpper);
        String countryNameUpper = countryName.toUpperCase();
        System.debug('countryNameUpper ' + countryNameUpper);

        String cityNameLower = cityName.toLowerCase();
        System.debug('cityNameLower '+ cityNameLower) ;
        
        String stateNameLower = stateName.toLowerCase();
        System.debug('stateNameLower '+ stateNameLower);

        String concat = houseName +' '+streetName+' '+cityName+' '+stateName+' '+stateIsoCode+' '+countryName+' '+countryIsoCode;
        System.debug(concat);




       
    
    }





    
}