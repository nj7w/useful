## Markdown basics

- [Basic Syntax](https://www.markdownguide.org/basic-syntax)

## Markdown cheat sheet

- [Useful link](https://markdown.land/markdown-cheat-sheet)
 
## Table alignment
 
- Aligning columns:
	- To align left, add a colon to the left (below header). Example `:---`  
	- To align right, add a colon to the right (below header). Example `---:`
	- To align center, add colons to the left and right (below header). Example `:---:`

	- Reference: [Link](https://markdown.land/markdown-table)

## Links

- Inline links:
  - Using *absolute path*. **Syntax:**  `[Text to display as link](web address)`.  Example:
    - [GNU](https://www.gnu.org)
  - Using *relative path*. **Syntax:**  `[Text to display as link](relative path)`.  Example:  
    \[My link](../repo/code)

- Reference links:
  - There are two parts of reference links: 
    - first part: it is kept inline with text
	- second part: it is stored somewhere else (preferably at the bottom)
  - Formatting the first part:
    - Use two sets of brackets:
		- Text in the first set of brackets displays the link
		- Text in the second set of brackets refers to a label that points to the link 
		  we store somewhere else. This is not case sensitive and can include letters, 
		  numbers, spaces, or punctuation
	    - Space between the brackets is optional 
		- Example:  
		  \[my link] [1] 
  - Formatting the second part:
    - Second part of the link (stored at the bottom) has following attributes:
	  - The label, in brackets, followed immediately by a colon and at least one 
	    space. Example:  
		`[label]: `
	  - The URL for the link, which you can optionally enclose in angle brackets
	  - The optional title for the link, which you can enclose in double quotes, 
	    single quotes, or parentheses.
	  - Examples: (all are roughly same)
		- \[1]: https://en.wikipedia.org/wiki/Hobbit#Lifestyle
		- \[1]: https://en.wikipedia.org/wiki/Hobbit#Lifestyle "Hobbit lifestyles"
		- \[1]: https://en.wikipedia.org/wiki/Hobbit#Lifestyle 'Hobbit lifestyles'
		- \[1]: https://en.wikipedia.org/wiki/Hobbit#Lifestyle (Hobbit lifestyles)
		- \[1]: \<https://en.wikipedia.org/wiki/Hobbit#Lifestyle> "Hobbit lifestyles"
		- \[1]: \<https://en.wikipedia.org/wiki/Hobbit#Lifestyle> 'Hobbit lifestyles'
		- \[1]: \<https://en.wikipedia.org/wiki/Hobbit#Lifestyle> (Hobbit lifestyles)
  - Full example of reference link:  
    - This is really nice [link][1], and it looks clean.
	- \[1]: https://en.wikipedia.org/wiki/Hobbit#Lifestyle "Hobbit lifestyles"
	

## Images

- Add exclamation mark (`!`), followed by alt text in brackets and URL of the 
  image in parentheses. Example:   
  \!\[](/assets/images/my_image.png)

## Line breaks

- Line breaks can be achieved by:
  - Add two white spaces at the end of the line
  - Add an empty line - this will result in extra blank line

## URLs and emails

- Enclose them in angle brackets. Example:  
  <https://www.markdownguide.org>  
  <fake@example.com>
  
## Colors, alignment and other useful tips:

- Look at this [link](https://math.meta.stackexchange.com/questions/5020/mathjax-basic-tutorial-and-quick-reference)

## MathJax 3 components:

- Useful [link](http://docs.mathjax.org/en/latest/options/output/chtml.html?highlight=displayalign#the-configuration-block)
