'use strict'

const readFileSync = require('fs').readFileSync
const marked = require('marked')
const { parse } = require('url')
const { send, json } = require('micro')
const getCountry = require('./lib/get-country')

module.exports = async (request, response) => {
  const { query } = await parse(request.url, true)
  const data = request.method === 'POST' ? await json(request) : query
  if (data.ip && data.ip.length > 0) {
    const results = await getCountry(data.ip)
    response.setHeader('Access-Control-Allow-Origin', '*')
    response.setHeader('Access-Control-Allow-Methods', 'GET')
    send(response, 200, results)
  } else {
    const readme = readFileSync('./README.md', 'utf-8')
    const html = marked(readme)
    send(response, 200, html)
  }
}
