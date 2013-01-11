package entities
{
	[Bindable]
	[Table(name="UT_CALKAD")]
	public class CalKad
	{
		[Id]
		public var id:int; 
		
		public var sicili:int;
		
		public var gorevyeri:int;
		public var gorevyeri_u:String;
		
		public var sube:int; 
		public var sube_u:String;
		
		public var buro:int; 
		public var buro_u:String;
		
		public var t_onay:Date; 
		
		public var t_gorbas:Date;
		
		public var t_yurilkes:Date;
		
		public var atamaturu:int; 
		public var atamaturu_u:String;
		
		public var atamasebebi:int; 
		public var atamasebebi_u:String;
		
	}
}