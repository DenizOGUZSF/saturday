Student st = new Student();
st.firstName = 'Deniz';
st.lastName = 'Oguz';
st.classYear = 1;
st.major = 'Engineer';

String myReturn = st.generateReport();
System.debug(myReturn);

System.debug(st.generateReport());