module ApplicationHelper
  def twitter_str(email)
    return 'javascript:window.open("http://twitter.com/home?status=An+invitation+to+step+up+your+swagger+at+http://bossary.com?refer='+email+'","share","width=500,height=300,scrollbars=yes");'
  end

  def facebook_str(email)
    return 'javascript:window.open("http://www.facebook.com/dialog/feed?app_id=136994213093359&name=Stepnup your swagger.&caption=Step up your swagger and get up to 80% discounts on select items on bossary.com.&redirect_uri=http://bossary.com?refer='+email+'&display=popup&message=Step%20up%20you%20swagger%on%20bossary.com%21&link=http://bossary.com","Share","width=500,height=300,scrollbars=yes");'
  end
end
