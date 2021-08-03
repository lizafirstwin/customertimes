trigger NewTaskWhenAccountCreatedTrigger on Account (before insert, before update) {
    
    // List<Account> listAcc = new List<Account>(Trigger.new);
    // List<Task> tasks = new List<Task>();
    
    // if(Trigger.isInsert) {
    //     for(Account acc : listAcc) {
    //     	Task task = new Task(Subject='Negotiations with '+ acc.Name);
    //     	task.WhatId = acc.Id;
    //         tasks.add(task);
    // 	}
    // 	insert tasks;
    // }

    // if (Trigger.isUpdate) {
        
    // }
   
}