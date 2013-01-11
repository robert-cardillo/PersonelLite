package entities
{
	[Bindable]
	[Table(name="UT_MASTER")]
	public class Personel
	{	
		[Id]
		public var id:int;
		
		public var sicili:int;
		
		public var tc_kimlikno:Number;
		
		public var adi:String;
		
		public var soyadi:String;
		
		public var aktifgoryer:int;
		public var aktifgoryer_u:String;
		
		public var aktifsube:int;
		public var aktifsube_u:String;
		
		public var aktifburo:int;
		public var aktifburo_u:String;
		
		public var rutbe:int;
		public var rutbe_u:String;
		
		public var unvani:int;
		public var unvani_u:String;
		
		public var brans:int;
		public var brans_u:String;
		
		public var hizsinifi:int;
		public var hizsinifi_u:String;
		
		public var ayriseb:int;
		public var ayriseb_u:String;
		
		public var passeb:int;
		public var passeb_u:String;
	}
}