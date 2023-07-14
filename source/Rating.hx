package;

class Rating
{
	public static function judgment(noteDiff:Float):String
	{
		/*Ratings (for Leather Engine)
		Leather Engine,25,50,70,100
		Psych Engine / Kade Engine,23,45,90,135
		Friday Night Funkin',16,33,124,149
		*/

		var daRating:String = "shit";

		if (noteDiff <= 23)
		{
			daRating = 'sick';
		}
		else if (noteDiff <= 45)
		{
			daRating = 'good';
		}
		else if (noteDiff <= 90)
		{
			daRating = 'bad';
		}
		/*else if (noteDiff <= 135)
		{
			daRating = 'shit';
		}
		Only the decision of Shit is skipped
		*/
		
		return daRating;
	}
}