using Test
using ViterboConjecture

@testset "hello" begin
    @test ViterboConjecture.hello("World") == "Hello, World!"
end

