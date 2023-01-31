public class OperationsHelper {
    

    public Decimal largestOutOfTwoNumbers(Decimal a, Decimal b){
            if (a>b) {
                return  a;
            } else {
                return  b;
            }  
    }

    public Decimal largestOutOfTHreeNumbers(Decimal a, Decimal b, Decimal c){
        if (a>b && a>c) {
            return a;
        } else if(b>a && b>c){
            return b;    
        }else{
            return c;
            
            
        }
    }


public integer sumOfPositiveIntegers(Integer n){
    Integer sum;
    if(n<0){
       system.debug('Wrong');
       sum=null;
       return sum;
    }else{
        sum=0;
        for(Integer i = 0; i<=n; i++){
            sum+=i;
        }
    }
    return sum;  
}


public static Decimal Sum(List<Decimal> numbers){
    Decimal sum = 0;
    if(!numbers.isEmpty()){
        for (Decimal each : numbers) {
            sum+=each; 
        }
    }else{
        System.debug('ERROR');
    }
    return sum;
}

public static Decimal Average(List<Decimal> numbers){
    Decimal sum = 0;
    Decimal average;
    Integer i = 0;
    if(!numbers.isEmpty()){
        for (Decimal each : numbers) {
            sum+=each;
          i++;
        }
       // average = sum/numbers.size();
       average = sum/i;
    }else{
        System.debug('ERROR');
    }
return average;
}

public static Decimal Highest(List<Decimal> numbers){
    if(!numbers.isEmpty()){
        numbers.sort();    
    }else{
        System.debug('ERROR');
    }
    return numbers[numbers.size()-1];

}
public static Decimal Lowest(List<Decimal> numbers){
    if(!numbers.isEmpty()){
        numbers.sort(); 

    }else{
        System.debug('ERROR');
    }
    return numbers[0];
}

public static decimal highestNumber(list<decimal> value){
    decimal highest;
    if (value.size() > 0){
        for (integer i = 0; i < value.size(); i++) {
            for (integer j = i+1; j < value.size(); j++) {
            if (value[i] > value[j]) {
                highest = value[i];
                value[i]=value[j];
                value[j]=highest;    
            }
          }
        } 
    } else {
        system.debug('Please provide values to do the operation');
    }
    return highest;
}

public static Decimal highList(List<Decimal> value ){
    decimal highest=value[0];
       if(value.size()>0){
        //decimal highest=value[0];
           for(decimal each:value){
               if(each>highest){
                   highest=each;
               }else{
       system.debug('Please provide values to do the operation');
           }
           }
}
   return highest;
       }


/* public static Decimal Highest1(List<Decimal> numbers){
    if(!numbers.isEmpty()){
        for (Decimal each : numbers) {
            
        }
           
    }else{
        System.debug('ERROR');
    }
    

}
public static Decimal Lowest2(List<Decimal> numbers){
    if(!numbers.isEmpty()){
        

    }else{
        System.debug('ERROR');
    }
    
}
 */
}






