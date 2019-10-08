# Terraform
This is my Work in progress terraform repo

This is a repo where I have examples from books, sites, other dumps, and  frankenstein scripts I've created for fun from various online resources (I'll try to link as many as I can here)

## Getting Started

Feel free to clone this repo with whatever flavor or method of git you like to use. 

```
git clone https://github.com/supmn084/Terraform.git
```

### Prerequisites

This assumes you have terraform 12.0 installed on the operating system of your choice, almost all of this is ran on windows, or Windows Subsystem for Linux

Instructions for Installing on a Linux machine running WSL
Install unzip
```
sudo apt-get install unzip
```
Confirm the latest version number on the terraform website:
 https://www.terraform.io/downloads.html
Download latest version of the terraform (substituting newer version number if needed)
```
wget https://releases.hashicorp.com/terraform/0.12.10/terraform_0.12.10_linux_amd64.zip
```
Extract the downloaded file archive

```
unzip terraform_0.12.7_linux_amd64.zip
```
Move the executable into a directory searched for executables

```
sudo mv terraform /usr/local/bin/
```
Run it

```
terraform --version 
```

### Folder Layout

You'll find various projects I've worked on or created in their own folders

## License

Nothing to see here

## Built With

* [Visual Studio Code](https://visualstudio.microsoft.com/) - My IDE of choice
* [GitLens](https://gitlens.amod.io/) - The best VS Code extension for git Repos


## Acknowledgments

* Thanks to groovemonkey for his Youtube videos that got me started and this project - https://github.com/groovemonkey/digitalocean-terraform
* I'll add more as I go along!
* Thanks for reading to this point

