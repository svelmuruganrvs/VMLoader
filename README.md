# VMLoader
Showing animated Activity Indicator
<br><br><br><b>1) What is VMLoader ?</b><br>
It's super simple Activity indicator .

<br><b>2) How to acreate a VMLoader ?</b><br>
Copy VMLoader.h, VMLoader.m,color.png into to your project folder.Add those files into your project.

Then import "VMLoader.h" into your project as fallows

<b> #import "VMLoader.h"</b>

Create a object for VMLoader with the view to show as fallows.

```
VMLoader *loader = [[VMLoader alloc] initWithView:self.view];
```

To show the loader use fallowing code.

```
[loader show];
```

To hide the loader use fallowing code.

```
[loader hide];
```

*Note:-
If you want to change the activity indicator style, just change the image inside the Library folder with the same name what style of animation need. Then you will get the same effects of animation with that animation.


Screenshort
![VMLoader Sample Image](/Screen/sample.png?raw=true "VMLoader Example Output Image")
