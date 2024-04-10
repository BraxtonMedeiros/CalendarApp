//
//  CalendarDay.swift
//  Calendar
//
//  Created by Braxton Medeiros on 4/10/24.
//

import Foundation

class CalendarDay
{
    var day: String!
    var month: Month!
    
    enum Month
    {
        case previous
        case current
        case next
    }
}
