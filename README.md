![](./logo.png)

Jenkins Build
===

![Vercel](https://vercelbadge.vercel.app/api/mint-system/jenkins-build)

This is the [Mint System](https://www.mint-system.ch/) Jenkins development environment.

This projects provides a highly opinionated way to develop with Jenkins.

## Requirements

The Jenkins development environment has the following requirements:

* [Docker](https://docs.docker.com/engine/install/) and [Docker Compose](https://docs.docker.com/compose/)
* bash/zsh alias `task='./task'` with optional [completion](https://github.com/janikvonrotz/dotfiles/blob/master/oh-my-zsh-completions/_task)

## Usage

See `task help` or [task](./task.md) for details about the projects commands.

Clone this repository.

```bash
git clone git@github.com:Mint-System/Jenkins-Build.git
cd Jenkins-Build
```

### Docker

Run Jenkins with Docker container.

**Start and initialize Jenkins with Docker**

Run docker compose.

```bash
task start
```
