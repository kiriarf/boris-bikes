class Bike
    def initialize(status = true)
        @status = status
    end

    def report_broken
        @status = false
    end

    def working?
        @status
    end
end