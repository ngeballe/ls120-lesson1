
glossary = {}

def add_to_glossary(term, definition, glossary)
  glossary[term.downcase] = definition
end

def add_sentence_to_glossary(sentence, glossary)
  sentence.strip!
  sentence = sentence[0..-2] if sentence[-1] == "."
  return nil unless sentence =~ /\bis\b/
  term, definition = sentence.split(" is ")
  add_to_glossary(term, definition, glossary)
end

def ask_for_term(glossary)
  terms = glossary.keys
  definitions = glossary.values

  loop do
    definition = definitions.sample
    puts "Fill in the blank: ________ is #{definition}"
    reply = gets.chomp
    if glossary[reply] == definition
      puts "That's right."
      break
    else
      puts "Sorry, that's not correct."
    end
  end
end

def ask_for_definition(glossary)
  terms = glossary.keys
  definitions = glossary.values

  loop do
    term = terms.sample
    puts "What does #{term} mean?"
    reply = gets.chomp
    if reply == glossary[term]
      puts "That's right."
      break
    else
      puts "Sorry, that's not correct."
    end
  end
end

def give_quiz(glossary, num_terms=5, num_definitions=5)
  num_terms.times { ask_for_term(glossary) }
  num_definitions.times { ask_for_definition(glossary) }
end

sentences = ["Encapsulation is hiding pieces of functionality and making them unavailable to the rest of the code base.",
             "Polymorphism is the ability for data to be represented as many different types.",
             "inheritance is where a class inherits the behaviors of another class, referred to as the superclass.",
             "mixin is a module mixed in with a class using the reserved word 'include'",
             "instantiation is creating a new object or instance from a class"
]

sentences.each do |sentence|
  add_sentence_to_glossary(sentence, glossary)
end

give_quiz(glossary, 2, 0)

# What are the two reasons to use a module?
# grouping common methods
# namespacing (distinguishing commonly used classes)
