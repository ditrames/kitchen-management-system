

<!-- PROJECT LOGO -->
<br />
<p align="center">
  <a href="https://github.com/ditrames/kitchen-management-system">
    <img src="images/logo.png" alt="Logo" width="80" height="80">
  </a>

  <h3 align="center">kitchen management system</h3>

  <p align="center">
    a system that will organize, track and reorder food as necessary
    <br />
    <a href="https://github.com/ditrames/kitchen-management-system"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="https://github.com/ditrames/kitchen-management-system">View Demo</a>
    ·
    <a href="https://github.com/ditrames/kitchen-management-system/issues">Report Bug</a>
    ·
    <a href="https://github.com/ditrames/kitchen-management-system/issues">Request Feature</a>
  </p>
</p>



<!-- TABLE OF CONTENTS -->
<details open="open">
  <summary><h2 style="display: inline-block">Table of Contents</h2></summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#roadmap">Roadmap</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
    <li><a href="#acknowledgements">Acknowledgements</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## About The Project

this project was made to fix the problem of dealing with shopping and the current stock in the kitchen.its will automate the process of shopping and adding used items to the master shopping list, it will also tell you if you can or cannot cook recipes instead of you having to do a check list to see if you have all ingredient.


### Built With

* [flask](https://flask.palletsprojects.com/en/2.0.x/)
* [flask-sqlalchemy](flask-sqlalchemy.palletsprojects.com)
* [python](https://www.python.org/)
* [pyzbar](https://pypi.org/project/pyzbar/)
* [postgresql](https://www.postgresql.org/)
* [docker](https://www.docker.com/)
<!-- GETTING STARTED -->
## Getting Started

To get a local copy up and running follow these simple steps.

### Prerequisites


* docker
    
    please follow docker's install instructions [here](https://docs.docker.com/engine/install/)
* docker-compose
    
    please follow docker-compose's install instructions [here](https://docs.docker.com/compose/install/)
### Installation

1. Clone the repo
   ```sh
   git clone https://github.com/ditrames/kitchen-management-system.git 
   ```




<!-- USAGE EXAMPLES -->
## Usage

a makefile has been made to simplify most of this

1. initialize the project

   ```sh
    make 
   ```

   this will create the db with the necessary table and columb data and re build the live docker containers so anytime you pull please re run this command

2. run docker containers
   ```sh
    make run
   ```
      this will run the containers in detached mode if this is not preferable run:
   ```sh
    make run-live
   ```

3. stop docker containers
   ```sh
    make stop
   ```
    not if not run in detached mode this isnt needed

if you want to run in debug mode 

1. init
    ```sh
    make 
   ```
2. build debug mode containers
    /

<!-- _For more examples, please refer to the [Documentation](https://example.com)_ -->



<!-- ROADMAP -->
## Roadmap

See the [open issues](https://github.com/ditrames/kitchen-management-system/issues) for a list of proposed features (and known issues).



<!-- CONTRIBUTING -->
## Contributing

Contributions are what make the open source community such an amazing place to be learn, inspire, and create. Any contributions you make are **greatly appreciated**.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request



<!-- LICENSE -->
<!-- ## License

Distributed under the MIT License. See `LICENSE` for more information. -->



<!-- CONTACT -->
## Contact

Project Link: [https://github.com/ditrames/kitchen-management-system](https://github.com/ditrames/kitchen-management-system)


<!-- 
ACKNOWLEDGEMENTS
## Acknowledgements

* []()
* []()
* []() -->





<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/ditrames/repo.svg?style=for-the-badge
[contributors-url]: https://github.com/ditrames/repo/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/ditrames/repo.svg?style=for-the-badge
[forks-url]: https://github.com/ditrames/repo/network/members
[stars-shield]: https://img.shields.io/github/stars/ditrames/repo.svg?style=for-the-badge
[stars-url]: https://github.com/ditrames/repo/stargazers
[issues-shield]: https://img.shields.io/github/issues/ditrames/repo.svg?style=for-the-badge
[issues-url]: https://github.com/ditrames/repo/issues
[license-shield]: https://img.shields.io/github/license/ditrames/repo.svg?style=for-the-badge
[license-url]: https://github.com/ditrames/repo/blob/master/LICENSE.txt

