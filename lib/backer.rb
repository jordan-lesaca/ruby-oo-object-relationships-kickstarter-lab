class Backer
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        newlist = ProjectBacker.all.select do |list|
            list.backer == self
        end
            newlist.map do |list|
                list.project
            end
        end

end