require 'git'

class Author < Git::Author
	def initialize(base, author_string)
		@base = base
		super(author_string)
	end

	def commits()
		an_impossibly_large_max_count = 1000000 # Hack to get ALL commits in the repo because it's mandator to pass a max-count to ruby-git
		@base.log(an_impossibly_large_max_count).author(name)
	end
end