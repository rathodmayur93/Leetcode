//
//  DayOfTheWeek.swift
//  Leetcode
//
//  Created by ds-mayur on 02/11/2020.
// problem: https://leetcode.com/problems/day-of-the-week/
/*
 Given a date, return the corresponding day of the week for that date. The input is given as three integers representing the day, month
 and year respectively. Return the answer as one of the following values {"Sunday", "Monday", "Tuesday", "Wednesday", "Thursday",
 "Friday", "Saturday"}.
 
 Example 1:
 Input: day = 31, month = 8, year = 2019
 Output: "Saturday"
 
 Example 2:
 Input: day = 18, month = 7, year = 1999
 Output: "Sunday"
 
 Example 3:
 Input: day = 15, month = 8, year = 1993
 Output: "Sunday"
 */

import Foundation

struct DayOfTheWeek {
    
    func dayOfTheWeek(_ day: Int, _ month: Int, _ year: Int) {
        
        let weekdays = [
                    "Sunday",
                    "Monday",
                    "Tuesday",
                    "Wednesday",
                    "Thursday",
                    "Friday",
                    "Saturday"
                ]
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        guard let date = formatter.date(from: "\(year)-\(month)-\(day)") else { return }
        let myCalendar = Calendar(identifier: .gregorian)
        let weekDay = myCalendar.component(.weekday, from: date)
        print(weekdays[weekDay - 1])
    }
}
