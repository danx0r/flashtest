package {
    import flash.display.MovieClip
    import flash.text.TextField;
	import flash.external.*;

    public class hello extends MovieClip {
    	public function calledFromJS():void {
			ExternalInterface.call("alert", "Hello crool world");	/// tricky! Like Inception
    	}
        function hello() {
            var mytextfield:TextField = new TextField();
            mytextfield.border = true;
            mytextfield.width = 300;
            mytextfield.height = 30;
            mytextfield.text = "Goodbye, crool world! I have known thee well.";
            addChild(mytextfield);
			ExternalInterface.addCallback("callFlash", this.calledFromJS);
        }
    }
}

