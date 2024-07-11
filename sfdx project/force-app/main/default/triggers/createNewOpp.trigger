trigger createNewOpp on Account (after insert) {
    if(Trigger.isInsert && Trigger.isAfter){
        createNewOppHandler.createNewOppHandlerMethod(Trigger.new);
    }

}