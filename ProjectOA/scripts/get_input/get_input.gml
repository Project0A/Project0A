//Define oque as teclas fazem
key_up = keyboard_check(ord("W"));
key_left = keyboard_check(ord("A"));
key_down = keyboard_check(ord("S"));
key_right = keyboard_check(ord("D"));

xaxis = (key_right - key_left);
yaxis = (key_down - key_up);