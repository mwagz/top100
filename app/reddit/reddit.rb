require "redd"
require_relative '../Spotify/spotify'

class Raddit
  def initialize()
    # r = Redd.it(:userless, 'aq68iSIfYMH7Fg', 'HfWy8PDguxsqgF-DZa8t_SKCX0g')
    # r.authorize!

    # hot = r.get_hot("hiphopheads")

    # I need you to initialize like this
    Spotify.new([{ :artist => 'Stormzy', :track => 'Know Me From' }, { :artist => 'Drake', :track => 'Too Much' }])
  end
  def bark
    puts 'Ruff! Ruff!'
  end
end

# ================================
# Example Response
# ================================
# #<Redd::Objects::Submission
#   approved_by=nil
#   archived=false
#   author="oddcoupleCS"
#   author_flair_css_class=nil
#   author_flair_text=nil
#   banned_by=nil
#   clicked=false
#   contest_mode=false
#   created=1479522813.0
#   created_utc=1479494013.0
#   distinguished=nil
#   domain="self.hiphopheads"
#   downs=0
#   edited=1479576530.0
#   gilded=0
#   hidden=false
#   hide_score=false
#   id="5do0eu"
#   is_self=true
#   kind="t3"
#   likes=nil
#   link_flair_css_class="Official"
#   link_flair_text="Official"
#   locked=false
#   media=nil
#   media_embed={}
#   mod_reports=[]
#   name="t3_5do0eu"
#   num_comments=92
#   num_reports=nil
#   over_18=false
#   permalink="/r/hiphopheads/comments/5do0eu/im_oddcouple_producerdj_on_closed_sessions_last/"
#   quarantine=false
#   removal_reason=nil
#   report_reasons=nil
#   saved=false
#   score=102
#   secure_media=nil
#   secure_media_embed={}
#   selftext="What’s good r/hiphopheads,\n\nMy name is Zach Henderson, aka, oddCouple. I'm a producer/DJ/songwriter based out of Chicago. I work with a label called Closed Sessions. Last Friday, I released my second project called Liberation, featuring some of my extra talented homies • https://soundcloud.com/odd-couple/sets/liberation\n\nI know how ill and in the know you guys are so I thought to myself, “self, why not talk to the folks and see what’s on their minds?” r/hiphopheads ask away! \n\nEDIT: Man, I super fck with you guys for continuing to ask questions... so I'ma keep answering\n\nProof: https://i.redd.it/iqnn5co4veyx.png"
#   selftext_html="&lt;!-- SC_OFF --&gt;&lt;div class=\"md\"&gt;&lt;p&gt;What’s good &lt;a href=\"/r/hiphopheads\"&gt;r/hiphopheads&lt;/a&gt;,&lt;/p&gt;\n\n&lt;p&gt;My name is Zach Henderson, aka, oddCouple. I&amp;#39;m a producer/DJ/songwriter based out of Chicago. I work with a label called Closed Sessions. Last Friday, I released my second project called Liberation, featuring some of my extra talented homies • &lt;a href=\"https://soundcloud.com/odd-couple/sets/liberation\"&gt;https://soundcloud.com/odd-couple/sets/liberation&lt;/a&gt;&lt;/p&gt;\n\n&lt;p&gt;I know how ill and in the know you guys are so I thought to myself, “self, why not talk to the folks and see what’s on their minds?” &lt;a href=\"/r/hiphopheads\"&gt;r/hiphopheads&lt;/a&gt; ask away! &lt;/p&gt;\n\n&lt;p&gt;EDIT: Man, I super fck with you guys for continuing to ask questions... so I&amp;#39;ma keep answering&lt;/p&gt;\n\n&lt;p&gt;Proof: &lt;a href=\"https://i.redd.it/iqnn5co4veyx.png\"&gt;https://i.redd.it/iqnn5co4veyx.png&lt;/a&gt;&lt;/p&gt;\n&lt;/div&gt;&lt;!-- SC_ON --&gt;"
#   spoiler=false
#   stickied=true
#   subreddit="hiphopheads"
#   subreddit_id="t5_2rh4c"
#   suggested_sort=nil
#   thumbnail=""
#   title="I’m oddCouple, producer/DJ on Closed Sessions. Last week I released my second album, Liberation. Ask me anything."
#   ups=102
#   url="https://www.reddit.com/r/hiphopheads/comments/5do0eu/im_oddcouple_producerdj_on_closed_sessions_last/"
#   user_reports=[]
#   visited=false
# >
