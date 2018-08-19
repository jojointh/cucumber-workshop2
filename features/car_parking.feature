Feature: calculate car parking

    Scenario Outline: ตัวเลขที่หาร 3 ลงตัว

        Given Receive parking ticket at <startTime>
        When  Return parking at <exitTime>
        Then  I should got actual time <actualTime>
        And   parking rate <rate>
        And   parking amount <amount>

        Examples: 
        |startTime|exitTime|actualTime|rate|amount|
        |"9:00"        |"9:59"  |"0.59"| 1 | 25|

    Scenario: parking duration 1 hours
        Given Receive parking ticket at "9:00" 
        When  Return parking at "9:59"
        Then  I should got actual time "0.59"
        And   parking rate 1
        And   parking amount 25

    Scenario: parking duration 2 hours
        Given Receive parking ticket at "9:00" 
        When  Return parking at "10:59"
        Then  I should got actual time "1.59"
        And   parking rate 2
        And   parking amount 50
    
    Scenario: parking duration 3 hours
        Given Receive parking ticket at "9:00" 
        When  Return parking at "11:59"
        Then  I should got actual time "2.59"
        And   parking rate 3
        And   parking amount 80

    Scenario: parking duration 4 hours
        Given Receive parking ticket at "9:50" 
        When  Return parking at "12:59"
        Then  I should got actual time "3.09"
        And   parking rate 4
        And   parking amount 110

    Scenario: parking duration 5 hours
        Given Receive parking ticket at "9:50" 
        When  Return parking at "13:59"
        Then  I should got actual time "4.09"
        And   parking rate 5
        And   parking amount 145

    Scenario: parking duration 6 hours
        Given Receive parking ticket at "9:50" 
        When  Return parking at "14:59"
        Then  I should got actual time "5.09"
        And   parking rate 6
        And   parking amount 180

    Scenario: parking duration 7 hours
        Given Receive parking ticket at "9:50" 
        When  Return parking at "15:59"
        Then  I should got actual time "6.09"
        And   parking rate 7
        And   parking amount 250

    Scenario: parking duration 8 hours
        Given Receive parking ticket at "9:50" 
        When  Return parking at "16:59"
        Then  I should got actual time "7.09"
        And   parking rate 7
        And   parking amount 250
        
    Scenario: parking duration 9 hours
        Given Receive parking ticket at "9:50" 
        When  Return parking at "17:59"
        Then  I should got actual time "8.09"
        And   parking rate 7
        And   parking amount 250