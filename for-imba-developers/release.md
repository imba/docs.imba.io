---
title: Release
order: 1
description: This page describes the release process for Imba release managers.
---

# Release

There is currently no official release schedule for the Imba project. If a critical bug has been found that will warrant a new release, but this will likely change with a formal release schedule when development activity is back up.

The rest of this page serves as a checklist for the release manager.

## Checklist

To avoid issues with the deployment please go through these steps

### Validating the Changes

* [ ] The tests are passing `npm run test`
* [ ] Make sure you have run `npm build`

### Making the Version

* [ ] Verify your current version before bumping `npm version`

If the version looks correct you can proceed by bumping the version. In most cases this will be the patch but you know what you are doing 😉

* [ ] `npm version patch`

If you want to change the other versions the available options are \(`major`, `minor`\)

* [ ] Verify the version looks good again by running `npm version` and with git `git tag`.

If both look good you can proceed by pushing your changes to GitHub

### Publishing the Changes

* [ ] `git push origin master && git push origin --tags`
* [ ] Create release notes that are basically a summary of the output in `git log 1.4.3..v1.4.7`
* [ ] Use those release notes on the GitHub releases page.
* [ ] Then finally publish to [npmjs.com](https://www.npmjs.com/package/imba) by running `npm publish`
* [ ] Make a tweet on the @imbajs account

