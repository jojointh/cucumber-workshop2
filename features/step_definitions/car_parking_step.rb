class CarParkingCalculate

    def calActualRate(actualParkingTime)
        actualRate = actualParkingTime.to_f.ceil
        if actualRate >= 7 then
            actualRate = 7
        end
        actualRate
    end
    
    def calActualAmount(rate)

        if rate <= 2 then
            25*rate
        elsif rate <=3 then
            80
        elsif rate <=4 then
            110
        elsif rate <=5 then
            145
        elsif rate <=6 then
            180
        elsif rate <=7 then
            250
        end
    end

    def calActualTime(startHour , endHour)
        actualTime = (endHour.to_i - startHour.to_i)
        if actualTime < 0 then
            actualTime = actualTime + 24
        end    

        actualTime.to_s + ".%02d"
    end
end   

Given("I receive parking ticket at {string}") do |startTime|
    @startTime = startTime.split(':')
    @startHour =  @startTime[0]
    @startMinute = @startTime[1]
  end
  
  When("I return parking ticket at {string}") do |endTime|
    @carParkingCalculate = CarParkingCalculate.new
    @endTime = endTime.split(':')
    @endHour =  @endTime[0]
    @endMinute = @endTime[1]

    @actualHour = @carParkingCalculate.calActualTime(@startHour, @endHour)
    @actualMinute = @endMinute.to_i - @startMinute.to_i
    @actualParkingTime = @actualHour.to_s % @actualMinute

    @actualRate = @carParkingCalculate.calActualRate(@actualParkingTime)
    @actualAmount = @carParkingCalculate.calActualAmount @actualRate
  end

    Then("I should got actual time {string}") do |expectedTime|
        expect(@actualParkingTime).to eq expectedTime
      end
      
      Then("parking rate {int}") do |expectedRate|
        expect(@actualRate).to eq expectedRate
      end
      
      Then("parking amount {int}") do |expectedAmount|
        expect(@actualAmount).to eq expectedAmount
  end