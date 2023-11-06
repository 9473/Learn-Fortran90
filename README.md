# Learn-Fortran90

## 编译Fortran：从配置到编译到运行
此教程是自己实践出来的踩过的一些坑，目的是给一些和我一样用macos的小白能够快速上手
1. [按照该网站的提供的帮助，下载gfortran和vscode](https://fortran-lang.org/zh_CN/learn/best_practices/file_io/)
2. 在vscode中安装Modern Fortran插件（它会提醒你安装另一个东西，很可能会安装失败，但不重要，它主要是想要你安装fortls，是fortran-language-server，但这个东西只是会让你更好看fortran语言，和编译无关）
3. 这样就可以在vscode中写.f90文件了。写好的文件通常保存在桌面，比如保存在桌面'code'文件夹中
4. 打开终端，进入目标文件夹: cd desktop; cd code
5. 显示到code文件夹之后输入ls查看该文件夹目录
6. 输入gfortran filename.f90 -o runfilename进行编译
7. 输入./runfilename进行运行  
一些指令：
查看gfortran是否安装成功：
gfortran --version
查看gfortran的安装目录：
which gfortran
在该网站的安装教程中，通常只需要两步，xcode-select --install安装命令行工具，brew -install gcc就OK了，当然作为小白的我不知道brew这一步和我到官网下载gfortran是不是重复步骤。 只需要这两步就可以了，这两步是默认了先前已经安装xcode和homebrew  
如果需要更新命令行工具（有时候这个会出现问题），需要先删除再重装，[见这个网站](https://stackoverflow.com/questions/34617452/how-to-update-xcode-from-command-line)  
一般来说就可以在终端编译和运行了。

## 一些问题汇集
2023/11/6  
Q:为什么我的文件编译成功，在运行的时候出现错误: Fortran runtime error: Cannot open file 'para.in': No such file or directory? 我的输入文件在同一目录下啊。  
A:很神奇的一个事，那一行是`open(10,file = 'para.in', status = 'old')`，我查到的答案可能是说明该语法不是gfortran的标准语法，后来我根据[这个网站](https://fortran-lang.org/zh_CN/learn/best_practices/file_io/)改成`open(10,file = 'para.in', status = 'old', action = 'read')`就成功了。  
