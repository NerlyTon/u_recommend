#this file contains the seed data for my tables

nerly = User.create(name: "Nerly Ton", username: "nerlyt", password: "pass")
evering = User.create(name: "Evering Ware", username: "everingw", password: "word")
edgar = User.create(name: "Edgar Gutierrez", username: "edgarg", password: "password")

Program.create(title: "I Am Legend", movie_or_show: "Movie", summary:"Robert Neville (Will Smith), a brilliant scientist, is a survivor of a man-made plague that transforms humans into bloodthirsty mutants. He wanders alone through New York City, calling out for other possible survivors, and works on finding a cure for the plague.", streaming_service: "Rent online", user_id: nerly.id)
Program.create(title: "Monk", movie_or_show: "Show", summary:"After the unsolved murder of his wife, Adrian Monk develops obsessive-compulsive disorder, which includes his terror of germs and contamination. His condition costs him his job as a prominent homicide detective in the San Francisco Police Department, but he continues to solve crimes with the help of his assistant and his former boss.", streaming_service: "Amazon Prime", user_id: edgar.id)
Program.create(title: "You", movie_or_show: "Show", summary:"What would you do for love? For a brilliant male bookstore manager who crosses paths with an aspiring female writer, this question is put to the test. A charming yet awkward crush becomes something even more sinister when the writer becomes the manager's obsession. Using social media and the internet, he uses every tool at his disposal to become close to her, even going so far as to remove any obstacle --including people -- that stands in his way of getting to her.", streaming_service: "Netflix", user_id: evering.id)
