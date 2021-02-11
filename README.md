linter-jshint
=========================

This plugin for [linter](https://github.com/atom-community/linter) provides an interface to [JSHint](http://www.jshint.com/docs/). It will lint JavaScript in files with the `.js` extension and optionally inside `<script>` blocks in HTML or PHP files.

## Installation
The Linter package must be installed in order to use this plugin. If it isn't installed, please follow the instructions [here](https://github.com/atom-community/linter#how-to--installation).

### Plugin installation
```sh
$ apm install linter-jshint
```

## Settings
You can configure linter-jshint by editing `~/.atom/config.cson` (choose Open Your Config in Atom menu):
```coffee
'linter-jshint':
  # Path of the `jshint` executable
  executablePath: '/path/to/bundled/jshint'

  # Lint JavaScript inside `<script>` blocks in HTML or PHP files
  lintInlineJavaScript: false

  # Disable linter when no `.jshintrc` is found in project
  disableWhenNoJshintrcFileInPath: false
```

## Configuration
in order to work with the version of JavaScript supported by all modern web browsers, you need to provide a JSON configuration file that sets the `esversion` property to 6, like this:
```json
{
  "esversion": 6
}
```

The above should be placed in a file called `.jshintrc`, located in the top-level directory of your project.

If you do not do this, then JSHint will indicate errors when it encounters class definitions, for example.


## Contributing
If you would like to contribute enhancements or fixes, please do the following:

1. Fork the plugin repository
2. Hack on a separate topic branch created from the latest `master`
3. Commit and push the topic branch
4. Make a pull request
5. Welcome to the club :sunglasses:

Please note that modifications should follow these coding guidelines:

- Indent of 2 spaces
- Code should pass [CoffeeLint](http://www.coffeelint.org/) with the provided `coffeelint.json`
- Vertical whitespace helps readability, don't be afraid to use it

**Thank you for helping out!**
