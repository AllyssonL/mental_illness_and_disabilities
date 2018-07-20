#is this just a list of methods, or should this be methods belonging to a specific class? Excellent job defining all of these, 
#but make sure to clarify your indentations! :)

class Quiz_questions
 
 attr_reader :params, :results
 attr_writer :params, :results
 
 
    def initialize(params)
      @params=params
        #instance variable is @ (allows you to do multiple instances aka retake the quiz)
      @results = {
          :anxiety => 0,
          :depression => 0,
          :bipolar_disorder => 0,
          :ADHD => 0,
          :autism => 0,
          :cerebral_palsy => 0,
          :physical_disability => 0,
          :down_syndrome => 0
          }
    end 
          
    def q1
        if @params[:Q1] == "Yes"
          @results[:anxiety]+=1
          @results[:depression]+=1
          @results[:bipolar_disorder]+=1
          @results[:ADHD]+=1
          
         elsif @params[:Q1] == "No"
         else @params[:Q1] =="Not Applicable"
        end
    end
      
    def q2
        if @params[:Q2] == "Yes"
            @results[:autism]+=1
          @results[:cerebral_palsy]+=1
          @results[:physical_disability]+=1
          @results[:down_syndrome]+=1
         elsif @params[:Q2] == "No"
         else @params[:Q2] =="Not Applicable"
        end
    end
      
    def q3
        if @params[:Q3] == "Yes"
            @results[:anxiety] +=1
         elsif @params[:Q3] == "No"
         else @params[:Q3] =="Not Applicable"
        end
    end
      
    def q4
        if @params[:Q4] == "Yes"
            @results[:depression] +=1
         elsif @params[:Q4] == "No"
         else @params[:Q4] =="Not Applicable"
        end
    end
      
    def q5
        if @params[:Q5] == "Yes"
            @results[:bipolar_disorder] +=1
         elsif @params[:Q5] == "No"
         else @params[:Q5] =="Not Applicable"
        end
    end 
        
    def q6
        if @params[:Q6] == "Yes"
            @results[:ADHD] +=1
         elsif @params[:Q6] == "No"
         else @params[:Q6] =="Not Applicable"
        end
    end 
        
    def q7
        if @params[:Q7] == "Yes"
            @results[:autism] +=1
         elsif @params[:Q7] == "No"
         else @params[:Q7] =="Not Applicable"
        end
    end 
        
    def q8
        if @params[:Q8] == "Yes"
            @results[:cerebral_palsy] +=1
         elsif @params[:Q8] == "No"
         else @params[:Q8] =="Not Applicable"
        end
    end 
        
    def q9
        if @params[:Q9] == "Yes"
            @results[:down_syndrome] +=1
         elsif @params[:Q9] == "No"
         else @params[:Q9] =="Not Applicable"
        end
    end 
        
    def q10
        if @params[:Q10] == "Yes"
            @results[:physical_disability] +=1
         elsif @params[:Q10] == "No"
         else @params[:Q10] =="Not Applicable"
        end
    end
    
    def play
        q1
        q2 
        q3
        q4
        q5
        q6
        q7
        q8
        q9
        q10
        return @results
    end 
    
    def final_results
        disorders = @results.values
        max = disorders.max
        answer = ""
        @results.each do |key, value|
            if value == max
                answer = key.to_s
            end 
        end 
        return answer
    end 
end 




