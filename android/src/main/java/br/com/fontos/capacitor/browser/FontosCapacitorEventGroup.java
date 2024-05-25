package br.com.fontos.capacitor.browser;

/**
 * Simple class to handle indeterminate sequence of events. Not thread safe.
 */
class FontosCapacitorEventGroup {

    interface EventGroupCompletion {
        void onGroupCompletion();
    }

    private int count;
    private boolean isComplete;
    private EventGroupCompletion completion;

    public FontosCapacitorEventGroup(EventGroupCompletion onCompletion) {
        super();
        count = 0;
        isComplete = false;
        completion = onCompletion;
    }

    public void enter() {
        count++;
    }

    public void leave() {
        count--;
        checkForCompletion();
    }

    public void reset() {
        count = 0;
        isComplete = false;
    }

    private void checkForCompletion() {
    Log.d("checkForCompletion|count: " + count);
        if (count <= 0) {
            if (isComplete == false && completion != null) {
                completion.onGroupCompletion();
            }
            isComplete = true;
        }
    }
}
