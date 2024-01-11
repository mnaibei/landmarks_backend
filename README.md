<a name="readme-top"></a>

<div align="center">
  <h1><b> 💰 African Landmarks Backend 💸 </b></h1>
</div>

<!-- TABLE OF CONTENTS -->

# 📗 Table of Contents

- [📗 Table of Contents](#-table-of-contents)
- [💸 Rails APi App ](#-appointment-app-)
- [🛠 Built With ](#-built-with-)
  - [📌 Tech Stack ](#-tech-stack-)
- [🎲 Key Features ](#-key-features-)
- [💻 Getting Started ](#-getting-started-)
  - [Prerequisites](#prerequisites)
  - [Setup](#setup)
  - [Usage](#usage)
  - [Run tests](#run-tests)
- [👥 Authors ](#-authors-)
- [🔭 Future Features ](#-future-features-)
- [🤝 Contributing ](#-contributing-)
- [⭐️ Show your support ](#️-show-your-support-)
- [🙏 Acknowledgments ](#-acknowledgments-)
- [📝 License ](#-license-)

<!-- PROJECT DESCRIPTION -->

# 💸 African Landmarks <a name="about-project"></a>

** This is the backend for the African Landmarks App. It is an API that allows users to create an account, log in, and log out. It shows users a list of select Landmarks on the continent and provides a variety of information regarding each landmark.**

<p align="right">(<a href="#readme-top">back to top</a>)</p>



- We are a team of 4 for this project.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

# 🛠 Built With <a name="built-with"></a>

## 📌 Tech Stack <a name="tech-stack"></a>

| Domain | Tech Stack |
|--------|--------|
| Server | <a href="https://rubyonrails.org/">Ruby on Rails</a> |
| Database | <a href="https://www.postgresql.org/">PostgreSQL</a> |
| Testing Framework | <a href="https://github.com/rspec/rspec-rails">RSpec Rails,</a> <a href="https://rubydoc.info/github/teamcapybara/capybara">Capybara</a> |
| Authentification | <a href="https://github.com/heartcombo/devise#getting-started">Devise</a> | | 

<p align="right">(<a href="#readme-top">back to top</a>)</p>
<!-- Features -->

# 🎲 Key Features <a name="key-features"></a>

- Users can create an account
- Users get list of Landmarks
- Users can view details of each Landmark
- Users can add a Landmark to their favorites


<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LIVE DEMO -->

## 🚀 Live Version <a name="live-demo"></a>
- TBA

<!-- - [Budget App](https://budget-app-mp1a.onrender.com) -->

<p align="right">(<a href="#readme-top">back to top</a>)</p>
<!-- GETTING STARTED -->

# 💻 Getting Started <a name="getting-started"></a>

To get a local copy up and running, follow these steps.

## Prerequisites

In order to run this project you need:

- **Ruby 3.2.2** installed

- **Rails** installed

Run this command to install **Rails**

```sh
 gem install rails
```

## Setup

Clone this repository to your desired folder:

Example commands:

```sh
  cd my-folder
  git clone https://github.com/mnaibei/landmarks-backend.git
```
Install Docker and Docker Compose

```sh
  sudo apt install docker.io
  sudo apt install docker-compose
```

To install dependencies, run:

```sh
bundle install
```

**Set up the database** <br>

To create the database, run:

```sh
docker-compose exec app bash
```

```sh
rails db:create
```

To create the schema, run:

```sh
rails db:migrate
```

## Usage

To run the project, execute the following command:

Example command:

```sh
  docker-compose up -d
```

## Run tests

To run tests, run the following command:

```sh
  rspec
```

## API Documentation

```sh
  localhost:3000/api-docs
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- AUTHORS -->

# 👥 Authors <a name="authors"></a>


🤑 **Mucha Naibei**

- GitHub: [@mnaibei](https://github.com/mnaibei)
- LinkedIn: [Mucha Naibei](https://www.linkedin.com/in/obedbamfo/)

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- CONTRIBUTING -->

# 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- SUPPORT -->

# ⭐️ Show your support <a name="support"></a>

Your support is crucial to the success of this project! There are ways you can contribute and show your support:

- Provide Feedback: If you've tried out the project or have any suggestions for improvement, I would love to hear from you. Your feedback is invaluable in shaping the future direction of the project.

- Kindly Give a 🌟 STAR 🌟 if you like this project!

Remember, your support matters! Whether it's spreading the word, providing feedback, reporting issues, contributing code, or making a donation, every action makes a difference. Together, we can make this project even better.

Thank you for your support and for being a part of this journey! ❤️

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->

# 📝 License <a name="license"></a>

This project is [MIT](./LICENSE) licensed.

<p align="right">(<a href="#readme-top">back to top</a>)</p>
