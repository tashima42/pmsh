# pmsh
Simple project manager CLI for GNU/Linux

## Video Demo
<a href="https://asciinema.org/a/lLn3ZdvvrCR6xtHaqscIvll3s" target="_blank">
  <img src="https://asciinema.org/a/lLn3ZdvvrCR6xtHaqscIvll3s.svg" />
</a>

## Installation
**Warning**: always inspect scripts before running them, if you're not comfortable installing this way, just follow line by line the [`install.sh`](https://github.com/Tashima42/pmsh/blob/main/install.sh) script
```bash
curl https://raw.githubusercontent.com/Tashima42/pmsh/main/install.sh | bash
```
Uninstall:
```bash
sudo rm $HOME/.local/bin/pmsh && rm $HOME/.config/.pmsh
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
