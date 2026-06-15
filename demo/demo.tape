# vhs script — renders demo/super-translator.gif
# Regenerate with:  vhs demo/demo.tape   (run from repo root)

Output demo/super-translator.gif

Set Shell bash
Set FontSize 18
Set Width 1200
Set Height 900
Set Padding 24
Set Theme "Catppuccin Mocha"
Set TypingSpeed 55ms

Hide
Type "cd ~/super-translator/demo"
Enter
Type "export PS1='$ '"
Enter
Type "clear"
Enter
Sleep 500ms
Show

Sleep 600ms
Type "./super-translator '他这个人说话总是绕弯子，让人摸不着头脑。'"
Sleep 900ms
Enter
Sleep 4500ms
