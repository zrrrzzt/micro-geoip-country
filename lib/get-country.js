'use strict'

const ip2countrify = require('ip2countrify')

module.exports = ip => {
  return new Promise((resolve, reject) => {
    ip2countrify.lookup(ip, (ip, results, error) => {
      if (error) {
        reject(error)
      } else {
        resolve(results)
      }
    })
  })
}
