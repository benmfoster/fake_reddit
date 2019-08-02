# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
# #
# # Examples:
# #
# #   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# #   Character.create(name: 'Luke', movie: movies.first)

# User.create!([
#     {name: "adam", email: "adam@gmail.com", password: "password", password_confirmation: "password", profile_picture_url: "https://i.pinimg.com/originals/7e/eb/f6/7eebf6fd690bb1b06cefc5555d35cece.jpg"},
#     {name: "jake", email: "jake@gmail.com", password: "password", password_confirmation: "password", profile_picture_url: "https://data.whicdn.com/images/249407036/large.jpg"},
#     {name: "sean", email: "sean@gmail.com", password: "password", password_confirmation: "password", profile_picture_url: "https://www.prettydesigns.com/wp-content/uploads/2016/03/Perfect-Quiff.jpg"}
# ])

# Post.create!([
#     {title: "Beastly Sovereignty: Three Unequal Footnotes to Derrida", text: "This article examines three textual moments that might plausibly have found their way into Derrida’s late Beast and Sovereign seminars, but that Derrida appears to avoid or overlook. Aristotle’s discussion in the Politics of the “One Best Man” scenario is placed in the context of his earlier characterizations of the naturally apolitical man as akin either to a beast or to a god; Bataille’s late descriptions of sovereignty as a kind of self-perverting hyperbolic structure are juxtaposed with some of Derrida’s own formulations about sovereign autoimmunity; Heidegger’s discussion, in a seminar nominally about Hölderlin, of a striking formula from Sophocles (hupsipolis apolis) is shown to capture something of the “outlaw” status of the sovereign as Derrida describes it.", image_url: "https://www.fgmaintenance.com/images/sub/philosophy.jpg", user_id: 1},
#     {title: "On Sharing a World with Other Animals", text: "Challenging Heidegger’s thesis that animals are poor in world while humans are world-building, in The Beast and the Sovereign, Volume II, Jacques Derrida claims that each singular living being inhabits its own solitary world, its own desert island. There, he claims both, on the one hand, that animals share our world and may be world-building and, on the other, that we cannot be certain that human beings share a world or are world-building (at least not in Heidegger’s sense as set apart from animals). In this article, I trace the ethical implications of Derrida’s seemingly contradictory claims that we both share a world, and that each singular being, like an island, is a world unto itself.", image_url: "https://jpdoughty712.files.wordpress.com/2014/03/cropped-tumblr_n01ehb1c2v1r4lawno1_500.jpg", user_id: 2},
#     {title: "Who/What is Bête? From an Uncanny Word to an Interanimal Ethics", text: "The deconstruction of stupidity [in French bêtise] plays a crucial role in Derrida’s The Beast and the Sovereign. Through the concept of stupidity/bêtise the violence of our relationship with others, as inseparable from our relation to animality comes into view. “Stupidity” is deeply political, but also directly connected to the trace and, thus, cannot be simply overcome. While Sartre claimed that there are no fools, but just wicked men, Derrida embraces an uncanny version of stupidity. In this paper, guided by Derrida’s reflections, we will examine the many paradoxes that undermine the pseudo-concept of stupidity, as well as several key moments of its history in Schelling’s, Nietzsche’s, Sartre’s, and Deleuze’s philosophies. Eventually our purpose will be to display the ethical statements which can be extrapolated from Derrida’s perspective: when the world is gone, how can we carry stupidity?", image_url: "https://hs.umt.edu/philosophy/images/Bob%20Marshall%20cropped.jpg", user_id: 3}
# ])

# Comment.create!([
#     {user_id: 2, post_id: 1, text: "Just from the title, I know this post is a great idea for a cool guy !"},
#     {user_id: 2, post_id: 1, text: "Thanks Adam! I think we will have much to discuss, cool guy."}
# ])

# Downvote.create! ([
#     {user_id: 3, post_id: 1},
#     {user_id: 3, post_id: 3}
# ])

BoardPost.create! ([
    {user_id: 3, text: "Alberta’s government has hired award-winning oil and gas journalist Claudia Cattaneo to draft a strategy to restore the province’s reputation in the fight for its oil and gas industry, as part of the Fight Back Strategy against misinformation about the oil sands business.  

        Shortly after the new conservative Alberta government took office earlier this year, the government targeted media in a campaign aimed at improving the image of the oil sands industry as presented by Premier Jason Kenney. In June, Alberta’s Energy Minister Sonya Savage sent letters to Politico and National Geographic saying the Alberta government wanted to correct misinformation published by the two outlets regarding oil sands.
        
        This week, announcing the hiring of former National Post energy columnist Cattaneo, Savage said:
        
        'For more than a decade, anti-fossil fuel interest groups from around the world have been leading a deceitful campaign to landlock the oilsands. Not only has this campaign – founded entirely on lies – damaged the reputation of our world-class energy sector, it has caused significant damage to our province and hurt thousands of people who work hard and are proud of the work they do.'
        
        'Enough is enough. Our government is taking a stand and is fighting for Alberta energy and the hardworking Albertans who rely on our oil and gas industry to put food on the table for their families,' Savage said in a statement.
        
        Cattaneo has been contracted to develop a strategic plan to clear Alberta’s image, which is expected to be completed and submitted to government early this fall.
        
        Referring to Alberta’s Fight Back Strategy to reset the record, Savage said:
        
        'How will we do this? By challenging. One word at a time, one fact at a time, and one truth at a time. The lies end now.
        
        In the post announcing her retirement in May 2018, Cattaneo wrote:
        
        'There is a lot more information now, but of low quality. It’s all left readers begging once again for credible and independent reporting on energy, whether about the safety of pipelines or carbon emissions, as political leaders make important decisions about the sector’s future.'
        
        Meanwhile, Canadian oil sands CEOs are calling directly on Canadian voters to “influence the outcome” on major oil and gas issues in the run-up to Canadian federal elections this October."},
    {user_id: 3, text: "The U.S. oil benchmark tumbled nearly 8 percent on Thursday in its biggest one-day drop in four and a half years after U.S. President Donald Trump rekindled fears of significant slowdown in economies and oil demand growth by announcing he would impose tariffs on US$300 billion worth of Chinese imports.

        On Wednesday, WTI Crude traded at $58.58 a barrel at close, while on Thursday, the U.S. benchmark crashed by as much as 7.9 percent, or by $4.63 a barrel to close at $53.95. Oil prices took a heavy hit after President Trump said that the U.S.-China trade talks—after no-breakthrough negotiations this week —would continue in September, while the 'U.S. will start, on September 1st, putting a small additional Tariff of 10% on the remaining 300 Billion Dollars of goods and products coming from China into our Country.'
        
        Thursday’s oil price collapse was the largest daily drop in WTI Crude prices since February 2015, when U.S. shale production was growing and OPEC was fighting for market share and pumping at will, trying to drive the U.S. shale patch out of its breakeven range while flooding the market with oil at the same time.
        
        Thursday’s price plunge came after five consecutive days of oil price gains, helped by simmering tensions in the Middle East and reports of a solid decline in U.S. commercial oil inventories. The EIA said on Wednesday that U.S. crude oil inventories had shed 8.5 million barrels in the week to July 26, to a total 436.5 million barrels, which was at the five-year average for this time of the year.
        
        Later on Wednesday and early on Thursday, oil prices dropped as the Fed delivered the widely expected rate cut, but Fed Chair Jerome Powell said that 'it’s not the beginning of a long series of rate cuts,' dampening hopes of a long period of monetary easing.
        
        Then came President Trump’s somewhat surprise tweet about new tariffs on China, and the markets took a beating. Oil prices tanked and the U.S. stock market reversed big gains to big losses.
        
        Early on Friday, oil prices were beginning to recover from Thursday’s plunge, and as of 01:00 a.m. EDT, WTI Crude was up 2.04 percent at $55.05, and Brent Crude traded up 2.48 percent at $62.00."},
        {user_id: 2, text: "While oil market participants have been focused on above-average global oil stocks and faltering demand growth, OPEC’s spare capacity has been rising because of the production cuts aimed at drawing down stocks and bolstering oil prices.  

            Thanks to the production cuts being extended into 2020, OPEC now sits on more than 3 million barrels per day (bpd) of spare production capacity, which makes the cartel, as well as the International Energy Agency (IEA), confident that the market can withstand a sudden major supply outage. The risks of such an oil supply disruption have increased in recent months with the flare-up of tensions in the Middle East and the Strait of Hormuz—the transit lane of 21 percent of daily global petroleum liquids consumption.
            
            Despite assurances from organizations and agencies, some analysts say that even with OPEC and allies vowing to take 1.8 million bpd off the market, the world’s spare capacity is below the capacity seen in periods of previous major disruptions in 1979 and 1990, Paul Sheldon, chief geopolitical adviser at S&P Global Platts Analytics, tells S&P Global Platts’ Paul Hickin.
            
           'Global spare capacity is currently well below the levels of those periods, even with OPEC+ production cuts in place, so in that respect markets are relatively susceptible to an outsized, disruptive, geopolitical event,' Sheldon told S&P Global Platts.
            
            Yet, in 2019—unlike in 1979 or in 1990—two major forces are countering the efforts of the OPEC+ coalition to tighten the oil market and boost oil prices. Those are U.S. shale production growth thanks to the shale revolution of the past decade, and weaker oil demand growth as economic growth cools, especially in the world’s top oil importer China, which just saw its second-quarter economic growth slowing to the slowest pace in 27 years.
            
            'A clear message from our first look at 2020 is that there is plenty of non-OPEC supply growth available to meet any likely level of demand, assuming no major geopolitical shock, and the OPEC countries are sitting on 3.2 mb/d of spare capacity,' the IEA said in its June report, suggesting that the market will be well-supplied.
            
            In the July report, the IEA noted the heightened tension in the Middle East, but said that 'For now, maritime operations in the region are close to normal and markets remain calm due to economic weakness, high oil stocks and a significant spare production capacity cushion.'
            
            The tension in the Middle East continued to simmer throughout July, culminating in Iran seizing a British tanker. Despite the increased geopolitical risk to oil supplies, the market reaction was muted due to the stubborn glut, faltering demand, and most of all, rising U.S. shale production.
            
            The oil market has changed so much over the past five years that fast-growing non-OPEC oil production is limiting oil price gains from major events such as Iran seizing an oil tanker, Morgan Stanley says.
            
            The IEA said it was closely following 'developments in the Strait of Hormuz, including the recent seizure of a UK-flagged oil tanker, and stands ready to act if needed.'
            
            'Consumers can be reassured that the oil market is currently well supplied, with oil production exceeding demand in the first half of 2019, pushing up global stocks by 900,000 barrels per day,' the IEA said in a statement.
            
            Countries members of the IEA hold 1.55 billion barrels of public emergency oil stocks, said the Paris-based organization which was created after the Arab Oil Embargo in the 1970s.
            
            'In addition, 650 million barrels are held by industry under government obligations, and can be released as needed. These IEA emergency stocks are large enough to cover any disruptions in oil supply from the Strait of Hormuz for an extended period,' according to the organization.
            
            Organizations and industry observers are fairly certain that a currently well-supplied market and spare capacity within OPEC—increased over the past two years because of the cartel’s production cuts—can cushion a major blow from an oil supply outage. Weaker demand growth this year and continuously rising U.S. production also support the view that the market is well supplied, although they weigh heavily on oil prices, capping gains even when tankers are seized in the Middle East."}
])