class PlacementController < ApplicationController
  def index
  end

  def create
  		puts "hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh"
		c=params[:student][:user_id]
		r=eval(params[:student][:name])
		@m=0
		@rq=[]
		r.each do |k,v|

			if(Answer.find(v).c)
				@m+=1
				i=k.to_s
				i=i.sub("id","")
				@rq.push({i=>v})
			end
		end


		test=Test.first

		puts test.wrong		
		@total=test.correct*@m-((Question.all.size)-@m)*test.wrong

		res=Result.new
		res.user_id=c
		res.test_id=1
		res.r=@total
		res.rq=@rq
		res.save

  end
end
