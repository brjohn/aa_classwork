require 'sqlite3'
require 'singleton'

class QuestionsDatabase < SQLite3::Database
  include Singleton

  def initialize
    super('questions.db')
    self.type_translation = true
    self.results_as_hash = true
  end
end

class User
    def self.find_by_id(id)
        id = QuestionsDatabase.instance.execute(<<-SQL, id)
            SELECT
                *
            FROM
                users
            WHERE
                id = ?
        SQL
        User.new(id.first)
    end

    def self.find_by_name(fname,lname)
        name = QuestionDatabase.instance.execute(<<-SQL,fname,lname)
            SELECT
                *
            FROM
                users
            WHERE
                fname = ?, lname = ?
        SQL
        User.new(name.first)
    end

    def initialize(options)
        @id = options['id']
        @fname = options['fname']
        @lname = options['lname']
    end
    
end
