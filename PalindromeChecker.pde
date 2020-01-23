public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(reverse(lines[i]))==true)
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
 
  String bruh = "";
  for(int i = word.length(); i > 0; i--){
    bruh = bruh + word.charAt(i - 1);
  }
  if(bruh.equals(word)){
    return true;
  }else{
    return false;
  }
  
}
public String reverse(String str)
{
  String sNew = new String();
  for(int i = str.length(); i > 0; i--){
    sNew = sNew + str.charAt(i - 1);
  }
 
  String pNew = new String();
  for(int i  = 0; i < sNew.length(); i++){
    if(Character.isLetter(sNew.charAt(i))){
      pNew = pNew + sNew.charAt(i);
    }
  }
  
  return pNew.toLowerCase();
}
