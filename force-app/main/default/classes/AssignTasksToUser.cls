public with sharing class AssignTasksToUser {

    @InvocableMethod(label='Assign Tasks to User' category='Account')
        public static void assignTaskToUser(List<ID> ids) {
            ID i = ids.get(0);
            List<Task> tasks=new List<Task>();
            tasks=[SELECT Id, WhatId FROM Task WHERE WhatId=:i];
            if(tasks.size()>=3){
                List<User> users=[SELECT Id FROM User limit 1];
                for (Task taskElem : tasks) {
                    taskElem.OwnerId=users.get(0).Id;
                }
                update tasks;
             }
        }
        
}