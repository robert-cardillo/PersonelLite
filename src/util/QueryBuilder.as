package util
{
	import mx.collections.ArrayCollection;
	
	import nz.co.codec.flexorm.EntityManager;
	import nz.co.codec.flexorm.criteria.Criteria;

	public class QueryBuilder
	{
		public static function getCriteriaQueryResult(entity:Object, whereFields:Array, limit:Number=NaN, offset:Number=NaN):ArrayCollection
		{
			var criteria:Criteria = EntityManager.getInstance().createCriteria(entity.constructor);
			
			for(var i:int = 0; i < whereFields.length; i++) {
				criteria.addEqualsCondition(whereFields[i],entity[whereFields[i]]);
			}
			
			criteria.setLimit(limit).setOffset(offset);
			
			return EntityManager.getInstance().fetchCriteria(criteria);
		}
		
		public static function getCriteriaQueryRowCount(entity:Object, whereFields:Array, limit:Number=NaN, offset:Number=NaN):int
		{
			var criteria:Criteria = EntityManager.getInstance().createCriteria(entity.constructor);
			
			for(var i:int = 0; i < whereFields.length; i++) {
				criteria.addEqualsCondition(whereFields[i],entity[whereFields[i]]);
			}
			
			criteria.setLimit(limit).setOffset(offset);
			
			return EntityManager.getInstance().fetchCriteriaRowCount(criteria);
		}
	}
}