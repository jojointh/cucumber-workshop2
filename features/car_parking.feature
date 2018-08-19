Feature: calculate car parking

    Scenario Outline: ตัวเลขที่หาร 3 ลงตัว

        Given I receive parking ticket at <entryTime>
        When  I return parking ticket at <exitTime>
        Then  I should got actual time <actualTime>
        And   parking rate <rate>
        And   parking amount <amount>

        Examples: 
        |entryTime|exitTime|actualTime|rate|amount|
        |"9:00"   |"9:59"  |"0.59"    | 1  | 25   |
        |"9:00"   |"10:59" |"1.59"    | 2  | 50   |
        |"9:00"   |"11:59" |"2.59"    | 3  | 80   |
        |"9:50"   |"12:59" |"3.09"    | 4  | 110  |
        |"9:50"   |"13:59" |"4.09"    | 5  | 145  |
        |"9:50"   |"14:59" |"5.09"    | 6  | 180  |
        |"9:50"   |"15:59" |"6.09"    | 7  | 250  |
        |"9:50"   |"16:59" |"7.09"    | 7  | 250  |
        
        

    # Scenario: parking duration 4 hours
    #     Given Receive parking ticket at "9:50" 
    #     When  Return parking at "12:59"
    #     Then  I should got actual time "3.09"
    #     And   parking rate 4
    #     And   parking amount 110

    # Scenario: parking duration 5 hours
    #     Given Receive parking ticket at "9:50" 
    #     When  Return parking at "13:59"
    #     Then  I should got actual time "4.09"
    #     And   parking rate 5
    #     And   parking amount 145

    # Scenario: parking duration 6 hours
    #     Given Receive parking ticket at "9:50" 
    #     When  Return parking at "14:59"
    #     Then  I should got actual time "5.09"
    #     And   parking rate 6
    #     And   parking amount 180

    # Scenario: parking duration 7 hours
    #     Given Receive parking ticket at "9:50" 
    #     When  Return parking at "15:59"
    #     Then  I should got actual time "6.09"
    #     And   parking rate 7
    #     And   parking amount 250

    # Scenario: parking duration 8 hours
    #     Given Receive parking ticket at "9:50" 
    #     When  Return parking at "16:59"
    #     Then  I should got actual time "7.09"
    #     And   parking rate 7
    #     And   parking amount 250
        
    # Scenario: parking duration 9 hours
    #     Given Receive parking ticket at "9:50" 
    #     When  Return parking at "17:59"
    #     Then  I should got actual time "8.09"
    #     And   parking rate 7
    #     And   parking amount 250