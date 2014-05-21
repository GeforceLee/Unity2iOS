Unity2iOS
=========

Unity send message to iOS


1. Drag libRGToIos.a ToiOS.h UnityToIos.cs   into the folder(Plugins/iOS/)
2. In unity code use the static function "ToIos"" of UnityToIos  to send message to iOS

		public static void ToIos(string key,string value)
		
3. Grag the RGToIOSManaager to  Xcode project Classes/
4. In "UnityAppController"   add

		- (BOOL)application:(UIApplication*)application didFinishLaunchingWithOptions:(NSDictionary*)launchOptions 
		...
			[RGToIOSManaager sharedManager];
		...


5. In "RGToIOSManaager" 
		
		- (void)receive:(NSNotification *)noti{
    		NSDictionary *dic = noti.object;
    		/**
     			{
        			key:    @"key",
        			value:  @"value"
     			}
     		*/
     		Wirte you code
		}
 
