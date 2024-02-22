//
//  Misc.swift
//  ScribbleGame
//
//  Created by Vaishnavi Varaganti on 2/21/24.
//

import UIKit
import Foundation

let everyDayObjects =
[
    "acrylic paints", "alarm clock", "backpack", "battery", "bed", "bicycle", "binder", "blanket", "book",
    "bookshelf", "broom", "bus", "calculator", "calendar", "camera", "candle", "canvas", "car", "chair",
    "charcoal pencils", "charging cable", "clay", "clock", "coat", "coffee mug", "comb", "compass", "computer",
    "conditioner", "desk lamp", "dish", "dishwasher", "drawing pad", "dryer", "dustpan", "e-reader", "earbuds",
    "easel", "envelope", "eraser", "extension cord", "flashlight", "folder", "fridge", "glass", "gloves", "glue",
    "hairbrush", "hammer", "hanger", "hat", "headphones", "ink pen", "iron", "keyboard", "keys", "lamp",
    "laundry basket", "level", "marker", "microwave", "mop", "mouse", "nail clipper", "notebook", "oven",
    "paintbrush", "palette", "pants", "paper", "paperclip", "pastels", "pen", "pencil", "phone", "picture frame",
    "pillow", "plane", "plant pot", "plate", "pliers", "plunger", "post-it note", "power strip", "protractor",
    "razor", "remote", "ruler", "saw", "scarf", "scissors", "screwdriver", "shampoo", "shirt", "shoe",
    "silverware", "sketchbook", "sneakers", "soap", "socks", "sofa", "stapler", "stove", "sunglasses",
    "sunglasses case", "table", "tablet", "tape", "tape measure", "thermos", "toothbrush", "toothpaste", "towel",
    "train", "trash can", "tv", "umbrella", "vacuum cleaner", "wallet", "washing machine", "watch", "water bottle",
    "watercolor set", "whiteboard", "wrench", "yoga mat"
]

enum PlayerAuthState: String {
    case authenticating = "Logging in to Game Center..."
    case unauthenticated = "Please sign in to Game Center to play."
    case authenticated = ""
    case error = "There was an error logging into Game Center."
    case restricted = "You're not allowed to play multiplayer games!"
}

struct PastGuess: Identifiable {
    let id = UUID()
    var message: String
    var correct: Bool
}

let maxTimeRemaining = 100

