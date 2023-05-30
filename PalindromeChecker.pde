public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++)
  {
    if (palindrome(lines[i])==true)
    {
      System.out.println(lines[i] + " IS a palindrome.");
    } else
    {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  word = lowercase(word);
  word = onlyLetters (word);
  if (word.equals(reverse(word))) {
    return true;
  } else {
    return false;
  }
}
public String reverse(String str)
{
  String sNew = new String();
  for (int i = str.length()-1; i>=0; i--) {
    sNew= sNew + str.substring(i, i + 1);
  }
  return sNew;
}
public String lowercase (String str) {
  str = str.toLowerCase();
  String sNew = new String();
  for (int i = 0; i< str.length(); i++) {
    sNew= sNew + str.substring(i, i + 1);
  }
  return sNew;
}
public String onlyLetters (String str) {
  String sNew = new String();
  String Alphabet =  "abcdefghijklmnopqrstuvwxyz";
  for (int i= 0; i<str.length(); i++) {
    if (Alphabet.indexOf(str.charAt(i)) != -1) {
      sNew = sNew + str.substring (i, i +1);
    }
  }
  return sNew;
}
