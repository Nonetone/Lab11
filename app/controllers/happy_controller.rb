class HappyController < ApplicationController
    before_action :parse_params, only: :view
    
    def input    
    end

    def view
     @cur_res = []
        if res = HappyNumber.find_by_number( @number )
            @cur_res = ActiveSupport::JSON::decode(res.result.split(',').map(&:to_i).to_s)        
        else
            find_happy
            add_record_table
        end
    end 

    def return_data_base
        all_output = HappyNumber.all
        render xml: all_output.map(&:transform_data)
    end

    private

    def find_happy
        happy = []
        0.upto(@number) do |i|
          digits = i.digits.reverse
          if digits.length < 6
            (6 - digits.length).times do
              digits.prepend(0)
            end
          end
          happy.push(i) if digits.slice(0, 3).sum == digits.slice(3, 3).sum
        end
         @cur_res = happy
        end 
    end

    def parse_params
        @number = params[:happynum].to_i
    end

    def add_record_table
        res = HappyNumber.create!(number: @number, result: @cur_res.join(','))
    end

