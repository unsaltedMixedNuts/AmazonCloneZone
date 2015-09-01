# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
# #
# # Examples:
# #
# #   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
# #   Mayor.create(name: 'Emanuel', city: cities.first)
#
# (mel = User.new(
#   email: "Mel@amazonclonezone.com",
#   name: "Mel",
# )).password="password"
# mel.save
#
# (ghazi = User.new(
#   email: "ghazi@example.com",
#   name: "Ghazi",
# )).password="password"
# ghazi.save
#
# (william = User.new(
#   email: "william@example.com",
#   name: "William B. Partridge",
# )).password="password"
# william.save
#
# (guest = User.new(
#   email: "abc@xyz.com",
#   name: "Guest User",
# )).password="top secret"
# guest.save
#
#
# Product.create(name: "Apple TV MD199LL/A (Current Version)", sales_price: 59.99, quantity: 100, dept_id: 2, brand_id: 1 )
# Product.create(name: "Roku 3 Streaming Media Player (4230R) With Voice Search (2015 model)", sales_price: 99.00, quantity: 100, dept_id: 2, brand_id: 2 )
# Product.create(name: "Google Chromecast HDMI Streaming Media Player", sales_price: 29.99, quantity: 100, dept_id: 2, brand_id: 3 )
# Product.create(name: "Fire TV Stick", sales_price: 39.00, quantity: 100, dept_id: 2, brand_id: 4 )
# Product.create(name: "Amazon Fire TV", sales_price: 99.00, quantity: 100, dept_id: 2, brand_id: 4 )
Product.create(name: "Roku 3500R Streaming Stick (HDMI)", sales_price: 46.99, quantity: 100, dept_id: 2, brand_id: 2)
#
#
# Department.create(name: "Electronics", parent_dept_id: nil)
# Department.create(name: "Television & Video", parent_dept_id: 1)
#
# Brand.create(name: "Apple")
# Brand.create(name: "Roku")
# Brand.create(name: "Google")
# Brand.create(name: "Amazon")
#
# Image.create(url: "http://ecx.images-amazon.com/images/I/41uTXEtgjqL._SX522_.jpg", ord: nil, imageable_id: 1, imageable_type: "Product")
# Image.create(url: "http://ecx.images-amazon.com/images/I/51ewP-q28%2BL._SL1000_.jpg", ord: nil, imageable_id:2, imageable_type: "Product")
# Image.create(url: "http://ecx.images-amazon.com/images/I/811nvG%2BLgML._SL1500_.jpg", ord: nil, imageable_id:3, imageable_type: "Product")
# Image.create(url: "http://ecx.images-amazon.com/images/I/6167-OL%2BM%2BL._SL1000_.jpg", ord: nil, imageable_id:4, imageable_type: "Product")
# Image.create(url: "http://ecx.images-amazon.com/images/I/61w8hhpAp7L._SL1000_.jpg", ord: nil, imageable_id:5, imageable_type: "Product")
Image.create(url: "http://ecx.images-amazon.com/images/I/51HU2L9nIRL._SL1000_.jpg", ord: nil, imageable_id: 6, imageable_type: "Product")
#
# Image.create(url: "https://images-na.ssl-images-amazon.com/images/I/61lD0SQk6wL._SL1600_.jpg", ord: nil, imageable_id: 1, imageable_type: "Review")
#
# Description.create(
#   body: "1080p HD programming, including iTunes movies and TV shows, Netflix, Vimeo, photos and more in HD",
#   ord: nil,
#   product_id: 1
# )
# Description.create(
#   body: "Access your purchased movies, TV shows, and music with iTunes Match right from iCloud",
#   ord: nil,
#   product_id: 1
# )
# Description.create(
#   body: "Stream video, games, and more from iOS devices using AirPlay; music, videos, and photos can also be streamed from PCs and Macs",
#   ord: nil,
#   product_id: 1
# )
# Description.create(
#   body: "HDMI and digital optical audio output; connects to network via Wireless-N or Ethernet",
#   ord: nil,
#   product_id: 1
# )
# Description.create(
#   body: "Apple TV is a registered trademark of Apple Inc.",
#   ord: nil,
#   product_id: 1
# )
#
# # Start of Descriptions for Roku 3
# Description.create(
#   body: "Fully loaded. Top rated: Voice, headphone & games",
#   ord: nil,
#   product_id: 2
# )
#
# Description.create(
#   body: "Remote with headphones and gaming",
#   ord: nil,
#   product_id: 2
# )
#
# Description.create(
#   body: "2000+ streaming channels - free, subscription, rent & buy",
#   ord: nil,
#   product_id: 2
# )
#
# Description.create(
#   body: "Search across the most channels",
#   ord: nil,
#   product_id: 2
# )
#
# Description.create(
#   body: "Great with mobile devices",
#   ord: nil,
#   product_id: 2
# )
#
# # End of Descriptions for Roku 3
#
#
# Specification.create(
#   title: "Brand Name",
#   body: "Apple",
#   ord: nil,
#   product_id: 1
# )
#
# Specification.create(
#   title: "Item Weight",
#   body: "9.6 ounces",
#   ord: nil,
#   product_id: 1
# )
#
# Specification.create(
#   title: "Product Dimensions",
#   body: "3.9 x 3.9 x 0.9 inches",
#   ord: nil,
#   product_id: 1
# )
#
# Specification.create(
#   title: "Item model number",
#   body: "MD199LL/A",
#   ord: nil,
#   product_id: 1
# )
#
# Specification.create(
#   title: "Color Name",
#   body: "Black",
#   ord: nil,
#   product_id: 1
# )
#
# Specification.create(
#   title: "Shipping Weight",
#   body: "1.1 pounds",
#   ord: nil,
#   product_id: 1
# )
#
# Specification.create(
#   title: "Date First Available",
#   body: "March 7, 2012",
#   ord: nil,
#   product_id: 1
# )
#
# Specification.create(
#   title: "Customer Reviews",
#   body: "6,551",
#   ord: nil,
#   product_id: 1
# )
#
# # Start of Specifications for Roku 3
# Specification.create(
#   title: "Brand Name",
#   body: "Roku",
#   ord: nil,
#   product_id: 2
# )
#
# Specification.create(
#   title: "Item Weight",
#   body: "5 ounces",
#   ord: nil,
#   product_id: 2
# )
# Specification.create(
#   title: "Product Dimensions",
#   body: "3.5 x 3.5 x 1 inches",
#   ord: nil,
#   product_id: 2
# )
#
# Specification.create(
#   title: "Item Model Number",
#   body: "4230R",
#   ord: nil,
#   product_id: 2
# )
#
# Specification.create(
#   title: "Batteries",
#   body: "2 AA batteries required. (included)",
#   ord: nil,
#   product_id: 2
# )
#
# Specification.create(
#   title: "Color Name",
#   body: "Black",
#   ord: nil,
#   product_id: 2
# )
#
# # End of Specifications for Roku 3
#
# Question.create(
#   body:"Is it compatible with Ipad 2?",
#   product_id: 1,
#   user_id: 1
# )
#
# Question.create(
#   body:"Is this the newest version?",
#   product_id: 1,
#   user_id: 1
# )
#
# Question.create(
#   body:"Does this stream movies from Amazon Prime?",
#   product_id: 1,
#   user_id: 1
# )
#
# Question.create(
#   body:"Wireless?",
#   product_id: 1,
#   user_id: 1
# )
#
# Answer.create(
#   body:"Yes.  It works great with the iPad2.",
#   question_id: 1,
#   user_id: 1
# )
#
# Answer.create(
#   body:"I just received mine in the mail today.  This is the A1469 (revision A), which is the current version of the Apple TV.",
#   question_id: 2,
#   user_id: 1
# )
#
# Answer.create(
#   body:"No.  It does not stream from Amazon Prime but you can use your iPad to stream it on TV.  That is how we watched the series Transparent.  Quality was good.  No freezing.  So good.",
#   question_id: 3,
#   user_id: 1
# )
#
# Answer.create(
#   body:"Operational use is wireless but you must HDMI it to the TV and until the new operating system update for apple coming in the fall you must be connected to a network. After the new operating software update you will be able to go peer to peer with no network. Hope this helps.",
#   question_id: 4,
#   user_id: 1
# )
#
# # Start of Q&A for Roku 3
# Question.create(
#   body:"So is the only difference between the voice search model and the \"old\" Roku 3 the voice search? $15 for voice search?",
#   product_id: 2,
#   user_id: 1
# )
#
# Question.create(
#   body:"Can I stream content from my desktop computer's hard drive(s) via Windows Network Share?",
#   product_id: 2,
#   user_id: 4
# )
#
# Question.create(
#   body:"can I use this with an older tv?",
#   product_id: 2,
#   user_id: 4
# )
#
# Answer.create(
#   body:"The voice search capability is the primary difference. It works very well, by the way. The other differences are software updates and some new app features.",
#   question_id: 5,
#   user_id: 1
# )
#
# Answer.create(
#   body:"You can use Plex or any DLNA player on you desktop to stream over the network.",
#   question_id: 6,
#   user_id: 2
# )
#
# Answer.create(
#   body:"You can use this with any TV! I use mine on a SD TV using an inexpensive HDMI to composite cable adapter that I bought on Amazon. Of course, you won't get an HD quality picture. But luckily, I am one of the few who has not been spoiled (influenced) into thinking that you can not get a perfectly beautiful picture on SD!",
#   question_id: 7,
#   user_id: 4
# )
# # End of Q&A for Roku 3
#
# # Review objects are created at the very end of this seeds.rb file.
#
# # ------------------------------------------------------------------------------
#
# review_1 = "I own both the new Apple TV (1080P/2012) model and the Roku2 XS. I found myself doing a side by side comparison of the two products and here are my findings.
#
# AppleTV
# Pros: Works out of the box, minimum effort to setup, really easy to use interface + wifi. Can Restream old purchased episodes. Netflix App much cleaner and more superb. Streaming and buffering causes no delays or degradation of picture. AirPlay makes up for a lot of the limited channels (with Mountain Lion the functionality goes up even more). iPad Remote easy to use
# Cons: Limited Channels...needs an open API like Roku to build more channels
#
# Roku2 XS
# Pros: Many Channels available, Cheaper ($10), Free Movie Channels like Crackle, AmazonPrime availability, Vendor neutral. iPad Remote easy to use
# Cons: Missing iTunes integration, Poor quality and buffering (constant downgrading the image quality on NBA League Pass and Netflix). User UI is just bland and could be cleaner. Bugs and issues. Most channels you have to pay extra for. Roku disconnects from my wifi network randomly whereas the AppleTV never does during side by side streaming. Setup takes longer and more tweaking needed by the user.
#
# Summary:
# While the Roku offers you many more channels the end user experience on the AppleTV makes it much more simple to utilize. If you have some form of Apple Eco System then the AppleTV is for you. If you hate Apple then the Roku is for you. Each product has their own advantages and disadvantages. For me in the end it was about the user experience and ease of using the player and the AppleTV edged out. It's not to say I won't be using my Roku but until there are some updates to fix some of the buffers and issues the AppleTV is by far the better product.
#
# UPDATE: Completely Dropped my Roku in favor of Apple TV now. For some of the comments below I have a 30 Mbps down, 10 Mbps Up and being a network engineer and having quite an impressive armada of enterprise switches in the house I know it's not the network but the Roku. It's either the memory or the application code that keeps causing issues itself. Also for those that claim they cannot view movies due to apple protections...download airparrot and VLC. It works perfectly."
#
# review_2 = "This is an elegant and easy to use little box. The interface is pretty, setup is dead simple (took less than 10 minutes from start to finish), and it's fairly intuitive to use. The problem comes in that it doesn't serve a great deal of function, at least for me.
#
# Apple TV is essentially 3 main functions in one package. iTunes front end, content/channel provider, and wireless display.
#
# On the face of it, Apple TV is a front end for iTunes and allows you to buy or rent content and view it on the box along with previously purchased content. The usefulness of this is based on where you buy content. If it's not iTunes then you can ignore most of it. All the magic from this perspective is essentially gone for videos and even music doesn't work without iTunes Match. You can alternatively access your media from another computer currently running iTunes, but only the content in iTunes (not a huge issue) and again, only when the computer is on and running (think of it like an iTunes extender). The interface is lush and a joy to use but it's dependency on iTunes purchases or iTunes running on a computer diminishes the usefulness. It'd be nice it it could access a network attached storage or something similar.
#
# The other content means are provided through channels/apps, like on a Roku box, but are limited to only 13. Missing are the normal heavy hitters: Hulu Plus, HBO Go, Pandora, Slacker, Spotify, etc. Only Netflix is present really, but what device doesn't have access to that? I have 3 other devices connected to my receiver that can do it already and personally prefer the PS3 Interface. The general feel of the channel/apps is also very smooth and works fast but some of them feel a bit long in the tooth, as if it could be better but in order to fit the overall design scheme it's not (again Netflix is an example).
#
# The final feature is AirPlay. This is a feature that allows you to stream music and video from your MacOS and iOS device. There's also AirPlay mirroring which takes what you see on your device (or computer once Mountain Lion is out) and puts it on the Apple TV. It seems, based on the packaging, Apple is trying to play this up a lot and I'd agree with that goal. It's really simple and amazing to use where it works (certain applications don't support it or actively block it). If you're familiar with Intel's WiDi it's a very similar thing, especially with AirPlay mirroring. Certain things work better with Airplay though (Slingplayer and Netflix, for example, display the controls on iOS while the video is on the TV) and others not so well (Hulu, for example, doesn't support video out - only mirroring. HBOGo is blocked entirely, mirroring or video out). It works really well and is very smooth with minimal lag with audio and experiences only occasional minor choppiness with video provided you're on 802.11N or have the apple tv wired (had bad problems with quality over two G routers). The same, however, can't be said for AirPlay compatible games like Asphalt 6, which due to lag/stuttering is near unplayable (the jittering and stuttering mean you'll miss too much with fast paced games, e.g. In Asphalt you'll crash).
#
# Your enjoyment of this device will depend directly on the amount you give yourself to Apple, more specifically iTunes. If you don't use iTunes for content purchase at least 1/3 of the functionality is right out the window. And if you own a PS3, Xbox, TiVo, Wii, Roku, Google TV, certain Blu-Ray players, or even a smart TV then there's no point to the channels/apps really. No MacOS or iOS devices and there's no point to the AirPlay aspect. However if you're a diehard Apple fan and have lots of money spent in iTunes, this will be amazing, I'm sure of it.
#
# That's not to say it's not without its pleasure, the device is a joy to use. I find myself wanting to listen to music from my TV just to look at the lush interface that's so simple and yet gorgeous. But, for all of Apple's shine and improvements to the device, they've failed to address the largest issue - lack of content options. Without more channels/apps like Netflix (looking at you Hulu, HBO, etc) Apple TV ultimately suffers from limited usability unless you're a big iTunes fan. While it's fair that a good percentage of people looking at this device will have some content in iTunes, Apple simply cannot rely on that to support this product alone. Features like AirPlay are a welcome addition but likely aren't enough. Especially considering that video playback is a bit choppy and mirroring, especially with games, has too much lag.
#
# For me personally, I'm really only left with the AirPlay feature as a big feature. Which alone might be worth the price, especially if Apple can improve the performance. The content/channels/apps are, even objectively, poor. And the dependency on iTunes either running or being used for content purchases diminishes the utility of the media for me leaving the 'Movies', 'TV Shows', and 'Music' features as empty. Yes it does everything the previous Apple TV did but better, but that's also it's flaw - it doesn't do anything new.
#
# Pros:
# ++ Simple set up
# ++ Very pretty and smooth interface
# ++ AirPlay (for music and video)
# + 1080P
#
# Cons:
# -- Very limited channels/content
# -- iTunes only for content, even for in network
# - iTunes match dependent for music
# - AirPlay lags and stutters a bit too much with mirroring and games
#
# Things I'd like to see:
# 1) Support for network storage for content streaming. You can jailbreak and put plex or xmbc on to do this, but why do I have to?
# 2) More channels/apps. I've got all the missing channels on my iPad but why not on the Apple TV? Especially annoying since this is based off iOS 5 and has hardware better or on par with the original iPad.
# 3) Stronger AirPlay performance. (yes it's wired in, but it still stutters for games)
#
# In the end it does really well at what it does (most of the time) but it's a very shallow pool.
#
# COMPARISON TO ROKU 2:
# I also own a Roku 2 XS, so I figured I'd update with some remarks in comparison. The Apple TV is notably easier to set up. The Apple TV interface is also generally better, however certain apps (specifically looking at Netflix) while smoother on Apple TV are better laid out on Roku. Specifically with that, I mean Apple TV forces a text list strong interface at front whereas Roku shows you the box art. The remote on the Apple TV feels better but is more limited than Roku (Roku XS is RF as opposed to IR on Apple TV) and also lacks the instant replay (10 second) button found on the Roku XS - very handy at times. Both are limited with text entry but have smartphone/tablet apps for use (although Apple Remote is only on iOS devices, whereas Roku Remote is on Android and iOS - a point to note, but not likely a deal breaker). Image quality is comparable, Apple TV works better wirelessly than the Roku though (especially at start). While Apple's interface is generally better/faster/smoother, it still ultimately lacks in content when compared to Roku. Roku has Pandora, HBO Go, Hulu, Amazon Instant, Crackle, and many other options. Aside from iTunes content (either from your computer or iTunes cloud for movies/tv or iTunes Match) there isn't anything I'm aware of that Apple TV has that Roku does not. Apple TV does have AirPlay, which again makes it nice.
#
# While Apple TV interface is generally better and smoother, the cost of the Roku (I got the XS for $80, so 20% less) and the instant replay button make it a better option for streaming. It's not as refined but it offers the heavy hitters missing from Apple TV. Streaming options are just better with Roku.
#
# Unless you own an iOS device or will be upgrading to Mountain Lion (for AirPlay) or are heavily invested in iTunes store purchases - Roku is better hands down as Apple TV's use will be very very limited. Conversely if you already own a gaming console or a TiVo or something similar then the streaming options of the Roku may not be unique (between my tivo, ps3, and 360 - there isn't a thing I use the roku for that I can't do on one of those - mainly the PS3). If you're interested in a streaming device and don't already own a gaming console, Roku is likely better. If you are only interested in Netflix, MLB, and NHL and/or you're really in love with iTunes or AirPlay, then Apple TV is better.
#
# Personally? I'm keeping the Apple TV, for AirPlay alone, hooked up to my TV in the living room. The Roku is going in my guest room. The Roku is a better device in my opinion, but it doesn't do anything unique like AirPlay. Perfect on it's own though where I don't want to buy several devices again. Apple TV though is much much limited on its own though.
#
# UPDATE:
# I've tried other AirPlay games (Real Racing 2, NFS Shift 2) and the performance is better on these games. It's still not what I'd expect or really want to deal with but it's playable for sure. Lag/stuttering happens less often and when it does it's less severe as compared to Asphalt 6. I'll note as well that the performance doesn't have an appreciable difference when the Apple TV is wireless vs wired, so it's unclear what's contributing to the lag. But the fact that some games are doable gives me hope for the future.
#
# UPDATE 2:
# Hulu was added - Huzzah! We're getting closer and closer.
#
# I'd recently bought a MBA and have used the Apple TV for AirPlay when trying to show a video to someone. It works well but occasionally refuses to work correctly - either the video is funny or there is no audio. Requires a restart of the MBA to get working (so it's possible the error is on the MBA side).
#
# All in all I still enjoy and use this device but it's only used for AirPlay for me. If you don't own other Apple products or don't intend to use AirPlay I still say your money is better spent on an Roku. I'm still going to leave this as a 3 star review for me. Again it's gained more features but not enough in my mind yet. It's close to a 4 though, but the dependency on iTunes and other Apple devices to be anything unique keeps it down. Feels more like it's supposed to be an accessory for Apple products, not a device to itself so much. Which is fine, but then I'd expect better performance.
#
# UPDATE 3 (Final Update):
# So taking a look back on this after nearly two years of ownership. Things have improved content wise - HBO Go is there, Disney and a few other channels have appeared as well. But for all of content improvements they've still ignored the larger flaws while the improvements to competing devices (notably Roku and WD) and the introduction of the Chromecast manage to further highlight the flaws and shortcomings of the Apple TV. There's still no NAS support and most services that could compete with Apple's iTunes (Pandora, Spotify, Rdio, Amazon Instant) are still missing and likely will be for the foreseeable future.
#
# The Apple TV interface, while simple, is becoming stale and ugly in a few applications (YouTube and Netflix jump to mind). Roku has drastically improved their interface, bettering Apple as far as I'm concerned. All the while the Chromecast has come on to the scene and for $35 does many comparable things (including whole screen casting similar to AirPlay from laptops - although admittedly not as smooth yet).
#
# Now, more than ever, the value proposition of Apple TV is largely tied to you and your participation in Apple's ecosystem. If you need iTunes access or your need AirPlay, this is the only device to get them on. But if you don't, there's really not any reason I can provide to buy an Apple TV anymore. Even a year ago you could make the argument that if all you needed was Netflix, Hulu, and YouTube hat the Apple TV was as good option thanks to its attractive interface but since Roku has fixed their interface with the Roku 3 this simply isn't the case anymore; the Roku is now the box to beat. The additional content channels provided by Apple TV do help its use, but it seems more apparent that they're deliberately leaving out competing services (or at least that those services have no interest being on Apple TV). So if you use Pandora, Spotify, Amazon Instant, and several other services you have to get something else (for now at least).
#
# I'm not saying Apple TV is a terrible device, I still have mine hooked up in my living room for AirPlay. But if you exclude iTunes and AirPlay there's simply no reason to buy it over a Roku or WD TV or Chromecast anymore really. While iTunes and AirPlay are valuable features I could argue that the absence of Amazon Instant, Vudu, Spotify, Pandora, and Slingplayer are notable weaknesses that other platforms don't have. So in the end it really is based on your ecosystem needs. If you're heavily invested into Apple's world and can do without the missing services then by all means get an Apple TV. But in nearly any other instance your money is better spent elsewhere."
#
#
#
#
#
#
#
# review_3 = "As the title hints, our household is already well furnished with Apple products. And as it has been said in other reviews in this thread, it will be a much more positive user experience for people who have Mac computers, or iPad / iPhone / iTouch, for these last three can be used as remote controls with an excellent free app ('Remote') from Apple.
#
# If it were not for Apple's attention to detail, the installation of the Apple TV could be a bear for less technology-savvy consumers. But, even though I've installed a network or five before, in my mind this couldn't have been easier. Opened up the package, plugged stuff up, and things came right up on the screen. Used the included remote to log in. It should be noted that logging in (This means you have to have an Apple ID login and password) must be done on all devices you plan on involving in what is essentially a kind of network parallel to the wi-fi network you have in your house (although of course it runs on it).
#
# You must log in, and turn on Home Sharing, on the Apple TV, in iTunes on any computer you're planning on using, and also on any iPad / iPhone / iTouch you're using as a controller. It should also perhaps be noted that these logins are separate from logins and passwords you may be using for Netflix, Hulu, or any other media you are accessing through Apple TV. This all takes some time, but it's a one-shot deal.
#
# The nicest surprise (which I had not come across in my research) about the Apple TV is that it includes a high fidelity TOSLINK optical audio out connection in addition to the HDMI connector. The Sony receiver on our home stereo is rather old-school in that it predates HDMI, so we weren't going to be able to run the Apple TV signal through that. Instead, I'd have to run the HDMI cable directly to our Samsung HDTV. However, the receiver does have TOSLINK inputs, so I just use a cable I had lying around, and I have excellent sound through our stereo speakers.
#
# Once everything was up and running, I was very gratified by the far better picture and sound that I was getting compared to streaming Netflix through the Wii (which we have done for several years heretofore). I already knew that the Wii's specs for picture and sound were pretty low, but for me, the increase in performance alone was worth the price of the Apple TV and cable.
#
# Apple's attention to the end user experience has always been one of the best features of owning their products, but the icing on the cake for Apple TV is the 'Remote' app. Free, simple, and elegant. Once I used it, I knew I'd have to put the included remote in a safe place, because I wouldn't be using it again except in some extraordinary circumstances.
#
# There are some complaints in the reviews that the Apple TV lacks certain online media services. This may be the case, but for what it does provide, and for how it performs, we are very pleased.
#
# Addendum: This Apple TV is just the gift that keeps on giving. I was under some misapprehensions about the capabilities of AirPlay, specifically AirPlay Mirroring. Google it, go to the Apple support page, and then do enough links. Photos and music may be displayed from your iDevice simultaneously through the Apple TV to your HDTV. Great!"
#
# review_4 = "INTRODUCTION – The new Roku 3 is very easy to setup and use. The processor is extremely fast. The user interface makes accessing countless shows and movies simple and intuitive. Roku’s best feature is that it helps you find the cheapest source for each movie.
#
# MAIN NEW FEATURES
# Voice search – The voice recognition is not perfect, but it definitely beats trying to scroll to type one letter at a time! While it’s great to have voice search built into the remote, you can just download the app for your phone to use voice search with older Rokus. (As a result, you don’t need to buy a new Roku 3 to get voice search, but the Roku 3 remote’s voice search doesn’t have reliability issues like the app.)
#
# Other new features … Well, in my opinion, there are not many other substantial new features. That being said, the new Roku 3 is still an amazing player (because it has the same great features as the old Roku 3). I cannot tell any difference in processor speed between the old Roku 3 and the new Roku 3.
#
# WHAT’S NOT INCLUDED
# Roku 3 actually includes almost everything you’ll need. Here are a few other things you’ll need:
# - Internet
# - Credit card (to pay for movies and shows)
# - HDMI cable
# - Mount (If you have a WALL-MOUNTED TV, you’ll need a mount to attach Roku to your TV.)
#
# “UNLOCKED” ECOSYSTEM
# The main reason to buy a Roku is that Roku is not trying to push you towards certain content providers. Apple TV, for example, does not allow you to access shows and movies from many sources. Fire TV tries to encourage you to buy content from Amazon (although a few other content providers are available if you look for them). Unlike Apple TV and Fire TV, Roku makes it easy to search for shows and movies from many sources AND lets you see how much different providers charge for shows and movies. This difference is IMPORTANT – If you want to watch a certain movie, you’ll love instantly seeing which source rents the movie for lowest price! Bottom line – You’ll probably save money in the future by renting shows and movies via Roku 3.
#
# DIFFERENCE FROM OLD ROKU 3
# The most important thing to note is that the new Roku 3 is very similar to the old Roku 3. I bought the new Roku 3 because I love having the latest tech. After comparing the two devices, I would not recommend buying a new Roku 3 if you already have an old Roku 3. However, if you have any other old Roku player, then the new Roku 3 is a great upgrade (mainly due to the faster processor).
#
# DIFFERENCE FROM APPLE TV
# Roku 3 will enable you to access shows and movies from many more sources (often with lower rental prices). The Roku 3 interface might not be quite as simple as the Apple TV interface, but Roku 3’s interface is still easy to use. Unlike Apple TV, Roku 3 includes voice search, headphones that attach to the remote, and a few marginal games.
#
# DIFFERENCE FROM FIRE TV
# Fire TV provides access to several sources of shows and movies, but Roku 3 provides access to more sources of shows and movies (perhaps more sources than you’ll ever need). Roku also makes finding the cheapest price much easier (by instantly showing you prices from different sources). Fire TV has much better games. Both Fire TV and Roku 3 include voice search. Unlike Fire TV, Roku 3 includes headphones that attach to the remote.
#
# DIFFERENCE FROM OTHER ROKU PLAYERS
# Both the new Roku 2 and the new Roku 3 include the same fast processor and 1080p (HD) resolution. Buy Roku 3 if you want voice search on your remote (rather than by downloading an app on your phone), you want headphones, or you want to pick from a few simple games. Otherwise, buy Roku 2. Roku 1 also has 1080p (HD) resolution, but the processor is much slower. Only buy Roku 1 if you don’t mind a slower user interface and other delays. Don’t buy the Roku stick … you deserve better."
#
# review_5 = "With the recent refresh of the Roku 3 (4200 => 4230) Roku keeps what works and adds in voice search.
#
# The new Roku 3 (4230)'s voice search works easy enough - just press the search button and speak what you're looking for. This search button does however replace the jump back/replay button. The functionality is a bit hit or miss - it seems overly finicky compared to voice search on Amazon Fire or even Android TV - but when it works the results seem better, showing across multiple service providers (Netflix, Hulu, Amazon, Vudu, etc) and not a select few. To be fair the hit/miss aspect seems more with Roku's search sometimes than voice not working out right.
#
# The new Roku 3 (4230) keeps the updated processor of the previous Roku 3 (4200), which in comparison to previous processors allows for apps to load almost instantly - it's most noticeable with the dedicated app buttons (Netflix, Amazon, Rdio, and Hulu) which go straight to their respective applications. You get the wi-fi direct remote (not IR) so you don't need to worry about aim, complete with the headphone jack for private listening (a must have for the bedroom or late nights).
#
# You also get access to what is, arguably, the best streaming media device. Sure there's specific features/reasons you might prefer Apple TV, Fire TV, Android TV, or WD but as an overall it's hard to beat the selection of content on Roku. Add to that the ability to follow movies for release and sales and you're looking at the most content focused device and without a specific platform to push forward (Apple TV has iTunes, Android TV has Play, etc) you get something putting pure content first and not simply the specific store. For example if you're looking to rent a movie you can easily see who has the best price and possibly save a buck or two.
#
# If there's anything negative to say it's arguably that Roku has done such a good job with the new Roku 2 (4210) and previous models of the Roku 3 (4200) that you just may not need this. If you don't care about the headphone jack on the remote, the voice search, or wifi remote you can save yourself $30 by getting the Roku 2 (4210) - it's the exact same hardware inside the actual box. If you have the previous Roku 3 (4200) model there's not likely enough here to upgrade for - just the update voice search. But if you don't have a recent Roku or are looking to get into the game straight off this is the best option baring specific needs (e.g. if you MUST have iTunes then you have to get an Apple TV). If you don't care about the headphones or the voice search though, Roku 2 (4210) will not let you down.
#
# Pros:
# ++ Most content of any streaming media platform
# + Fast, almost instant in some cases
# + Voice Search and Headphone jack provide some nifty extras
#
# Cons:
# - Voice search is hit or miss at times
# - May not be worth upgrading over last year's Roku 3 (4200) or worth the cost over the Roku 2 (4210)
#
# While this might not be the best media player for everyone, you may have very specific needs, it's likely the best for most people. The combination of performance, content, and extra features make this a hard device to beat. Baring very specific things like AirPlay, iTunes, Chromecast you're not likely to find much missing. But if you just need something to watch movies and tv on - Hulu, Netflix, Pandora, Vudu, etc etc - you'll be happy with this purchase.
#
# If you have any questions feel free to ask - or for comparisons with Apply TV, Chromecast, or Fire TV (have access to them) let me know."
#
#
#
#
#
#
#
#
#
#
# # Reviews for Google Chromecast
# review_6 = "I actually ordered a Chromecast the day it was announced from Google. However the next day, I was told that they were available for purchase at bestbuy. I was anxious to try it out so I went and bought another one and gave it a try.
#
# Setup was easy and within 5 minutes, I was watching a youtube video on my 65\" TV. The quality was VERY good. I tried a 1080p video first \"Big Buck Bunny\" and it looked, played and sounded wonderful. Next, was playing music from my Google Play music app. Same result, the music sounded great.
#
# I moved on to my Macbook Pro, and again, the videos was clear, without lag, no audio sync problems at all. Same for my Windows PC.
#
# Those considering buying the Chromecast should consider what the Chromecast actually is and does, instead of what they wish it could do. So here are some facts:
#
# 1. The Chromecast is not a streaming device of local digital content. In other words, it does NOT play digital music and videos that is stored locally on your network drives or computers. However there is a work-around for this:
#
# Use PLEX Media Server. If you don't already have it, here's the link:
#
# [...]
#
# Once you download it and point it to your files,it will act as a proxy and allow your music and videos to be played on your HDTV using the Chromecast through the Chrome browser. Simply launch the PLEX Media Manager in Google Chrome browser. Pick a file to play, Hit the Google Cast button and you'll get seamless playback of your own files. [Edit: Please see comments to see an alternative method].
#
# 2. The Chromecast is not a DLNA or Miracast device or Apple's airplay. This is a lot like my number 1 fact, but I wanted to make this clear. If you want device mirroring (display whatever is on the device's screen), the Chromecast, is NOT for you. The video and music does NOT stream from the controller device (Your computer, tablet, smartphone). Chromecast works by fetching the content from a website or cloud service itself, NOT from the device you're using. Here's what's cool about that:
#
# A. You could start playing a video using your smartphone,tablet,computer as a \"remote\" and still be able to browse the web, play a game, check your social apps, write a book report, put the device to sleep,turn the device completely off (I tried this myself), or leave the house, and the video WILL still play without issues.
#
# B. Your battery life is saved! Because your phone, tablet or computer (not plugged in)is not actually streaming to the Chromecast, your battery consumption is minimal. You could Play dozens of movies over several days and still have most of your battery life remaining (Of course this would depend on what else you do with the phone, tablet or computer and how long your device can stay in standby).
#
# C. Every device connected to the Chromecast on the same network can take control of playback, adding to the queue (what's going to play next). Pause, fast forward, rewind, etc. So if your roommate, friend, parent, sibling, spouse, girlfriend/boyfriend has to leave with their device, you don't have to worry.
#
# D. You can play content from thousands upon thousands of sources using your computer. Using Google Chrome, nearly every webpage, that has content can be viewed using Chromecast. Of Course, this depends what protocols the site is using. If the site has trouble playing on your computer, then it probably won't work well on the Chromecast, either.
#
# 3. Chromecast IS cross platform (works with multiple devices). As I said, I tried it with several devices with different operating systems. At the time of this review, it works on Windows PC's, Macbooks, and android devices. The app for iOS devices is coming soon. Everyone knows the Apple App store has stringent policies and at times, it can be a long process. Look at the Onlive game streaming app. We won't get into how Apple has been trying to eradicate google applications from it's ecosystem anyway. I'm sure the app is waiting for approval. Just be patient. [Edit: Please see comments for a reply to it working on iOS devices].
#
# There are several youtube videos that can show you how to set it up or how well it works. I made a video myself:
#
# [...]
#
# Watching my video isn't required, but it does help to verify what I'm saying.
#
# 4. The device you use with the Chromecast, must be on the same WIFI network. The important word here is WIFI. If you are trying to use it, with a ethernet (wired) connected device, even though it's on the same network, it will NOT work! Yes, that sucks, but not being able to use sink water in your gas tank, kind of sucks to. If that's a deal breaker for you, then you shouldn't purchase it. It's how they chose to implement it's use. It is, what it is. [Edit: Please see comment section].
#
# 5. The Netflix 3 months free limited time offer is over! I received 3 months free with both my purchases. I live in the eastern time zone. Even though I bought my second Chromecast on July 25th at 6:46pm. I realize that when the offer was no longer available, it should have been posted immediately so that consumers could factor that into their decision to buy the Chromecast. Instead of calling it a limited time offer, they should have said \"while supplies last.\" Never the less, the features and functionality of this device has nothing to do with the inadequacy of a bonus offer. To help people make a decision about a future purchase and if it will work for THEM in the home configuration they have, is paramount in my book.
#
# 6. The Chromecast REQUIRES power through USB connection or from your wall outlet. The required peripherals ARE provided to you in the retail box. Some people are saying if you have an HDMI 1.4 compatible port on the back of your TV, the device can be powered by the HDMI port alone, without the USB cord connected. I CANNOT speak to that, as my HDMI ports did NOT power the Chromecast. I had to use the provided USB wire and connect it to a USB port available on the back of my TV.
#
# Overall, I'm extremely pleased with the purchase. I've read some of the other reviews, particularly the 1 and 2 star reviews, because it's an indicator of what can possibly go wrong with the device. I would suggest that people make their decision based on people that have actually bought the device and have experience connecting, setting it up and ACTUALLY using the device. Most of the bad reviews are from people that have not used it, didn't understand the features of the device, or, to be honest, has a problem with the competition between Apple and Google and wants to dismiss this product because of their affinity for Apple products. Look at the features and functions of this device and consider them for yourself.
#
# I hope this review helps someone who may be considering this device.
#
# EDIT: Recently more apps were added with chromecast support, including the PLEX app! Other editions are: HBO Go, Hulu Plus, Pandora, Vevo, Redbull.tv, Songza, Post TV, Viki, Real Player Cloud."
#
#
#
#
#
# review_7 = "So I have no idea why Amazon decided to remove my 1500+ Helpful Review. I have had this product for weeks so I was able to give more than just a short term insight. In fact, I like the idea of it so much that I ordered two additional through Amazon yesterday before they sold out (Google only gave me one to test with).
#
# Anyway, I was contacted by fellow Amazon shoppers to repost it - so here it is:
#
# I want to provide an honest review with an actual understanding of what and how the product works having had it for a couple weeks, without violating my NDA.
#
# Look - you can give your \"Review\" once you have in your hands. Make assumptions based off an uneducated guess or incorrect information just looks stupid, I'm sorry.
#
# What it Is:
# It's a HDMI dongle that is powered by Chrome OS that is designed for Streaming.
#
# How it Works:
# You have to connect to the same Wi-Fi network for it to work. Once it's setup you'll see the Chromecast logo and a basic Home Screen with some of the first apps available for Chromecast. A lot of development is going into it, so expect to see more apps from the Google Play store work with your TV. See your phone/tablet/computer more of a remote, rather than an actual streaming device.
#
# I only tested on the iOS side (I don't have a Droid) and I can tell you that it works very well. It is NOT like Apple's AirPlay where your screen is mirrored, but rather uses \"the Cloud\" to access your content. It works smoother than AirPlay because it doesn't require buffering from your device, but rather directly to the TV. The only \"syncing\" that occurs is the Cloud communicating to the Chromecast where you're at. For example: I'm watching a Netflix movie and I'm at 1:06:17. I hit the Square button with the wi-fi looking icon called \"Cast\" and it syncs it to my Chromecast. This is only different for web-browsing through the currently Beta Chrome Tab Cast, where it'll show exactly what you're looking on Chrome, onto your TV. It's less functional than straight up mirroring like the Apple TV, but it works. You can't switch between apps and have that show on the screen. This is particularly useful in web-based presentations or while you check your email and your friends are watching Netflix.
#
# Battery Drain on Mobile Devices:
# Because of the way Chromecast works, it's streaming information from the Cloud vs. from your device. I noticed very little increase in the usage of battery on my iPhone 5 and my Macbook Air running Mountain Lion OSX.
#
# Support for Streaming Services:
# Right now, Streaming Service support is limited. Netflix, Google Services (Google Play, YouTube) and Web-based Streaming is allowed. I had issues trying to load Hulu the past couple days, telling me that my browser was unsupported, but I'll update once I get a chance.
#
# Power Adapter:
# The power adapter is an optional requirement. In fact, most modern TV's with HDMI 1.4 or higher spec are supported. The Chromecast can draw power from the HDMI port it's plugged into. If your TV doesn't support that, there's also a USB cable and power adapter included in the box. I have a 2012 LG LED and a 2013 Lenovo 27\" Monitor with HDMI input and the ports power it with no cable.
#
# All in all, I feel like it's still a huge work in progress. The SDK will allow for some exciting developments, and I'm happy to say that Google has committed to support this device for quite some time. It gives me piece of mind that this won't become out of date each year.
#
# That being said, it's only $35. What a steal for a device that really brings value to any TV."
#
#
#
#
#
#
#
#
#
#
#
#
#
# #Amazon Fire TV reviews
# review_8 = "I was fortunate to order one of these as soon as it was announced. As an Amazon Prime member, I was able to buy the Fire TV Stick for $19 during a two day sale. I figured, for that price, I might as well test it out!
#
# Set up was easy and straight forward. I find that the interface is quick and easy to use. The interface and streaming on the Stick is much faster than the Amazon app built into my HDTV. This fact alone made this a great purchase. Here are some more thoughts I have on the Fire TV Stick so far:
#
# ✔ PROS:
#
# - Quick, easy to use, polished interface
# - Wireless streaming works really well
# - Amazon Instant video loads, fast forwards, and rewinds really fast
# - A dedicated Prime Menu allows Prime members to easily see what free content is available
# - Unlike Chromecast, the Fire TV Stick includes a remote
# - Can stream your own videos by first uploading them to your cloud disk
# - Can play quite a few casual games
# - Awesome, irresistible price for Amazon Prime users. I got it for $19 during the two day sale.
# - Better specs than Chromecast and Roku Stick
# - Ultraportable. I plan to use Fire TV Stick when I travel for work and to visit family
# - Stream local videos and other content using the Plex app http://www.amazon.com/Plex-Inc/dp/B004Y1WCDE/ (Thanks BikeRider!)
#
# ✔ CONS:
#
# - Included remote doesn't support voice search. That remote costs extra. Would be nice to have a second Fire TV Stick model that includes the voice search remote, rather can requiring us to buy a second remote.
# - Probably won't be able to use universal remotes with this unless Logitech offers a compatible device.
# - Not as fast as Fire TV, but since the Stick is so much cheaper, this is not really an issue.
# - Limited compatibility with older Android devices.
#
# ✔ OTHER
#
# - Arrived associated with my Amazon account. You can change this of course. Just keep this in mind if you are sending the Fire TV Stick as a gift.
#
# - Unlike the Chromecast, the Fire TV Stick may complain if you connect its power port to a USB port on your TV instead of using the included AC power brick.
#
# - Setup will take 15 to 20 minutes
#
# - Would be nice if this thing was compatible with the Fire Keyboard: http://www.amazon.com/review/R1DFOMPMA8NG4V/
#
# ✔ AMAZON FIRE TV STICK vs CHROMECAST
#
# Chromecast is cheaper these days. It's a very capable device. It currently has a few notable content sources that Fire TV Stick doesn't have, including HBO Go and Sling Player. It doesn't have a remote and I find the user interface to be a little clunky.
#
# Amazon Fire TV Stick has a remote and a very quick and easy to use interface. Your non-technically inclined family members will find the Fire TV Stick easier to use than the Chromecast. If you have Amazon Prime, it's a no brainer. Chose the Stick over the Chromecast.
#
# ✔ AMAZON FIRE TV STICK vs FIRE TV
#
# The Fire TV is faster, includes voice search, has more RAM, has more storage, has an Ethernet port, and can play more games. It's also more expensive (although there are discounts on them all the time).
#
# The Fire TV Stick is more portable. It's also a lot cheaper, especially if you are an Amazon Prime member and got the initial $19 price.
#
# If you can afford to the Fire TV, get that. Otherwise the Fire TV Stick is a great alternative. I plan to own both. :-)
#
# ✔ BOTTOM LINE
#
# I really like the Amazon Fire TV Stick. At only $19 for Amazon Prime members (during the 2 day sale), I REALLY, REALLY LIKE Fire TV Stick.
# Its interface is faster and easier to use than my HDTV's built-in Amazon app, plus it includes a lot more video sources. It's really the best way to view your Amazon content on a TV.
#
# The interesting thing is, Fire TV Stick has convinced me to buy the more expensive Fire TV too. I want to have the voice search and the faster interface on my main HDTV. I plan to take the Fire Stick with me when I travel for work or travel to visit family.
#
# For Amazon Prime members, and for anyone that has a few Amazon movie/TV purchases, the both the Fire TV and the Fire TV Stick are must have devices and great stocking stuffers for this Christmas.
#
# ✔ FREQUENTLY ASKED QUESTIONS
#
# Q: Where can I find the Fire TV Stick in stock?
# A: If Amazon doesn't have it in stock, try your local Staples or Best Buy. You may be able to check their websites to view local inventory.
#
# Q: Do I have to pay extra for Netflix?
# A: Yes. You must have an existing Netflix subscription in order to view Netflix content on your Fire TV Stick. In general, if you normally have to pay a subscription to access a streaming service, that subscription is required in order for you to stream content via the Fire TV Stick.
#
# Q: Do I need Amazon Prime to use the Fire TV Stick?
# A: No. Amazon Prime is not required to use Fire TV Stick. You can access Netflix, Hulu Plus, and even your Amazon Instant Video purchases, all without having an Amazon Prime subscription.
#
# Q: What is the advantage of having an Amazon Prime subscription with the Fire TV Stick?
# A: Amazon Prime give you unlimited access to over 40,000 movies and TV shows, including access to a large selection of HBO shows. You also get access to Prime Music, as well as unlimited cloud storage for your photos. You also get free two-day shipping, as well as the ability to earn credits for purchasing books, movies, and music.
#
# Q: Can I watch live ESPN broadcasts for free using Fire TV Stick?
# A: To access live ESPN broadcasts via your Fire TV Stick, you must already have access to ESPN through an existing cable TV subscription. The providers below offer access to WatchESPN live video:
# - AT&T U-verse
# - Bright House Networks
# - Charter
# - Comcast XFINITY
# - Cox
# - DISH
# - Google Fiber
# - Midcontinent Communications
# - Optimum
# - Time Warner Cable
# - Verizon FiOS TV
#
# Q: Is the Fire TV Stick compatible with HBO GO?
# A: HBO GO will be available for Fire TV Stick in Spring 2015. HBO GO is currently available for the Fire TV box.
#
# Q: Is a \"Smart TV\" required to use Fire TV Stick?
# A: No. Any TV with an available HDMI port will work.
#
# Q: Can the Fire TV Stick play games?
# A: Yes. Please note however that the Fire TV Stick doesn't play all Android games. It doesn't even play all the games that can run on the Fire TV box. Also note that some games require an optional game controller.
#
# Q: Can I use a universal remote control with the Fire TV Stick, such as a Logitech remote?
# A: IR based remote controls do not work with the Fire TV Stick. However, Logitech's Harmony Hub and Harmony Home products are compatible with both Fire TV and Fire TV Stick. For more details, google \"Harmony experience with Amazon Fire TV and Fire TV Stick\".
#
# Q: Can I use my TV's USB port to power the Fire TV Stick?
# A: The Fire TV Stick requires an amount of power usually not provided in standard USB ports. The included USB cable and AC adapter definitely works, of course. An AC powered USB hub may work. A USB port on your TV or other equipment probably will not work.
#
# Q: Will the Fire TV Stick continue to work if I switch TVs?
# A: Yes. You can use the Fire TV Stick on any HDMI equipped TV in your home. You can also use it when you are away from home.
#
# Q: Can I use the Fire TV Stick in a hotel room, using hotel Wi-Fi?
# A: The hotel room TV requires an accessible HDMI port, of course. If in order to access your hotel's Wi-Fi network you must first access a special web page to log in, this functionality is coming soon to the Fire TV Stick but not yet available (as of 12/18/2014).
#
# Q: Can I access the Fire TV Stick from my audio/visual receiver (AVR)?
# A: I haven't personally tested this but I believe it should work. Your AVR must have an available HDMI port of course.
#
# Q: Can I stream content from my local computers to my Fire TV Stick?
# A: Yes, using the Plex app.
#
# Q: Can I view Ultraviolet (UV) movies on my Fire TV Stick?
# A: At least one person (B. Brown of Oregon) reports that you can watch Ultraviolet movies using the Flixster app. I haven't personally tried it.
#
# Q: How do I turn the Fire TV Stick off?
# A: You don't have to turn the Fire TV Stick off. It goes to sleep after a period of inactivity. If you want to put it to sleep anyway, go to settings > system menu > click sleep. (Thx Selden Deemer)
#
# Q: How do I open the remote to insert the batteries?
# A: In the middle of the back of the remote, there is a small rectangle. Right next to it, there's the edge where the battery cover and the rest of the remote meets. Place your thumb on the rectangle and, with a little force, move the rectangle away from the edge. The cover should come off easily. Hope this helps!
#
# Q: Can I block family members from making purchases using the Fire TV Stick?
# A: Yes. You can enable a feature that requires a PIN number to be entered before purchases can be made.
#
# *** If you like this review, please mark this review as helpful! Also, feel free to ask me questions about the Fire TV Stick! ***"
#
#
#
#
# review_9 = "UPDATE! 5/27/15: It's been many months now, and i use the firetv stick almost daily for night-time bedroom Family Guy viewing. It's been totally great, the only occasional annoyance is having to re-login to netflix after it has an update. other than that it's been a true workhorse.
#
# Bottom line? This is the best streaming device for the dollar(In my humble opinion) Keep in mind... it's $39 & it handles netflix/prime/plex/games and a lot more & doesn't seem that much slower than the full firetv box. I've been using the firetv box from the start which pushed the roku 2 to the bedroom, i have few complaints overall for either device. But for my bedroom i wanted something that just plugs in, and i tried the roku stick but returned it because it was just too darn slow.
#
# The Good stuff...
#
# -Same pricerange as the less capable/less powered Chromecast & Roku stick
# -More ram/memory than the competition, keeps things running smooth
# -More storage space than the competition, you can store more apps/games/etc..
# -You can still do gaming with it, but the firetv box is better suited
# -So small you can bring it pretty much anywhere with ease.
# -Simple clean interface.
# -Lots of games/apps to choose from
# -The phone app is actually pretty useful
#
# Not as good stuff...
#
# -No connections other than usb for power, if you need ethernet/audio in/out, get the box!
# -STILL no HBO go... what's going on amazon?
# -Not nearly as much power as the firetv box, but it's also less than half the price, the power difference is not very apparent in general use.
# -No voice search without the additional remote(or phone app), but i really never used it
#
# Plex...
# Thus far has worked without much delay on my fairly speedy home network. Plex has it's own plethora of options and settings, that coupled with your network speed really determine how well the stick can handle it.
#
# ***TIP!:
# Some have mentioned that their stick's usb port gets obstructed, first and most obvious fix is to use the included dongle, if you don't like that for some reason, the other solution is to search amazon for \"HDMI Angle\"
#
# Wireless connectivity quality...
# I use it in a room that's next to the wireless router room, and it gives a solid signal.
#
# Vs: firetv box, roku, or chromecast?
# I was fully into roku boxes, but with firetv stick is cleaner/no wires/direct plugin/etc..., the roku stick was too slow for me, and an android stick isn't as clean to use, so to speak. That leaves chromecast, which i've never used because i don't like having to rely on a computer/device for it to work, i want what i plug in to be able to handle the task. Needless to say, the stick in my view has not much competition.
#
# Vs Firetv box
# If i were to be shown the experience side by side with the firetv box, i'd have a hard time knowing any difference in most cases, so which should you get considering the more than 2x higher price for the box?
#
# If you don't need extra connections like audio and Ethernet, and don't plan on using voice search(the stick remote lacks it, but i never used it anyways, as it only searching prime) and don't plan on heavy gaming, then absolutely get the stick, it's been a solid experience."
#
#
#
#
#
#
#
#
# # Amazon Fire TV Reviews
#
# review_10 = "I'm your typical middle-aged woman - I don't game, and I'm not super tech-savvy by any means....so take this review for what it is. The Fire TV was easy to install and I'm loving all the features, free movies, music and simple interface - this thing even has a screen saver that comes on when you're listening to music! We've always just had our Comcast cable service without DVR and occasionally used Comcast OnDemand to watch/rent movies - but I'll never watch from Comcast again. The voice recognition software is amazing and brought me to exactly what I was looking for every single time I searched. It's just so easy to find what you're looking for (unlike Comcast), and since I'm an Amazon Prime member most of what I want to view is free - oh and for the new release movies the cost to \"rent\" from Amazon is on average cheaper than Comcast OnDemand by a ~$1 or more. So happy with this purchase!"
#
#
#
#
# review_11 = "It seems to work fine so far (2 Days with it). What I don't like is how Amazon has made it so the\"Prime\" content is mixed with the \"For Pay\" content, with no easy way to just see what is ONLY \"Prime\" content. This is obviously made to divert you into buying more non Prime content...
# Amazon, please give us a CLEAR way to view \"Prime Only\" if that's what we want. I know we can voice search for anything... and that's great, but sometimes we just want to \"Go Fishing\" and would like to fish in the \"Prime\" pond only. This is a pretty big deal when you compare this to competing (Think ROKU) products that let you do just that.
# Hard to believe your competition does a better job with presenting your own content than you do. Maybe an update in the near future will \"Fix\" this."
#
#
#
#
#
#
# # ------------------------------------------------------------------------------
#
# Review.create(
#   title: "Comparing AppleTV to Roku2 XS",
#   body: review_1,
#   stars: 5,
#   user_id: 2,
#   product_id: 1
# )
#
# Review.create(
#   title: "Great at what it does but perhaps too limited",
#   body: review_2,
#   stars: 3,
#   user_id: 3,
#   product_id: 1
# )
#
# Review.create(
#   title: "Another great Apple product",
#   body: review_3,
#   stars: 3,
#   user_id: 4,
#   product_id: 1
# )
#
# # Start of Reviews for Roke 3
# Review.create(
#   title: "Great choice if you want cheaper movie rentals ...",
#   body: review_4 ,
#   stars: 5,
#   user_id: 4,
#   product_id: 2
# )
#
# Review.create(
#   title: "The best streaming media player",
#   body: review_5,
#   stars: 5,
#   user_id: 3,
#   product_id: 2
# )
#
# # Review.create(
# #   title: "",
# #   body: ,
# #   stars: ,
# #   user_id: ,
# #   product_id: 2
# # )
# # End of Reviews for Roke 3
#
#
#
#
# # Start of Google Chromecast Seed Data
# Description.create(
#   body: "Stream online video, music, photos and more to your TV using your smartphone, tablet, or laptop",
#   ord: nil,
#   product_id: 3
# )
#
# Description.create(
#   body: "Supports a growing number of apps including Netflix, YouTube, HBO Go, Hulu Plus, Pandora, ESPN, MLB.TV, Google Play Movies and Music, Plex, MLS, crackle, Vevo, Rdio. Allows to cast a Chrome browser tab.",
#   ord: nil,
#   product_id: 3
# )
#
# Description.create(
#   body: "Box includes Chromecast, HDMI extender, USB power cable, and power adapter. No remote needed.",
#   ord: nil,
#   product_id: 3
# )
#
# Description.create(
#   body: "Easy setup: Plug into any HDTV and connect to your home WiFi network",
#   ord: nil,
#   product_id: 3
# )
#
# Description.create(
#   body: "Works with Android phones and tablets, iPhone, iPad, Mac, Windows, and Chromebooks",
#   ord: nil,
#   product_id: 3
# )
#
# Specification.create(
#   title: "Brand Name",
#   body: "Google",
#   ord: nil,
#   product_id: 3
# )
#
# Specification.create(
#   title: "Item Weight",
#   body: "0.2 ounces",
#   ord: nil,
#   product_id:3
# )
#
# Specification.create(
#   title: "Product Dimensions",
#   body: "4.7 x 4.7 x 1.4 inches",
#   ord: nil,
#   product_id:3
# )
#
# Specification.create(
#   title: "Item Model Number",
#   body: "H2G2-42",
#   ord: nil,
#   product_id: 3
# )
#
# Specification.create(
#   title: "Color Name",
#   body: "Black",
#   ord: nil,
#   product_id:3
# )
#
# Specification.create(
#   title: "Item Display Height",
#   body: "3.5 centimeters",
#   ord: nil,
#   product_id: 3
# )
#
# Question.create(
#   body:"This is powered by a mini USB cable, and NOT from the HDMI connection. Correct?",
#   product_id: 3,
#   user_id: 1
# )
#
# Question.create(
#   body:"will chromecast play amazon instant videos",
#   product_id: 3,
#   user_id: 2
# )
#
# Question.create(
#   body:"i don't have a usb port on my tv. can i still use chromecast? if so, how does it get power?",
#   product_id: 3,
#   user_id: 4
# )
#
# Answer.create(
#   body:"CORRECT. There seems to be a lot of confusion here. The Chromecast device DOES NOT get power through HDMI period, regardless of the version or the amount of power in your HDMI port. The device does NOT have support for MHL at all, so it cannot get power through HDMI. Even if your TV has HDMI v1.4 you will still need USB power. It doesn't matter how much power your HDMI port produces, the devices is NOT capable of being powered through HDMI. You MUST ALWAYS use some USB power source with the Chromecast device. Repeat, you MUST ALWAYS plug it into a USB power source period.",
#   question_id: 8,
#   user_id: 4
# )
#
# Answer.create(
#   body:"I'm actually thinking of cancelling my amazon prime since there is no android chromecast support. We need an app please.",
#   question_id: 9,
#   user_id: 3
# )
#
# Answer.create(
#   body:"You can! it comes with a fairly long USB cord and an AC power adapter that you plug into the wall.",
#   question_id: 10,
#   user_id: 2
# )
#
# Review.create(
#   title: "An Actual Chromecast Owner",
#   body: review_6,
#   stars: 5,
#   user_id: 4,
#   product_id: 3
# )
#
# Review.create(
#   title: "Honest Review from a Developer - Reposted",
#   body: review_7,
#   stars: 4,
#   user_id: 4,
#   product_id: 3
# )
#
# # End of Google Chromecast Seed Data
#
#
#
#
#
#
#
#
#
# # Start of Amazon Fire TV Stick Seed Data
# Description.create(
#   body: "Fire TV Stick connects to your TV's HDMI port. It's an easy way to enjoy over 250,000 TV episodes and movies on Netflix, Amazon Instant Video, HBO GO, and Hulu Plus, plus games, music, and more",
#   ord: nil,
#   product_id: 4
# )
#
# Description.create(
#   body: "4x the storage and 2x the memory of Chromecast plus a dual-core processor and 1 GB of memory and ASAP so the movies and shows you like start instantly",
#   ord: nil,
#   product_id: 4
# )
#
# Description.create(
#   body: "Fire TV Stick comes with a dedicated remote and remote app with all the controls you need to easily search, watch, and play games",
#   ord: nil,
#   product_id: 4
# )
#
# Description.create(
#   body: "With voice search on the free remote app or optional Fire TV Voice Remote, simply say what you want to watch and start enjoying in seconds",
#   ord: nil,
#   product_id: 4
# )
#
# Description.create(
#   body: "Fire TV Stick lets you mirror your phone or tablet to your TV, or fling favorite apps to free up your small screen for other uses",
#   ord: nil,
#   product_id: 4
# )
#
# Description.create(
#   body: "Play favorites like Flappy Birds Family, Toy Story: Smash It!, Monsters University, and more great games",
#   ord: nil,
#   product_id: 4
# )
#
# Description.create(
#   body: "Amazon Prime customers get unlimited access to popular movies and TV shows with Prime Instant Video, including The HBO Collection and original shows like Transparent, plus Prime Music",
#   ord: nil,
#   product_id: 4
# )
#
#
# Specification.create(
#   title: "Size",
#   body: "3.3 x 1.0 x 0.5 in. (84.9 x 25.0 x 11.5 mm)",
#   ord: nil,
#   product_id: 4
# )
#
# Specification.create(
#   title: "Weight",
#   body: "0.9 oz. (25.1g)",
#   ord: nil,
#   product_id: 4
# )
#
# Specification.create(
#   title: "Processor",
#   body: "Broadcom Capri 28155, dual-core 2xARM A9 up to 1 Ghz",
#   ord: nil,
#   product_id: 4
# )
#
# Specification.create(
#   title: "GPU",
#   body: "VideoCore4",
#   ord: nil,
#   product_id: 4
# )
#
# Specification.create(
#   title: "Storage",
#   body: "8 GB internal",
#   ord: nil,
#   product_id: 4
# )
#
# Specification.create(
#   title: "Memory",
#   body: "1 GB",
#   ord: nil,
#   product_id: 4
# )
#
# Specification.create(
#   title: "Wi-Fi Connectivity",
#   body: "Dual-band, dual-antenna Wi-Fi (MIMO); supports 802.11a/b/g/n Wi-Fi networks.",
#   ord: nil,
#   product_id: 4
# )
#
# Specification.create(
#   title: "Bluetooth",
#   body: "Bluetooth 3.0 with support for the following profiles: HID, SPP",
#   ord: nil,
#   product_id: 4
# )
#
# Specification.create(
#   title: "Voice Search Support",
#   body: "Yes, requires Fire TV Voice Remote (sold separately) or free Fire TV Remote App (available for download on Fire or Android OS; iOS coming soon)",
#   ord: nil,
#   product_id: 4
# )
#
# Specification.create(
#   title: "Game Controller Support",
#   body: "Yes, optimized for Amazon Fire Game Controller, compatible with Nyko PlayPad Pro and other Bluetooth controllers.",
#   ord: nil,
#   product_id: 4
# )
#
# Question.create(
#   body:"Which one of the following things is most delicious?  {A: Watermelon, B: KoolAid, C: KFC, D: Corn}",
#   product_id: 4,
#   user_id: 1
# )
#
# Answer.create(
#   body:"KFC.",
#   question_id: 11,
#   user_id: 4
# )
#
# Review.create(
#   title: "Must have device, especially for Amazon Prime members",
#   body: review_8,
#   stars: 5,
#   user_id: 4,
#   product_id: 4
# )
#
# Review.create(
#   title: "Best streamer for your dollar - thoughts from a roku & firetv box user",
#   body: review_9,
#   stars: 5,
#   user_id: 2,
#   product_id: 4
# )
# # End of Amazon Fire TV Stick Seed Data
#
#
#
#
#
# # Start of Amazon Fire TV Seed Data
# Description.create(
#   body: "Amazon Fire TV is a tiny box you connect to your HDTV. It's the easiest way to enjoy over 250,000 TV episodes and movies on Netflix, Amazon Instant Video, and HBO GO, plus games, music, and more.",
#   ord: nil,
#   product_id: 5
# )
#
# Description.create(
#   body: "With voice search, simply say the name of what you want to watch and start enjoying in seconds",
#   ord: nil,
#   product_id: 5
# )
#
# Description.create(
#   body: "2 GB of memory, dedicated GPU, 1080p HD video, Dolby Audio surround sound, and Android-based Fire OS",
#   ord: nil,
#   product_id: 5
# )
#
# Description.create(
#   body: "Fast quad-core processor and expandable USB storage for playing best-selling games like Minecraft, Game of Thrones, Crossy Roads, and more",
#   ord: nil,
#   product_id: 5
# )
#
# Description.create(
#   body: "No more waiting for your movies and shows to buffer, ASAP learns what movies and shows you like so they start instantly",
#   ord: nil,
#   product_id: 5
# )
#
# Description.create(
#   body: "Fire TV lets you fling your favorite apps to your TV to free up your small screen for other uses. Or mirror your phone or tablet to your TV.",
#   ord: nil,
#   product_id: 5
# )
#
# Description.create(
#   body: "Amazon Prime customers get unlimited access to popular movies and TV shows with Prime Instant Video, including The HBO Collection and original shows like Transparent, plus Prime Music",
#   ord: nil,
#   product_id: 5
# )
#
# Specification.create(
#   title: "Size",
#   body: "4.5\" x 4.5\" x 0.7\" (115 mm x 115 mm x 17.5 mm)",
#   ord: nil,
#   product_id: 5
# )
#
# Specification.create(
#   title: "Weight",
#   body: "",
#   ord: nil,
#   product_id: 5
# )
#
# Specification.create(
#   title: "SOC Platform",
#   body: "Qualcomm Snapdragon 8064",
#   ord: nil,
#   product_id: 5
# )
#
# Specification.create(
#   title: "Processor",
#   body: "Qualcomm Krait 300, quad-core to 1.7 Ghz",
#   ord: nil,
#   product_id: 5
# )
#
# Specification.create(
#   title: "GPU",
#   body: "Qualcomm Adreno 320",
#   ord: nil,
#   product_id: 5
# )
#
# Specification.create(
#   title: "Storage",
#   body: "8 GB internal",
#   ord: nil,
#   product_id: 5
# )
#
# Specification.create(
#   title: "Memory",
#   body: "2 GB LPDDR2 @ 533 MHZ",
#   ord: nil,
#   product_id: 5
# )
#
# Specification.create(
#   title: "Wi-Fi Connectivity",
#   body: "Dual-band, dual-antenna Wi-Fi (MIMO) for faster streaming and fewer dropped connections than standard Wi-Fi. Supports 802.11a/b/g/n Wi-Fi networks.",
#   ord: nil,
#   product_id: 5
# )
#
# Specification.create(
#   title: "Bluetooth",
#   body: "Bluetooth 4.0 with support for the following profiles: HID, SPP",
#   ord: nil,
#   product_id: 5
# )
#
# Specification.create(
#   title: "Cloud Storage",
#   body: "Free cloud storage for all Amazon content",
#   ord: nil,
#   product_id: 5
# )
#
# Question.create(
#   body:"What's the weather gonna be like today?",
#   product_id: 5,
#   user_id: 2
# )
#
# Answer.create(
#   body:"Hot and sunny with a slight chance of rain.",
#   question_id: 12,
#   user_id: 4
# )
#
# Review.create(
#   title: "A review from a non-techie",
#   body: review_10,
#   stars: 5,
#   user_id: 4,
#   product_id: 5
# )
#
# Review.create(
#   title: "I like it Amazon...But this is IMPORTANT",
#   body: review_11,
#   stars: 4,
#   user_id: 1,
#   product_id: 5
# )
# End of Amazon Fire TV Seed Data








# Start of Roku Streaming Stick Seed Data
Description.create(
  body: "Compact stick design. Plugs discreetly right into the HDMI port. Great for wall-mounted TVs.",
  ord: nil,
  product_id: 6
)

Description.create(
  body: "2,000+ entertainment channels and counting. By far the most movies, sports, news, music and kids' shows of any streaming player.",
  ord: nil,
  product_id: 6
)

Description.create(
  body: "Control with remote or mobile. You can choose to control your entertainment via your iOS or Android device. Or use the included remote that everybody can share. It's your choice.",
  ord: nil,
  product_id: 6
)

Description.create(
  body: "Send to TV from mobile. Use mobile apps, such as Netflix and YouTube, to cast videos from your phone straight to your TV.",
  ord: nil,
  product_id: 6
)

Description.create(
  body: "Stunning HD video quality. Immerse yourself in the action with rich, vibrant video streaming up to 1080p HD.",
  ord: nil,
  product_id: 6
)

Specification.create(
  title: "Brand Name",
  body: "Roku",
  ord: nil,
  product_id: 6
)

Specification.create(
  title: "Item Weight",
  body: "0.6 ounces",
  ord: nil,
  product_id: 6
)

Specification.create(
  title: "Product Dimensions",
  body: "3.1 x 1 x 0.4 inches",
  ord: nil,
  product_id: 6
)

Specification.create(
  title: "Item Model Number",
  body: "3500R",
  ord: nil,
  product_id: 6
)

Specification.create(
  title: "Batteries",
  body: "2 AA batteries required. (included)",
  ord: nil,
  product_id: 6
)

Specification.create(
  title: "Color Name",
  body: "Black",
  ord: nil,
  product_id: 6
)

Specification.create(
  title: "Special Features",
  body: "Display personal media. Share your own home videos, photos and music stored on your phone with the free Roku iOS and Android app, Channel shortcut buttons. Jump straight to favorite channels such as Netflix and M-GO with the push of a button.",
  ord: nil,
  product_id: 6
)

# Question.create(
#   body:"",
#   product_id: ,
#   user_id:
# )
#
# Answer.create(
#   body:"",
#   question_id: ,
#   user_id:
# )
#
# Review.create(
#   title: "",
#   body: ,
#   stars: ,
#   user_id: ,
#   product_id:
# )
# End of Roku Streaming Stick Seed Data








# # Start of [PRODUCT TBD] Seed Data
# Description.create(
#   body: "",
#   ord: nil,
#   product_id:
# )
#
# Specification.create(
#   title: "",
#   body: "",
#   ord: nil,
#   product_id:
# )
#
# Question.create(
#   body:"",
#   product_id: ,
#   user_id:
# )
#
# Answer.create(
#   body:"",
#   question_id: ,
#   user_id:
# )
#
# Review.create(
#   title: "",
#   body: ,
#   stars: ,
#   user_id: ,
#   product_id:
# )
# # End of [PRODUCT TBD] Seed Data
