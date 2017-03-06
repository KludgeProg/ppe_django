# PPE DJANGO
Project oriented to create a customers friendly environment to serve mailing and packages necessities.

## Installation:
Clone the repository in a folder on your machine.
* **Windows Users:** Project is already served with [Vagrant](https://www.vagrantup.com/). After Installing it,
just run `vagrant up` inside the working directory, enter via SSH to _Vagrant Environment_ and in your console input
`cd /vagrant`.
* **Ubuntu / MAC Users:** You can delete the **_Installing Dependencies_** module in _bootstrap.sh_, run the file
with root permission, make a **python virtual environment** on the working directory and run the command to install
the Python Requirements.

The project has been updated to work with specific Settings or Requirements Files according the needs.

1. **Requirements:** In order to run Requirements files:
    * `pip3 install -r requirements/[requirements_name.txt]`

2. **Settings:** In order to use different Settings files remember to use the command:
    * `python3 manage.py shell --settings=src.settings.[settings_name]` to enter the shell.
    * `python3 manage.py runserver --settings=src.settings.[settings_name]` to run the project.

## Contributing:
Feel free to fork the repository and do improvements on your own. Also, take a visit to our
[Collaboration Page](https://github.com/KludgeProg/ppe_django/wiki/Collaborators) :smile:

## License:
he contents of this repository are covered under the
[Apache License](https://github.com/KludgeProg/ppe_django/tree/master/docs/LICENSE)
