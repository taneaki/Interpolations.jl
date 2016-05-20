function lin_int(grid,vals)
    function func(x)
        if x < grid[1]
            return "error"
        end
        if x > grid[end]
            return "error"
        end
        if x == grid[end]
            return vals[end]
        end
        if grid[1] <= x < length(grid)
            z = searchsortedlast(grid,x)
            slope = (vals[z+1]-vals[z])/(grid[z+1]-grid[z])
            y = slope*(x-grid[z])+vals[z]
        return y
        end
    end
    
    function func{T<:Real}(x::AbstractVector{T})
        n = length(x)
        out = Array(Any, n)
        fill!(out,0.0)
        for i in 1:n
            out[i] = func(x[i])
        end
        return out
    end
    
    return func
end