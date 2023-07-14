package;

import flixel.FlxG;
import openfl.display.Sprite;
import openfl.events.AsyncErrorEvent;
import openfl.events.MouseEvent;
import openfl.events.NetStatusEvent;
import openfl.media.Video;
import openfl.net.NetConnection;
import openfl.net.NetStream;
#if hxCodec
import hxcodec.VideoHandler;
#end

using StringTools;

class VideoState extends MusicBeatState
{
	#if hxCodec
	var video:VideoHandler;
	#else
	var video:Video;
	#end
	var netStream:NetStream;
	private var overlay:Sprite;

	public static var seenVideo:Bool = false;

	override function create()
	{
		super.create();

		seenVideo = true;

		FlxG.save.data.seenVideo = true;
		FlxG.save.flush();

		if (FlxG.sound.music != null)
			FlxG.sound.music.stop();

		#if hxCodec
		video = new VideoHandler();
		video.finishCallback = function()
		{
			FlxG.removeChild(video);

			TitleState.initialized = false;
			FlxG.switchState(new TitleState());
		}
		#else
		video = new Video();
		#end
		FlxG.addChildBelowMouse(video);

		#if hxCodec
		video.playVideo(Paths.video('kickstarterTrailer.mp4').replace('videos:',''));
		#else
		var netConnection = new NetConnection();
		netConnection.connect(null);

		netStream = new NetStream(netConnection);
		netStream.client = {onMetaData: client_onMetaData};
		netStream.addEventListener(AsyncErrorEvent.ASYNC_ERROR, netStream_onAsyncError);
		netConnection.addEventListener(NetStatusEvent.NET_STATUS, netConnection_onNetStatus);
		// netStream.addEventListener(NetStatusEvent.NET_STATUS);
		netStream.play(Paths.video('kickstarterTrailer.mp4'));
		#end

		overlay = new Sprite();
		overlay.graphics.beginFill(0, 0.5);
		overlay.graphics.drawRect(0, 0, 1280, 720);
		overlay.addEventListener(MouseEvent.MOUSE_DOWN, overlay_onMouseDown);

		overlay.buttonMode = true;
		// FlxG.stage.addChild(overlay);
	}

	override function update(elapsed:Float)
	{
		if (controls.ACCEPT)
			#if hxCodec
			video.stopVideo();
			FlxG.removeChild(video);

			TitleState.initialized = false;
			TitleState.closedState = false;
			FlxG.sound.playMusic(Paths.music('freakyMenu'));
			FlxG.switchState(new TitleState());
			#else
			finishVid();
			#end

		super.update(elapsed);
	}

	#if !hxCodec
	function finishVid():Void
	{
		netStream.dispose();
		FlxG.removeChild(video);

		TitleState.initialized = false;
		FlxG.sound.playMusic(Paths.music('freakyMenu'));
		FlxG.switchState(new TitleState());
	}

	private function client_onMetaData(metaData:Dynamic)
	{
		video.attachNetStream(netStream);

		video.width = video.videoWidth;
		video.height = video.videoHeight;
		// video.
	}

	private function netStream_onAsyncError(event:AsyncErrorEvent):Void
	{
		trace("Error loading video");
	}

	private function netConnection_onNetStatus(event:NetStatusEvent):Void
	{
		if (event.info.code == 'NetStream.Play.Complete')
		{
			finishVid();
		}

		trace(event.toString());
	}
	#end

	private function overlay_onMouseDown(event:MouseEvent):Void
	{
		netStream.soundTransform.volume = 0.2;
		netStream.soundTransform.pan = -1;
		// netStream.play(Paths.file('music/kickstarterTrailer.mp4'));

		FlxG.stage.removeChild(overlay);
	}
}
