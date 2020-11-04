# Introduction

This repo wraps a calibre instance in a container for stripping DRM from ebooks using calibre. We're using docker to abstract away any calibre's platform specific differences

## Instructions

### Requirements

1. Ensure docker is installed and setup on your respective platform
    1. Give docker access to the following folders in this repo:
        * ./library
        * ./plugins
        * ./to_import
    On OSx, you can find these settings under preferences -> Resources -> File Sharing
    ![File Sharing on a Mac](./img/osx-file-sharing.png)
2. Ensure git is installed and setup with access to github on your respective platform
3. Ensure git-lfs is installed on your respective platform

After the above is insured, clone this repo, and run git-lfs pull. Then, continue to the next section.

## Setup

1. Run the following command: ```sh ./setup.sh```
    1. After downloading and starting the image, you will be prompted to navigate to [localhost:8080](http://localhost:8080). Head on over there to complete setup. Once you see this screen, continue
    ![The home screen for calibre](./img/calibre-home-screen.png)
    2. Follow the command prompt and ***"Press enter to continue"***
2. If you have not already, navigate over to [localhost:8080](http://localhost:8080)
1. In the drop down to the right of the Calibre Library, select ***"Export and Import all Calibre Data"*** .
![Export and Import Calibre Data](./img/export-and-import-config.png)
2. Next, Select ***"Import previously exported data"*** , ***"Choose folder"*** . You will need to navigate over to the /tmp directory, and select the /to_import folder. **NOTE** select the entire folder, do not enter the folder. Finally, highlight to_import, and select ***"Choose"*** to the bottom-right of the window.
    * ![Select Prev Imp Data](./img/prev-imp.png)
    * ![Select Choose Folder](./img/choose-fldr.png)
    * ![Find the tmp dir and to_choose](./img/tmp-dir-to-choose.png)
    * ![Select Choose](./img/choose.png)
3. In the next window, select the ***"Select Folder"*** button and select the /config/Calibre Library folder. Then, select ***"OK"** at the bottom right of the window.
![Select Where to Import The Data](./img/import-config.png)
4. Finally, select ***"Yes"*** in the warning dialogue
![Select Yes](./img/select-yes.png)

## Using the Tool


## Feature RoadMap

- [ ] Tool Features
    - [x] Make tool compatible with docker-compose
    - [x] Ensure tool is platform agnostic
    - [ ] Wrap in a small container which abstracts the setup instructions
    - [ ] Create a simple cli implementations for those who like the terminal
    - [ ] Create docker image for service engineers
- [ ] Documentation
    - [ ] Document git lfs 
    - [ ] Document setup instructions for
        - [ ] Windows
        - [x] Mac
        - [ ] Linux
    - [ ] Document how to use the tool 
- [ ] Clean-up
    - [ ] Remove old metadata from to_import calibre data