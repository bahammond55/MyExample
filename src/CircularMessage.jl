module CircularMessage

# Write your package code here.
greet() = println("CircularMessage")

mutable struct circular_message
    m_size::Int
    #bins::SVector{720,Float64}
    #bins::SArray{720,Float64}
    #values::SVector{720,Float64}
    bins
    values
    #cx_values::SVector{720,Complex}
    # Create a circular message
    function circular_message(m_size::Int = 720)
        x = new()
        x.m_size = m_size
        x.bins = (1/m_size*2pi)*[0.:1.:m_size-1;]
        x.values = ones(m_size).* log(1.0/(2*pi))
    end
end

end
