//
//  Event.swift
//  Calendar
//
//  Created by Braxton Medeiros on 4/4/24.
//

import Foundation

var eventsList = [Event]()

class Event
{
    var id: Int!
    var name: String!
    var date: Date!
    
    func eventsForDate(date: Date) -> [Event]
    {
        var daysEvents = [Event]()
        for event in eventsList
        {
            if(Calendar.current.isDate(event.date, inSameDayAs:date))
            {
                daysEvents.append(event)
            }
        }
        return daysEvents
    }
    
    func eventsForDateAndTime(date: Date, hour: Int) -> [Event]
    {
        var daysEvents = [Event]()
        for event in eventsList
        {
            if(Calendar.current.isDate(event.date, inSameDayAs:date))
            {
                let eventHour = CalendarHelper().hourFromDate(date: event.date)
                if eventHour == hour
                {
                    daysEvents.append(event)
                }
            }
        }
        return daysEvents
    }
}
