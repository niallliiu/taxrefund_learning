//
//  Story.swift
//  GB App
//
//  Created by Niall on 24/06/2024.
//

import Foundation

struct Story{
    let storyText1: String
    let storyText2: String
    let choice1: String
    let choice1Image: String
    let choice1destination: Int
    let choice2: String
    let choice2Image: String
    let choice2destination: Int
    let choice3: String
    let choice3Image: String
    let choice3destination: Int
    let endOfStory: Bool
    
}

let stories = [

    //Page 1
    
    Story(storyText1: "Please select the issuer of your tax refund document.", 
          storyText2: "If you are unsure, check the logo of your refund form.",
          choice1: "Global Blue",
          choice1Image: "gblogo",
          choice1destination: 1,
          choice2: "Pie System",
          choice2Image: "pielogo",
          choice2destination: 2,
          choice3: ".Planet",
          choice3Image: "planetlogo",
          choice3destination: 3,
          endOfStory: false),

    //Page 1.1 Global Blue

    Story(storyText1: "Are you from/or Permanent Resident of Norway, Finland, Sweden or Denmark?",
          storyText2: "If you are unsure, check the logo of your refund form.",
          choice1: "Yes",
          choice1Image: "gblogo",
          choice1destination: 0,
          choice2: "No",
          choice2Image: "gblogo",
          choice2destination: 0,
          choice3: "",
          choice3Image: "",
          choice3destination: 0,
          endOfStory: false),
    
    
    Story(storyText1: "Please select the issuer of your tax refund document.",
          storyText2: "If you are unsure, check the logo of your refund form.",
          choice1: "Global Blue",
          choice1Image: "",
          choice1destination: 0,
          choice2: "Pie System",
          choice2Image: "",
          choice2destination: 0,
          choice3: ".Planet",
          choice3Image: "",
          choice3destination: 0,
          endOfStory: false),

]


