# pmsh
Simple project manager CLI for GNU/Linux

## Installation
**Warning**: always inspect scripts before running them, if you're not comfortable installing this way, just follow line by line the `install.sh` script
```bash
curl https://raw.githubusercontent.com/Tashima42/pmsh/main/install.sh | sudo sh
```
Uninstall:
```bash
sudo rm /usr/local/bin/pmsh && rm $HOME/.config/.pmsh
```
* Remove source line from RC file

## Usage
```
Usage:  pmsh {help|list|add|remove|edit}
Examples:
    List: pmsh list
    Add: pmsh add $name $directory
    Remove: pmsh remove $name
    Edit: pmsh edit $name $new_directory
```

