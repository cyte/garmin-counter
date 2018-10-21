using Toybox.WatchUi;

class TouchDelegate extends WatchUi.InputDelegate {
    var counterView;

    function initialize(aCounterView) {
        counterView = aCounterView;
    }

    function onTap(clickEvent) {
        System.println("Tapetitap");
        counterView.increment();
    }
}