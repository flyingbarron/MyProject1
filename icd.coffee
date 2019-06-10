request = require('request')
html_strip = require('htmlstrip-native')


console.log "in icd scripts"

module.exports = (robot) ->

  robot.hear /icd fed(?:.*)(?:solution|search) (.*)/i, (msg) ->
      #msg.send "icd solution " + msg.match[1]
      #msg.send "@icdbot google " + msg.match[1]
      msg.send "*I'm going to give you the top results for the query `" + msg.match[1] + "` from StackOverflow and the ICD knowledge base\n\
n\n ->"
      console.log 'i in arr'
      for i in robot.listeners
         listener = i.regex.toString()
         if listener.match (/.*noi\) sol.*/)
            i.callback(msg)
         if listener.match (/.*oogl.*/)
            msg.match[2] = msg.match[1]
            i.callback(msg)
