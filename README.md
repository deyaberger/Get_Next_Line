# Get_Next_Line

Summary: The aim of this project is to make you code a function that returns a line
ending with a newline, read from a file descriptor.

### Subject  
  
• The first parameter is the file descriptor that will be used to read.  
• The second parameter is the address of a pointer to a character that will be used
to save the line read from the file descriptor.  
• The return value can be 1, 0 or -1 depending on whether a line has been read,
when the reading has been completed, or if an error has happened respectively.  
• Your function get_next_line must return its result without ’\n’.  
• Calling your function get_next_line in a loop will then allow you to read the text
available on a file descriptor one line at a time until the end of the text, no matter
the size of either the text or one of its lines.

### Prototype
```
int get_next_line(const int fd, char **line);
```  

### Compilation example
```
gcc -Wall -Wextra -Werror main_example.c get_next_line.c libft/libft.a -o gnl
./gnl text_example
```  
You should see the text contained in "text_example" printed on the standard output.


Obtained mark for this project : 123/100
