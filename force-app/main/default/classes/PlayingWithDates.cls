public class PlayingWithDates {

    public void printDateOutput(){

        //todaysDate
        Date todayDate = Date.today();
        system.debug('Todays date is '+ todayDate);


        Date newDate1 = Date.newInstance(2789, 11, 5);
        system.debug('New date is '+ newDate1);
        
        Date newDate2 = Date.newInstance(1459, 3, 4);
        system.debug('New date is '+ newDate2);

         Integer dayInt = 26;
         Integer monthInt =5;
         Integer yearInt = 1999;
         Date newDate3 = Date.newInstance(yearInt, monthInt, dayInt);
         system.debug('My custom date is '+ newDate3);

         

         


    }
    
}