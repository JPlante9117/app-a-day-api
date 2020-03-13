# App A Day API (Back End)

![App A Day Logo](https://github.com/JPlante9117/app-a-day-frontend/raw/master/src/assets/app-a-daylogo.png "Logo")

App a day is a React application for keeping track of job applications and personal goals all in one place. As companies use many different job boards for their application process, the ability to store them all in one place with a simple link to check them helps to stay organized.


## Note

This is **only** the back end of the application. Please also install the [App A Day Frontend](https://github.com/JPlante9117/app-a-day-frontend "App A Day Frontend") and follow its README for setup.

## Installation

Use the package manager ```bundle install``` to install all the necessary dependencies while inside the root of the App A Day API folder.

```bash
bundle install
```

Then run migrations to allow for proper data storage.

```bash
rails db:migrate
```

## Usage

Start up the local server with
```bash
rails s
```

By default, the server runs on localhost:3001. To view the data, visit [/jobs](localhost:3001/jobs), [/goals](localhost:3001/goals), and [/labels](localhost:3001/labels).

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License
[MIT](https://choosealicense.com/licenses/mit/)