VIM配置

===

### 使用方法

1 获取源码

  执行命令`git clone git@github.com:HouCoder/vim.git ~/.vim`将配置克隆至本地`~/.vim`目录。

2 安装Vundle

  执行命令`git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim`安装Vundle至本地。

3 创建配置文件

  执行命令`ln -s ~/.vim/vimrc ~/.vimrc`，创建vim配置软连接。

4 安装扩展

  打开vim，执行命令`BundleInstall`安装扩展。

### 已安装插件列表

- PowerLine 
- NERD Tree
- emmet
- vim-coffee-script

### 已绑定的快捷键

- **F2**：重绘屏幕，主要是应对清空编译coffee文件错误消息的问题
- **F4**：将coffee文件编译为Js文件
- **F8**：切换至左边的tab
- **F10**：切换至右边的tab
- **Ctrl+left**：将当前tab向左移动
- **Ctrl+right**：将当前tab向右移动
- **(Ctrl+E) then (,)**：调用emmet，生成HTML代码

### 注意事项

- coffeescript编译支持请确认已安装coffeescript编译支持
