using PackageCompiler
using Pkg

Pkg.activate(".")
Pkg.instantiate()
Pkg.precompile()
create_app(".", "CompiledWebserviceBin")