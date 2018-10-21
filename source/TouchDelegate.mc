using Toybox.WatchUi;

class TouchDelegate extends WatchUi.InputDelegate {
    var counterView;
    

    function initialize(aCounterView) {
        counterView = aCounterView;
    }

    function onTap(clickEvent) {
        var x = clickEvent.getCoordinates()[0];
        var y = clickEvent.getCoordinates()[1];
        var height = counterView.getHeight();
        var width = counterView.getWidth();
        System.println(clickEvent.getCoordinates());
       

		if (y.toFloat() > (height.toFloat()*.5)) {
            counterView.decrement();				
		} else {
            counterView.increment();
        }
        
    }
}