package
{
	import flash.display.DisplayObject;
	import flash.display.Stage;
	import flash.events.Event;
	import flash.utils.getDefinitionByName;
	
	import com.nesium.logging.TrazzleLogger;

	public function zz_init(displayObject:DisplayObject, title:String):void
	{
		var logger:TrazzleLogger = new TrazzleLogger();

		if(displayObject.stage == null)
		{
			displayObject.addEventListener(Event.ADDED_TO_STAGE, function(e:Event):void
			{
				logger.setParams(e.target.stage, title)
			},
			false,
			0,
			true);
		}
		else
		{
			logger.setParams(displayObject.stage, title)
		}
	}
}