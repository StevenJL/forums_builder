MetaForum.create(:name=> "Planet Express Forums", :description => "An Internet for Planet Express Employees")

SuperForum.create(:name=>"Logistics Forum", :description=>"Discuss logistics topics here")
SuperForum.create(:name=>"Financial Forum", :description=>"Financial topics go here")
SuperForum.create(:name=>"Employee Forum", :description=>"Personnel topics go here")
SuperForum.create(:name=>"Lounge", :description=>"Chit Chat go here")

SubForum.create(:name=>"Spaceship Maintanence", :description=>"Spaceship maintanence topics" , :parent_id=>1)
SubForum.create(:name=>"Faster Delivery Routes", "Delivery Routes topics", :parent_id=>1)
SubForum.create(:name=>"Avoiding Space Monsters", "Avoiding space monsters topics", :parent_id=>1)

SubForum.create(:name=>"Weekly Financial Report", :description => "See how we're doing financially", :parent_id=>2)
SubForum.create(:name=>"Money Saving Tips", :description => "Exchange advice on saving money", :parent_id=>2)

SubForum.create(:name=>"Employee Complaints Forum", :description => "Complain about other employees here" ,:parent_id=>3)
SubForum.create(:name=>"Employee Reviews", :description => "Review other employees here", :parent_id=>3)

SubForum.create(:name=>"Bender's Joke Forum", :description => "Here all of Bender's dirty jokes",:parent_id=>4)
SubForum.create(:name=>"Fry Reminisces", :description => "Fry tells us how the 20th century", :parent_id=>4)

User.create(:username=>"philipfry", :password=>"password")
User.create(:username=>"lela", :password=>"password")
User.create(:username=>"amy", :password=>"password")
User.create(:username=>"bender", :password=>"password")
User.create(:username=>"zoidberg", :password=>"password")
User.create(:username=>"hermes", :password=>"password")
User.create(:username=>"farnsworth", :password=>"password")

UserProfile.create(:user_id=>1, :name=>"Philip J. Fry", :location=>"New New York", :about_me=>"I'm from the year 2000")
UserProfile.create(:user_id=>2, :name=>"Lela Turanga", :location=>"New New York", :signature=>"Mutants deserve equal rights!")
UserProfile.create(:user_id=>3, :name=>"Amy Wong", :location=>"New New York", :about_me=>"I like shopping")
UserProfile.create(:user_id=>4, :name=>"Bender Bending Rodriquez", :location=>"New New York", :signature=>"Bite my shiny metal ass")
UserProfile.create(:user_id=>5, :name=>"John Zoidberg", :signature=>"Why not Zoidberg?")
UserProfile.create(:user_id=>6, :name=>"Hermes Conrad", :location=>"New Jamaica", :signature=>"Where'd my TSP reports go?")
UserProfile.create(:user_id=>7, :name=>"Hubert Farnsworth", :location=>"New New York", :signature=>"Good news everyone")

Post.create(:forum_id=>2, :user_id=>2, :title=>"We need a new FLT drive!",
  :content=>"Our FLT is about to give out.  We need a new one now!",
  :views=>2, :upvotes=>0)
Post.create(:forum_id=>5, :user_id=>3, :title=>"Fry sucks",
  :content=>"He used up all my make-up to paint Lela's face onto a blow-up doll!",
  :views=>1, :upvotes=>1)
Post.create(:forum_id=>8, :user_id=>5, :title=>"Robot joke",
  :content=>"Why was the Robot angry?",
  :views=>1, :upvotes=>0)

Reply.create(:post_id=>2, :user_id=>1, :content=>"That wasn't me! That was Bender!",
  :upvotes=>0)

Reply.create(:post_id=>3, :user_id=>1, :content=>"Someone was pushing his buttons?",
  :upvotes=>0)