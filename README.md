vim-snnm
========

> There are only two hard things in Computer Science: cache invalidation and naming things.
>
> -- Phil Karlton

The first problem is for smart people only. The second one can be eased with the aid of vim-snnm.

Demo
----
![demo](https://github.com/ewilazarus/vim-snnm/raw/master/doc/demo.gif)

How it works
------------
vim-snnm uses snnm under the hood to retrieve synonyms from the web and display them in a buffer where you may pick whatever meets your naming needs. For further information please refer to the [documentation](https://github.com/ewilazarus/vim-snnm/blob/master/doc/snnm.txt).

Where does the data come from?
------------------------------
All data comes from http://www.thesaurus.com

Installation
------------
* Make sure you have a working installation of Python 3.x
* Install [snnm](https://github.com/ewilazarus/snnm): `pip install snnm`
* Use the vim plugin manager of your choice to install vim-snnm (I recommend using [Vundle](https://github.com/gmarik/Vundle.vim))
