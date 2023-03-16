# Requirements | VeV

This document contains the functional and non-functional requirements for Voz é Vida - VeV.

## Functional requirements

### App
* Create, update and delete caregiver/board user account;
* Create, search, update, and delete boards;
* Board creation and update may be available through a tree-based as well as a page navigation interface. In a tree-based interface, each subtree root represents a symbol that, when opened, shows the subtree first level. In a page navigation interface, a board is organized in pages with symbols. For instance, in the later, two or more symbols can show the same page when opened.
* Take/select pictures for symbols;
* Record audio for symbols;
* Create board based on another;
* Store usage data and upload it when an internet connection is available;
* Configure device to be in 'board user' mode.

### Administrative panel:
* Create, search, update, and delete caregiver/board user account;
* Create, search, update, and delete boards;
* Board creation and update may be available through a tree-based as well as page navigation interface. See the App requirements for details.
* Take/select pictures for symbols;
* Record audio for symbols;
* Share boards;
* View board user usage data.

## Non-functional requirements

* The board user system must be available as an app;

For the app:
* Run on Android and iOS devices;
* Be responsive to the device screen dimensions;
* Allow more than one user in the same device;
* Do not require TTS software in the user device;

For the administrative panel:
* Be responsive to the screen dimensions;

## General view

Board users:
* Cerebral palsy;
* Autistic spectrum;
    * Lots of variation in cognitive and motor skills.

Caregiver (therapist/family):
* Speech therapist;
* Occupational Therapist.

Landing page:
* Publicize the solution (links to stores);
* Collect leads from interested parties (for email list).

App (caregiver / surfboard user):
* When opening the app:
    - If you haven't logged in yet:
        * Create an account;
        * Access the system;
        * Recover password.
    - If you have already accessed:
        * Edit own data;
        * Put the device in use mode for a board user;
        * Return the device to administrative mode;
        * Consult board users created by me;
        * Create/update board user;
        * Link board user by his identifier (email?);
        * Delete board user created by me and not linked to another caregiver (is it?);
        * View boards;
        * Create/update boards by tree or pages mode:
            * To set up:
                * Numbers of symbols per row and column;
                * Color or background image;
                * Interaction type: click/scan;
                    - If scan:
                        * Highlight time of each symbol in seconds;
                        * Discard time of consecutive touches (in seconds);
                        * Symbol border highlight color.
                * (I THINK YOU DON'T NEED IT ANYMORE) Pronunciation mode:
                    at each symbol
                    At the end
        * Exclude planks;

* Administrative panel:
    Same as the app, but access to usage statistics (when last used, most used symbols and sequences).