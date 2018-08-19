Feature: calculate car parking

    Scenario Outline: car parking system

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
        |"23:50"  |"01:59" |"2.09"    | 3  | 80   |