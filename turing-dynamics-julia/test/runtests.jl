using Test
using TuringDynamics

@testset "hello" begin
    @test TuringDynamics.hello("World") == "Hello, World!"
end

