# <p align="center">Trying out markdown</p>     

~~#################################################################################################################~~

**<p align="center">Heading section</p>** 


~~#################################################################################################################~~
# This is the first Menu
## This is the second Menu   
### This is the third Menu

> [!NOTE]
Github will create a table of content at the side for you when in your file you have more than one heading.

**<p align="center">Now let's start</p>**  

~~#################################################################################################################~~

**<p align="center">Quotted Text</p>**

~~#################################################################################################################~~  
**Hello**   
__Helllo__  
*Hello*  
_Hello_  
~~Hello~~  
**This topic is very _important_**  
***This topic is very _important_***  
**And _i_ will have to <sub>practice it</sub>**  
**Because it very <sup>useful</sub>**

~~#################################################################################################################~~

**<p align="center">Quotted code</p>**

~~#################################################################################################################~~  
Use `git status` to get the status of your ___local___ git environment.


~~#################################################################################################################~~

**<p align="center">Adding Image</p>**

~~#################################################################################################################~~
<img src="https://www.programiz.com/sites/tutorial2program/files/working-of-function-python.png">

~~#################################################################################################################~~

**<p align="center">Adding Python fuction</p>**

~~#################################################################################################################~~
```python
def greet():
    print('Hello World!')

# call the function
greet()

print('Outside function')
```

~~#################################################################################################################~~

**<p align="center">Adding colors</p>**

~~#################################################################################################################~~  
`#ffffff` 

> [!WARNING]     
>   1. A supported color model cannot have any leading or trailing spaces within the backticks.
>1. The visualization of the color is only supported in issues, pull requests, and discussions.

~~#################################################################################################################~~

**<p align="center">Adding Links</p>**     

~~#################################################################################################################~~   
Aws Bootcamp [Cloud Course](https://www.youtube.com/watch?v=zA8guDqfv40&t=1s)

> [!NOTE]
GitHub automatically creates links when valid URLs are written in a comment. For more information

~~#################################################################################################################~~

**<p align="center">Adding Image using another format</p>**

~~#################################################################################################################~~
![This is the diagramatic representation of the above code](https://www.programiz.com/sites/tutorial2program/files/working-of-function-python.png)

~~#################################################################################################################~~

**<p align="center">Adding theme in pictures</p>**

~~#################################################################################################################~~

<picture>
  <source media="(prefers-color-scheme: dark)" srcset="https://user-images.githubusercontent.com/25423296/163456776-7f95b81a-f1ed-45f7-b7ab-8fa810d529fa.png">
  <source media="(prefers-color-scheme: light)" srcset="https://user-images.githubusercontent.com/25423296/163456779-a8556205-d0a5-45e2-ac17-42d089e3c3f8.png">
  <img alt="Shows an illustrated sun in light mode and a moon with stars in dark mode." src="https://user-images.githubusercontent.com/25423296/163456779-a8556205-d0a5-45e2-ac17-42d089e3c3f8.png">
</picture>

~~#################################################################################################################~~

**<p align="center">Adding unordered list</p>**

~~#################################################################################################################~~
- George Washington
* John Adams
+ Thomas Jefferson

~~#################################################################################################################~~

**<p align="center">Adding orered list</p>**

~~#################################################################################################################~~  
1. George Washington
1. John Adams
1. Thomas Jefferson

~~#################################################################################################################~~

**<p align="center">Adding Nested Lists</p>**

~~#################################################################################################################~~  
1. This is my first ordered item
    * This is my first sub-order item
        1. This is my first sub-sub ordered item
            * This is my first sub-sub unordered item
2. This is my second ordered item
    * This is my second sub-order item

~~#################################################################################################################~~

**<p align="center">Adding Task Lists</p>**

~~#################################################################################################################~~  
- [x] #739
- [ ] https://github.com/octo-org/octo-repo/issues/740
- [ ] Add delight to the experience when all tasks are complete :tada:

> [!CAUTION]   
If a task list item description begins with a parenthesis, you'll need to escape it with \
   
- [x] (issues) open a follow up issue

~~#################################################################################################################~~

**<p align="center">Mentioning People and Teams</p>**

~~#################################################################################################################~~  
@github.com/oriafo how is the markdown learning going

> [!NOTE] 
A person will only be notified about a mention if the person has read access to the repository and, if the repository is owned by an organization, the person is a member of the organization.

~~#################################################################################################################~~

**<p align="center">Referencing Issues and pull request</p>**

~~#################################################################################################################~~  
You can bring up a list of suggested issues and pull requests within the repository by typing #. Type the issue or pull request number or title to filter the list, and then press either tab or enter to complete the highlighted result.

~~#################################################################################################################~~

**<p align="center">Referencing external resources</p>**

~~#################################################################################################################~~  
If custom autolink references are configured for a repository, then references to external resources, like a JIRA issue or Zendesk ticket, convert into shortened links. To know which autolinks are available in your repository, contact someone with admin permissions to the repository. For more information, see "Configuring autolinks to reference external resources."

~~#################################################################################################################~~

**<p align="center">Uploading Asset</p>**

~~#################################################################################################################~~  
You can upload assets like images by dragging and dropping, selecting from a file browser, or pasting. You can upload assets to issues, pull requests, comments, and .md files in your repository.

~~#################################################################################################################~~

**<p align="center">Using Emojis</p>**

~~#################################################################################################################~~  
@oriafo :+1: This PR looks great - it's ready to merge! :shipit:

> [!TIP]   
[you can access the emojis cheet sheet  from this links;](https://github.com/ikatyang/emoji-cheat-sheet/blob/master/README.md)

~~#################################################################################################################~~

**<p align="center">Using paragraphs</p>**

~~#################################################################################################################~~  
You can create a new paragraph by leaving a blank line between lines of text.

~~#################################################################################################################~~  
**<p align="center">Using footnotes</p>**  
~~#################################################################################################################~~  
Here is a simple footnote[^1].   
A footnote can also have multiple lines[^2].  
[^1]: My reference.  
[^2]: To add line breaks within a footnote, prefix new lines with 2 spaces.
  This is a second line.

> [!IMPORTANT]  
The position of a footnote in your Markdown does not influence where the footnote will be rendered. You can write a footnote right after your reference to the footnote, and the footnote will still render at the bottom of the Markdown. Footnotes are not supported in wikis.

~~#################################################################################################################~~  
**<p align="center">Using Alerts</p>**  
~~#################################################################################################################~~  
> [!NOTE]
> Useful information that users should know, even when skimming content.

> [!TIP]
> Helpful advice for doing things better or more easily.

> [!IMPORTANT]
> Key information users need to know to achieve their goal.

> [!WARNING]
> Urgent info that needs immediate user attention to avoid problems.

> [!CAUTION]
> Advises about risks or negative outcomes of certain actions.

~~#################################################################################################################~~  
**<p align="center">Hidding Content with comments</p>**  
~~#################################################################################################################~~  
> [!TIP]  
> The information is below, but commented out
<!-- This content will not appear in the rendered Markdown -->

~~#################################################################################################################~~  
**<p align="center">Ignoring markdown formatting</p>**  
~~#################################################################################################################~~    
Let's rename \*our-new-project\* to \*our-old-project\*.

> [!NOTE]  
You can tell GitHub to ignore (or escape) Markdown formatting by using \ before the Markdown character.

~~#################################################################################################################~~  
**<p align="center">Disabling Markdown entering</p>**  
~~#################################################################################################################~~  

> [!TIP]  
When viewing a Markdown file, you can click **Code** at the top of the file to disable Markdown rendering and view the file's source instead.