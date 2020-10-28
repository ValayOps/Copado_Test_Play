public class AccountHandler{

public static Account insertNewAccount(String AccName){
    try{
        Account acct= new Account();
        acct.Name=AccName;
        insert acct;
        System.debug('Account inserted ');
        return acct;
       }
   catch(DmlException e){
    system.debug('A DML exception has occurred: ' +
                e.getMessage());
            return null;
   }
}
}