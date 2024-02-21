class Quiz
    def initialize
      @questions = {}
    end
  
    def add_question(name, &block)
      @questions[name] = block
    end
  
    def run
      @questions.each do |name, question_block|
        puts "#{name.to_s.gsub('_', ' ').capitalize}"
        question_block.call
        puts
      end
    end
end

quiz = Quiz.new
  
quiz.add_question(:question_about_math) do
    puts "What is 5 + 7 - 3?"
end
  
quiz.add_question(:question_about_science) do
    puts "What is an electron?"
end
  
quiz.run
