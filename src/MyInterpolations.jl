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
    return func
end