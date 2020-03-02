const fs = require('fs')
const path = require('path')

def capitalize str
  const first = str.split('')[0].toUpperCase()
  "{first}{str.slice(1)}"

def ap input
  let special = [
    'a', 'an', 'and',
    'at', 'but', 'by',
    'for', 'in', 'nor',
    'of', 'on', 'or',
    'so', 'the', 'to', 'up',
    'yet'
  ]
  let index = 0
  let cased = input.split(' ').map do |element|
    let mangle = element.toLowerCase()
    if !special.includes(mangle)
      return capitalize(mangle)
    elif index == 0
      return capitalize(element)
    else
      return element
    index += 1
  cased.join(' ')

const chPrefix = /ch\d/
def cleanTitle s
  const c = s.replace(chPrefix, '')
  .replace(/\.md$/, '')
  .replace(/\-/g, ' ')
  .trim()
  ap(c)
  

const contents = fs.readdirSync(__dirname)
const chapters = contents.filter do |x|
  x.match(chPrefix)

console.log('# Table of contents')
console.log('\n[Introduction](README.md)')

for chapter in chapters
  const title = cleanTitle(chapter)
  const files = fs.readdirSync(path.join(__dirname, chapter))
  const mFiles = files.filter do |x| x.match(/\.md$/)

  console.log("\n## {title}\n")
  for file in mFiles
    const subtitle = cleanTitle(file)
    const p = path.join(chapter, file)
    console.log("* [{subtitle}]({p})")
# for dir 
