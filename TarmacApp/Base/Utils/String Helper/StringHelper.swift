//
//  FormatDateTime.swift
//  SIM App
//
//  Created by Rajan Maharjan on 06/06/2024.
//

import Foundation

class StringHelper{
    
    private var instance: StringHelper = .init()
    
    
    static func formatDateString(_ dateString: String) -> String {
        let inputFormatterWithNanoseconds = DateFormatter()
        inputFormatterWithNanoseconds.dateFormat = "yyyy-MM-dd HH:mm:ss.SSSSSS"
        inputFormatterWithNanoseconds.locale = Locale(identifier: "en_US_POSIX") // Ensure consistent parsing

        let inputFormatterWithoutNanoseconds = DateFormatter()
        inputFormatterWithoutNanoseconds.dateFormat = "yyyy-MM-dd HH:mm:ss"
        inputFormatterWithoutNanoseconds.locale = Locale(identifier: "en_US_POSIX") // Ensure consistent parsing

        let outputFormatter = DateFormatter()
        outputFormatter.dateFormat = "dd MMM yyyy hh:mm a"
        outputFormatter.locale = Locale.current // Use the current locale for output

        if let date = inputFormatterWithNanoseconds.date(from: dateString) {
            return outputFormatter.string(from: date)
        } else if let date = inputFormatterWithoutNanoseconds.date(from: dateString) {
            return outputFormatter.string(from: date)
        } else {
            return ""
        }
    }

    static func formatTimeString(_ dateString: String) -> String {
        let inputFormatterWithNanoseconds = DateFormatter()
        inputFormatterWithNanoseconds.dateFormat = "yyyy-MM-dd HH:mm:ss.SSSSSS"
        inputFormatterWithNanoseconds.locale = Locale(identifier: "en_US_POSIX") // Ensure consistent parsing

        let inputFormatterWithoutNanoseconds = DateFormatter()
        inputFormatterWithoutNanoseconds.dateFormat = "yyyy-MM-dd HH:mm:ss"
        inputFormatterWithoutNanoseconds.locale = Locale(identifier: "en_US_POSIX") // Ensure consistent parsing

        let outputFormatter = DateFormatter()
        outputFormatter.dateFormat = "hh:mm a"
        outputFormatter.locale = Locale.current // Use the current locale for output

        if let date = inputFormatterWithNanoseconds.date(from: dateString) {
            return outputFormatter.string(from: date)
        } else if let date = inputFormatterWithoutNanoseconds.date(from: dateString) {
            return outputFormatter.string(from: date)
        } else {
            return ""
        }
    }

    static func getMonthName(from dateString: String) -> String? {
        let inputFormatter = DateFormatter()
        inputFormatter.locale = Locale(identifier: "en_US_POSIX") // Ensure consistent parsing

        var date: Date? = nil
        
        // First try parsing with "yyyy-MM-dd" format
        inputFormatter.dateFormat = "yyyy-MM-dd"
        date = inputFormatter.date(from: dateString)
        
        // If that fails, try parsing with "yyyy-MM-dd HH:mm:ss" format
        if date == nil {
            inputFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
            date = inputFormatter.date(from: dateString)
        }

        // If parsing succeeds, format the date to get the month name
        if let validDate = date {
            let outputFormatter = DateFormatter()
            outputFormatter.dateFormat = "MMM"
            outputFormatter.locale = Locale.current // Use the current locale for output

            return outputFormatter.string(from: validDate)
        } else {
            return ""
        }
    }
    
    static func getMonthYear(from dateString: String) -> String? {
        let inputFormatter = DateFormatter()
        inputFormatter.locale = Locale(identifier: "en_US_POSIX") // Ensure consistent parsing

        var date: Date? = nil
        
        // First try parsing with "yyyy-MM-dd" format
        inputFormatter.dateFormat = "yyyy-MM-dd"
        date = inputFormatter.date(from: dateString)
        
        // If that fails, try parsing with "yyyy-MM-dd HH:mm:ss" format
        if date == nil {
            inputFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
            date = inputFormatter.date(from: dateString)
        }

        // If parsing succeeds, format the date to get the month name
        if let validDate = date {
            let outputFormatter = DateFormatter()
            outputFormatter.dateFormat = "MMM yyyy"
            outputFormatter.locale = Locale.current // Use the current locale for output

            return outputFormatter.string(from: validDate)
        } else {
            return ""
        }
    }
    
    static func getDay(from dateString: String) -> Int? {
        let inputFormatter = DateFormatter()
        inputFormatter.locale = Locale(identifier: "en_US_POSIX") // Ensure consistent parsing

        var date: Date? = nil
        
        // First try parsing with "yyyy-MM-dd" format
        inputFormatter.dateFormat = "yyyy-MM-dd"
        date = inputFormatter.date(from: dateString)
        
        // If that fails, try parsing with "yyyy-MM-dd HH:mm:ss" format
        if date == nil {
            inputFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
            date = inputFormatter.date(from: dateString)
        }

        // If parsing succeeds, extract the day component
        if let validDate = date {
            let calendar = Calendar.current
            return calendar.component(.day, from: validDate)
        } else {
            return nil
        }
    }

    
    static func getDayFormat(from dateString: String) -> Int? {
        let inputFormatter = DateFormatter()
        inputFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        inputFormatter.locale = Locale(identifier: "en_US_POSIX") // Ensure consistent parsing

        if let date = inputFormatter.date(from: dateString) {
            let calendar = Calendar.current
            return calendar.component(.day, from: date)
        } else {
            return nil
        }
    }
    
    // Function to get the day of the week from a date string
    static func getDayOfWeek(from dateString: String) -> String? {
        let inputFormatter = DateFormatter()
        inputFormatter.dateFormat = "yyyy-MM-dd"
        inputFormatter.locale = Locale(identifier: "en_US_POSIX")
        guard let date = inputFormatter.date(from: dateString) else {
            return nil
        }
        
        inputFormatter.dateFormat = "EEE"
        let dayOfWeek = inputFormatter.string(from: date)
        return dayOfWeek
    }
    
    /*
     The formatted date is 19 Jun 2024
     The formatted date is 19 Jun 2024
     The formatted date is 19 Nov 2024
     */
    
    
    static func getFormattedDay(from dateString: String) -> String? {
        let formats = ["yyyy-MM-dd", "yyyy-MM-dd HH:mm:ss", "yyyy-MM-dd HH:mm:ss.SSSSSS"]
        var date: Date? = nil

        for format in formats {
            let inputFormatter = DateFormatter()
            inputFormatter.dateFormat = format
            inputFormatter.locale = Locale(identifier: "en_US_POSIX") // Ensure consistent parsing

            if let parsedDate = inputFormatter.date(from: dateString) {
                date = parsedDate
                break
            }
        }

        if let date = date {
            let outputFormatter = DateFormatter()
            outputFormatter.dateFormat = "dd MMM yyyy"
            outputFormatter.locale = Locale(identifier: "en_US_POSIX") // Ensure consistent output
            return outputFormatter.string(from: date)
        } else {
            return nil
        }
    }
  static  func isCurrentDateTimeBetween(startDate: String, endDate: String) -> Bool {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        dateFormatter.timeZone = TimeZone.current
        
        guard let start = dateFormatter.date(from: startDate),
              let end = dateFormatter.date(from: endDate) else {
            print("Error: Date string format is incorrect")
            return false
        }
        
        let currentDate = Date()
        
        return currentDate >= start && currentDate <= end
    }
    
    /*
     Extract text from html and return simple text which have p tag
     */
//  static  func extractParagraphText(from html: String) -> String? {
//        do {
//            let document = try SwiftSoup.parse(html)
//            // Extract the text from the first <p> tag
//            return try document.select("p").first()?.text()
//        } catch {
//            debugPrint("Error parsing HTML: \(error)")
//            return nil
//        }
//    }
    
    /*
     Extract list of text which have <ul><li><ul><li>  tags
     */

    

    static func extractNestedListTexts(in string: String) -> [String] {
        var listItems: [String] = []

        // Define the patterns for <ul>, </ul>, <ol>, and </ol>
        let ulPattern = "<ul>(.*?)</ul>"
        let olPattern = "<ol>(.*?)</ol>"
        let liPattern = "<li>(.*?)</li>"

        // Combine the patterns into one regex pattern
        let combinedPattern = "\(ulPattern)|\(olPattern)"
        
        // Create the regex for the combined pattern
        let combinedRegex = try! NSRegularExpression(pattern: combinedPattern, options: .dotMatchesLineSeparators)
        
        // Find matches for <ul> or <ol>
        let combinedMatches = combinedRegex.matches(in: string, range: NSRange(string.startIndex..., in: string))
        
        // Iterate over each match
        for combinedMatch in combinedMatches {
            for rangeIndex in 1..<combinedMatch.numberOfRanges {
                if let range = Range(combinedMatch.range(at: rangeIndex), in: string) {
                    let listContent = String(string[range])
                    
                    // Create the regex for list items
                    let liRegex = try! NSRegularExpression(pattern: liPattern)
                    let liMatches = liRegex.matches(in: listContent, range: NSRange(listContent.startIndex..., in: listContent))
                    
                    // Extract each list item content without '<li>' and '</li>'
                    for liMatch in liMatches {
                        let liRange = Range(liMatch.range(at: 1), in: listContent)!
                        let listItem = listContent[liRange]
                        listItems.append(String(listItem))
                    }
                }
            }
        }
        
        return listItems
    }
    
    /*
     Format text
     */
   static func formatText(input: String) -> String {
       let words = input.split(separator: " ")
          let formattedWords = words.map { word in
              let wordStr = String(word)
              if wordStr == wordStr.uppercased() {
                  return wordStr.lowercased().capitalized
              } else {
                  return wordStr.capitalized
              }
          }
          return formattedWords.joined(separator: " ")
    }
    
    static func processDescriptionWithReadmore(
        inputText: String,
        screenWidth: CGFloat,
        readMoreText: String = "Read more"
    ) -> String {
        let averageCharWidth = 5 // Estimate the average character width in pixels; adjust based on your font and size
        let lineOccupiedWidth = 0.4 * Double(screenWidth)  // 60% of screen width
        let charsPerLine = Int(lineOccupiedWidth / Double(averageCharWidth))
        
        // Calculate the maximum number of characters that can fit in 3 lines minus the "Read more" length
        let maxChars = (charsPerLine * 3) - readMoreText.count   // Subtract additional chars for padding and ellipsis
        
        // Check if the input text is shorter than or equal to the space available
        if inputText.count <= maxChars {
            return inputText.trimmingCharacters(in: .whitespacesAndNewlines)  // Return trimmed text which will fit with "Read more"
        } else {
            // Trim the text to leave space for "Read more"
            let endIndex = inputText.index(inputText.startIndex, offsetBy: maxChars)
            return "\(inputText[..<endIndex].trimmingCharacters(in: .whitespacesAndNewlines))..."
        }
    }

    
}
