function fn() {
    return {
      githubToken: java.lang.System.getenv('GITHUB_TOKEN') || ''
    };
  }