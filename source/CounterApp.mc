using Toybox.Application;

class CounterApp extends Application.AppBase {

    function initialize() {
        AppBase.initialize();
    }

    // onStart() is called on application start up
    function onStart(state) {
    }

    // onStop() is called when your application is exiting
    function onStop(state) {
    }

    // Return the initial view of your application here
    function getInitialView() {
        var counterView = new CounterView();
        var touchDelegate = new TouchDelegate(counterView);
        return [ counterView, touchDelegate ];
    }

}