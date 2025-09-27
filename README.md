
<!-- ABOUT THE PROJECT -->
## About The Project
- I just started looking into ideas for personal projects to keep my skills sharpened, and I stumbled upon roadmap.sh projects list for BE engineers, I thought I should start looking into these projects as they cover a majority of really interesting topics.
- This particular project is a Github User Activity CLI that users can use to track github users' activities, and get a simple, readable output that outlines what the user in question is up to, all through the CLI without much prerequisites.
- [Github User Activity CLI ROADMAP.SH](https://roadmap.sh/projects/github-user-activity)


### Built With

* [![Ruby][ruby.com]][ruby-url]


<!-- GETTING STARTED -->
## Getting Started

In the following sections I'll be outlining how to run this script locally.

### Prerequisites

This is an example of how to list things you need to use the software and how to install them.
* Ruby
  it can be installed through the official website https://www.ruby-lang.org/en/documentation/installation/

### Installation

1. Clone the repo
  through ssh
   ```sh
   git clone git@github.com:KhalidHisham7/github-user-activity-cli.git
   ```
   or through https
   ```sh
   git clone https://github.com/KhalidHisham7/github-user-activity-cli.git
   ```
3. The script then needs to be made as an executable
   ```sh
   chmod +x github-activity.rb
   ```
4. You need to create a `.env` file and add the following key to it: `GITHUB_API_TOKEN`, which you can get from Github -> Settings -> Developer settings -> Personal access tokens -> Fine grained tokens
5. Then run
   ```sh
   bundle install
   ```

<!-- USAGE EXAMPLES -->
## Usage
```sh
./github-activity <username>
Output:
- Pushed 3 commits to kamranahmedse/developer-roadmap
- Opened a new issue in kamranahmedse/developer-roadmap
- Starred kamranahmedse/developer-roadmap
- ...

```

<!-- CONTRIBUTING -->
## Contributing

Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement".
Don't forget to give the project a star! Thanks again!

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

<!-- MARKDOWN LINKS & IMAGES -->
[ruby-url]: https://www.ruby-lang.org/en/
[ruby.com]: https://www.ruby-lang.org/images/header-ruby-logo@2x.png
