@isTest
public with sharing class OperationsHelper2TEST {
    
   

    @isTest
    private static void test1() {//largestOutOfTwoNumbers(Decimal d1, Decimal d2)
        OperationsHelper2 o = new OperationsHelper2();
        decimal maxNum = o.largestOutOfTwoNumbers(9, 10);
        decimal maxNum2 = o.largestOutOfTwoNumbers(15, 11);
        system.assertEquals(10, maxNum);
        system.assertEquals(15, maxNum2);
    }
    @isTest
    private static void test2() {//smallestOutOfThreeNumbers(Decimal d1, Decimal d2, Decimal d3)
        OperationsHelper2 o = new OperationsHelper2();
        decimal minNum = o.smallestOutOfThreeNumbers(5, 18, 13);
        system.assertEquals(5, minNum);
    }
    @isTest
    private static void test3() {//sumOfPositiveInteger(integer n)
        OperationsHelper2 o = new OperationsHelper2();
        integer s = o.sumOfPositiveInteger(5);
        system.assertEquals(15, s);
    }
}
