SubForum.create(:name=>"Logistics Discussion", :description=>"Discuss logistics matters here")
SubForum.create(:name=>"Spaceship Maintanence", :parent_id=>1)
SubForum.create(:name=>"Faster Delivery Routes", :parent_id=>1)

SubForum.create(:name=>"Employee Matters", :description=>"Personnel topics go here")
SubForum.create(:name=>"Complaints Forum", :parent_id=>4)
SubForum.create(:name=>"Employee Reviews", :parent_id=>4)

SubForum.create(:name=>"Lounge", :description=>"Fun Discussions Go Here")
SubForum.create(:name=>"Bender's Joke Forum", :parent_id=>7)
SubForum.create(:name=>"Fry Reminisces", :parent_id=>7)

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