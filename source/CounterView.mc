using Toybox.WatchUi;

class CounterView extends WatchUi.View {
    var counterValue = 1;

    function initialize() {
        View.initialize();
    }

    // Load your resources here
    function onLayout(dc) {
        setLayout(Rez.Layouts.MainLayout(dc));
        updateText();
    }

    // Called when this View is brought to the foreground. Restore
    // the state of this View and prepare it to be shown. This includes
    // loading resources into memory.
    function onShow() {
    }

    // Update the view
    function onUpdate(dc) {
        updateText();
        // Call the parent onUpdate function to redraw the layout
        View.onUpdate(dc);
    }

    // Called when this View is removed from the screen. Save the
    // state of this View here. This includes freeing resources from
    // memory.
    function onHide() {
    }

    function updateText() {
        var counter = View.findDrawableById("counter");
        counter.setText(counterValue.toString());
        System.println("Uppedetti" + counterValue.toString());
    }

    function increment() {
        counterValue += 1;
        requestUpdate();
    }

}
