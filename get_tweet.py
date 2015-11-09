#get_tweet.py
#get the tweets contained the key word “ Capital One” from tweet API and save 
from tweepy import Stream
from tweepy import OAuthHandler
from tweepy.streaming import StreamListener

ckey = ''
csecret = ''
atoken = ''
asecret = ''

class listener(StreamListener):
	def on_data(self,data):
		try:
			saveFile = open('tweets.txt','a')
			saveFile.write(data)
			saveFile.write('\n')
			saveFile.close()
			
			return True
		except BaseException,e:
			print 'failed ondata',str(e)
			time.sleep(5)
			
	def on_error(self,status):
		print status
	
auth =OAuthHandler(ckey,csecret)
auth.set_access_token(atoken,asecret)
twitterStream = Stream(auth,listener())
twitterStream.filter(track=[" Capital One"])
