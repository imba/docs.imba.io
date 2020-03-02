const fs = require('fs')
const path = require('path')

const chPrefix = /ch\d/
def cleanTitle s
  s.replace(chPrefix, '')
  .replace(/\-/g, ' ')
  .replace(/\.md$/, '')
  .trim()

const contents = fs.readdirSync(__dirname)
const chapters = contents.filter do |x|
  x.match(chPrefix)

console.log('# Table of contents')
console.log('\n[Introduction](README.md)')

for chapter in chapters
  const title = cleanTitle(chapter)
  const files = fs.readdirSync(path.join(__dirname, chapter))
  const mFiles = files.filter do |x| x.match(/\.md$/)

  console.log('\n##', title, "\n")
  for file in mFiles
    const subtitle = cleanTitle(file)
    const p = path.join(chapter, file)
    console.log("* [{subtitle}]({p})")
# for dir 
