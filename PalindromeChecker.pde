public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String s = "";
  String sWord = word.toLowerCase();
  for (int i = 0; i < sWord.length(); i++)
    if (Character.isLetter(sWord.charAt(i)))
      s = s + sWord.substring(i, i+1);
  if (s.equals(reverse(s)))
    return true;
  return false;
}
public String reverse(String str)
{
    String sWord = "";
    for (int i = str.length()-1; i>=0; i--)
      sWord = sWord + str.substring(i, i+1);
    return sWord;
}






