public with sharing class AddTaskWhenAccountCreated {
    @InvocableMethod(label='Task for Account' category='Account')
    public static void workWithAccount(List<ID> ids) {
      ID f=ids.get(0);
      Account account = [SELECT Name FROM Account WHERE Id = :f];
      Task task=new Task();
      task.Subject='Negotiations with '+ account.Name;
      task.WhatId=f;
      List<Task> tasks=new List<Task>();
      tasks.add(task);
      insert tasks;
    }
}