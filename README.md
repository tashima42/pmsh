# pmsh
Simple project manager CLI for GNU/Linux

## Installation
```bash
curl https://raw.githubusercontent.com/Tashima42/pmsh/main/install.sh | sudo sh
```
Uninstall:
```bash
sudo rm /usr/local/bin/pmsh
rm $HOME/.config/.pmsh
```

## Usage
```
Usage:  pmsh {help|list|add|remove|edit}
Examples:
    List: pmsh list
    Add: pmsh add $name $directory
    Remove: pmsh remove $name
    Edit: pmsh edit $name $new_directory
```

