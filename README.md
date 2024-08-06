# Redmine Playwright Sample

## Install plugin

```console
$ git clone https://github.com/ishikawa999/redmine_playwright_sample.git /path/to/redmine/plugins/redmine_playwright_sample
$ cd /path/to/redmine/plugins/redmine_playwright_sample
```

## Setup system test

```console
$ npm install
$ npx playwright install
$ npx playwright install-deps
```

## Run system test

```console
$ cd /path/to/redmine
$ RAILS_ENV=test rake test TEST=plugins/redmine_playwright_sample/test/system
```