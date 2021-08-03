public with sharing class AddTaskWhenAccountCreated {

    @InvocableMethod(label='Task for Account' category='Account')
    public static void workWithAccount(List<ID> ids) {
      
      List<Task> tasks=new List<Task>();
      Account account = new Account();
      for (ID i : ids) {
        account = [SELECT Name FROM Account WHERE Id = :i];
        Task task=new Task();
        task.Subject='Negotiations with '+ account.Name;
        task.WhatId=i;
        tasks.add(task);
      }
      insert tasks;

    }

}