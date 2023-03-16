# Use case scenarios - VeV

The document presents the scenario document for the following use cases:

## App
* Manage account;
* Manage boards;
* Register usage data;
* Configure device.

### Manage account

**Acronym**: VEV-UC-001

**Short description**: It allows users to create, update, and delete their user accounts. Both board user and caregiver accounts may be managed through this use case.

**Priority**: 5 (Lowest 1 - 5 Highest)

**Actors**: Board user and caregiver

**Basic flow (BF)**:
1. The actor access the app.
2. The system shows a welcome info.
3.1. If the actor has already signed in and the app is not in board user mode, go to AF01.
3.2. The system shows options to sign in, sign up, and recover password.
4. The user chooses to sign up.
5. The system asks for the type of user: board user or caregiver.
6.1. If the user selects board user, the system asks for the name, birth date, e-mail, password, phone, and disability type.
6.2. If the user selects caregiver, the system asks for the name, birth date, e-mail, password, phone, and profession.
7. The user confirms the data.
8.1. If the data is valid, the system creates the account and send a welcome e-mail.
8.2. If any data is invalid, informs the user about which fields are invalid and go to BF-6
8.3. If the informed e-mail is in use by other user, inform the user with a message and go to BF-6.

**Alternative flow 1 (AF01)**: When the user has already signed in.
1. The system shows the main menu.
2. The user selects the option to edit her account.
3. The system shows the current user data, in addition to an option to select a photo and to delete the account.
3.1. If the user chooses to delete her account, go to AF02.
4. The user edits her data and confirm.
7. The system updates the account.

**Alternative flow 2 (AF02)**: When the user chooses to delete her account.
1. The system asks for confirmation.
2.1. If the user confirms, the account is deleted, the device data is erased and the app goes to 'no one signed in' state.
2.2. If the user cancels, the flow goes back to AF01-3.

## Administrative panel:
* Manage users;
* Manage boards;
* Manage usage data.

