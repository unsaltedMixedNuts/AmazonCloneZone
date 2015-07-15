# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Product.create(name: "Apple TV MD199LL/A (Current Version)", sales_price: 59.99, quantity: 100, dept_id: 2, brand_id: 1 )
Product.create(name: "Roku 3 Streaming Media Player (4230R) With Voice Search (2015 model)", sales_price: 99.00, quantity: 100, dept_id: 2, brand_id: 2 )
Product.create(name: "Google Chromecast HDMI Streaming Media Player", sales_price: 29.99, quantity: 100, dept_id: 2, brand_id: 3 )
Product.create(name: "Fire TV Stick", sales_price: 39.00, quantity: 100, dept_id: 2, brand_id: 4 )
Product.create(name: "Amazon Fire TV", sales_price: 99.00, quantity: 100, dept_id: 2, brand_id: 4 )
Product.create(name: "Fire TV Stick", sales_price: 39.00, quantity: 100, dept_id: 2, brand_id: 4 )



Department.create(name: "Electronics", parent_dept_id: nil)
Department.create(name: "Television & Video", parent_dept_id: 1)

Brand.create(name: "Apple")
Brand.create(name: "Roku")
Brand.create(name: "Google")
Brand.create(name: "Amazon")

Image.create(url: "http://ecx.images-amazon.com/images/I/41uTXEtgjqL._SX522_.jpg", ord: nil, imageable_id: 1, imageable_type: "Product")
Image.create(url: "https://images-na.ssl-images-amazon.com/images/I/61lD0SQk6wL._SL1600_.jpg", ord: nil, imageable_id: 1, imageable_type: "Review")

Description.create(
  body: "1080p HD programming, including iTunes movies and TV shows, Netflix, Vimeo, photos and more in HD",
  ord: nil,
  product_id: 1
)
Description.create(
  body: "Access your purchased movies, TV shows, and music with iTunes Match right from iCloud",
  ord: nil,
  product_id: 1
)
Description.create(
  body: "Stream video, games, and more from iOS devices using AirPlay; music, videos, and photos can also be streamed from PCs and Macs",
  ord: nil,
  product_id: 1
)
Description.create(
  body: "HDMI and digital optical audio output; connects to network via Wireless-N or Ethernet",
  ord: nil,
  product_id: 1
)
Description.create(
  body: "Apple TV is a registered trademark of Apple Inc.",
  ord: nil,
  product_id: 1
)

Specification.create(
  title: "Brand Name",
  body: "Apple",
  ord: nil,
  product_id: 1
)

Specification.create(
  title: "Item Weight",
  body: "9.6 ounces",
  ord: nil,
  product_id: 1
)

Specification.create(
  title: "Product Dimensions",
  body: "3.9 x 3.9 x 0.9 inches",
  ord: nil,
  product_id: 1
)

Specification.create(
  title: "Item model number",
  body: "MD199LL/A",
  ord: nil,
  product_id: 1
)

Specification.create(
  title: "Color Name",
  body: "Black",
  ord: nil,
  product_id: 1
)

Specification.create(
  title: "Shipping Weight",
  body: "1.1 pounds",
  ord: nil,
  product_id: 1
)

Specification.create(
  title: "Date First Available",
  body: "March 7, 2012",
  ord: nil,
  product_id: 1
)

Specification.create(
  title: "Customer Reviews",
  body: "6,551",
  ord: nil,
  product_id: 1
)

User.create(
  email: "Mel@AmazonCloneZone.com",
  name: "Mel",
  password_digest: "TBD",
  session_token: "TBD"
)

User.create(
  email: "ghazi@example.com",
  name: "Ghazi",
  password_digest: "TBD",
  session_token: "TBD"
)

User.create(
  email: "william@example.com",
  name: "William B. Partridge",
  password_digest: "TBD",
  session_token: "TBD"
)


# Review objects are created at the very end of this seeds.rb file.

# ------------------------------------------------------------------------------

review_1 = "I own both the new Apple TV (1080P/2012) model and the Roku2 XS. I found myself doing a side by side comparison of the two products and here are my findings.

AppleTV
Pros: Works out of the box, minimum effort to setup, really easy to use interface + wifi. Can Restream old purchased episodes. Netflix App much cleaner and more superb. Streaming and buffering causes no delays or degradation of picture. AirPlay makes up for a lot of the limited channels (with Mountain Lion the functionality goes up even more). iPad Remote easy to use
Cons: Limited Channels...needs an open API like Roku to build more channels

Roku2 XS
Pros: Many Channels available, Cheaper ($10), Free Movie Channels like Crackle, AmazonPrime availability, Vendor neutral. iPad Remote easy to use
Cons: Missing iTunes integration, Poor quality and buffering (constant downgrading the image quality on NBA League Pass and Netflix). User UI is just bland and could be cleaner. Bugs and issues. Most channels you have to pay extra for. Roku disconnects from my wifi network randomly whereas the AppleTV never does during side by side streaming. Setup takes longer and more tweaking needed by the user.

Summary:
While the Roku offers you many more channels the end user experience on the AppleTV makes it much more simple to utilize. If you have some form of Apple Eco System then the AppleTV is for you. If you hate Apple then the Roku is for you. Each product has their own advantages and disadvantages. For me in the end it was about the user experience and ease of using the player and the AppleTV edged out. It's not to say I won't be using my Roku but until there are some updates to fix some of the buffers and issues the AppleTV is by far the better product.

UPDATE: Completely Dropped my Roku in favor of Apple TV now. For some of the comments below I have a 30 Mbps down, 10 Mbps Up and being a network engineer and having quite an impressive armada of enterprise switches in the house I know it's not the network but the Roku. It's either the memory or the application code that keeps causing issues itself. Also for those that claim they cannot view movies due to apple protections...download airparrot and VLC. It works perfectly."

review_2 = "This is an elegant and easy to use little box. The interface is pretty, setup is dead simple (took less than 10 minutes from start to finish), and it's fairly intuitive to use. The problem comes in that it doesn't serve a great deal of function, at least for me.

Apple TV is essentially 3 main functions in one package. iTunes front end, content/channel provider, and wireless display.

On the face of it, Apple TV is a front end for iTunes and allows you to buy or rent content and view it on the box along with previously purchased content. The usefulness of this is based on where you buy content. If it's not iTunes then you can ignore most of it. All the magic from this perspective is essentially gone for videos and even music doesn't work without iTunes Match. You can alternatively access your media from another computer currently running iTunes, but only the content in iTunes (not a huge issue) and again, only when the computer is on and running (think of it like an iTunes extender). The interface is lush and a joy to use but it's dependency on iTunes purchases or iTunes running on a computer diminishes the usefulness. It'd be nice it it could access a network attached storage or something similar.

The other content means are provided through channels/apps, like on a Roku box, but are limited to only 13. Missing are the normal heavy hitters: Hulu Plus, HBO Go, Pandora, Slacker, Spotify, etc. Only Netflix is present really, but what device doesn't have access to that? I have 3 other devices connected to my receiver that can do it already and personally prefer the PS3 Interface. The general feel of the channel/apps is also very smooth and works fast but some of them feel a bit long in the tooth, as if it could be better but in order to fit the overall design scheme it's not (again Netflix is an example).

The final feature is AirPlay. This is a feature that allows you to stream music and video from your MacOS and iOS device. There's also AirPlay mirroring which takes what you see on your device (or computer once Mountain Lion is out) and puts it on the Apple TV. It seems, based on the packaging, Apple is trying to play this up a lot and I'd agree with that goal. It's really simple and amazing to use where it works (certain applications don't support it or actively block it). If you're familiar with Intel's WiDi it's a very similar thing, especially with AirPlay mirroring. Certain things work better with Airplay though (Slingplayer and Netflix, for example, display the controls on iOS while the video is on the TV) and others not so well (Hulu, for example, doesn't support video out - only mirroring. HBOGo is blocked entirely, mirroring or video out). It works really well and is very smooth with minimal lag with audio and experiences only occasional minor choppiness with video provided you're on 802.11N or have the apple tv wired (had bad problems with quality over two G routers). The same, however, can't be said for AirPlay compatible games like Asphalt 6, which due to lag/stuttering is near unplayable (the jittering and stuttering mean you'll miss too much with fast paced games, e.g. In Asphalt you'll crash).

Your enjoyment of this device will depend directly on the amount you give yourself to Apple, more specifically iTunes. If you don't use iTunes for content purchase at least 1/3 of the functionality is right out the window. And if you own a PS3, Xbox, TiVo, Wii, Roku, Google TV, certain Blu-Ray players, or even a smart TV then there's no point to the channels/apps really. No MacOS or iOS devices and there's no point to the AirPlay aspect. However if you're a diehard Apple fan and have lots of money spent in iTunes, this will be amazing, I'm sure of it.

That's not to say it's not without its pleasure, the device is a joy to use. I find myself wanting to listen to music from my TV just to look at the lush interface that's so simple and yet gorgeous. But, for all of Apple's shine and improvements to the device, they've failed to address the largest issue - lack of content options. Without more channels/apps like Netflix (looking at you Hulu, HBO, etc) Apple TV ultimately suffers from limited usability unless you're a big iTunes fan. While it's fair that a good percentage of people looking at this device will have some content in iTunes, Apple simply cannot rely on that to support this product alone. Features like AirPlay are a welcome addition but likely aren't enough. Especially considering that video playback is a bit choppy and mirroring, especially with games, has too much lag.

For me personally, I'm really only left with the AirPlay feature as a big feature. Which alone might be worth the price, especially if Apple can improve the performance. The content/channels/apps are, even objectively, poor. And the dependency on iTunes either running or being used for content purchases diminishes the utility of the media for me leaving the 'Movies', 'TV Shows', and 'Music' features as empty. Yes it does everything the previous Apple TV did but better, but that's also it's flaw - it doesn't do anything new.

Pros:
++ Simple set up
++ Very pretty and smooth interface
++ AirPlay (for music and video)
+ 1080P

Cons:
-- Very limited channels/content
-- iTunes only for content, even for in network
- iTunes match dependent for music
- AirPlay lags and stutters a bit too much with mirroring and games

Things I'd like to see:
1) Support for network storage for content streaming. You can jailbreak and put plex or xmbc on to do this, but why do I have to?
2) More channels/apps. I've got all the missing channels on my iPad but why not on the Apple TV? Especially annoying since this is based off iOS 5 and has hardware better or on par with the original iPad.
3) Stronger AirPlay performance. (yes it's wired in, but it still stutters for games)

In the end it does really well at what it does (most of the time) but it's a very shallow pool.

COMPARISON TO ROKU 2:
I also own a Roku 2 XS, so I figured I'd update with some remarks in comparison. The Apple TV is notably easier to set up. The Apple TV interface is also generally better, however certain apps (specifically looking at Netflix) while smoother on Apple TV are better laid out on Roku. Specifically with that, I mean Apple TV forces a text list strong interface at front whereas Roku shows you the box art. The remote on the Apple TV feels better but is more limited than Roku (Roku XS is RF as opposed to IR on Apple TV) and also lacks the instant replay (10 second) button found on the Roku XS - very handy at times. Both are limited with text entry but have smartphone/tablet apps for use (although Apple Remote is only on iOS devices, whereas Roku Remote is on Android and iOS - a point to note, but not likely a deal breaker). Image quality is comparable, Apple TV works better wirelessly than the Roku though (especially at start). While Apple's interface is generally better/faster/smoother, it still ultimately lacks in content when compared to Roku. Roku has Pandora, HBO Go, Hulu, Amazon Instant, Crackle, and many other options. Aside from iTunes content (either from your computer or iTunes cloud for movies/tv or iTunes Match) there isn't anything I'm aware of that Apple TV has that Roku does not. Apple TV does have AirPlay, which again makes it nice.

While Apple TV interface is generally better and smoother, the cost of the Roku (I got the XS for $80, so 20% less) and the instant replay button make it a better option for streaming. It's not as refined but it offers the heavy hitters missing from Apple TV. Streaming options are just better with Roku.

Unless you own an iOS device or will be upgrading to Mountain Lion (for AirPlay) or are heavily invested in iTunes store purchases - Roku is better hands down as Apple TV's use will be very very limited. Conversely if you already own a gaming console or a TiVo or something similar then the streaming options of the Roku may not be unique (between my tivo, ps3, and 360 - there isn't a thing I use the roku for that I can't do on one of those - mainly the PS3). If you're interested in a streaming device and don't already own a gaming console, Roku is likely better. If you are only interested in Netflix, MLB, and NHL and/or you're really in love with iTunes or AirPlay, then Apple TV is better.

Personally? I'm keeping the Apple TV, for AirPlay alone, hooked up to my TV in the living room. The Roku is going in my guest room. The Roku is a better device in my opinion, but it doesn't do anything unique like AirPlay. Perfect on it's own though where I don't want to buy several devices again. Apple TV though is much much limited on its own though.

UPDATE:
I've tried other AirPlay games (Real Racing 2, NFS Shift 2) and the performance is better on these games. It's still not what I'd expect or really want to deal with but it's playable for sure. Lag/stuttering happens less often and when it does it's less severe as compared to Asphalt 6. I'll note as well that the performance doesn't have an appreciable difference when the Apple TV is wireless vs wired, so it's unclear what's contributing to the lag. But the fact that some games are doable gives me hope for the future.

UPDATE 2:
Hulu was added - Huzzah! We're getting closer and closer.

I'd recently bought a MBA and have used the Apple TV for AirPlay when trying to show a video to someone. It works well but occasionally refuses to work correctly - either the video is funny or there is no audio. Requires a restart of the MBA to get working (so it's possible the error is on the MBA side).

All in all I still enjoy and use this device but it's only used for AirPlay for me. If you don't own other Apple products or don't intend to use AirPlay I still say your money is better spent on an Roku. I'm still going to leave this as a 3 star review for me. Again it's gained more features but not enough in my mind yet. It's close to a 4 though, but the dependency on iTunes and other Apple devices to be anything unique keeps it down. Feels more like it's supposed to be an accessory for Apple products, not a device to itself so much. Which is fine, but then I'd expect better performance.

UPDATE 3 (Final Update):
So taking a look back on this after nearly two years of ownership. Things have improved content wise - HBO Go is there, Disney and a few other channels have appeared as well. But for all of content improvements they've still ignored the larger flaws while the improvements to competing devices (notably Roku and WD) and the introduction of the Chromecast manage to further highlight the flaws and shortcomings of the Apple TV. There's still no NAS support and most services that could compete with Apple's iTunes (Pandora, Spotify, Rdio, Amazon Instant) are still missing and likely will be for the foreseeable future.

The Apple TV interface, while simple, is becoming stale and ugly in a few applications (YouTube and Netflix jump to mind). Roku has drastically improved their interface, bettering Apple as far as I'm concerned. All the while the Chromecast has come on to the scene and for $35 does many comparable things (including whole screen casting similar to AirPlay from laptops - although admittedly not as smooth yet).

Now, more than ever, the value proposition of Apple TV is largely tied to you and your participation in Apple's ecosystem. If you need iTunes access or your need AirPlay, this is the only device to get them on. But if you don't, there's really not any reason I can provide to buy an Apple TV anymore. Even a year ago you could make the argument that if all you needed was Netflix, Hulu, and YouTube hat the Apple TV was as good option thanks to its attractive interface but since Roku has fixed their interface with the Roku 3 this simply isn't the case anymore; the Roku is now the box to beat. The additional content channels provided by Apple TV do help its use, but it seems more apparent that they're deliberately leaving out competing services (or at least that those services have no interest being on Apple TV). So if you use Pandora, Spotify, Amazon Instant, and several other services you have to get something else (for now at least).

I'm not saying Apple TV is a terrible device, I still have mine hooked up in my living room for AirPlay. But if you exclude iTunes and AirPlay there's simply no reason to buy it over a Roku or WD TV or Chromecast anymore really. While iTunes and AirPlay are valuable features I could argue that the absence of Amazon Instant, Vudu, Spotify, Pandora, and Slingplayer are notable weaknesses that other platforms don't have. So in the end it really is based on your ecosystem needs. If you're heavily invested into Apple's world and can do without the missing services then by all means get an Apple TV. But in nearly any other instance your money is better spent elsewhere.'

review_3 = 'As the title hints, our household is already well furnished with Apple products. And as it has been said in other reviews in this thread, it will be a much more positive user experience for people who have Mac computers, or iPad / iPhone / iTouch, for these last three can be used as remote controls with an excellent free app ('Remote') from Apple.

If it were not for Apple's attention to detail, the installation of the Apple TV could be a bear for less technology-savvy consumers. But, even though I've installed a network or five before, in my mind this couldn't have been easier. Opened up the package, plugged stuff up, and things came right up on the screen. Used the included remote to log in. It should be noted that logging in (This means you have to have an Apple ID login and password) must be done on all devices you plan on involving in what is essentially a kind of network parallel to the wi-fi network you have in your house (although of course it runs on it).

You must log in, and turn on Home Sharing, on the Apple TV, in iTunes on any computer you're planning on using, and also on any iPad / iPhone / iTouch you're using as a controller. It should also perhaps be noted that these logins are separate from logins and passwords you may be using for Netflix, Hulu, or any other media you are accessing through Apple TV. This all takes some time, but it's a one-shot deal.

The nicest surprise (which I had not come across in my research) about the Apple TV is that it includes a high fidelity TOSLINK optical audio out connection in addition to the HDMI connector. The Sony receiver on our home stereo is rather old-school in that it predates HDMI, so we weren't going to be able to run the Apple TV signal through that. Instead, I'd have to run the HDMI cable directly to our Samsung HDTV. However, the receiver does have TOSLINK inputs, so I just use a cable I had lying around, and I have excellent sound through our stereo speakers.

Once everything was up and running, I was very gratified by the far better picture and sound that I was getting compared to streaming Netflix through the Wii (which we have done for several years heretofore). I already knew that the Wii's specs for picture and sound were pretty low, but for me, the increase in performance alone was worth the price of the Apple TV and cable.

Apple's attention to the end user experience has always been one of the best features of owning their products, but the icing on the cake for Apple TV is the 'Remote' app. Free, simple, and elegant. Once I used it, I knew I'd have to put the included remote in a safe place, because I wouldn't be using it again except in some extraordinary circumstances.

There are some complaints in the reviews that the Apple TV lacks certain online media services. This may be the case, but for what it does provide, and for how it performs, we are very pleased.

Addendum: This Apple TV is just the gift that keeps on giving. I was under some misapprehensions about the capabilities of AirPlay, specifically AirPlay Mirroring. Google it, go to the Apple support page, and then do enough links. Photos and music may be displayed from your iDevice simultaneously through the Apple TV to your HDTV. Great!"

# ------------------------------------------------------------------------------

  Review.create(
    title: "Comparing AppleTV to Roku2 XS",
    body: review_1,
    stars: 5,
    user_id: 2,
    product_id: 1
  )

  Review.create(
    title: "Great at what it does but perhaps too limited",
    body: review_2,
    stars: 3,
    user_id: 3,
    product_id: 1
  )
