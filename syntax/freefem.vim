" Vim syntax file
" Language:	FreeFem++
" License:	GPLv3
" Contributor:	Paul Cazeaux
" Contributor:	Richard Michel <Richard.Michel@lepmi.inpg.fr>

if exists("b:current_syntax")
  finish
endif

runtime! syntax/cpp.vim
unlet b:current_syntax

" Number:
syn keyword ffNumber	pi

" Types:
syn keyword ffType	border Cmatrix complex fespace func ifstream matrix
syn keyword ffType	mesh mesh3 ofstream problem R3 real solve string varf

" Finite Elements:
syn keyword ffElement	P0 P0edge P0VF P1 P1b P1dc P1nc P2 P2b P2dc P2h RT0 RT0Ortho RTmodif
syn keyword ffElement	qf1pE qf1pElump qf1pT qf1pTlump qf2pE qf2pT qf2pT4P1 qf3pE qf5pT
syn keyword ffElement	qf7pT qf9pT

" Macro:
syn match ffMacro	display "^\s*\(macro\)\>"

" Functions:
syn keyword ffFunction	average jump mean otherside
syn keyword ffFunction	int1d int2d intalledges on
syn keyword ffFunction	dn dx dxx dxy dy dyx dyy dz
syn keyword ffFunction	interpolate set sort change
syn keyword ffFunction	plot

" Mesh Functions:
syn keyword ffFunction	adaptmesh buildmesh buildmeshborder checkmovemesh emptymesh
syn keyword ffFunction	movemesh readmesh savemesh splitmesh square triangulate trunc

" Math Functions:
syn keyword ffFunction	abs acos acosh arg asin asinh atan atan2 atanh ceil conj cos cosh
syn keyword ffFunction	exp floor imag log log10 max min norm polar pow sin sinh sqrt tan
syn keyword ffFunction	tanh randinit randint31 randint32 randreal1 randreal2 randreal3
syn keyword ffFunction	randint32 randint31 randreal1 randreadl2 randreal3 randres53
syn keyword ffFunction	randinit rint ciel
syn keyword ffFunction	j0 j1 jn y0 y1 yn tgamma erf erfc

" System Functions:
syn keyword ffFunction	assert clock dumptable exec exit

" Global Reserved:
syn keyword ffGlobal	area cin cout endl HaveUMFPACK hTriangle lenEdge N NoUseOfWait
syn keyword ffGlobal	nTonEdge nuEdge nuTriangle P region verbosity version t x y z x0 y0
syn keyword ffGlobal	label verbosity

syn keyword ffMethodFESpace	ndof ndofK
syn keyword ffMethodStream	default noshowbase noshowpos showbase showpos precision scientific
syn keyword ffMethodStream	eof good
syn keyword ffMethodMatrix	coef diag m n nbcoef resize
syn keyword ffMethodMesh	nt nv
syn keyword ffMethodString	find length rfind size
syn keyword ffMethodVector	im l1 l2 linfty max min re resize sum

" Solver Function:
syn keyword ffFunction	BFGS convect EigenValue LinearCG LinearGMRES Newton NLCG

" Solver Parameters:
syn keyword ffParameter	abserror anisomax append aspectratio bb binside bmat bw cadna clean
syn keyword ffParameter	cmm cutoff dimKrylov eps err errg factorize fill grey hmax hmin hsv
syn keyword ffParameter	init inquire inside IsMetric iso ivalue keepbackvertices
syn keyword ffParameter	maxit maxsubdiv metric nbarrow nev nbiso nbiter nbiterline nbjacoby
syn keyword ffParameter	nbsmooth nbvx ncv nomeshgeneration omega op optimize periodic power
syn keyword ffParameter	precon prev ps qfe qfnbpE qfnbpT qforder qft ratio rescaling save
syn keyword ffParameter	sigma solver split splitin2 splitpbedge strategy sym tgv thetamax
syn keyword ffParameter	tol tolpivot tolpivotsym value varrow vector veps viso
syn keyword ffParameter	wait WindowIndex

" Solvers:
syn keyword ffSolver	CG Cholesky Crout GMRES LU UMFPACK sparsesolver

" MPI: Ch.10
syn keyword ffFunction	broadcast processor processorblock mpiRank mpiSize
syn keyword ffFunction	mpiBarrier mpiWait mpiWaitAll mpiWtime mpiWtick
syn keyword ffFunction	Send Recv Isend Irecv mpiAlltoall mpiAllgather
syn keyword ffFunction	mpiGather mpiScatter mpiReduce mpiAllReduce mpiReduceScatter
syn keyword ffConstant	mpirank mpisize mpiUndefined mpiAnySource mpiCommWorld
syn keyword ffType	mpiGroup mpiComm mpiRequest

" Parallel Sparse Solvers: Ch.11
syn keyword ffSolverFunc	defaulttoMUMPS realdefaulttoSuperLUdist complexdefaulttoSuperLUdist
syn keyword ffSolverFunc	realdefaulttopastix complexdefaulttopastix defaulttohips
syn keyword ffSolverFunc	defaulttohypre defaulttoparms
syn keyword ffSolverParm	lparams dparams sparams datafilename
syn keyword ffDSolverParm	permr permc scaler scalec

" Includes:
syn region cIncluded	display contained start=+"+ skip=+\\\\\|\\"+ end=+"+
syn match  cIncluded	display contained "<[^>]*>"
syn match  cInclude	display "^\s*\(include\|load\)\>\s*["<]" contains=cIncluded

" Default highlighting
hi def link ffBoolean	Boolean
hi def link ffConstant	Constant
hi def link ffElement	Constant
hi def link ffFunction	Function
hi def link ffGlobal	Keyword
hi def link ffMacro	Macro
hi def link ffMethodFESpace	Function
hi def link ffMethodMatrix	Identifier
hi def link ffMethodMesh	Function
hi def link ffMethodStream	Function
hi def link ffMethodString	Function
hi def link ffMethodVector	Function
hi def link ffNumber	Number
hi def link ffParameter	Identifier
hi def link ffStatement	Statement
hi def link ffSolver	Tag
hi def link ffType	Type

let b:current_syntax = "freefem"

" vim: ts=18 sw=0 sts=0 tw=100
