│Ѓ9
» 
D
AddV2
x"T
y"T
z"T"
Ttype:
2	ђљ
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( ѕ
ђ
BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
$
DisableCopyOnRead
resourceѕ
R
Einsum
inputs"T*N
output"T"
equationstring"
Nint(0"	
Ttype
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
.
Identity

input"T
output"T"	
Ttype
u
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	
є
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( ѕ
?
Mul
x"T
y"T
z"T"
Ttype:
2	љ

NoOp
Ї
OneHot
indices"TI	
depth
on_value"T
	off_value"T
output"T"
axisint         "	
Ttype"
TItype0	:
2	
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetypeѕ
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0ѕ
n
	ReverseV2
tensor"T
axis"Tidx
output"T"
Tidxtype0:
2	"
Ttype:
2	

l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0ѕ
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
9
Softmax
logits"T
softmax"T"
Ttype:
2
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
┴
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ѕе
@
StaticRegexFullMatch	
input

output
"
patternstring
э
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
L

StringJoin
inputs*N

output"

Nint("
	separatorstring 
░
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type/
output_handleіжУelement_dtype"
element_dtypetype"

shape_typetype:
2	
Ъ
TensorListReserve
element_shape"
shape_type
num_elements(
handleіжУelement_dtype"
element_dtypetype"

shape_typetype:
2	
ѕ
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint         
г
TopKV2

input"T
k"Tk
values"T
indices"
index_type"
sortedbool("
Ttype:
2	"
Tktype0:
2	"

index_typetype0:
2	
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
P
Unpack

value"T
output"T*num"
numint("	
Ttype"
axisint 
ќ
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ѕ
ћ
While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
ѕ"serve*2.13.02v2.13.0-rc2-7-g1cb1a030a628§Ѕ4
И
0bidirectional_92/backward_lstm_92/lstm_cell/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *A
shared_name20bidirectional_92/backward_lstm_92/lstm_cell/bias
▒
Dbidirectional_92/backward_lstm_92/lstm_cell/bias/Read/ReadVariableOpReadVariableOp0bidirectional_92/backward_lstm_92/lstm_cell/bias*
_output_shapes
: *
dtype0
н
<bidirectional_92/backward_lstm_92/lstm_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *M
shared_name><bidirectional_92/backward_lstm_92/lstm_cell/recurrent_kernel
═
Pbidirectional_92/backward_lstm_92/lstm_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp<bidirectional_92/backward_lstm_92/lstm_cell/recurrent_kernel*
_output_shapes

: *
dtype0
└
2bidirectional_92/backward_lstm_92/lstm_cell/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *C
shared_name42bidirectional_92/backward_lstm_92/lstm_cell/kernel
╣
Fbidirectional_92/backward_lstm_92/lstm_cell/kernel/Read/ReadVariableOpReadVariableOp2bidirectional_92/backward_lstm_92/lstm_cell/kernel*
_output_shapes

: *
dtype0
Х
/bidirectional_92/forward_lstm_92/lstm_cell/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *@
shared_name1/bidirectional_92/forward_lstm_92/lstm_cell/bias
»
Cbidirectional_92/forward_lstm_92/lstm_cell/bias/Read/ReadVariableOpReadVariableOp/bidirectional_92/forward_lstm_92/lstm_cell/bias*
_output_shapes
: *
dtype0
м
;bidirectional_92/forward_lstm_92/lstm_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *L
shared_name=;bidirectional_92/forward_lstm_92/lstm_cell/recurrent_kernel
╦
Obidirectional_92/forward_lstm_92/lstm_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp;bidirectional_92/forward_lstm_92/lstm_cell/recurrent_kernel*
_output_shapes

: *
dtype0
Й
1bidirectional_92/forward_lstm_92/lstm_cell/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *B
shared_name31bidirectional_92/forward_lstm_92/lstm_cell/kernel
и
Ebidirectional_92/forward_lstm_92/lstm_cell/kernel/Read/ReadVariableOpReadVariableOp1bidirectional_92/forward_lstm_92/lstm_cell/kernel*
_output_shapes

: *
dtype0
t
dense_592/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_592/bias
m
"dense_592/bias/Read/ReadVariableOpReadVariableOpdense_592/bias*
_output_shapes
:*
dtype0
|
dense_592/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*!
shared_namedense_592/kernel
u
$dense_592/kernel/Read/ReadVariableOpReadVariableOpdense_592/kernel*
_output_shapes

:*
dtype0
t
dense_587/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_587/bias
m
"dense_587/bias/Read/ReadVariableOpReadVariableOpdense_587/bias*
_output_shapes
:*
dtype0
|
dense_587/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*!
shared_namedense_587/kernel
u
$dense_587/kernel/Read/ReadVariableOpReadVariableOpdense_587/kernel*
_output_shapes

:*
dtype0
t
dense_582/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_582/bias
m
"dense_582/bias/Read/ReadVariableOpReadVariableOpdense_582/bias*
_output_shapes
:*
dtype0
|
dense_582/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*!
shared_namedense_582/kernel
u
$dense_582/kernel/Read/ReadVariableOpReadVariableOpdense_582/kernel*
_output_shapes

:*
dtype0
t
dense_577/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_577/bias
m
"dense_577/bias/Read/ReadVariableOpReadVariableOpdense_577/bias*
_output_shapes
:*
dtype0
|
dense_577/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*!
shared_namedense_577/kernel
u
$dense_577/kernel/Read/ReadVariableOpReadVariableOpdense_577/kernel*
_output_shapes

:*
dtype0
t
dense_593/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_593/bias
m
"dense_593/bias/Read/ReadVariableOpReadVariableOpdense_593/bias*
_output_shapes
:*
dtype0
}
dense_593/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ђ*!
shared_namedense_593/kernel
v
$dense_593/kernel/Read/ReadVariableOpReadVariableOpdense_593/kernel*
_output_shapes
:	ђ*
dtype0
t
dense_576/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_576/bias
m
"dense_576/bias/Read/ReadVariableOpReadVariableOpdense_576/bias*
_output_shapes
:*
dtype0
|
dense_576/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*!
shared_namedense_576/kernel
u
$dense_576/kernel/Read/ReadVariableOpReadVariableOpdense_576/kernel*
_output_shapes

:*
dtype0
p
serving_default_input_3Placeholder*"
_output_shapes
:*
dtype0*
shape:
Я
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_3dense_576/kerneldense_576/biasdense_577/kerneldense_577/biasdense_582/kerneldense_582/biasdense_587/kerneldense_587/biasdense_592/kerneldense_592/bias1bidirectional_92/forward_lstm_92/lstm_cell/kernel;bidirectional_92/forward_lstm_92/lstm_cell/recurrent_kernel/bidirectional_92/forward_lstm_92/lstm_cell/bias2bidirectional_92/backward_lstm_92/lstm_cell/kernel<bidirectional_92/backward_lstm_92/lstm_cell/recurrent_kernel0bidirectional_92/backward_lstm_92/lstm_cell/biasdense_593/kerneldense_593/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*4
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8ѓ */
f*R(
&__inference_signature_wrapper_28636355

NoOpNoOp
њЁ
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*╠ё
value┴ёBйё Bхё
Ч
layer-0
layer_with_weights-0
layer-1
layer-2
layer-3
layer-4
layer-5
layer-6
layer_with_weights-1
layer-7
	layer_with_weights-2
	layer-8

layer_with_weights-3

layer-9
layer_with_weights-4
layer-10
layer-11
layer-12
layer_with_weights-5
layer-13
layer-14
layer-15
layer_with_weights-6
layer-16
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures
#_self_saveable_object_factories*
'
#_self_saveable_object_factories* 
╦
	variables
trainable_variables
regularization_losses
	keras_api
 __call__
*!&call_and_return_all_conditional_losses

"kernel
#bias
#$_self_saveable_object_factories*
6
%	keras_api
#&_self_saveable_object_factories* 
6
'	keras_api
#(_self_saveable_object_factories* 
│
)	variables
*trainable_variables
+regularization_losses
,	keras_api
-__call__
*.&call_and_return_all_conditional_losses
#/_self_saveable_object_factories* 
│
0	variables
1trainable_variables
2regularization_losses
3	keras_api
4__call__
*5&call_and_return_all_conditional_losses
#6_self_saveable_object_factories* 
6
7	keras_api
#8_self_saveable_object_factories* 
▄
9layer_with_weights-0
9layer-0
:	variables
;trainable_variables
<regularization_losses
=	keras_api
>__call__
*?&call_and_return_all_conditional_losses
#@_self_saveable_object_factories*
▄
Alayer_with_weights-0
Alayer-0
B	variables
Ctrainable_variables
Dregularization_losses
E	keras_api
F__call__
*G&call_and_return_all_conditional_losses
#H_self_saveable_object_factories*
▄
Ilayer_with_weights-0
Ilayer-0
J	variables
Ktrainable_variables
Lregularization_losses
M	keras_api
N__call__
*O&call_and_return_all_conditional_losses
#P_self_saveable_object_factories*
▄
Qlayer_with_weights-0
Qlayer-0
R	variables
Strainable_variables
Tregularization_losses
U	keras_api
V__call__
*W&call_and_return_all_conditional_losses
#X_self_saveable_object_factories*
6
Y	keras_api
#Z_self_saveable_object_factories* 
│
[	variables
\trainable_variables
]regularization_losses
^	keras_api
___call__
*`&call_and_return_all_conditional_losses
#a_self_saveable_object_factories* 
▄
b	variables
ctrainable_variables
dregularization_losses
e	keras_api
f__call__
*g&call_and_return_all_conditional_losses
hforward_layer
ibackward_layer
#j_self_saveable_object_factories*
╩
k	variables
ltrainable_variables
mregularization_losses
n	keras_api
o__call__
*p&call_and_return_all_conditional_losses
q_random_generator
#r_self_saveable_object_factories* 
│
s	variables
ttrainable_variables
uregularization_losses
v	keras_api
w__call__
*x&call_and_return_all_conditional_losses
#y_self_saveable_object_factories* 
╬
z	variables
{trainable_variables
|regularization_losses
}	keras_api
~__call__
*&call_and_return_all_conditional_losses
ђkernel
	Ђbias
$ѓ_self_saveable_object_factories*
џ
"0
#1
Ѓ2
ё3
Ё4
є5
Є6
ѕ7
Ѕ8
і9
І10
ї11
Ї12
ј13
Ј14
љ15
ђ16
Ђ17*
џ
"0
#1
Ѓ2
ё3
Ё4
є5
Є6
ѕ7
Ѕ8
і9
І10
ї11
Ї12
ј13
Ј14
љ15
ђ16
Ђ17*
* 
х
Љnon_trainable_variables
њlayers
Њmetrics
 ћlayer_regularization_losses
Ћlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

ќtrace_0
Ќtrace_1* 

ўtrace_0
Ўtrace_1* 
* 

џserving_default* 
* 
* 

"0
#1*

"0
#1*
* 
ў
Џnon_trainable_variables
юlayers
Юmetrics
 ъlayer_regularization_losses
Ъlayer_metrics
	variables
trainable_variables
regularization_losses
 __call__
*!&call_and_return_all_conditional_losses
&!"call_and_return_conditional_losses*

аtrace_0* 

Аtrace_0* 
`Z
VARIABLE_VALUEdense_576/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEdense_576/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 
ќ
бnon_trainable_variables
Бlayers
цmetrics
 Цlayer_regularization_losses
дlayer_metrics
)	variables
*trainable_variables
+regularization_losses
-__call__
*.&call_and_return_all_conditional_losses
&."call_and_return_conditional_losses* 

Дtrace_0
еtrace_1* 

Еtrace_0
фtrace_1* 
* 
* 
* 
* 
ќ
Фnon_trainable_variables
гlayers
Гmetrics
 «layer_regularization_losses
»layer_metrics
0	variables
1trainable_variables
2regularization_losses
4__call__
*5&call_and_return_all_conditional_losses
&5"call_and_return_conditional_losses* 

░trace_0
▒trace_1* 

▓trace_0
│trace_1* 
* 
* 
* 
н
┤	variables
хtrainable_variables
Хregularization_losses
и	keras_api
И__call__
+╣&call_and_return_all_conditional_losses
Ѓkernel
	ёbias
$║_self_saveable_object_factories*

Ѓ0
ё1*

Ѓ0
ё1*
* 
ў
╗non_trainable_variables
╝layers
йmetrics
 Йlayer_regularization_losses
┐layer_metrics
:	variables
;trainable_variables
<regularization_losses
>__call__
*?&call_and_return_all_conditional_losses
&?"call_and_return_conditional_losses*

└trace_0
┴trace_1* 

┬trace_0
├trace_1* 
* 
н
─	variables
┼trainable_variables
кregularization_losses
К	keras_api
╚__call__
+╔&call_and_return_all_conditional_losses
Ёkernel
	єbias
$╩_self_saveable_object_factories*

Ё0
є1*

Ё0
є1*
* 
ў
╦non_trainable_variables
╠layers
═metrics
 ╬layer_regularization_losses
¤layer_metrics
B	variables
Ctrainable_variables
Dregularization_losses
F__call__
*G&call_and_return_all_conditional_losses
&G"call_and_return_conditional_losses*

лtrace_0
Лtrace_1* 

мtrace_0
Мtrace_1* 
* 
н
н	variables
Нtrainable_variables
оregularization_losses
О	keras_api
п__call__
+┘&call_and_return_all_conditional_losses
Єkernel
	ѕbias
$┌_self_saveable_object_factories*

Є0
ѕ1*

Є0
ѕ1*
* 
ў
█non_trainable_variables
▄layers
Пmetrics
 яlayer_regularization_losses
▀layer_metrics
J	variables
Ktrainable_variables
Lregularization_losses
N__call__
*O&call_and_return_all_conditional_losses
&O"call_and_return_conditional_losses*

Яtrace_0
рtrace_1* 

Рtrace_0
сtrace_1* 
* 
н
С	variables
тtrainable_variables
Тregularization_losses
у	keras_api
У__call__
+ж&call_and_return_all_conditional_losses
Ѕkernel
	іbias
$Ж_self_saveable_object_factories*

Ѕ0
і1*

Ѕ0
і1*
* 
ў
вnon_trainable_variables
Вlayers
ьmetrics
 Ьlayer_regularization_losses
№layer_metrics
R	variables
Strainable_variables
Tregularization_losses
V__call__
*W&call_and_return_all_conditional_losses
&W"call_and_return_conditional_losses*

­trace_0
ыtrace_1* 

Ыtrace_0
зtrace_1* 
* 
* 
* 
* 
* 
* 
ќ
Зnon_trainable_variables
шlayers
Шmetrics
 эlayer_regularization_losses
Эlayer_metrics
[	variables
\trainable_variables
]regularization_losses
___call__
*`&call_and_return_all_conditional_losses
&`"call_and_return_conditional_losses* 

щtrace_0
Щtrace_1* 

чtrace_0
Чtrace_1* 
* 
4
І0
ї1
Ї2
ј3
Ј4
љ5*
4
І0
ї1
Ї2
ј3
Ј4
љ5*
* 
ў
§non_trainable_variables
■layers
 metrics
 ђlayer_regularization_losses
Ђlayer_metrics
b	variables
ctrainable_variables
dregularization_losses
f__call__
*g&call_and_return_all_conditional_losses
&g"call_and_return_conditional_losses*
:
ѓtrace_0
Ѓtrace_1
ёtrace_2
Ёtrace_3* 
:
єtrace_0
Єtrace_1
ѕtrace_2
Ѕtrace_3* 
­
і	variables
Іtrainable_variables
їregularization_losses
Ї	keras_api
ј__call__
+Ј&call_and_return_all_conditional_losses
љ_random_generator
	Љcell
њ
state_spec
$Њ_self_saveable_object_factories*
­
ћ	variables
Ћtrainable_variables
ќregularization_losses
Ќ	keras_api
ў__call__
+Ў&call_and_return_all_conditional_losses
џ_random_generator
	Џcell
ю
state_spec
$Ю_self_saveable_object_factories*
* 
* 
* 
* 
ќ
ъnon_trainable_variables
Ъlayers
аmetrics
 Аlayer_regularization_losses
бlayer_metrics
k	variables
ltrainable_variables
mregularization_losses
o__call__
*p&call_and_return_all_conditional_losses
&p"call_and_return_conditional_losses* 

Бtrace_0
цtrace_1* 

Цtrace_0
дtrace_1* 
(
$Д_self_saveable_object_factories* 
* 
* 
* 
* 
ќ
еnon_trainable_variables
Еlayers
фmetrics
 Фlayer_regularization_losses
гlayer_metrics
s	variables
ttrainable_variables
uregularization_losses
w__call__
*x&call_and_return_all_conditional_losses
&x"call_and_return_conditional_losses* 

Гtrace_0* 

«trace_0* 
* 

ђ0
Ђ1*

ђ0
Ђ1*
* 
ў
»non_trainable_variables
░layers
▒metrics
 ▓layer_regularization_losses
│layer_metrics
z	variables
{trainable_variables
|regularization_losses
~__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

┤trace_0* 

хtrace_0* 
`Z
VARIABLE_VALUEdense_593/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEdense_593/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
PJ
VARIABLE_VALUEdense_577/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEdense_577/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEdense_582/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEdense_582/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEdense_587/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEdense_587/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEdense_592/kernel&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEdense_592/bias&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUE1bidirectional_92/forward_lstm_92/lstm_cell/kernel'variables/10/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE;bidirectional_92/forward_lstm_92/lstm_cell/recurrent_kernel'variables/11/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUE/bidirectional_92/forward_lstm_92/lstm_cell/bias'variables/12/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUE2bidirectional_92/backward_lstm_92/lstm_cell/kernel'variables/13/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE<bidirectional_92/backward_lstm_92/lstm_cell/recurrent_kernel'variables/14/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUE0bidirectional_92/backward_lstm_92/lstm_cell/bias'variables/15/.ATTRIBUTES/VARIABLE_VALUE*
* 
ѓ
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

Ѓ0
ё1*

Ѓ0
ё1*
* 
ъ
Хnon_trainable_variables
иlayers
Иmetrics
 ╣layer_regularization_losses
║layer_metrics
┤	variables
хtrainable_variables
Хregularization_losses
И__call__
+╣&call_and_return_all_conditional_losses
'╣"call_and_return_conditional_losses*

╗trace_0* 

╝trace_0* 
* 
* 

90*
* 
* 
* 
* 
* 
* 
* 

Ё0
є1*

Ё0
є1*
* 
ъ
йnon_trainable_variables
Йlayers
┐metrics
 └layer_regularization_losses
┴layer_metrics
─	variables
┼trainable_variables
кregularization_losses
╚__call__
+╔&call_and_return_all_conditional_losses
'╔"call_and_return_conditional_losses*

┬trace_0* 

├trace_0* 
* 
* 

A0*
* 
* 
* 
* 
* 
* 
* 

Є0
ѕ1*

Є0
ѕ1*
* 
ъ
─non_trainable_variables
┼layers
кmetrics
 Кlayer_regularization_losses
╚layer_metrics
н	variables
Нtrainable_variables
оregularization_losses
п__call__
+┘&call_and_return_all_conditional_losses
'┘"call_and_return_conditional_losses*

╔trace_0* 

╩trace_0* 
* 
* 

I0*
* 
* 
* 
* 
* 
* 
* 

Ѕ0
і1*

Ѕ0
і1*
* 
ъ
╦non_trainable_variables
╠layers
═metrics
 ╬layer_regularization_losses
¤layer_metrics
С	variables
тtrainable_variables
Тregularization_losses
У__call__
+ж&call_and_return_all_conditional_losses
'ж"call_and_return_conditional_losses*

лtrace_0* 

Лtrace_0* 
* 
* 

Q0*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

h0
i1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

І0
ї1
Ї2*

І0
ї1
Ї2*
* 
Ф
мstates
Мnon_trainable_variables
нlayers
Нmetrics
 оlayer_regularization_losses
Оlayer_metrics
і	variables
Іtrainable_variables
їregularization_losses
ј__call__
+Ј&call_and_return_all_conditional_losses
'Ј"call_and_return_conditional_losses*
:
пtrace_0
┘trace_1
┌trace_2
█trace_3* 
:
▄trace_0
Пtrace_1
яtrace_2
▀trace_3* 
(
$Я_self_saveable_object_factories* 
ћ
р	variables
Рtrainable_variables
сregularization_losses
С	keras_api
т__call__
+Т&call_and_return_all_conditional_losses
у_random_generator
У
state_size
Іkernel
їrecurrent_kernel
	Їbias
$ж_self_saveable_object_factories*
* 
* 

ј0
Ј1
љ2*

ј0
Ј1
љ2*
* 
Ф
Жstates
вnon_trainable_variables
Вlayers
ьmetrics
 Ьlayer_regularization_losses
№layer_metrics
ћ	variables
Ћtrainable_variables
ќregularization_losses
ў__call__
+Ў&call_and_return_all_conditional_losses
'Ў"call_and_return_conditional_losses*
:
­trace_0
ыtrace_1
Ыtrace_2
зtrace_3* 
:
Зtrace_0
шtrace_1
Шtrace_2
эtrace_3* 
(
$Э_self_saveable_object_factories* 
ћ
щ	variables
Щtrainable_variables
чregularization_losses
Ч	keras_api
§__call__
+■&call_and_return_all_conditional_losses
 _random_generator
ђ
state_size
јkernel
Јrecurrent_kernel
	љbias
$Ђ_self_saveable_object_factories*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

Љ0*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

І0
ї1
Ї2*

І0
ї1
Ї2*
* 
ъ
ѓnon_trainable_variables
Ѓlayers
ёmetrics
 Ёlayer_regularization_losses
єlayer_metrics
р	variables
Рtrainable_variables
сregularization_losses
т__call__
+Т&call_and_return_all_conditional_losses
'Т"call_and_return_conditional_losses*

Єtrace_0
ѕtrace_1* 

Ѕtrace_0
іtrace_1* 
(
$І_self_saveable_object_factories* 
* 
* 
* 
* 

Џ0*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

ј0
Ј1
љ2*

ј0
Ј1
љ2*
* 
ъ
їnon_trainable_variables
Їlayers
јmetrics
 Јlayer_regularization_losses
љlayer_metrics
щ	variables
Щtrainable_variables
чregularization_losses
§__call__
+■&call_and_return_all_conditional_losses
'■"call_and_return_conditional_losses*

Љtrace_0
њtrace_1* 

Њtrace_0
ћtrace_1* 
(
$Ћ_self_saveable_object_factories* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
└
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenamedense_576/kerneldense_576/biasdense_593/kerneldense_593/biasdense_577/kerneldense_577/biasdense_582/kerneldense_582/biasdense_587/kerneldense_587/biasdense_592/kerneldense_592/bias1bidirectional_92/forward_lstm_92/lstm_cell/kernel;bidirectional_92/forward_lstm_92/lstm_cell/recurrent_kernel/bidirectional_92/forward_lstm_92/lstm_cell/bias2bidirectional_92/backward_lstm_92/lstm_cell/kernel<bidirectional_92/backward_lstm_92/lstm_cell/recurrent_kernel0bidirectional_92/backward_lstm_92/lstm_cell/biasConst*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ **
f%R#
!__inference__traced_save_28639454
╗
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_576/kerneldense_576/biasdense_593/kerneldense_593/biasdense_577/kerneldense_577/biasdense_582/kerneldense_582/biasdense_587/kerneldense_587/biasdense_592/kerneldense_592/bias1bidirectional_92/forward_lstm_92/lstm_cell/kernel;bidirectional_92/forward_lstm_92/lstm_cell/recurrent_kernel/bidirectional_92/forward_lstm_92/lstm_cell/bias2bidirectional_92/backward_lstm_92/lstm_cell/kernel<bidirectional_92/backward_lstm_92/lstm_cell/recurrent_kernel0bidirectional_92/backward_lstm_92/lstm_cell/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *-
f(R&
$__inference__traced_restore_28639517вк2
Т
q
G__inference_lambda_98_layer_call_and_return_conditional_losses_28635414

inputs
inputs_1
identity|
einsum/EinsumEinsuminputsinputs_1*
N*
T0*"
_output_shapes
:*
equationabcd,ace->acdY
IdentityIdentityeinsum/Einsum:output:0*
T0*"
_output_shapes
:"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :::N J
&
_output_shapes
:
 
_user_specified_nameinputs:JF
"
_output_shapes
:
 
_user_specified_nameinputs
д
■
G__inference_dense_576_layer_call_and_return_conditional_losses_28636379

inputs3
!tensordot_readvariableop_resource:-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбTensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:*
dtype0h
Tensordot/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ђ     p
Tensordot/ReshapeReshapeinputs Tensordot/Reshape/shape:output:0*
T0*
_output_shapes
:	ђѓ
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*
_output_shapes
:	ђd
Tensordot/shapeConst*
_output_shapes
:*
dtype0*!
valueB"         w
	TensordotReshapeTensordot/MatMul:product:0Tensordot/shape:output:0*
T0*"
_output_shapes
:r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0s
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*"
_output_shapes
:Q
SoftmaxSoftmaxBiasAdd:output:0*
T0*"
_output_shapes
:[
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*"
_output_shapes
:V
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*%
_input_shapes
:: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:J F
"
_output_shapes
:
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Л	
щ
G__inference_dense_593_layer_call_and_return_conditional_losses_28637728

inputs1
matmul_readvariableop_resource:	ђ-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	ђ*
dtype0`
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0m
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:V
IdentityIdentityBiasAdd:output:0^NoOp*
T0*
_output_shapes

:S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*"
_input_shapes
:	ђ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:G C

_output_shapes
:	ђ
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
еJ
љ
M__inference_forward_lstm_92_layer_call_and_return_conditional_losses_28638361

inputs:
(lstm_cell_matmul_readvariableop_resource: <
*lstm_cell_matmul_1_readvariableop_resource: 7
)lstm_cell_biasadd_readvariableop_resource: 
identityѕб lstm_cell/BiasAdd/ReadVariableOpбlstm_cell/MatMul/ReadVariableOpб!lstm_cell/MatMul_1/ReadVariableOpбwhileI
ShapeShapeinputs*
T0*
_output_shapes
::ь¤]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
	transpose	Transposeinputstranspose/perm:output:0*
T0*=
_output_shapes+
):'                           R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::ь¤_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ы
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:                  *
shrink_axis_maskѕ
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes

: *
dtype0Ј
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ї
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0Ѕ
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ѓ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:          є
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0І
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          [
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:         j
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:         q
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         b
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:         }
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:         r
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:         j
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:         _
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:         Ђ
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:         n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Я
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_28638277*
condR
while_cond_28638276*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                  Њ
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'                           : : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:e a
=
_output_shapes+
):'                           
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Д	
Я
L__inference_sequential_392_layer_call_and_return_conditional_losses_28633682
dense_577_input$
dense_577_28633676: 
dense_577_28633678:
identityѕб!dense_577/StatefulPartitionedCallЄ
!dense_577/StatefulPartitionedCallStatefulPartitionedCalldense_577_inputdense_577_28633676dense_577_28633678*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_dense_577_layer_call_and_return_conditional_losses_28633675}
IdentityIdentity*dense_577/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         F
NoOpNoOp"^dense_577/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         : : 2F
!dense_577/StatefulPartitionedCall!dense_577/StatefulPartitionedCall:\ X
+
_output_shapes
:         
)
_user_specified_namedense_577_input:($
"
_user_specified_name
28633676:($
"
_user_specified_name
28633678
ЉL
Љ
N__inference_backward_lstm_92_layer_call_and_return_conditional_losses_28638983

inputs:
(lstm_cell_matmul_readvariableop_resource: <
*lstm_cell_matmul_1_readvariableop_resource: 7
)lstm_cell_biasadd_readvariableop_resource: 
identityѕб lstm_cell/BiasAdd/ReadVariableOpбlstm_cell/MatMul/ReadVariableOpб!lstm_cell/MatMul_1/ReadVariableOpбwhileI
ShapeShapeinputs*
T0*
_output_shapes
::ь¤]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
	transpose	Transposeinputstranspose/perm:output:0*
T0*=
_output_shapes+
):'                           R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::ь¤_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмX
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: є
	ReverseV2	ReverseV2transpose:y:0ReverseV2/axis:output:0*
T0*=
_output_shapes+
):'                           є
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        т
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensorReverseV2:output:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ы
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:                  *
shrink_axis_maskѕ
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes

: *
dtype0Ј
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ї
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0Ѕ
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ѓ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:          є
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0І
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          [
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:         j
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:         q
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         b
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:         }
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:         r
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:         j
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:         _
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:         Ђ
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:         n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Я
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_28638899*
condR
while_cond_28638898*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                  Њ
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'                           : : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:e a
=
_output_shapes+
):'                           
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
▀8
▒
while_body_28638609
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0B
0while_lstm_cell_matmul_readvariableop_resource_0: D
2while_lstm_cell_matmul_1_readvariableop_resource_0: ?
1while_lstm_cell_biasadd_readvariableop_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor@
.while_lstm_cell_matmul_readvariableop_resource: B
0while_lstm_cell_matmul_1_readvariableop_resource: =
/while_lstm_cell_biasadd_readvariableop_resource: ѕб&while/lstm_cell/BiasAdd/ReadVariableOpб%while/lstm_cell/MatMul/ReadVariableOpб'while/lstm_cell/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0ќ
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0│
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          џ
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0џ
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ћ
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:          ћ
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0Ю
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Т
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitt
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:         v
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:         ђ
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         n
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:         Ј
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:         ё
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:         v
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:         k
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:         Њ
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:         ┬
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         v
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         Б

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
╠	
═
while_cond_28638133
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_16
2while_while_cond_28638133___redundant_placeholder06
2while_while_cond_28638133___redundant_placeholder16
2while_while_cond_28638133___redundant_placeholder26
2while_while_cond_28638133___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
У8
▒
while_body_28634855
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0B
0while_lstm_cell_matmul_readvariableop_resource_0: D
2while_lstm_cell_matmul_1_readvariableop_resource_0: ?
1while_lstm_cell_biasadd_readvariableop_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor@
.while_lstm_cell_matmul_readvariableop_resource: B
0while_lstm_cell_matmul_1_readvariableop_resource: =
/while_lstm_cell_biasadd_readvariableop_resource: ѕб&while/lstm_cell/BiasAdd/ReadVariableOpб%while/lstm_cell/MatMul/ReadVariableOpб'while/lstm_cell/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        »
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:                  *
element_dtype0ќ
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0│
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          џ
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0џ
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ћ
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:          ћ
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0Ю
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Т
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitt
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:         v
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:         ђ
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         n
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:         Ј
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:         ё
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:         v
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:         k
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:         Њ
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:         ┬
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         v
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         Б

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
њ┐
ъ
N__inference_bidirectional_92_layer_call_and_return_conditional_losses_28636807
inputs_0J
8forward_lstm_92_lstm_cell_matmul_readvariableop_resource: L
:forward_lstm_92_lstm_cell_matmul_1_readvariableop_resource: G
9forward_lstm_92_lstm_cell_biasadd_readvariableop_resource: K
9backward_lstm_92_lstm_cell_matmul_readvariableop_resource: M
;backward_lstm_92_lstm_cell_matmul_1_readvariableop_resource: H
:backward_lstm_92_lstm_cell_biasadd_readvariableop_resource: 
identityѕб1backward_lstm_92/lstm_cell/BiasAdd/ReadVariableOpб0backward_lstm_92/lstm_cell/MatMul/ReadVariableOpб2backward_lstm_92/lstm_cell/MatMul_1/ReadVariableOpбbackward_lstm_92/whileб0forward_lstm_92/lstm_cell/BiasAdd/ReadVariableOpб/forward_lstm_92/lstm_cell/MatMul/ReadVariableOpб1forward_lstm_92/lstm_cell/MatMul_1/ReadVariableOpбforward_lstm_92/while[
forward_lstm_92/ShapeShapeinputs_0*
T0*
_output_shapes
::ь¤m
#forward_lstm_92/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%forward_lstm_92/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%forward_lstm_92/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:А
forward_lstm_92/strided_sliceStridedSliceforward_lstm_92/Shape:output:0,forward_lstm_92/strided_slice/stack:output:0.forward_lstm_92/strided_slice/stack_1:output:0.forward_lstm_92/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
forward_lstm_92/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Б
forward_lstm_92/zeros/packedPack&forward_lstm_92/strided_slice:output:0'forward_lstm_92/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:`
forward_lstm_92/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ю
forward_lstm_92/zerosFill%forward_lstm_92/zeros/packed:output:0$forward_lstm_92/zeros/Const:output:0*
T0*'
_output_shapes
:         b
 forward_lstm_92/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Д
forward_lstm_92/zeros_1/packedPack&forward_lstm_92/strided_slice:output:0)forward_lstm_92/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:b
forward_lstm_92/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    б
forward_lstm_92/zeros_1Fill'forward_lstm_92/zeros_1/packed:output:0&forward_lstm_92/zeros_1/Const:output:0*
T0*'
_output_shapes
:         s
forward_lstm_92/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          А
forward_lstm_92/transpose	Transposeinputs_0'forward_lstm_92/transpose/perm:output:0*
T0*=
_output_shapes+
):'                           r
forward_lstm_92/Shape_1Shapeforward_lstm_92/transpose:y:0*
T0*
_output_shapes
::ь¤o
%forward_lstm_92/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_92/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'forward_lstm_92/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ф
forward_lstm_92/strided_slice_1StridedSlice forward_lstm_92/Shape_1:output:0.forward_lstm_92/strided_slice_1/stack:output:00forward_lstm_92/strided_slice_1/stack_1:output:00forward_lstm_92/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
+forward_lstm_92/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         С
forward_lstm_92/TensorArrayV2TensorListReserve4forward_lstm_92/TensorArrayV2/element_shape:output:0(forward_lstm_92/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмќ
Eforward_lstm_92/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        љ
7forward_lstm_92/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorforward_lstm_92/transpose:y:0Nforward_lstm_92/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмo
%forward_lstm_92/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_92/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'forward_lstm_92/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┬
forward_lstm_92/strided_slice_2StridedSliceforward_lstm_92/transpose:y:0.forward_lstm_92/strided_slice_2/stack:output:00forward_lstm_92/strided_slice_2/stack_1:output:00forward_lstm_92/strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:                  *
shrink_axis_maskе
/forward_lstm_92/lstm_cell/MatMul/ReadVariableOpReadVariableOp8forward_lstm_92_lstm_cell_matmul_readvariableop_resource*
_output_shapes

: *
dtype0┐
 forward_lstm_92/lstm_cell/MatMulMatMul(forward_lstm_92/strided_slice_2:output:07forward_lstm_92/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          г
1forward_lstm_92/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp:forward_lstm_92_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0╣
"forward_lstm_92/lstm_cell/MatMul_1MatMulforward_lstm_92/zeros:output:09forward_lstm_92/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ▓
forward_lstm_92/lstm_cell/addAddV2*forward_lstm_92/lstm_cell/MatMul:product:0,forward_lstm_92/lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:          д
0forward_lstm_92/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp9forward_lstm_92_lstm_cell_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0╗
!forward_lstm_92/lstm_cell/BiasAddBiasAdd!forward_lstm_92/lstm_cell/add:z:08forward_lstm_92/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          k
)forward_lstm_92/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ё
forward_lstm_92/lstm_cell/splitSplit2forward_lstm_92/lstm_cell/split/split_dim:output:0*forward_lstm_92/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitѕ
!forward_lstm_92/lstm_cell/SigmoidSigmoid(forward_lstm_92/lstm_cell/split:output:0*
T0*'
_output_shapes
:         і
#forward_lstm_92/lstm_cell/Sigmoid_1Sigmoid(forward_lstm_92/lstm_cell/split:output:1*
T0*'
_output_shapes
:         А
forward_lstm_92/lstm_cell/mulMul'forward_lstm_92/lstm_cell/Sigmoid_1:y:0 forward_lstm_92/zeros_1:output:0*
T0*'
_output_shapes
:         ѓ
forward_lstm_92/lstm_cell/ReluRelu(forward_lstm_92/lstm_cell/split:output:2*
T0*'
_output_shapes
:         Г
forward_lstm_92/lstm_cell/mul_1Mul%forward_lstm_92/lstm_cell/Sigmoid:y:0,forward_lstm_92/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:         б
forward_lstm_92/lstm_cell/add_1AddV2!forward_lstm_92/lstm_cell/mul:z:0#forward_lstm_92/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:         і
#forward_lstm_92/lstm_cell/Sigmoid_2Sigmoid(forward_lstm_92/lstm_cell/split:output:3*
T0*'
_output_shapes
:         
 forward_lstm_92/lstm_cell/Relu_1Relu#forward_lstm_92/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:         ▒
forward_lstm_92/lstm_cell/mul_2Mul'forward_lstm_92/lstm_cell/Sigmoid_2:y:0.forward_lstm_92/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:         ~
-forward_lstm_92/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       У
forward_lstm_92/TensorArrayV2_1TensorListReserve6forward_lstm_92/TensorArrayV2_1/element_shape:output:0(forward_lstm_92/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмV
forward_lstm_92/timeConst*
_output_shapes
: *
dtype0*
value	B : s
(forward_lstm_92/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         d
"forward_lstm_92/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : └
forward_lstm_92/whileWhile+forward_lstm_92/while/loop_counter:output:01forward_lstm_92/while/maximum_iterations:output:0forward_lstm_92/time:output:0(forward_lstm_92/TensorArrayV2_1:handle:0forward_lstm_92/zeros:output:0 forward_lstm_92/zeros_1:output:0(forward_lstm_92/strided_slice_1:output:0Gforward_lstm_92/TensorArrayUnstack/TensorListFromTensor:output_handle:08forward_lstm_92_lstm_cell_matmul_readvariableop_resource:forward_lstm_92_lstm_cell_matmul_1_readvariableop_resource9forward_lstm_92_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*/
body'R%
#forward_lstm_92_while_body_28636578*/
cond'R%
#forward_lstm_92_while_cond_28636577*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Љ
@forward_lstm_92/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ч
2forward_lstm_92/TensorArrayV2Stack/TensorListStackTensorListStackforward_lstm_92/while:output:3Iforward_lstm_92/TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  *
element_dtype0x
%forward_lstm_92/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         q
'forward_lstm_92/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_92/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:О
forward_lstm_92/strided_slice_3StridedSlice;forward_lstm_92/TensorArrayV2Stack/TensorListStack:tensor:0.forward_lstm_92/strided_slice_3/stack:output:00forward_lstm_92/strided_slice_3/stack_1:output:00forward_lstm_92/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_masku
 forward_lstm_92/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ¤
forward_lstm_92/transpose_1	Transpose;forward_lstm_92/TensorArrayV2Stack/TensorListStack:tensor:0)forward_lstm_92/transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  k
forward_lstm_92/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    \
backward_lstm_92/ShapeShapeinputs_0*
T0*
_output_shapes
::ь¤n
$backward_lstm_92/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&backward_lstm_92/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&backward_lstm_92/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:д
backward_lstm_92/strided_sliceStridedSlicebackward_lstm_92/Shape:output:0-backward_lstm_92/strided_slice/stack:output:0/backward_lstm_92/strided_slice/stack_1:output:0/backward_lstm_92/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
backward_lstm_92/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :д
backward_lstm_92/zeros/packedPack'backward_lstm_92/strided_slice:output:0(backward_lstm_92/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:a
backward_lstm_92/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ъ
backward_lstm_92/zerosFill&backward_lstm_92/zeros/packed:output:0%backward_lstm_92/zeros/Const:output:0*
T0*'
_output_shapes
:         c
!backward_lstm_92/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ф
backward_lstm_92/zeros_1/packedPack'backward_lstm_92/strided_slice:output:0*backward_lstm_92/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:c
backward_lstm_92/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ц
backward_lstm_92/zeros_1Fill(backward_lstm_92/zeros_1/packed:output:0'backward_lstm_92/zeros_1/Const:output:0*
T0*'
_output_shapes
:         t
backward_lstm_92/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Б
backward_lstm_92/transpose	Transposeinputs_0(backward_lstm_92/transpose/perm:output:0*
T0*=
_output_shapes+
):'                           t
backward_lstm_92/Shape_1Shapebackward_lstm_92/transpose:y:0*
T0*
_output_shapes
::ь¤p
&backward_lstm_92/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_92/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(backward_lstm_92/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:░
 backward_lstm_92/strided_slice_1StridedSlice!backward_lstm_92/Shape_1:output:0/backward_lstm_92/strided_slice_1/stack:output:01backward_lstm_92/strided_slice_1/stack_1:output:01backward_lstm_92/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskw
,backward_lstm_92/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         у
backward_lstm_92/TensorArrayV2TensorListReserve5backward_lstm_92/TensorArrayV2/element_shape:output:0)backward_lstm_92/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмi
backward_lstm_92/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: ╣
backward_lstm_92/ReverseV2	ReverseV2backward_lstm_92/transpose:y:0(backward_lstm_92/ReverseV2/axis:output:0*
T0*=
_output_shapes+
):'                           Ќ
Fbackward_lstm_92/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        ў
8backward_lstm_92/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#backward_lstm_92/ReverseV2:output:0Obackward_lstm_92/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмp
&backward_lstm_92/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_92/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(backward_lstm_92/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:К
 backward_lstm_92/strided_slice_2StridedSlicebackward_lstm_92/transpose:y:0/backward_lstm_92/strided_slice_2/stack:output:01backward_lstm_92/strided_slice_2/stack_1:output:01backward_lstm_92/strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:                  *
shrink_axis_maskф
0backward_lstm_92/lstm_cell/MatMul/ReadVariableOpReadVariableOp9backward_lstm_92_lstm_cell_matmul_readvariableop_resource*
_output_shapes

: *
dtype0┬
!backward_lstm_92/lstm_cell/MatMulMatMul)backward_lstm_92/strided_slice_2:output:08backward_lstm_92/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          «
2backward_lstm_92/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp;backward_lstm_92_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0╝
#backward_lstm_92/lstm_cell/MatMul_1MatMulbackward_lstm_92/zeros:output:0:backward_lstm_92/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          х
backward_lstm_92/lstm_cell/addAddV2+backward_lstm_92/lstm_cell/MatMul:product:0-backward_lstm_92/lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:          е
1backward_lstm_92/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp:backward_lstm_92_lstm_cell_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Й
"backward_lstm_92/lstm_cell/BiasAddBiasAdd"backward_lstm_92/lstm_cell/add:z:09backward_lstm_92/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          l
*backward_lstm_92/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Є
 backward_lstm_92/lstm_cell/splitSplit3backward_lstm_92/lstm_cell/split/split_dim:output:0+backward_lstm_92/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitі
"backward_lstm_92/lstm_cell/SigmoidSigmoid)backward_lstm_92/lstm_cell/split:output:0*
T0*'
_output_shapes
:         ї
$backward_lstm_92/lstm_cell/Sigmoid_1Sigmoid)backward_lstm_92/lstm_cell/split:output:1*
T0*'
_output_shapes
:         ц
backward_lstm_92/lstm_cell/mulMul(backward_lstm_92/lstm_cell/Sigmoid_1:y:0!backward_lstm_92/zeros_1:output:0*
T0*'
_output_shapes
:         ё
backward_lstm_92/lstm_cell/ReluRelu)backward_lstm_92/lstm_cell/split:output:2*
T0*'
_output_shapes
:         ░
 backward_lstm_92/lstm_cell/mul_1Mul&backward_lstm_92/lstm_cell/Sigmoid:y:0-backward_lstm_92/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:         Ц
 backward_lstm_92/lstm_cell/add_1AddV2"backward_lstm_92/lstm_cell/mul:z:0$backward_lstm_92/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:         ї
$backward_lstm_92/lstm_cell/Sigmoid_2Sigmoid)backward_lstm_92/lstm_cell/split:output:3*
T0*'
_output_shapes
:         Ђ
!backward_lstm_92/lstm_cell/Relu_1Relu$backward_lstm_92/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:         ┤
 backward_lstm_92/lstm_cell/mul_2Mul(backward_lstm_92/lstm_cell/Sigmoid_2:y:0/backward_lstm_92/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:         
.backward_lstm_92/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       в
 backward_lstm_92/TensorArrayV2_1TensorListReserve7backward_lstm_92/TensorArrayV2_1/element_shape:output:0)backward_lstm_92/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмW
backward_lstm_92/timeConst*
_output_shapes
: *
dtype0*
value	B : t
)backward_lstm_92/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         e
#backward_lstm_92/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ╬
backward_lstm_92/whileWhile,backward_lstm_92/while/loop_counter:output:02backward_lstm_92/while/maximum_iterations:output:0backward_lstm_92/time:output:0)backward_lstm_92/TensorArrayV2_1:handle:0backward_lstm_92/zeros:output:0!backward_lstm_92/zeros_1:output:0)backward_lstm_92/strided_slice_1:output:0Hbackward_lstm_92/TensorArrayUnstack/TensorListFromTensor:output_handle:09backward_lstm_92_lstm_cell_matmul_readvariableop_resource;backward_lstm_92_lstm_cell_matmul_1_readvariableop_resource:backward_lstm_92_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*0
body(R&
$backward_lstm_92_while_body_28636719*0
cond(R&
$backward_lstm_92_while_cond_28636718*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations њ
Abackward_lstm_92/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ■
3backward_lstm_92/TensorArrayV2Stack/TensorListStackTensorListStackbackward_lstm_92/while:output:3Jbackward_lstm_92/TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  *
element_dtype0y
&backward_lstm_92/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         r
(backward_lstm_92/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_92/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:▄
 backward_lstm_92/strided_slice_3StridedSlice<backward_lstm_92/TensorArrayV2Stack/TensorListStack:tensor:0/backward_lstm_92/strided_slice_3/stack:output:01backward_lstm_92/strided_slice_3/stack_1:output:01backward_lstm_92/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskv
!backward_lstm_92/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          м
backward_lstm_92/transpose_1	Transpose<backward_lstm_92/TensorArrayV2Stack/TensorListStack:tensor:0*backward_lstm_92/transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  l
backward_lstm_92/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    X
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:љ
	ReverseV2	ReverseV2 backward_lstm_92/transpose_1:y:0ReverseV2/axis:output:0*
T0*4
_output_shapes"
 :                  M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Ц
concatConcatV2forward_lstm_92/transpose_1:y:0ReverseV2:output:0concat/axis:output:0*
N*
T0*4
_output_shapes"
 :                  k
IdentityIdentityconcat:output:0^NoOp*
T0*4
_output_shapes"
 :                  ѕ
NoOpNoOp2^backward_lstm_92/lstm_cell/BiasAdd/ReadVariableOp1^backward_lstm_92/lstm_cell/MatMul/ReadVariableOp3^backward_lstm_92/lstm_cell/MatMul_1/ReadVariableOp^backward_lstm_92/while1^forward_lstm_92/lstm_cell/BiasAdd/ReadVariableOp0^forward_lstm_92/lstm_cell/MatMul/ReadVariableOp2^forward_lstm_92/lstm_cell/MatMul_1/ReadVariableOp^forward_lstm_92/while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:'                           : : : : : : 2f
1backward_lstm_92/lstm_cell/BiasAdd/ReadVariableOp1backward_lstm_92/lstm_cell/BiasAdd/ReadVariableOp2d
0backward_lstm_92/lstm_cell/MatMul/ReadVariableOp0backward_lstm_92/lstm_cell/MatMul/ReadVariableOp2h
2backward_lstm_92/lstm_cell/MatMul_1/ReadVariableOp2backward_lstm_92/lstm_cell/MatMul_1/ReadVariableOp20
backward_lstm_92/whilebackward_lstm_92/while2d
0forward_lstm_92/lstm_cell/BiasAdd/ReadVariableOp0forward_lstm_92/lstm_cell/BiasAdd/ReadVariableOp2b
/forward_lstm_92/lstm_cell/MatMul/ReadVariableOp/forward_lstm_92/lstm_cell/MatMul/ReadVariableOp2f
1forward_lstm_92/lstm_cell/MatMul_1/ReadVariableOp1forward_lstm_92/lstm_cell/MatMul_1/ReadVariableOp2.
forward_lstm_92/whileforward_lstm_92/while:g c
=
_output_shapes+
):'                           
"
_user_specified_name
inputs_0:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
к

љ
3__inference_bidirectional_92_layer_call_fn_28636519

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: 
identityѕбStatefulPartitionedCallњ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
:*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8ѓ *W
fRRP
N__inference_bidirectional_92_layer_call_and_return_conditional_losses_28636101j
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*"
_output_shapes
:<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*-
_input_shapes
:: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:J F
"
_output_shapes
:
 
_user_specified_nameinputs:($
"
_user_specified_name
28636505:($
"
_user_specified_name
28636507:($
"
_user_specified_name
28636509:($
"
_user_specified_name
28636511:($
"
_user_specified_name
28636513:($
"
_user_specified_name
28636515
И
А
$backward_lstm_92_while_cond_28637294>
:backward_lstm_92_while_backward_lstm_92_while_loop_counterD
@backward_lstm_92_while_backward_lstm_92_while_maximum_iterations&
"backward_lstm_92_while_placeholder(
$backward_lstm_92_while_placeholder_1(
$backward_lstm_92_while_placeholder_2(
$backward_lstm_92_while_placeholder_3@
<backward_lstm_92_while_less_backward_lstm_92_strided_slice_1X
Tbackward_lstm_92_while_backward_lstm_92_while_cond_28637294___redundant_placeholder0X
Tbackward_lstm_92_while_backward_lstm_92_while_cond_28637294___redundant_placeholder1X
Tbackward_lstm_92_while_backward_lstm_92_while_cond_28637294___redundant_placeholder2X
Tbackward_lstm_92_while_backward_lstm_92_while_cond_28637294___redundant_placeholder3#
backward_lstm_92_while_identity
д
backward_lstm_92/while/LessLess"backward_lstm_92_while_placeholder<backward_lstm_92_while_less_backward_lstm_92_strided_slice_1*
T0*
_output_shapes
: m
backward_lstm_92/while/IdentityIdentitybackward_lstm_92/while/Less:z:0*
T0
*
_output_shapes
: "K
backward_lstm_92_while_identity(backward_lstm_92/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : ::: :::::[ W

_output_shapes
: 
=
_user_specified_name%#backward_lstm_92/while/loop_counter:a]

_output_shapes
: 
C
_user_specified_name+)backward_lstm_92/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

::$ 

_output_shapes

::XT

_output_shapes
: 
:
_user_specified_name" backward_lstm_92/strided_slice_1:

_output_shapes
:
Ь
s
G__inference_lambda_98_layer_call_and_return_conditional_losses_28636445
inputs_0
inputs_1
identity~
einsum/EinsumEinsuminputs_0inputs_1*
N*
T0*"
_output_shapes
:*
equationabcd,ace->acdY
IdentityIdentityeinsum/Einsum:output:0*
T0*"
_output_shapes
:"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :::P L
&
_output_shapes
:
"
_user_specified_name
inputs_0:LH
"
_output_shapes
:
"
_user_specified_name
inputs_1
П8
є
M__inference_forward_lstm_92_layer_call_and_return_conditional_losses_28634091

inputs$
lstm_cell_28634009: $
lstm_cell_28634011:  
lstm_cell_28634013: 
identityѕб!lstm_cell/StatefulPartitionedCallбwhileI
ShapeShapeinputs*
T0*
_output_shapes
::ь¤]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::ь¤_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskЬ
!lstm_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_28634009lstm_cell_28634011lstm_cell_28634013*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         :         :         *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_lstm_cell_layer_call_and_return_conditional_losses_28634008n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Џ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_28634009lstm_cell_28634011lstm_cell_28634013*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_28634022*
condR
while_cond_28634021*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                  N
NoOpNoOp"^lstm_cell/StatefulPartitionedCall^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2F
!lstm_cell/StatefulPartitionedCall!lstm_cell/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs:($
"
_user_specified_name
28634009:($
"
_user_specified_name
28634011:($
"
_user_specified_name
28634013
й
Ї
#forward_lstm_92_while_cond_28636865<
8forward_lstm_92_while_forward_lstm_92_while_loop_counterB
>forward_lstm_92_while_forward_lstm_92_while_maximum_iterations%
!forward_lstm_92_while_placeholder'
#forward_lstm_92_while_placeholder_1'
#forward_lstm_92_while_placeholder_2'
#forward_lstm_92_while_placeholder_3>
:forward_lstm_92_while_less_forward_lstm_92_strided_slice_1V
Rforward_lstm_92_while_forward_lstm_92_while_cond_28636865___redundant_placeholder0V
Rforward_lstm_92_while_forward_lstm_92_while_cond_28636865___redundant_placeholder1V
Rforward_lstm_92_while_forward_lstm_92_while_cond_28636865___redundant_placeholder2V
Rforward_lstm_92_while_forward_lstm_92_while_cond_28636865___redundant_placeholder3"
forward_lstm_92_while_identity
б
forward_lstm_92/while/LessLess!forward_lstm_92_while_placeholder:forward_lstm_92_while_less_forward_lstm_92_strided_slice_1*
T0*
_output_shapes
: k
forward_lstm_92/while/IdentityIdentityforward_lstm_92/while/Less:z:0*
T0
*
_output_shapes
: "I
forward_lstm_92_while_identity'forward_lstm_92/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : :::::Z V

_output_shapes
: 
<
_user_specified_name$"forward_lstm_92/while/loop_counter:`\

_output_shapes
: 
B
_user_specified_name*(forward_lstm_92/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :WS

_output_shapes
: 
9
_user_specified_name!forward_lstm_92/strided_slice_1:

_output_shapes
:
╠	
═
while_cond_28634702
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_16
2while_while_cond_28634702___redundant_placeholder06
2while_while_cond_28634702___redundant_placeholder16
2while_while_cond_28634702___redundant_placeholder26
2while_while_cond_28634702___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
Н
┼
N__inference_bidirectional_92_layer_call_and_return_conditional_losses_28634952

inputs*
forward_lstm_92_28634788: *
forward_lstm_92_28634790: &
forward_lstm_92_28634792: +
backward_lstm_92_28634940: +
backward_lstm_92_28634942: '
backward_lstm_92_28634944: 
identityѕб(backward_lstm_92/StatefulPartitionedCallб'forward_lstm_92/StatefulPartitionedCall╗
'forward_lstm_92/StatefulPartitionedCallStatefulPartitionedCallinputsforward_lstm_92_28634788forward_lstm_92_28634790forward_lstm_92_28634792*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *V
fQRO
M__inference_forward_lstm_92_layer_call_and_return_conditional_losses_28634787└
(backward_lstm_92/StatefulPartitionedCallStatefulPartitionedCallinputsbackward_lstm_92_28634940backward_lstm_92_28634942backward_lstm_92_28634944*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *W
fRRP
N__inference_backward_lstm_92_layer_call_and_return_conditional_losses_28634939X
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:А
	ReverseV2	ReverseV21backward_lstm_92/StatefulPartitionedCall:output:0ReverseV2/axis:output:0*
T0*4
_output_shapes"
 :                  M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Х
concatConcatV20forward_lstm_92/StatefulPartitionedCall:output:0ReverseV2:output:0concat/axis:output:0*
N*
T0*4
_output_shapes"
 :                  k
IdentityIdentityconcat:output:0^NoOp*
T0*4
_output_shapes"
 :                  w
NoOpNoOp)^backward_lstm_92/StatefulPartitionedCall(^forward_lstm_92/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:'                           : : : : : : 2T
(backward_lstm_92/StatefulPartitionedCall(backward_lstm_92/StatefulPartitionedCall2R
'forward_lstm_92/StatefulPartitionedCall'forward_lstm_92/StatefulPartitionedCall:e a
=
_output_shapes+
):'                           
 
_user_specified_nameinputs:($
"
_user_specified_name
28634788:($
"
_user_specified_name
28634790:($
"
_user_specified_name
28634792:($
"
_user_specified_name
28634940:($
"
_user_specified_name
28634942:($
"
_user_specified_name
28634944
С$
о
while_body_28634517
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0,
while_lstm_cell_28634541_0: ,
while_lstm_cell_28634543_0: (
while_lstm_cell_28634545_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor*
while_lstm_cell_28634541: *
while_lstm_cell_28634543: &
while_lstm_cell_28634545: ѕб'while/lstm_cell/StatefulPartitionedCallѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0г
'while/lstm_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_28634541_0while_lstm_cell_28634543_0while_lstm_cell_28634545_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         :         :         *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_lstm_cell_layer_call_and_return_conditional_losses_28634503┘
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder0while/lstm_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: Ї
while/Identity_4Identity0while/lstm_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         Ї
while/Identity_5Identity0while/lstm_cell/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:         R

while/NoOpNoOp(^while/lstm_cell/StatefulPartitionedCall*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"6
while_lstm_cell_28634541while_lstm_cell_28634541_0"6
while_lstm_cell_28634543while_lstm_cell_28634543_0"6
while_lstm_cell_28634545while_lstm_cell_28634545_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2R
'while/lstm_cell/StatefulPartitionedCall'while/lstm_cell/StatefulPartitionedCall:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
28634541:(	$
"
_user_specified_name
28634543:(
$
"
_user_specified_name
28634545
╝:
Є
N__inference_backward_lstm_92_layer_call_and_return_conditional_losses_28634439

inputs$
lstm_cell_28634357: $
lstm_cell_28634359:  
lstm_cell_28634361: 
identityѕб!lstm_cell/StatefulPartitionedCallбwhileI
ShapeShapeinputs*
T0*
_output_shapes
::ь¤]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::ь¤_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмX
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: }
	ReverseV2	ReverseV2transpose:y:0ReverseV2/axis:output:0*
T0*4
_output_shapes"
 :                  є
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       т
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensorReverseV2:output:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskЬ
!lstm_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_28634357lstm_cell_28634359lstm_cell_28634361*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         :         :         *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_lstm_cell_layer_call_and_return_conditional_losses_28634356n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Џ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_28634357lstm_cell_28634359lstm_cell_28634361*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_28634370*
condR
while_cond_28634369*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                  N
NoOpNoOp"^lstm_cell/StatefulPartitionedCall^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2F
!lstm_cell/StatefulPartitionedCall!lstm_cell/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs:($
"
_user_specified_name
28634357:($
"
_user_specified_name
28634359:($
"
_user_specified_name
28634361
╠	
═
while_cond_28638753
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_16
2while_while_cond_28638753___redundant_placeholder06
2while_while_cond_28638753___redundant_placeholder16
2while_while_cond_28638753___redundant_placeholder26
2while_while_cond_28638753___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
╠	
═
while_cond_28634369
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_16
2while_while_cond_28634369___redundant_placeholder06
2while_while_cond_28634369___redundant_placeholder16
2while_while_cond_28634369___redundant_placeholder26
2while_while_cond_28634369___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
└
Ы
,__inference_lstm_cell_layer_call_fn_28639243

inputs
states_0
states_1
unknown: 
	unknown_0: 
	unknown_1: 
identity

identity_1

identity_2ѕбStatefulPartitionedCallД
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         :         :         *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_lstm_cell_layer_call_and_return_conditional_losses_28634356o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:         q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :         :         : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:QM
'
_output_shapes
:         
"
_user_specified_name
states_0:QM
'
_output_shapes
:         
"
_user_specified_name
states_1:($
"
_user_specified_name
28639231:($
"
_user_specified_name
28639233:($
"
_user_specified_name
28639235
Г
Д
1__inference_sequential_397_layer_call_fn_28633785
dense_582_input
unknown:
	unknown_0:
identityѕбStatefulPartitionedCallЬ
StatefulPartitionedCallStatefulPartitionedCalldense_582_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *U
fPRN
L__inference_sequential_397_layer_call_and_return_conditional_losses_28633767s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
+
_output_shapes
:         
)
_user_specified_namedense_582_input:($
"
_user_specified_name
28633779:($
"
_user_specified_name
28633781
й╣
ю
N__inference_bidirectional_92_layer_call_and_return_conditional_losses_28637671

inputsJ
8forward_lstm_92_lstm_cell_matmul_readvariableop_resource: L
:forward_lstm_92_lstm_cell_matmul_1_readvariableop_resource: G
9forward_lstm_92_lstm_cell_biasadd_readvariableop_resource: K
9backward_lstm_92_lstm_cell_matmul_readvariableop_resource: M
;backward_lstm_92_lstm_cell_matmul_1_readvariableop_resource: H
:backward_lstm_92_lstm_cell_biasadd_readvariableop_resource: 
identityѕб1backward_lstm_92/lstm_cell/BiasAdd/ReadVariableOpб0backward_lstm_92/lstm_cell/MatMul/ReadVariableOpб2backward_lstm_92/lstm_cell/MatMul_1/ReadVariableOpбbackward_lstm_92/whileб0forward_lstm_92/lstm_cell/BiasAdd/ReadVariableOpб/forward_lstm_92/lstm_cell/MatMul/ReadVariableOpб1forward_lstm_92/lstm_cell/MatMul_1/ReadVariableOpбforward_lstm_92/whilej
forward_lstm_92/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         m
#forward_lstm_92/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%forward_lstm_92/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%forward_lstm_92/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:А
forward_lstm_92/strided_sliceStridedSliceforward_lstm_92/Shape:output:0,forward_lstm_92/strided_slice/stack:output:0.forward_lstm_92/strided_slice/stack_1:output:0.forward_lstm_92/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
forward_lstm_92/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Б
forward_lstm_92/zeros/packedPack&forward_lstm_92/strided_slice:output:0'forward_lstm_92/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:`
forward_lstm_92/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Њ
forward_lstm_92/zerosFill%forward_lstm_92/zeros/packed:output:0$forward_lstm_92/zeros/Const:output:0*
T0*
_output_shapes

:b
 forward_lstm_92/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Д
forward_lstm_92/zeros_1/packedPack&forward_lstm_92/strided_slice:output:0)forward_lstm_92/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:b
forward_lstm_92/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ў
forward_lstm_92/zeros_1Fill'forward_lstm_92/zeros_1/packed:output:0&forward_lstm_92/zeros_1/Const:output:0*
T0*
_output_shapes

:s
forward_lstm_92/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ё
forward_lstm_92/transpose	Transposeinputs'forward_lstm_92/transpose/perm:output:0*
T0*"
_output_shapes
:l
forward_lstm_92/Shape_1Const*
_output_shapes
:*
dtype0*!
valueB"         o
%forward_lstm_92/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_92/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'forward_lstm_92/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ф
forward_lstm_92/strided_slice_1StridedSlice forward_lstm_92/Shape_1:output:0.forward_lstm_92/strided_slice_1/stack:output:00forward_lstm_92/strided_slice_1/stack_1:output:00forward_lstm_92/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
+forward_lstm_92/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         С
forward_lstm_92/TensorArrayV2TensorListReserve4forward_lstm_92/TensorArrayV2/element_shape:output:0(forward_lstm_92/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмќ
Eforward_lstm_92/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      љ
7forward_lstm_92/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorforward_lstm_92/transpose:y:0Nforward_lstm_92/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмo
%forward_lstm_92/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_92/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'forward_lstm_92/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:░
forward_lstm_92/strided_slice_2StridedSliceforward_lstm_92/transpose:y:0.forward_lstm_92/strided_slice_2/stack:output:00forward_lstm_92/strided_slice_2/stack_1:output:00forward_lstm_92/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_maskе
/forward_lstm_92/lstm_cell/MatMul/ReadVariableOpReadVariableOp8forward_lstm_92_lstm_cell_matmul_readvariableop_resource*
_output_shapes

: *
dtype0Х
 forward_lstm_92/lstm_cell/MatMulMatMul(forward_lstm_92/strided_slice_2:output:07forward_lstm_92/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

: г
1forward_lstm_92/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp:forward_lstm_92_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0░
"forward_lstm_92/lstm_cell/MatMul_1MatMulforward_lstm_92/zeros:output:09forward_lstm_92/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes

: Е
forward_lstm_92/lstm_cell/addAddV2*forward_lstm_92/lstm_cell/MatMul:product:0,forward_lstm_92/lstm_cell/MatMul_1:product:0*
T0*
_output_shapes

: д
0forward_lstm_92/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp9forward_lstm_92_lstm_cell_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0▓
!forward_lstm_92/lstm_cell/BiasAddBiasAdd!forward_lstm_92/lstm_cell/add:z:08forward_lstm_92/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

: k
)forward_lstm_92/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
forward_lstm_92/lstm_cell/splitSplit2forward_lstm_92/lstm_cell/split/split_dim:output:0*forward_lstm_92/lstm_cell/BiasAdd:output:0*
T0*<
_output_shapes*
(::::*
	num_split
!forward_lstm_92/lstm_cell/SigmoidSigmoid(forward_lstm_92/lstm_cell/split:output:0*
T0*
_output_shapes

:Ђ
#forward_lstm_92/lstm_cell/Sigmoid_1Sigmoid(forward_lstm_92/lstm_cell/split:output:1*
T0*
_output_shapes

:ў
forward_lstm_92/lstm_cell/mulMul'forward_lstm_92/lstm_cell/Sigmoid_1:y:0 forward_lstm_92/zeros_1:output:0*
T0*
_output_shapes

:y
forward_lstm_92/lstm_cell/ReluRelu(forward_lstm_92/lstm_cell/split:output:2*
T0*
_output_shapes

:ц
forward_lstm_92/lstm_cell/mul_1Mul%forward_lstm_92/lstm_cell/Sigmoid:y:0,forward_lstm_92/lstm_cell/Relu:activations:0*
T0*
_output_shapes

:Ў
forward_lstm_92/lstm_cell/add_1AddV2!forward_lstm_92/lstm_cell/mul:z:0#forward_lstm_92/lstm_cell/mul_1:z:0*
T0*
_output_shapes

:Ђ
#forward_lstm_92/lstm_cell/Sigmoid_2Sigmoid(forward_lstm_92/lstm_cell/split:output:3*
T0*
_output_shapes

:v
 forward_lstm_92/lstm_cell/Relu_1Relu#forward_lstm_92/lstm_cell/add_1:z:0*
T0*
_output_shapes

:е
forward_lstm_92/lstm_cell/mul_2Mul'forward_lstm_92/lstm_cell/Sigmoid_2:y:0.forward_lstm_92/lstm_cell/Relu_1:activations:0*
T0*
_output_shapes

:~
-forward_lstm_92/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      У
forward_lstm_92/TensorArrayV2_1TensorListReserve6forward_lstm_92/TensorArrayV2_1/element_shape:output:0(forward_lstm_92/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмV
forward_lstm_92/timeConst*
_output_shapes
: *
dtype0*
value	B : s
(forward_lstm_92/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         d
"forward_lstm_92/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ю
forward_lstm_92/whileWhile+forward_lstm_92/while/loop_counter:output:01forward_lstm_92/while/maximum_iterations:output:0forward_lstm_92/time:output:0(forward_lstm_92/TensorArrayV2_1:handle:0forward_lstm_92/zeros:output:0 forward_lstm_92/zeros_1:output:0(forward_lstm_92/strided_slice_1:output:0Gforward_lstm_92/TensorArrayUnstack/TensorListFromTensor:output_handle:08forward_lstm_92_lstm_cell_matmul_readvariableop_resource:forward_lstm_92_lstm_cell_matmul_1_readvariableop_resource9forward_lstm_92_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*:
_output_shapes(
&: : : : ::: : : : : *%
_read_only_resource_inputs
	
*/
body'R%
#forward_lstm_92_while_body_28637442*/
cond'R%
#forward_lstm_92_while_cond_28637441*9
output_shapes(
&: : : : ::: : : : : *
parallel_iterations Љ
@forward_lstm_92/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      ж
2forward_lstm_92/TensorArrayV2Stack/TensorListStackTensorListStackforward_lstm_92/while:output:3Iforward_lstm_92/TensorArrayV2Stack/TensorListStack/element_shape:output:0*"
_output_shapes
:*
element_dtype0x
%forward_lstm_92/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         q
'forward_lstm_92/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_92/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╬
forward_lstm_92/strided_slice_3StridedSlice;forward_lstm_92/TensorArrayV2Stack/TensorListStack:tensor:0.forward_lstm_92/strided_slice_3/stack:output:00forward_lstm_92/strided_slice_3/stack_1:output:00forward_lstm_92/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_masku
 forward_lstm_92/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          й
forward_lstm_92/transpose_1	Transpose;forward_lstm_92/TensorArrayV2Stack/TensorListStack:tensor:0)forward_lstm_92/transpose_1/perm:output:0*
T0*"
_output_shapes
:k
forward_lstm_92/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
backward_lstm_92/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         n
$backward_lstm_92/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&backward_lstm_92/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&backward_lstm_92/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:д
backward_lstm_92/strided_sliceStridedSlicebackward_lstm_92/Shape:output:0-backward_lstm_92/strided_slice/stack:output:0/backward_lstm_92/strided_slice/stack_1:output:0/backward_lstm_92/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
backward_lstm_92/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :д
backward_lstm_92/zeros/packedPack'backward_lstm_92/strided_slice:output:0(backward_lstm_92/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:a
backward_lstm_92/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ќ
backward_lstm_92/zerosFill&backward_lstm_92/zeros/packed:output:0%backward_lstm_92/zeros/Const:output:0*
T0*
_output_shapes

:c
!backward_lstm_92/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ф
backward_lstm_92/zeros_1/packedPack'backward_lstm_92/strided_slice:output:0*backward_lstm_92/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:c
backward_lstm_92/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ю
backward_lstm_92/zeros_1Fill(backward_lstm_92/zeros_1/packed:output:0'backward_lstm_92/zeros_1/Const:output:0*
T0*
_output_shapes

:t
backward_lstm_92/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          є
backward_lstm_92/transpose	Transposeinputs(backward_lstm_92/transpose/perm:output:0*
T0*"
_output_shapes
:m
backward_lstm_92/Shape_1Const*
_output_shapes
:*
dtype0*!
valueB"         p
&backward_lstm_92/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_92/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(backward_lstm_92/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:░
 backward_lstm_92/strided_slice_1StridedSlice!backward_lstm_92/Shape_1:output:0/backward_lstm_92/strided_slice_1/stack:output:01backward_lstm_92/strided_slice_1/stack_1:output:01backward_lstm_92/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskw
,backward_lstm_92/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         у
backward_lstm_92/TensorArrayV2TensorListReserve5backward_lstm_92/TensorArrayV2/element_shape:output:0)backward_lstm_92/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмi
backward_lstm_92/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: ъ
backward_lstm_92/ReverseV2	ReverseV2backward_lstm_92/transpose:y:0(backward_lstm_92/ReverseV2/axis:output:0*
T0*"
_output_shapes
:Ќ
Fbackward_lstm_92/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      ў
8backward_lstm_92/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#backward_lstm_92/ReverseV2:output:0Obackward_lstm_92/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмp
&backward_lstm_92/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_92/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(backward_lstm_92/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:х
 backward_lstm_92/strided_slice_2StridedSlicebackward_lstm_92/transpose:y:0/backward_lstm_92/strided_slice_2/stack:output:01backward_lstm_92/strided_slice_2/stack_1:output:01backward_lstm_92/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_maskф
0backward_lstm_92/lstm_cell/MatMul/ReadVariableOpReadVariableOp9backward_lstm_92_lstm_cell_matmul_readvariableop_resource*
_output_shapes

: *
dtype0╣
!backward_lstm_92/lstm_cell/MatMulMatMul)backward_lstm_92/strided_slice_2:output:08backward_lstm_92/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

: «
2backward_lstm_92/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp;backward_lstm_92_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0│
#backward_lstm_92/lstm_cell/MatMul_1MatMulbackward_lstm_92/zeros:output:0:backward_lstm_92/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes

: г
backward_lstm_92/lstm_cell/addAddV2+backward_lstm_92/lstm_cell/MatMul:product:0-backward_lstm_92/lstm_cell/MatMul_1:product:0*
T0*
_output_shapes

: е
1backward_lstm_92/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp:backward_lstm_92_lstm_cell_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0х
"backward_lstm_92/lstm_cell/BiasAddBiasAdd"backward_lstm_92/lstm_cell/add:z:09backward_lstm_92/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

: l
*backward_lstm_92/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :с
 backward_lstm_92/lstm_cell/splitSplit3backward_lstm_92/lstm_cell/split/split_dim:output:0+backward_lstm_92/lstm_cell/BiasAdd:output:0*
T0*<
_output_shapes*
(::::*
	num_splitЂ
"backward_lstm_92/lstm_cell/SigmoidSigmoid)backward_lstm_92/lstm_cell/split:output:0*
T0*
_output_shapes

:Ѓ
$backward_lstm_92/lstm_cell/Sigmoid_1Sigmoid)backward_lstm_92/lstm_cell/split:output:1*
T0*
_output_shapes

:Џ
backward_lstm_92/lstm_cell/mulMul(backward_lstm_92/lstm_cell/Sigmoid_1:y:0!backward_lstm_92/zeros_1:output:0*
T0*
_output_shapes

:{
backward_lstm_92/lstm_cell/ReluRelu)backward_lstm_92/lstm_cell/split:output:2*
T0*
_output_shapes

:Д
 backward_lstm_92/lstm_cell/mul_1Mul&backward_lstm_92/lstm_cell/Sigmoid:y:0-backward_lstm_92/lstm_cell/Relu:activations:0*
T0*
_output_shapes

:ю
 backward_lstm_92/lstm_cell/add_1AddV2"backward_lstm_92/lstm_cell/mul:z:0$backward_lstm_92/lstm_cell/mul_1:z:0*
T0*
_output_shapes

:Ѓ
$backward_lstm_92/lstm_cell/Sigmoid_2Sigmoid)backward_lstm_92/lstm_cell/split:output:3*
T0*
_output_shapes

:x
!backward_lstm_92/lstm_cell/Relu_1Relu$backward_lstm_92/lstm_cell/add_1:z:0*
T0*
_output_shapes

:Ф
 backward_lstm_92/lstm_cell/mul_2Mul(backward_lstm_92/lstm_cell/Sigmoid_2:y:0/backward_lstm_92/lstm_cell/Relu_1:activations:0*
T0*
_output_shapes

:
.backward_lstm_92/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      в
 backward_lstm_92/TensorArrayV2_1TensorListReserve7backward_lstm_92/TensorArrayV2_1/element_shape:output:0)backward_lstm_92/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмW
backward_lstm_92/timeConst*
_output_shapes
: *
dtype0*
value	B : t
)backward_lstm_92/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         e
#backward_lstm_92/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ф
backward_lstm_92/whileWhile,backward_lstm_92/while/loop_counter:output:02backward_lstm_92/while/maximum_iterations:output:0backward_lstm_92/time:output:0)backward_lstm_92/TensorArrayV2_1:handle:0backward_lstm_92/zeros:output:0!backward_lstm_92/zeros_1:output:0)backward_lstm_92/strided_slice_1:output:0Hbackward_lstm_92/TensorArrayUnstack/TensorListFromTensor:output_handle:09backward_lstm_92_lstm_cell_matmul_readvariableop_resource;backward_lstm_92_lstm_cell_matmul_1_readvariableop_resource:backward_lstm_92_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*:
_output_shapes(
&: : : : ::: : : : : *%
_read_only_resource_inputs
	
*0
body(R&
$backward_lstm_92_while_body_28637583*0
cond(R&
$backward_lstm_92_while_cond_28637582*9
output_shapes(
&: : : : ::: : : : : *
parallel_iterations њ
Abackward_lstm_92/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      В
3backward_lstm_92/TensorArrayV2Stack/TensorListStackTensorListStackbackward_lstm_92/while:output:3Jbackward_lstm_92/TensorArrayV2Stack/TensorListStack/element_shape:output:0*"
_output_shapes
:*
element_dtype0y
&backward_lstm_92/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         r
(backward_lstm_92/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_92/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:М
 backward_lstm_92/strided_slice_3StridedSlice<backward_lstm_92/TensorArrayV2Stack/TensorListStack:tensor:0/backward_lstm_92/strided_slice_3/stack:output:01backward_lstm_92/strided_slice_3/stack_1:output:01backward_lstm_92/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_maskv
!backward_lstm_92/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          └
backward_lstm_92/transpose_1	Transpose<backward_lstm_92/TensorArrayV2Stack/TensorListStack:tensor:0*backward_lstm_92/transpose_1/perm:output:0*
T0*"
_output_shapes
:l
backward_lstm_92/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    X
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:~
	ReverseV2	ReverseV2 backward_lstm_92/transpose_1:y:0ReverseV2/axis:output:0*
T0*"
_output_shapes
:M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Њ
concatConcatV2forward_lstm_92/transpose_1:y:0ReverseV2:output:0concat/axis:output:0*
N*
T0*"
_output_shapes
:Y
IdentityIdentityconcat:output:0^NoOp*
T0*"
_output_shapes
:ѕ
NoOpNoOp2^backward_lstm_92/lstm_cell/BiasAdd/ReadVariableOp1^backward_lstm_92/lstm_cell/MatMul/ReadVariableOp3^backward_lstm_92/lstm_cell/MatMul_1/ReadVariableOp^backward_lstm_92/while1^forward_lstm_92/lstm_cell/BiasAdd/ReadVariableOp0^forward_lstm_92/lstm_cell/MatMul/ReadVariableOp2^forward_lstm_92/lstm_cell/MatMul_1/ReadVariableOp^forward_lstm_92/while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*-
_input_shapes
:: : : : : : 2f
1backward_lstm_92/lstm_cell/BiasAdd/ReadVariableOp1backward_lstm_92/lstm_cell/BiasAdd/ReadVariableOp2d
0backward_lstm_92/lstm_cell/MatMul/ReadVariableOp0backward_lstm_92/lstm_cell/MatMul/ReadVariableOp2h
2backward_lstm_92/lstm_cell/MatMul_1/ReadVariableOp2backward_lstm_92/lstm_cell/MatMul_1/ReadVariableOp20
backward_lstm_92/whilebackward_lstm_92/while2d
0forward_lstm_92/lstm_cell/BiasAdd/ReadVariableOp0forward_lstm_92/lstm_cell/BiasAdd/ReadVariableOp2b
/forward_lstm_92/lstm_cell/MatMul/ReadVariableOp/forward_lstm_92/lstm_cell/MatMul/ReadVariableOp2f
1forward_lstm_92/lstm_cell/MatMul_1/ReadVariableOp1forward_lstm_92/lstm_cell/MatMul_1/ReadVariableOp2.
forward_lstm_92/whileforward_lstm_92/while:J F
"
_output_shapes
:
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Т
q
G__inference_lambda_98_layer_call_and_return_conditional_losses_28635812

inputs
inputs_1
identity|
einsum/EinsumEinsuminputsinputs_1*
N*
T0*"
_output_shapes
:*
equationabcd,ace->acdY
IdentityIdentityeinsum/Einsum:output:0*
T0*"
_output_shapes
:"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :::N J
&
_output_shapes
:
 
_user_specified_nameinputs:JF
"
_output_shapes
:
 
_user_specified_nameinputs
Г
Д
1__inference_sequential_407_layer_call_fn_28633937
dense_592_input
unknown:
	unknown_0:
identityѕбStatefulPartitionedCallЬ
StatefulPartitionedCallStatefulPartitionedCalldense_592_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *U
fPRN
L__inference_sequential_407_layer_call_and_return_conditional_losses_28633919s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
+
_output_shapes
:         
)
_user_specified_namedense_592_input:($
"
_user_specified_name
28633931:($
"
_user_specified_name
28633933
еJ
љ
M__inference_forward_lstm_92_layer_call_and_return_conditional_losses_28638504

inputs:
(lstm_cell_matmul_readvariableop_resource: <
*lstm_cell_matmul_1_readvariableop_resource: 7
)lstm_cell_biasadd_readvariableop_resource: 
identityѕб lstm_cell/BiasAdd/ReadVariableOpбlstm_cell/MatMul/ReadVariableOpб!lstm_cell/MatMul_1/ReadVariableOpбwhileI
ShapeShapeinputs*
T0*
_output_shapes
::ь¤]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
	transpose	Transposeinputstranspose/perm:output:0*
T0*=
_output_shapes+
):'                           R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::ь¤_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ы
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:                  *
shrink_axis_maskѕ
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes

: *
dtype0Ј
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ї
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0Ѕ
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ѓ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:          є
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0І
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          [
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:         j
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:         q
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         b
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:         }
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:         r
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:         j
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:         _
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:         Ђ
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:         n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Я
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_28638420*
condR
while_cond_28638419*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                  Њ
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'                           : : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:e a
=
_output_shapes+
):'                           
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
╠	
═
while_cond_28638419
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_16
2while_while_cond_28638419___redundant_placeholder06
2while_while_cond_28638419___redundant_placeholder16
2while_while_cond_28638419___redundant_placeholder26
2while_while_cond_28638419___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
к

љ
3__inference_bidirectional_92_layer_call_fn_28636502

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: 
identityѕбStatefulPartitionedCallњ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
:*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8ѓ *W
fRRP
N__inference_bidirectional_92_layer_call_and_return_conditional_losses_28635703j
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*"
_output_shapes
:<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*-
_input_shapes
:: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:J F
"
_output_shapes
:
 
_user_specified_nameinputs:($
"
_user_specified_name
28636488:($
"
_user_specified_name
28636490:($
"
_user_specified_name
28636492:($
"
_user_specified_name
28636494:($
"
_user_specified_name
28636496:($
"
_user_specified_name
28636498
С
■
G__inference_dense_577_layer_call_and_return_conditional_losses_28637768

inputs3
!tensordot_readvariableop_resource:-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбTensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       S
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
::ь¤Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ╗
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ┐
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ю
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:         і
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:                  і
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         [
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Д
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Ѓ
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:         T
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:         e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:         V
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:         
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
С
■
G__inference_dense_582_layer_call_and_return_conditional_losses_28633751

inputs3
!tensordot_readvariableop_resource:-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбTensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       S
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
::ь¤Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ╗
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ┐
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ю
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:         і
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:                  і
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         [
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Д
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Ѓ
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:         T
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:         e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:         V
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:         
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
╠	
═
while_cond_28638898
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_16
2while_while_cond_28638898___redundant_placeholder06
2while_while_cond_28638898___redundant_placeholder16
2while_while_cond_28638898___redundant_placeholder26
2while_while_cond_28638898___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
а	
╝
2__inference_forward_lstm_92_layer_call_fn_28637921

inputs
unknown: 
	unknown_0: 
	unknown_1: 
identityѕбStatefulPartitionedCallЧ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *V
fQRO
M__inference_forward_lstm_92_layer_call_and_return_conditional_losses_28634787|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :                  <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'                           : : : 22
StatefulPartitionedCallStatefulPartitionedCall:e a
=
_output_shapes+
):'                           
 
_user_specified_nameinputs:($
"
_user_specified_name
28637913:($
"
_user_specified_name
28637915:($
"
_user_specified_name
28637917
ћ	
Й
2__inference_forward_lstm_92_layer_call_fn_28637910
inputs_0
unknown: 
	unknown_0: 
	unknown_1: 
identityѕбStatefulPartitionedCall■
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *V
fQRO
M__inference_forward_lstm_92_layer_call_and_return_conditional_losses_28634236|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :                  <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs_0:($
"
_user_specified_name
28637902:($
"
_user_specified_name
28637904:($
"
_user_specified_name
28637906
К
f
H__inference_dropout_92_layer_call_and_return_conditional_losses_28637698

inputs

identity_1I
IdentityIdentityinputs*
T0*"
_output_shapes
:V

Identity_1IdentityIdentity:output:0*
T0*"
_output_shapes
:"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
::J F
"
_output_shapes
:
 
_user_specified_nameinputs
╠	
═
while_cond_28638608
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_16
2while_while_cond_28638608___redundant_placeholder06
2while_while_cond_28638608___redundant_placeholder16
2while_while_cond_28638608___redundant_placeholder26
2while_while_cond_28638608___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
▄
А
$backward_lstm_92_while_cond_28637006>
:backward_lstm_92_while_backward_lstm_92_while_loop_counterD
@backward_lstm_92_while_backward_lstm_92_while_maximum_iterations&
"backward_lstm_92_while_placeholder(
$backward_lstm_92_while_placeholder_1(
$backward_lstm_92_while_placeholder_2(
$backward_lstm_92_while_placeholder_3@
<backward_lstm_92_while_less_backward_lstm_92_strided_slice_1X
Tbackward_lstm_92_while_backward_lstm_92_while_cond_28637006___redundant_placeholder0X
Tbackward_lstm_92_while_backward_lstm_92_while_cond_28637006___redundant_placeholder1X
Tbackward_lstm_92_while_backward_lstm_92_while_cond_28637006___redundant_placeholder2X
Tbackward_lstm_92_while_backward_lstm_92_while_cond_28637006___redundant_placeholder3#
backward_lstm_92_while_identity
д
backward_lstm_92/while/LessLess"backward_lstm_92_while_placeholder<backward_lstm_92_while_less_backward_lstm_92_strided_slice_1*
T0*
_output_shapes
: m
backward_lstm_92/while/IdentityIdentitybackward_lstm_92/while/Less:z:0*
T0
*
_output_shapes
: "K
backward_lstm_92_while_identity(backward_lstm_92/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : :::::[ W

_output_shapes
: 
=
_user_specified_name%#backward_lstm_92/while/loop_counter:a]

_output_shapes
: 
C
_user_specified_name+)backward_lstm_92/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :XT

_output_shapes
: 
:
_user_specified_name" backward_lstm_92/strided_slice_1:

_output_shapes
:
ЉL
Љ
N__inference_backward_lstm_92_layer_call_and_return_conditional_losses_28634939

inputs:
(lstm_cell_matmul_readvariableop_resource: <
*lstm_cell_matmul_1_readvariableop_resource: 7
)lstm_cell_biasadd_readvariableop_resource: 
identityѕб lstm_cell/BiasAdd/ReadVariableOpбlstm_cell/MatMul/ReadVariableOpб!lstm_cell/MatMul_1/ReadVariableOpбwhileI
ShapeShapeinputs*
T0*
_output_shapes
::ь¤]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
	transpose	Transposeinputstranspose/perm:output:0*
T0*=
_output_shapes+
):'                           R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::ь¤_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмX
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: є
	ReverseV2	ReverseV2transpose:y:0ReverseV2/axis:output:0*
T0*=
_output_shapes+
):'                           є
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        т
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensorReverseV2:output:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ы
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:                  *
shrink_axis_maskѕ
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes

: *
dtype0Ј
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ї
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0Ѕ
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ѓ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:          є
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0І
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          [
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:         j
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:         q
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         b
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:         }
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:         r
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:         j
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:         _
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:         Ђ
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:         n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Я
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_28634855*
condR
while_cond_28634854*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                  Њ
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'                           : : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:e a
=
_output_shapes+
):'                           
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
ЉL
Љ
N__inference_backward_lstm_92_layer_call_and_return_conditional_losses_28635249

inputs:
(lstm_cell_matmul_readvariableop_resource: <
*lstm_cell_matmul_1_readvariableop_resource: 7
)lstm_cell_biasadd_readvariableop_resource: 
identityѕб lstm_cell/BiasAdd/ReadVariableOpбlstm_cell/MatMul/ReadVariableOpб!lstm_cell/MatMul_1/ReadVariableOpбwhileI
ShapeShapeinputs*
T0*
_output_shapes
::ь¤]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
	transpose	Transposeinputstranspose/perm:output:0*
T0*=
_output_shapes+
):'                           R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::ь¤_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмX
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: є
	ReverseV2	ReverseV2transpose:y:0ReverseV2/axis:output:0*
T0*=
_output_shapes+
):'                           є
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        т
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensorReverseV2:output:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ы
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:                  *
shrink_axis_maskѕ
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes

: *
dtype0Ј
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ї
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0Ѕ
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ѓ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:          є
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0І
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          [
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:         j
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:         q
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         b
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:         }
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:         r
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:         j
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:         _
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:         Ђ
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:         n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Я
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_28635165*
condR
while_cond_28635164*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                  Њ
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'                           : : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:e a
=
_output_shapes+
):'                           
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
У8
▒
while_body_28635013
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0B
0while_lstm_cell_matmul_readvariableop_resource_0: D
2while_lstm_cell_matmul_1_readvariableop_resource_0: ?
1while_lstm_cell_biasadd_readvariableop_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor@
.while_lstm_cell_matmul_readvariableop_resource: B
0while_lstm_cell_matmul_1_readvariableop_resource: =
/while_lstm_cell_biasadd_readvariableop_resource: ѕб&while/lstm_cell/BiasAdd/ReadVariableOpб%while/lstm_cell/MatMul/ReadVariableOpб'while/lstm_cell/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        »
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:                  *
element_dtype0ќ
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0│
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          џ
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0џ
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ћ
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:          ћ
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0Ю
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Т
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitt
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:         v
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:         ђ
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         n
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:         Ј
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:         ё
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:         v
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:         k
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:         Њ
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:         ┬
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         v
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         Б

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
▄
А
$backward_lstm_92_while_cond_28636718>
:backward_lstm_92_while_backward_lstm_92_while_loop_counterD
@backward_lstm_92_while_backward_lstm_92_while_maximum_iterations&
"backward_lstm_92_while_placeholder(
$backward_lstm_92_while_placeholder_1(
$backward_lstm_92_while_placeholder_2(
$backward_lstm_92_while_placeholder_3@
<backward_lstm_92_while_less_backward_lstm_92_strided_slice_1X
Tbackward_lstm_92_while_backward_lstm_92_while_cond_28636718___redundant_placeholder0X
Tbackward_lstm_92_while_backward_lstm_92_while_cond_28636718___redundant_placeholder1X
Tbackward_lstm_92_while_backward_lstm_92_while_cond_28636718___redundant_placeholder2X
Tbackward_lstm_92_while_backward_lstm_92_while_cond_28636718___redundant_placeholder3#
backward_lstm_92_while_identity
д
backward_lstm_92/while/LessLess"backward_lstm_92_while_placeholder<backward_lstm_92_while_less_backward_lstm_92_strided_slice_1*
T0*
_output_shapes
: m
backward_lstm_92/while/IdentityIdentitybackward_lstm_92/while/Less:z:0*
T0
*
_output_shapes
: "K
backward_lstm_92_while_identity(backward_lstm_92/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : :::::[ W

_output_shapes
: 
=
_user_specified_name%#backward_lstm_92/while/loop_counter:a]

_output_shapes
: 
C
_user_specified_name+)backward_lstm_92/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :XT

_output_shapes
: 
:
_user_specified_name" backward_lstm_92/strided_slice_1:

_output_shapes
:
й╣
ю
N__inference_bidirectional_92_layer_call_and_return_conditional_losses_28635703

inputsJ
8forward_lstm_92_lstm_cell_matmul_readvariableop_resource: L
:forward_lstm_92_lstm_cell_matmul_1_readvariableop_resource: G
9forward_lstm_92_lstm_cell_biasadd_readvariableop_resource: K
9backward_lstm_92_lstm_cell_matmul_readvariableop_resource: M
;backward_lstm_92_lstm_cell_matmul_1_readvariableop_resource: H
:backward_lstm_92_lstm_cell_biasadd_readvariableop_resource: 
identityѕб1backward_lstm_92/lstm_cell/BiasAdd/ReadVariableOpб0backward_lstm_92/lstm_cell/MatMul/ReadVariableOpб2backward_lstm_92/lstm_cell/MatMul_1/ReadVariableOpбbackward_lstm_92/whileб0forward_lstm_92/lstm_cell/BiasAdd/ReadVariableOpб/forward_lstm_92/lstm_cell/MatMul/ReadVariableOpб1forward_lstm_92/lstm_cell/MatMul_1/ReadVariableOpбforward_lstm_92/whilej
forward_lstm_92/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         m
#forward_lstm_92/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%forward_lstm_92/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%forward_lstm_92/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:А
forward_lstm_92/strided_sliceStridedSliceforward_lstm_92/Shape:output:0,forward_lstm_92/strided_slice/stack:output:0.forward_lstm_92/strided_slice/stack_1:output:0.forward_lstm_92/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
forward_lstm_92/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Б
forward_lstm_92/zeros/packedPack&forward_lstm_92/strided_slice:output:0'forward_lstm_92/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:`
forward_lstm_92/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Њ
forward_lstm_92/zerosFill%forward_lstm_92/zeros/packed:output:0$forward_lstm_92/zeros/Const:output:0*
T0*
_output_shapes

:b
 forward_lstm_92/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Д
forward_lstm_92/zeros_1/packedPack&forward_lstm_92/strided_slice:output:0)forward_lstm_92/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:b
forward_lstm_92/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ў
forward_lstm_92/zeros_1Fill'forward_lstm_92/zeros_1/packed:output:0&forward_lstm_92/zeros_1/Const:output:0*
T0*
_output_shapes

:s
forward_lstm_92/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ё
forward_lstm_92/transpose	Transposeinputs'forward_lstm_92/transpose/perm:output:0*
T0*"
_output_shapes
:l
forward_lstm_92/Shape_1Const*
_output_shapes
:*
dtype0*!
valueB"         o
%forward_lstm_92/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_92/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'forward_lstm_92/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ф
forward_lstm_92/strided_slice_1StridedSlice forward_lstm_92/Shape_1:output:0.forward_lstm_92/strided_slice_1/stack:output:00forward_lstm_92/strided_slice_1/stack_1:output:00forward_lstm_92/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
+forward_lstm_92/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         С
forward_lstm_92/TensorArrayV2TensorListReserve4forward_lstm_92/TensorArrayV2/element_shape:output:0(forward_lstm_92/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмќ
Eforward_lstm_92/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      љ
7forward_lstm_92/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorforward_lstm_92/transpose:y:0Nforward_lstm_92/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмo
%forward_lstm_92/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_92/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'forward_lstm_92/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:░
forward_lstm_92/strided_slice_2StridedSliceforward_lstm_92/transpose:y:0.forward_lstm_92/strided_slice_2/stack:output:00forward_lstm_92/strided_slice_2/stack_1:output:00forward_lstm_92/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_maskе
/forward_lstm_92/lstm_cell/MatMul/ReadVariableOpReadVariableOp8forward_lstm_92_lstm_cell_matmul_readvariableop_resource*
_output_shapes

: *
dtype0Х
 forward_lstm_92/lstm_cell/MatMulMatMul(forward_lstm_92/strided_slice_2:output:07forward_lstm_92/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

: г
1forward_lstm_92/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp:forward_lstm_92_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0░
"forward_lstm_92/lstm_cell/MatMul_1MatMulforward_lstm_92/zeros:output:09forward_lstm_92/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes

: Е
forward_lstm_92/lstm_cell/addAddV2*forward_lstm_92/lstm_cell/MatMul:product:0,forward_lstm_92/lstm_cell/MatMul_1:product:0*
T0*
_output_shapes

: д
0forward_lstm_92/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp9forward_lstm_92_lstm_cell_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0▓
!forward_lstm_92/lstm_cell/BiasAddBiasAdd!forward_lstm_92/lstm_cell/add:z:08forward_lstm_92/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

: k
)forward_lstm_92/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
forward_lstm_92/lstm_cell/splitSplit2forward_lstm_92/lstm_cell/split/split_dim:output:0*forward_lstm_92/lstm_cell/BiasAdd:output:0*
T0*<
_output_shapes*
(::::*
	num_split
!forward_lstm_92/lstm_cell/SigmoidSigmoid(forward_lstm_92/lstm_cell/split:output:0*
T0*
_output_shapes

:Ђ
#forward_lstm_92/lstm_cell/Sigmoid_1Sigmoid(forward_lstm_92/lstm_cell/split:output:1*
T0*
_output_shapes

:ў
forward_lstm_92/lstm_cell/mulMul'forward_lstm_92/lstm_cell/Sigmoid_1:y:0 forward_lstm_92/zeros_1:output:0*
T0*
_output_shapes

:y
forward_lstm_92/lstm_cell/ReluRelu(forward_lstm_92/lstm_cell/split:output:2*
T0*
_output_shapes

:ц
forward_lstm_92/lstm_cell/mul_1Mul%forward_lstm_92/lstm_cell/Sigmoid:y:0,forward_lstm_92/lstm_cell/Relu:activations:0*
T0*
_output_shapes

:Ў
forward_lstm_92/lstm_cell/add_1AddV2!forward_lstm_92/lstm_cell/mul:z:0#forward_lstm_92/lstm_cell/mul_1:z:0*
T0*
_output_shapes

:Ђ
#forward_lstm_92/lstm_cell/Sigmoid_2Sigmoid(forward_lstm_92/lstm_cell/split:output:3*
T0*
_output_shapes

:v
 forward_lstm_92/lstm_cell/Relu_1Relu#forward_lstm_92/lstm_cell/add_1:z:0*
T0*
_output_shapes

:е
forward_lstm_92/lstm_cell/mul_2Mul'forward_lstm_92/lstm_cell/Sigmoid_2:y:0.forward_lstm_92/lstm_cell/Relu_1:activations:0*
T0*
_output_shapes

:~
-forward_lstm_92/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      У
forward_lstm_92/TensorArrayV2_1TensorListReserve6forward_lstm_92/TensorArrayV2_1/element_shape:output:0(forward_lstm_92/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмV
forward_lstm_92/timeConst*
_output_shapes
: *
dtype0*
value	B : s
(forward_lstm_92/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         d
"forward_lstm_92/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ю
forward_lstm_92/whileWhile+forward_lstm_92/while/loop_counter:output:01forward_lstm_92/while/maximum_iterations:output:0forward_lstm_92/time:output:0(forward_lstm_92/TensorArrayV2_1:handle:0forward_lstm_92/zeros:output:0 forward_lstm_92/zeros_1:output:0(forward_lstm_92/strided_slice_1:output:0Gforward_lstm_92/TensorArrayUnstack/TensorListFromTensor:output_handle:08forward_lstm_92_lstm_cell_matmul_readvariableop_resource:forward_lstm_92_lstm_cell_matmul_1_readvariableop_resource9forward_lstm_92_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*:
_output_shapes(
&: : : : ::: : : : : *%
_read_only_resource_inputs
	
*/
body'R%
#forward_lstm_92_while_body_28635474*/
cond'R%
#forward_lstm_92_while_cond_28635473*9
output_shapes(
&: : : : ::: : : : : *
parallel_iterations Љ
@forward_lstm_92/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      ж
2forward_lstm_92/TensorArrayV2Stack/TensorListStackTensorListStackforward_lstm_92/while:output:3Iforward_lstm_92/TensorArrayV2Stack/TensorListStack/element_shape:output:0*"
_output_shapes
:*
element_dtype0x
%forward_lstm_92/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         q
'forward_lstm_92/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_92/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╬
forward_lstm_92/strided_slice_3StridedSlice;forward_lstm_92/TensorArrayV2Stack/TensorListStack:tensor:0.forward_lstm_92/strided_slice_3/stack:output:00forward_lstm_92/strided_slice_3/stack_1:output:00forward_lstm_92/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_masku
 forward_lstm_92/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          й
forward_lstm_92/transpose_1	Transpose;forward_lstm_92/TensorArrayV2Stack/TensorListStack:tensor:0)forward_lstm_92/transpose_1/perm:output:0*
T0*"
_output_shapes
:k
forward_lstm_92/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
backward_lstm_92/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         n
$backward_lstm_92/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&backward_lstm_92/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&backward_lstm_92/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:д
backward_lstm_92/strided_sliceStridedSlicebackward_lstm_92/Shape:output:0-backward_lstm_92/strided_slice/stack:output:0/backward_lstm_92/strided_slice/stack_1:output:0/backward_lstm_92/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
backward_lstm_92/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :д
backward_lstm_92/zeros/packedPack'backward_lstm_92/strided_slice:output:0(backward_lstm_92/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:a
backward_lstm_92/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ќ
backward_lstm_92/zerosFill&backward_lstm_92/zeros/packed:output:0%backward_lstm_92/zeros/Const:output:0*
T0*
_output_shapes

:c
!backward_lstm_92/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ф
backward_lstm_92/zeros_1/packedPack'backward_lstm_92/strided_slice:output:0*backward_lstm_92/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:c
backward_lstm_92/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ю
backward_lstm_92/zeros_1Fill(backward_lstm_92/zeros_1/packed:output:0'backward_lstm_92/zeros_1/Const:output:0*
T0*
_output_shapes

:t
backward_lstm_92/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          є
backward_lstm_92/transpose	Transposeinputs(backward_lstm_92/transpose/perm:output:0*
T0*"
_output_shapes
:m
backward_lstm_92/Shape_1Const*
_output_shapes
:*
dtype0*!
valueB"         p
&backward_lstm_92/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_92/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(backward_lstm_92/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:░
 backward_lstm_92/strided_slice_1StridedSlice!backward_lstm_92/Shape_1:output:0/backward_lstm_92/strided_slice_1/stack:output:01backward_lstm_92/strided_slice_1/stack_1:output:01backward_lstm_92/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskw
,backward_lstm_92/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         у
backward_lstm_92/TensorArrayV2TensorListReserve5backward_lstm_92/TensorArrayV2/element_shape:output:0)backward_lstm_92/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмi
backward_lstm_92/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: ъ
backward_lstm_92/ReverseV2	ReverseV2backward_lstm_92/transpose:y:0(backward_lstm_92/ReverseV2/axis:output:0*
T0*"
_output_shapes
:Ќ
Fbackward_lstm_92/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      ў
8backward_lstm_92/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#backward_lstm_92/ReverseV2:output:0Obackward_lstm_92/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмp
&backward_lstm_92/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_92/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(backward_lstm_92/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:х
 backward_lstm_92/strided_slice_2StridedSlicebackward_lstm_92/transpose:y:0/backward_lstm_92/strided_slice_2/stack:output:01backward_lstm_92/strided_slice_2/stack_1:output:01backward_lstm_92/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_maskф
0backward_lstm_92/lstm_cell/MatMul/ReadVariableOpReadVariableOp9backward_lstm_92_lstm_cell_matmul_readvariableop_resource*
_output_shapes

: *
dtype0╣
!backward_lstm_92/lstm_cell/MatMulMatMul)backward_lstm_92/strided_slice_2:output:08backward_lstm_92/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

: «
2backward_lstm_92/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp;backward_lstm_92_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0│
#backward_lstm_92/lstm_cell/MatMul_1MatMulbackward_lstm_92/zeros:output:0:backward_lstm_92/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes

: г
backward_lstm_92/lstm_cell/addAddV2+backward_lstm_92/lstm_cell/MatMul:product:0-backward_lstm_92/lstm_cell/MatMul_1:product:0*
T0*
_output_shapes

: е
1backward_lstm_92/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp:backward_lstm_92_lstm_cell_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0х
"backward_lstm_92/lstm_cell/BiasAddBiasAdd"backward_lstm_92/lstm_cell/add:z:09backward_lstm_92/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

: l
*backward_lstm_92/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :с
 backward_lstm_92/lstm_cell/splitSplit3backward_lstm_92/lstm_cell/split/split_dim:output:0+backward_lstm_92/lstm_cell/BiasAdd:output:0*
T0*<
_output_shapes*
(::::*
	num_splitЂ
"backward_lstm_92/lstm_cell/SigmoidSigmoid)backward_lstm_92/lstm_cell/split:output:0*
T0*
_output_shapes

:Ѓ
$backward_lstm_92/lstm_cell/Sigmoid_1Sigmoid)backward_lstm_92/lstm_cell/split:output:1*
T0*
_output_shapes

:Џ
backward_lstm_92/lstm_cell/mulMul(backward_lstm_92/lstm_cell/Sigmoid_1:y:0!backward_lstm_92/zeros_1:output:0*
T0*
_output_shapes

:{
backward_lstm_92/lstm_cell/ReluRelu)backward_lstm_92/lstm_cell/split:output:2*
T0*
_output_shapes

:Д
 backward_lstm_92/lstm_cell/mul_1Mul&backward_lstm_92/lstm_cell/Sigmoid:y:0-backward_lstm_92/lstm_cell/Relu:activations:0*
T0*
_output_shapes

:ю
 backward_lstm_92/lstm_cell/add_1AddV2"backward_lstm_92/lstm_cell/mul:z:0$backward_lstm_92/lstm_cell/mul_1:z:0*
T0*
_output_shapes

:Ѓ
$backward_lstm_92/lstm_cell/Sigmoid_2Sigmoid)backward_lstm_92/lstm_cell/split:output:3*
T0*
_output_shapes

:x
!backward_lstm_92/lstm_cell/Relu_1Relu$backward_lstm_92/lstm_cell/add_1:z:0*
T0*
_output_shapes

:Ф
 backward_lstm_92/lstm_cell/mul_2Mul(backward_lstm_92/lstm_cell/Sigmoid_2:y:0/backward_lstm_92/lstm_cell/Relu_1:activations:0*
T0*
_output_shapes

:
.backward_lstm_92/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      в
 backward_lstm_92/TensorArrayV2_1TensorListReserve7backward_lstm_92/TensorArrayV2_1/element_shape:output:0)backward_lstm_92/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмW
backward_lstm_92/timeConst*
_output_shapes
: *
dtype0*
value	B : t
)backward_lstm_92/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         e
#backward_lstm_92/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ф
backward_lstm_92/whileWhile,backward_lstm_92/while/loop_counter:output:02backward_lstm_92/while/maximum_iterations:output:0backward_lstm_92/time:output:0)backward_lstm_92/TensorArrayV2_1:handle:0backward_lstm_92/zeros:output:0!backward_lstm_92/zeros_1:output:0)backward_lstm_92/strided_slice_1:output:0Hbackward_lstm_92/TensorArrayUnstack/TensorListFromTensor:output_handle:09backward_lstm_92_lstm_cell_matmul_readvariableop_resource;backward_lstm_92_lstm_cell_matmul_1_readvariableop_resource:backward_lstm_92_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*:
_output_shapes(
&: : : : ::: : : : : *%
_read_only_resource_inputs
	
*0
body(R&
$backward_lstm_92_while_body_28635615*0
cond(R&
$backward_lstm_92_while_cond_28635614*9
output_shapes(
&: : : : ::: : : : : *
parallel_iterations њ
Abackward_lstm_92/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      В
3backward_lstm_92/TensorArrayV2Stack/TensorListStackTensorListStackbackward_lstm_92/while:output:3Jbackward_lstm_92/TensorArrayV2Stack/TensorListStack/element_shape:output:0*"
_output_shapes
:*
element_dtype0y
&backward_lstm_92/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         r
(backward_lstm_92/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_92/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:М
 backward_lstm_92/strided_slice_3StridedSlice<backward_lstm_92/TensorArrayV2Stack/TensorListStack:tensor:0/backward_lstm_92/strided_slice_3/stack:output:01backward_lstm_92/strided_slice_3/stack_1:output:01backward_lstm_92/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_maskv
!backward_lstm_92/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          └
backward_lstm_92/transpose_1	Transpose<backward_lstm_92/TensorArrayV2Stack/TensorListStack:tensor:0*backward_lstm_92/transpose_1/perm:output:0*
T0*"
_output_shapes
:l
backward_lstm_92/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    X
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:~
	ReverseV2	ReverseV2 backward_lstm_92/transpose_1:y:0ReverseV2/axis:output:0*
T0*"
_output_shapes
:M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Њ
concatConcatV2forward_lstm_92/transpose_1:y:0ReverseV2:output:0concat/axis:output:0*
N*
T0*"
_output_shapes
:Y
IdentityIdentityconcat:output:0^NoOp*
T0*"
_output_shapes
:ѕ
NoOpNoOp2^backward_lstm_92/lstm_cell/BiasAdd/ReadVariableOp1^backward_lstm_92/lstm_cell/MatMul/ReadVariableOp3^backward_lstm_92/lstm_cell/MatMul_1/ReadVariableOp^backward_lstm_92/while1^forward_lstm_92/lstm_cell/BiasAdd/ReadVariableOp0^forward_lstm_92/lstm_cell/MatMul/ReadVariableOp2^forward_lstm_92/lstm_cell/MatMul_1/ReadVariableOp^forward_lstm_92/while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*-
_input_shapes
:: : : : : : 2f
1backward_lstm_92/lstm_cell/BiasAdd/ReadVariableOp1backward_lstm_92/lstm_cell/BiasAdd/ReadVariableOp2d
0backward_lstm_92/lstm_cell/MatMul/ReadVariableOp0backward_lstm_92/lstm_cell/MatMul/ReadVariableOp2h
2backward_lstm_92/lstm_cell/MatMul_1/ReadVariableOp2backward_lstm_92/lstm_cell/MatMul_1/ReadVariableOp20
backward_lstm_92/whilebackward_lstm_92/while2d
0forward_lstm_92/lstm_cell/BiasAdd/ReadVariableOp0forward_lstm_92/lstm_cell/BiasAdd/ReadVariableOp2b
/forward_lstm_92/lstm_cell/MatMul/ReadVariableOp/forward_lstm_92/lstm_cell/MatMul/ReadVariableOp2f
1forward_lstm_92/lstm_cell/MatMul_1/ReadVariableOp1forward_lstm_92/lstm_cell/MatMul_1/ReadVariableOp2.
forward_lstm_92/whileforward_lstm_92/while:J F
"
_output_shapes
:
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
вK
Њ
N__inference_backward_lstm_92_layer_call_and_return_conditional_losses_28638838
inputs_0:
(lstm_cell_matmul_readvariableop_resource: <
*lstm_cell_matmul_1_readvariableop_resource: 7
)lstm_cell_biasadd_readvariableop_resource: 
identityѕб lstm_cell/BiasAdd/ReadVariableOpбlstm_cell/MatMul/ReadVariableOpб!lstm_cell/MatMul_1/ReadVariableOpбwhileK
ShapeShapeinputs_0*
T0*
_output_shapes
::ь¤]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :                  R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::ь¤_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмX
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: }
	ReverseV2	ReverseV2transpose:y:0ReverseV2/axis:output:0*
T0*4
_output_shapes"
 :                  є
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       т
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensorReverseV2:output:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskѕ
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes

: *
dtype0Ј
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ї
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0Ѕ
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ѓ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:          є
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0І
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          [
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:         j
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:         q
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         b
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:         }
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:         r
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:         j
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:         _
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:         Ђ
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:         n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Я
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_28638754*
condR
while_cond_28638753*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                  Њ
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs_0:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
╠	
═
while_cond_28634854
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_16
2while_while_cond_28634854___redundant_placeholder06
2while_while_cond_28634854___redundant_placeholder16
2while_while_cond_28634854___redundant_placeholder26
2while_while_cond_28634854___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
№
s
G__inference_lambda_97_layer_call_and_return_conditional_losses_28636427
inputs_0
inputs_1
identityѓ
einsum/EinsumEinsuminputs_0inputs_1*
N*
T0*&
_output_shapes
:*
equationabc,abd->dabc]
IdentityIdentityeinsum/Einsum:output:0*
T0*&
_output_shapes
:"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:::L H
"
_output_shapes
:
"
_user_specified_name
inputs_0:LH
"
_output_shapes
:
"
_user_specified_name
inputs_1
еJ
љ
M__inference_forward_lstm_92_layer_call_and_return_conditional_losses_28634787

inputs:
(lstm_cell_matmul_readvariableop_resource: <
*lstm_cell_matmul_1_readvariableop_resource: 7
)lstm_cell_biasadd_readvariableop_resource: 
identityѕб lstm_cell/BiasAdd/ReadVariableOpбlstm_cell/MatMul/ReadVariableOpб!lstm_cell/MatMul_1/ReadVariableOpбwhileI
ShapeShapeinputs*
T0*
_output_shapes
::ь¤]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
	transpose	Transposeinputstranspose/perm:output:0*
T0*=
_output_shapes+
):'                           R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::ь¤_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ы
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:                  *
shrink_axis_maskѕ
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes

: *
dtype0Ј
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ї
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0Ѕ
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ѓ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:          є
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0І
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          [
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:         j
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:         q
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         b
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:         }
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:         r
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:         j
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:         _
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:         Ђ
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:         n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Я
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_28634703*
condR
while_cond_28634702*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                  Њ
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'                           : : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:e a
=
_output_shapes+
):'                           
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Ў
Ї
#forward_lstm_92_while_cond_28635473<
8forward_lstm_92_while_forward_lstm_92_while_loop_counterB
>forward_lstm_92_while_forward_lstm_92_while_maximum_iterations%
!forward_lstm_92_while_placeholder'
#forward_lstm_92_while_placeholder_1'
#forward_lstm_92_while_placeholder_2'
#forward_lstm_92_while_placeholder_3>
:forward_lstm_92_while_less_forward_lstm_92_strided_slice_1V
Rforward_lstm_92_while_forward_lstm_92_while_cond_28635473___redundant_placeholder0V
Rforward_lstm_92_while_forward_lstm_92_while_cond_28635473___redundant_placeholder1V
Rforward_lstm_92_while_forward_lstm_92_while_cond_28635473___redundant_placeholder2V
Rforward_lstm_92_while_forward_lstm_92_while_cond_28635473___redundant_placeholder3"
forward_lstm_92_while_identity
б
forward_lstm_92/while/LessLess!forward_lstm_92_while_placeholder:forward_lstm_92_while_less_forward_lstm_92_strided_slice_1*
T0*
_output_shapes
: k
forward_lstm_92/while/IdentityIdentityforward_lstm_92/while/Less:z:0*
T0
*
_output_shapes
: "I
forward_lstm_92_while_identity'forward_lstm_92/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : ::: :::::Z V

_output_shapes
: 
<
_user_specified_name$"forward_lstm_92/while/loop_counter:`\

_output_shapes
: 
B
_user_specified_name*(forward_lstm_92/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

::$ 

_output_shapes

::WS

_output_shapes
: 
9
_user_specified_name!forward_lstm_92/strided_slice_1:

_output_shapes
:
╠	
═
while_cond_28639043
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_16
2while_while_cond_28639043___redundant_placeholder06
2while_while_cond_28639043___redundant_placeholder16
2while_while_cond_28639043___redundant_placeholder26
2while_while_cond_28639043___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
╠	
═
while_cond_28635164
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_16
2while_while_cond_28635164___redundant_placeholder06
2while_while_cond_28635164___redundant_placeholder16
2while_while_cond_28635164___redundant_placeholder26
2while_while_cond_28635164___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
╠	
═
while_cond_28635012
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_16
2while_while_cond_28635012___redundant_placeholder06
2while_while_cond_28635012___redundant_placeholder16
2while_while_cond_28635012___redundant_placeholder26
2while_while_cond_28635012___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
╠	
═
while_cond_28638276
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_16
2while_while_cond_28638276___redundant_placeholder06
2while_while_cond_28638276___redundant_placeholder16
2while_while_cond_28638276___redundant_placeholder26
2while_while_cond_28638276___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
С
■
G__inference_dense_592_layer_call_and_return_conditional_losses_28633903

inputs3
!tensordot_readvariableop_resource:-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбTensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       S
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
::ь¤Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ╗
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ┐
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ю
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:         і
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:                  і
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         [
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Д
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Ѓ
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:         T
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:         e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:         V
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:         
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Й
▄
2__inference_topk_bilstm_moe_layer_call_fn_28636210
input_3
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9: 

unknown_10: 

unknown_11: 

unknown_12: 

unknown_13: 

unknown_14: 

unknown_15:	ђ

unknown_16:
identityѕбStatefulPartitionedCall▒
StatefulPartitionedCallStatefulPartitionedCallinput_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*4
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8ѓ *V
fQRO
M__inference_topk_bilstm_moe_layer_call_and_return_conditional_losses_28636128f
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:: : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:K G
"
_output_shapes
:
!
_user_specified_name	input_3:($
"
_user_specified_name
28636172:($
"
_user_specified_name
28636174:($
"
_user_specified_name
28636176:($
"
_user_specified_name
28636178:($
"
_user_specified_name
28636180:($
"
_user_specified_name
28636182:($
"
_user_specified_name
28636184:($
"
_user_specified_name
28636186:(	$
"
_user_specified_name
28636188:(
$
"
_user_specified_name
28636190:($
"
_user_specified_name
28636192:($
"
_user_specified_name
28636194:($
"
_user_specified_name
28636196:($
"
_user_specified_name
28636198:($
"
_user_specified_name
28636200:($
"
_user_specified_name
28636202:($
"
_user_specified_name
28636204:($
"
_user_specified_name
28636206
У8
▒
while_body_28634703
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0B
0while_lstm_cell_matmul_readvariableop_resource_0: D
2while_lstm_cell_matmul_1_readvariableop_resource_0: ?
1while_lstm_cell_biasadd_readvariableop_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor@
.while_lstm_cell_matmul_readvariableop_resource: B
0while_lstm_cell_matmul_1_readvariableop_resource: =
/while_lstm_cell_biasadd_readvariableop_resource: ѕб&while/lstm_cell/BiasAdd/ReadVariableOpб%while/lstm_cell/MatMul/ReadVariableOpб'while/lstm_cell/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        »
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:                  *
element_dtype0ќ
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0│
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          џ
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0џ
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ћ
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:          ћ
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0Ю
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Т
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitt
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:         v
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:         ђ
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         n
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:         Ј
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:         ё
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:         v
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:         k
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:         Њ
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:         ┬
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         v
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         Б

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
ХJ
▒
#forward_lstm_92_while_body_28637154<
8forward_lstm_92_while_forward_lstm_92_while_loop_counterB
>forward_lstm_92_while_forward_lstm_92_while_maximum_iterations%
!forward_lstm_92_while_placeholder'
#forward_lstm_92_while_placeholder_1'
#forward_lstm_92_while_placeholder_2'
#forward_lstm_92_while_placeholder_3;
7forward_lstm_92_while_forward_lstm_92_strided_slice_1_0w
sforward_lstm_92_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_92_tensorarrayunstack_tensorlistfromtensor_0R
@forward_lstm_92_while_lstm_cell_matmul_readvariableop_resource_0: T
Bforward_lstm_92_while_lstm_cell_matmul_1_readvariableop_resource_0: O
Aforward_lstm_92_while_lstm_cell_biasadd_readvariableop_resource_0: "
forward_lstm_92_while_identity$
 forward_lstm_92_while_identity_1$
 forward_lstm_92_while_identity_2$
 forward_lstm_92_while_identity_3$
 forward_lstm_92_while_identity_4$
 forward_lstm_92_while_identity_59
5forward_lstm_92_while_forward_lstm_92_strided_slice_1u
qforward_lstm_92_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_92_tensorarrayunstack_tensorlistfromtensorP
>forward_lstm_92_while_lstm_cell_matmul_readvariableop_resource: R
@forward_lstm_92_while_lstm_cell_matmul_1_readvariableop_resource: M
?forward_lstm_92_while_lstm_cell_biasadd_readvariableop_resource: ѕб6forward_lstm_92/while/lstm_cell/BiasAdd/ReadVariableOpб5forward_lstm_92/while/lstm_cell/MatMul/ReadVariableOpб7forward_lstm_92/while/lstm_cell/MatMul_1/ReadVariableOpў
Gforward_lstm_92/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      ь
9forward_lstm_92/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsforward_lstm_92_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_92_tensorarrayunstack_tensorlistfromtensor_0!forward_lstm_92_while_placeholderPforward_lstm_92/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

:*
element_dtype0Х
5forward_lstm_92/while/lstm_cell/MatMul/ReadVariableOpReadVariableOp@forward_lstm_92_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0┌
&forward_lstm_92/while/lstm_cell/MatMulMatMul@forward_lstm_92/while/TensorArrayV2Read/TensorListGetItem:item:0=forward_lstm_92/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

: ║
7forward_lstm_92/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpBforward_lstm_92_while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0┴
(forward_lstm_92/while/lstm_cell/MatMul_1MatMul#forward_lstm_92_while_placeholder_2?forward_lstm_92/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes

: ╗
#forward_lstm_92/while/lstm_cell/addAddV20forward_lstm_92/while/lstm_cell/MatMul:product:02forward_lstm_92/while/lstm_cell/MatMul_1:product:0*
T0*
_output_shapes

: ┤
6forward_lstm_92/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOpAforward_lstm_92_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0─
'forward_lstm_92/while/lstm_cell/BiasAddBiasAdd'forward_lstm_92/while/lstm_cell/add:z:0>forward_lstm_92/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

: q
/forward_lstm_92/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
%forward_lstm_92/while/lstm_cell/splitSplit8forward_lstm_92/while/lstm_cell/split/split_dim:output:00forward_lstm_92/while/lstm_cell/BiasAdd:output:0*
T0*<
_output_shapes*
(::::*
	num_splitІ
'forward_lstm_92/while/lstm_cell/SigmoidSigmoid.forward_lstm_92/while/lstm_cell/split:output:0*
T0*
_output_shapes

:Ї
)forward_lstm_92/while/lstm_cell/Sigmoid_1Sigmoid.forward_lstm_92/while/lstm_cell/split:output:1*
T0*
_output_shapes

:Д
#forward_lstm_92/while/lstm_cell/mulMul-forward_lstm_92/while/lstm_cell/Sigmoid_1:y:0#forward_lstm_92_while_placeholder_3*
T0*
_output_shapes

:Ё
$forward_lstm_92/while/lstm_cell/ReluRelu.forward_lstm_92/while/lstm_cell/split:output:2*
T0*
_output_shapes

:Х
%forward_lstm_92/while/lstm_cell/mul_1Mul+forward_lstm_92/while/lstm_cell/Sigmoid:y:02forward_lstm_92/while/lstm_cell/Relu:activations:0*
T0*
_output_shapes

:Ф
%forward_lstm_92/while/lstm_cell/add_1AddV2'forward_lstm_92/while/lstm_cell/mul:z:0)forward_lstm_92/while/lstm_cell/mul_1:z:0*
T0*
_output_shapes

:Ї
)forward_lstm_92/while/lstm_cell/Sigmoid_2Sigmoid.forward_lstm_92/while/lstm_cell/split:output:3*
T0*
_output_shapes

:ѓ
&forward_lstm_92/while/lstm_cell/Relu_1Relu)forward_lstm_92/while/lstm_cell/add_1:z:0*
T0*
_output_shapes

:║
%forward_lstm_92/while/lstm_cell/mul_2Mul-forward_lstm_92/while/lstm_cell/Sigmoid_2:y:04forward_lstm_92/while/lstm_cell/Relu_1:activations:0*
T0*
_output_shapes

:ѓ
:forward_lstm_92/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem#forward_lstm_92_while_placeholder_1!forward_lstm_92_while_placeholder)forward_lstm_92/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУм]
forward_lstm_92/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :ї
forward_lstm_92/while/addAddV2!forward_lstm_92_while_placeholder$forward_lstm_92/while/add/y:output:0*
T0*
_output_shapes
: _
forward_lstm_92/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Д
forward_lstm_92/while/add_1AddV28forward_lstm_92_while_forward_lstm_92_while_loop_counter&forward_lstm_92/while/add_1/y:output:0*
T0*
_output_shapes
: Ѕ
forward_lstm_92/while/IdentityIdentityforward_lstm_92/while/add_1:z:0^forward_lstm_92/while/NoOp*
T0*
_output_shapes
: ф
 forward_lstm_92/while/Identity_1Identity>forward_lstm_92_while_forward_lstm_92_while_maximum_iterations^forward_lstm_92/while/NoOp*
T0*
_output_shapes
: Ѕ
 forward_lstm_92/while/Identity_2Identityforward_lstm_92/while/add:z:0^forward_lstm_92/while/NoOp*
T0*
_output_shapes
: Х
 forward_lstm_92/while/Identity_3IdentityJforward_lstm_92/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^forward_lstm_92/while/NoOp*
T0*
_output_shapes
: Ю
 forward_lstm_92/while/Identity_4Identity)forward_lstm_92/while/lstm_cell/mul_2:z:0^forward_lstm_92/while/NoOp*
T0*
_output_shapes

:Ю
 forward_lstm_92/while/Identity_5Identity)forward_lstm_92/while/lstm_cell/add_1:z:0^forward_lstm_92/while/NoOp*
T0*
_output_shapes

:с
forward_lstm_92/while/NoOpNoOp7^forward_lstm_92/while/lstm_cell/BiasAdd/ReadVariableOp6^forward_lstm_92/while/lstm_cell/MatMul/ReadVariableOp8^forward_lstm_92/while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "p
5forward_lstm_92_while_forward_lstm_92_strided_slice_17forward_lstm_92_while_forward_lstm_92_strided_slice_1_0"I
forward_lstm_92_while_identity'forward_lstm_92/while/Identity:output:0"M
 forward_lstm_92_while_identity_1)forward_lstm_92/while/Identity_1:output:0"M
 forward_lstm_92_while_identity_2)forward_lstm_92/while/Identity_2:output:0"M
 forward_lstm_92_while_identity_3)forward_lstm_92/while/Identity_3:output:0"M
 forward_lstm_92_while_identity_4)forward_lstm_92/while/Identity_4:output:0"M
 forward_lstm_92_while_identity_5)forward_lstm_92/while/Identity_5:output:0"ё
?forward_lstm_92_while_lstm_cell_biasadd_readvariableop_resourceAforward_lstm_92_while_lstm_cell_biasadd_readvariableop_resource_0"є
@forward_lstm_92_while_lstm_cell_matmul_1_readvariableop_resourceBforward_lstm_92_while_lstm_cell_matmul_1_readvariableop_resource_0"ѓ
>forward_lstm_92_while_lstm_cell_matmul_readvariableop_resource@forward_lstm_92_while_lstm_cell_matmul_readvariableop_resource_0"У
qforward_lstm_92_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_92_tensorarrayunstack_tensorlistfromtensorsforward_lstm_92_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_92_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : ::: : : : : 2p
6forward_lstm_92/while/lstm_cell/BiasAdd/ReadVariableOp6forward_lstm_92/while/lstm_cell/BiasAdd/ReadVariableOp2n
5forward_lstm_92/while/lstm_cell/MatMul/ReadVariableOp5forward_lstm_92/while/lstm_cell/MatMul/ReadVariableOp2r
7forward_lstm_92/while/lstm_cell/MatMul_1/ReadVariableOp7forward_lstm_92/while/lstm_cell/MatMul_1/ReadVariableOp:Z V

_output_shapes
: 
<
_user_specified_name$"forward_lstm_92/while/loop_counter:`\

_output_shapes
: 
B
_user_specified_name*(forward_lstm_92/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

::$ 

_output_shapes

::WS

_output_shapes
: 
9
_user_specified_name!forward_lstm_92/strided_slice_1:ok

_output_shapes
: 
Q
_user_specified_name97forward_lstm_92/TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
ХJ
▒
#forward_lstm_92_while_body_28637442<
8forward_lstm_92_while_forward_lstm_92_while_loop_counterB
>forward_lstm_92_while_forward_lstm_92_while_maximum_iterations%
!forward_lstm_92_while_placeholder'
#forward_lstm_92_while_placeholder_1'
#forward_lstm_92_while_placeholder_2'
#forward_lstm_92_while_placeholder_3;
7forward_lstm_92_while_forward_lstm_92_strided_slice_1_0w
sforward_lstm_92_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_92_tensorarrayunstack_tensorlistfromtensor_0R
@forward_lstm_92_while_lstm_cell_matmul_readvariableop_resource_0: T
Bforward_lstm_92_while_lstm_cell_matmul_1_readvariableop_resource_0: O
Aforward_lstm_92_while_lstm_cell_biasadd_readvariableop_resource_0: "
forward_lstm_92_while_identity$
 forward_lstm_92_while_identity_1$
 forward_lstm_92_while_identity_2$
 forward_lstm_92_while_identity_3$
 forward_lstm_92_while_identity_4$
 forward_lstm_92_while_identity_59
5forward_lstm_92_while_forward_lstm_92_strided_slice_1u
qforward_lstm_92_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_92_tensorarrayunstack_tensorlistfromtensorP
>forward_lstm_92_while_lstm_cell_matmul_readvariableop_resource: R
@forward_lstm_92_while_lstm_cell_matmul_1_readvariableop_resource: M
?forward_lstm_92_while_lstm_cell_biasadd_readvariableop_resource: ѕб6forward_lstm_92/while/lstm_cell/BiasAdd/ReadVariableOpб5forward_lstm_92/while/lstm_cell/MatMul/ReadVariableOpб7forward_lstm_92/while/lstm_cell/MatMul_1/ReadVariableOpў
Gforward_lstm_92/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      ь
9forward_lstm_92/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsforward_lstm_92_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_92_tensorarrayunstack_tensorlistfromtensor_0!forward_lstm_92_while_placeholderPforward_lstm_92/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

:*
element_dtype0Х
5forward_lstm_92/while/lstm_cell/MatMul/ReadVariableOpReadVariableOp@forward_lstm_92_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0┌
&forward_lstm_92/while/lstm_cell/MatMulMatMul@forward_lstm_92/while/TensorArrayV2Read/TensorListGetItem:item:0=forward_lstm_92/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

: ║
7forward_lstm_92/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpBforward_lstm_92_while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0┴
(forward_lstm_92/while/lstm_cell/MatMul_1MatMul#forward_lstm_92_while_placeholder_2?forward_lstm_92/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes

: ╗
#forward_lstm_92/while/lstm_cell/addAddV20forward_lstm_92/while/lstm_cell/MatMul:product:02forward_lstm_92/while/lstm_cell/MatMul_1:product:0*
T0*
_output_shapes

: ┤
6forward_lstm_92/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOpAforward_lstm_92_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0─
'forward_lstm_92/while/lstm_cell/BiasAddBiasAdd'forward_lstm_92/while/lstm_cell/add:z:0>forward_lstm_92/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

: q
/forward_lstm_92/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
%forward_lstm_92/while/lstm_cell/splitSplit8forward_lstm_92/while/lstm_cell/split/split_dim:output:00forward_lstm_92/while/lstm_cell/BiasAdd:output:0*
T0*<
_output_shapes*
(::::*
	num_splitІ
'forward_lstm_92/while/lstm_cell/SigmoidSigmoid.forward_lstm_92/while/lstm_cell/split:output:0*
T0*
_output_shapes

:Ї
)forward_lstm_92/while/lstm_cell/Sigmoid_1Sigmoid.forward_lstm_92/while/lstm_cell/split:output:1*
T0*
_output_shapes

:Д
#forward_lstm_92/while/lstm_cell/mulMul-forward_lstm_92/while/lstm_cell/Sigmoid_1:y:0#forward_lstm_92_while_placeholder_3*
T0*
_output_shapes

:Ё
$forward_lstm_92/while/lstm_cell/ReluRelu.forward_lstm_92/while/lstm_cell/split:output:2*
T0*
_output_shapes

:Х
%forward_lstm_92/while/lstm_cell/mul_1Mul+forward_lstm_92/while/lstm_cell/Sigmoid:y:02forward_lstm_92/while/lstm_cell/Relu:activations:0*
T0*
_output_shapes

:Ф
%forward_lstm_92/while/lstm_cell/add_1AddV2'forward_lstm_92/while/lstm_cell/mul:z:0)forward_lstm_92/while/lstm_cell/mul_1:z:0*
T0*
_output_shapes

:Ї
)forward_lstm_92/while/lstm_cell/Sigmoid_2Sigmoid.forward_lstm_92/while/lstm_cell/split:output:3*
T0*
_output_shapes

:ѓ
&forward_lstm_92/while/lstm_cell/Relu_1Relu)forward_lstm_92/while/lstm_cell/add_1:z:0*
T0*
_output_shapes

:║
%forward_lstm_92/while/lstm_cell/mul_2Mul-forward_lstm_92/while/lstm_cell/Sigmoid_2:y:04forward_lstm_92/while/lstm_cell/Relu_1:activations:0*
T0*
_output_shapes

:ѓ
:forward_lstm_92/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem#forward_lstm_92_while_placeholder_1!forward_lstm_92_while_placeholder)forward_lstm_92/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУм]
forward_lstm_92/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :ї
forward_lstm_92/while/addAddV2!forward_lstm_92_while_placeholder$forward_lstm_92/while/add/y:output:0*
T0*
_output_shapes
: _
forward_lstm_92/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Д
forward_lstm_92/while/add_1AddV28forward_lstm_92_while_forward_lstm_92_while_loop_counter&forward_lstm_92/while/add_1/y:output:0*
T0*
_output_shapes
: Ѕ
forward_lstm_92/while/IdentityIdentityforward_lstm_92/while/add_1:z:0^forward_lstm_92/while/NoOp*
T0*
_output_shapes
: ф
 forward_lstm_92/while/Identity_1Identity>forward_lstm_92_while_forward_lstm_92_while_maximum_iterations^forward_lstm_92/while/NoOp*
T0*
_output_shapes
: Ѕ
 forward_lstm_92/while/Identity_2Identityforward_lstm_92/while/add:z:0^forward_lstm_92/while/NoOp*
T0*
_output_shapes
: Х
 forward_lstm_92/while/Identity_3IdentityJforward_lstm_92/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^forward_lstm_92/while/NoOp*
T0*
_output_shapes
: Ю
 forward_lstm_92/while/Identity_4Identity)forward_lstm_92/while/lstm_cell/mul_2:z:0^forward_lstm_92/while/NoOp*
T0*
_output_shapes

:Ю
 forward_lstm_92/while/Identity_5Identity)forward_lstm_92/while/lstm_cell/add_1:z:0^forward_lstm_92/while/NoOp*
T0*
_output_shapes

:с
forward_lstm_92/while/NoOpNoOp7^forward_lstm_92/while/lstm_cell/BiasAdd/ReadVariableOp6^forward_lstm_92/while/lstm_cell/MatMul/ReadVariableOp8^forward_lstm_92/while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "p
5forward_lstm_92_while_forward_lstm_92_strided_slice_17forward_lstm_92_while_forward_lstm_92_strided_slice_1_0"I
forward_lstm_92_while_identity'forward_lstm_92/while/Identity:output:0"M
 forward_lstm_92_while_identity_1)forward_lstm_92/while/Identity_1:output:0"M
 forward_lstm_92_while_identity_2)forward_lstm_92/while/Identity_2:output:0"M
 forward_lstm_92_while_identity_3)forward_lstm_92/while/Identity_3:output:0"M
 forward_lstm_92_while_identity_4)forward_lstm_92/while/Identity_4:output:0"M
 forward_lstm_92_while_identity_5)forward_lstm_92/while/Identity_5:output:0"ё
?forward_lstm_92_while_lstm_cell_biasadd_readvariableop_resourceAforward_lstm_92_while_lstm_cell_biasadd_readvariableop_resource_0"є
@forward_lstm_92_while_lstm_cell_matmul_1_readvariableop_resourceBforward_lstm_92_while_lstm_cell_matmul_1_readvariableop_resource_0"ѓ
>forward_lstm_92_while_lstm_cell_matmul_readvariableop_resource@forward_lstm_92_while_lstm_cell_matmul_readvariableop_resource_0"У
qforward_lstm_92_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_92_tensorarrayunstack_tensorlistfromtensorsforward_lstm_92_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_92_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : ::: : : : : 2p
6forward_lstm_92/while/lstm_cell/BiasAdd/ReadVariableOp6forward_lstm_92/while/lstm_cell/BiasAdd/ReadVariableOp2n
5forward_lstm_92/while/lstm_cell/MatMul/ReadVariableOp5forward_lstm_92/while/lstm_cell/MatMul/ReadVariableOp2r
7forward_lstm_92/while/lstm_cell/MatMul_1/ReadVariableOp7forward_lstm_92/while/lstm_cell/MatMul_1/ReadVariableOp:Z V

_output_shapes
: 
<
_user_specified_name$"forward_lstm_92/while/loop_counter:`\

_output_shapes
: 
B
_user_specified_name*(forward_lstm_92/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

::$ 

_output_shapes

::WS

_output_shapes
: 
9
_user_specified_name!forward_lstm_92/strided_slice_1:ok

_output_shapes
: 
Q
_user_specified_name97forward_lstm_92/TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
Д	
Я
L__inference_sequential_402_layer_call_and_return_conditional_losses_28633834
dense_587_input$
dense_587_28633828: 
dense_587_28633830:
identityѕб!dense_587/StatefulPartitionedCallЄ
!dense_587/StatefulPartitionedCallStatefulPartitionedCalldense_587_inputdense_587_28633828dense_587_28633830*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_dense_587_layer_call_and_return_conditional_losses_28633827}
IdentityIdentity*dense_587/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         F
NoOpNoOp"^dense_587/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         : : 2F
!dense_587/StatefulPartitionedCall!dense_587/StatefulPartitionedCall:\ X
+
_output_shapes
:         
)
_user_specified_namedense_587_input:($
"
_user_specified_name
28633828:($
"
_user_specified_name
28633830
ѕ
л
&__inference_signature_wrapper_28636355
input_3
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9: 

unknown_10: 

unknown_11: 

unknown_12: 

unknown_13: 

unknown_14: 

unknown_15:	ђ

unknown_16:
identityѕбStatefulPartitionedCallЄ
StatefulPartitionedCallStatefulPartitionedCallinput_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*4
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8ѓ *,
f'R%
#__inference__wrapped_model_28633642f
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:: : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:K G
"
_output_shapes
:
!
_user_specified_name	input_3:($
"
_user_specified_name
28636317:($
"
_user_specified_name
28636319:($
"
_user_specified_name
28636321:($
"
_user_specified_name
28636323:($
"
_user_specified_name
28636325:($
"
_user_specified_name
28636327:($
"
_user_specified_name
28636329:($
"
_user_specified_name
28636331:(	$
"
_user_specified_name
28636333:(
$
"
_user_specified_name
28636335:($
"
_user_specified_name
28636337:($
"
_user_specified_name
28636339:($
"
_user_specified_name
28636341:($
"
_user_specified_name
28636343:($
"
_user_specified_name
28636345:($
"
_user_specified_name
28636347:($
"
_user_specified_name
28636349:($
"
_user_specified_name
28636351
Д	
Я
L__inference_sequential_407_layer_call_and_return_conditional_losses_28633919
dense_592_input$
dense_592_28633913: 
dense_592_28633915:
identityѕб!dense_592/StatefulPartitionedCallЄ
!dense_592/StatefulPartitionedCallStatefulPartitionedCalldense_592_inputdense_592_28633913dense_592_28633915*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_dense_592_layer_call_and_return_conditional_losses_28633903}
IdentityIdentity*dense_592/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         F
NoOpNoOp"^dense_592/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         : : 2F
!dense_592/StatefulPartitionedCall!dense_592/StatefulPartitionedCall:\ X
+
_output_shapes
:         
)
_user_specified_namedense_592_input:($
"
_user_specified_name
28633913:($
"
_user_specified_name
28633915
Г
Д
1__inference_sequential_392_layer_call_fn_28633709
dense_577_input
unknown:
	unknown_0:
identityѕбStatefulPartitionedCallЬ
StatefulPartitionedCallStatefulPartitionedCalldense_577_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *U
fPRN
L__inference_sequential_392_layer_call_and_return_conditional_losses_28633691s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
+
_output_shapes
:         
)
_user_specified_namedense_577_input:($
"
_user_specified_name
28633703:($
"
_user_specified_name
28633705
Ф
ѓ
G__inference_lstm_cell_layer_call_and_return_conditional_losses_28639194

inputs
states_0
states_10
matmul_readvariableop_resource: 2
 matmul_1_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity

identity_1

identity_2ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:          r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         N
ReluRelusplit:output:2*
T0*'
_output_shapes
:         _
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         m
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :         :         : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:QM
'
_output_shapes
:         
"
_user_specified_name
states_0:QM
'
_output_shapes
:         
"
_user_specified_name
states_1:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
у
q
G__inference_lambda_97_layer_call_and_return_conditional_losses_28635780

inputs
inputs_1
identityђ
einsum/EinsumEinsuminputsinputs_1*
N*
T0*&
_output_shapes
:*
equationabc,abd->dabc]
IdentityIdentityeinsum/Einsum:output:0*
T0*&
_output_shapes
:"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:::J F
"
_output_shapes
:
 
_user_specified_nameinputs:JF
"
_output_shapes
:
 
_user_specified_nameinputs
Г
Д
1__inference_sequential_397_layer_call_fn_28633776
dense_582_input
unknown:
	unknown_0:
identityѕбStatefulPartitionedCallЬ
StatefulPartitionedCallStatefulPartitionedCalldense_582_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *U
fPRN
L__inference_sequential_397_layer_call_and_return_conditional_losses_28633758s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
+
_output_shapes
:         
)
_user_specified_namedense_582_input:($
"
_user_specified_name
28633770:($
"
_user_specified_name
28633772
Д	
Я
L__inference_sequential_397_layer_call_and_return_conditional_losses_28633758
dense_582_input$
dense_582_28633752: 
dense_582_28633754:
identityѕб!dense_582/StatefulPartitionedCallЄ
!dense_582/StatefulPartitionedCallStatefulPartitionedCalldense_582_inputdense_582_28633752dense_582_28633754*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_dense_582_layer_call_and_return_conditional_losses_28633751}
IdentityIdentity*dense_582/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         F
NoOpNoOp"^dense_582/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         : : 2F
!dense_582/StatefulPartitionedCall!dense_582/StatefulPartitionedCall:\ X
+
_output_shapes
:         
)
_user_specified_namedense_582_input:($
"
_user_specified_name
28633752:($
"
_user_specified_name
28633754
д
њ
3__inference_bidirectional_92_layer_call_fn_28636468
inputs_0
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: 
identityѕбStatefulPartitionedCallд
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  *(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8ѓ *W
fRRP
N__inference_bidirectional_92_layer_call_and_return_conditional_losses_28634952|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :                  <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:'                           : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:g c
=
_output_shapes+
):'                           
"
_user_specified_name
inputs_0:($
"
_user_specified_name
28636454:($
"
_user_specified_name
28636456:($
"
_user_specified_name
28636458:($
"
_user_specified_name
28636460:($
"
_user_specified_name
28636462:($
"
_user_specified_name
28636464
Ў
Ї
#forward_lstm_92_while_cond_28637153<
8forward_lstm_92_while_forward_lstm_92_while_loop_counterB
>forward_lstm_92_while_forward_lstm_92_while_maximum_iterations%
!forward_lstm_92_while_placeholder'
#forward_lstm_92_while_placeholder_1'
#forward_lstm_92_while_placeholder_2'
#forward_lstm_92_while_placeholder_3>
:forward_lstm_92_while_less_forward_lstm_92_strided_slice_1V
Rforward_lstm_92_while_forward_lstm_92_while_cond_28637153___redundant_placeholder0V
Rforward_lstm_92_while_forward_lstm_92_while_cond_28637153___redundant_placeholder1V
Rforward_lstm_92_while_forward_lstm_92_while_cond_28637153___redundant_placeholder2V
Rforward_lstm_92_while_forward_lstm_92_while_cond_28637153___redundant_placeholder3"
forward_lstm_92_while_identity
б
forward_lstm_92/while/LessLess!forward_lstm_92_while_placeholder:forward_lstm_92_while_less_forward_lstm_92_strided_slice_1*
T0*
_output_shapes
: k
forward_lstm_92/while/IdentityIdentityforward_lstm_92/while/Less:z:0*
T0
*
_output_shapes
: "I
forward_lstm_92_while_identity'forward_lstm_92/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : ::: :::::Z V

_output_shapes
: 
<
_user_specified_name$"forward_lstm_92/while/loop_counter:`\

_output_shapes
: 
B
_user_specified_name*(forward_lstm_92/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

::$ 

_output_shapes

::WS

_output_shapes
: 
9
_user_specified_name!forward_lstm_92/strided_slice_1:

_output_shapes
:
њ
X
,__inference_lambda_98_layer_call_fn_28636433
inputs_0
inputs_1
identity║
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
:* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_lambda_98_layer_call_and_return_conditional_losses_28635414[
IdentityIdentityPartitionedCall:output:0*
T0*"
_output_shapes
:"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :::P L
&
_output_shapes
:
"
_user_specified_name
inputs_0:LH
"
_output_shapes
:
"
_user_specified_name
inputs_1
С
■
G__inference_dense_577_layer_call_and_return_conditional_losses_28633675

inputs3
!tensordot_readvariableop_resource:-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбTensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       S
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
::ь¤Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ╗
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ┐
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ю
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:         і
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:                  і
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         [
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Д
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Ѓ
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:         T
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:         e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:         V
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:         
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
К
f
H__inference_dropout_92_layer_call_and_return_conditional_losses_28636119

inputs

identity_1I
IdentityIdentityinputs*
T0*"
_output_shapes
:V

Identity_1IdentityIdentity:output:0*
T0*"
_output_shapes
:"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
::J F
"
_output_shapes
:
 
_user_specified_nameinputs
Б
ђ
G__inference_lstm_cell_layer_call_and_return_conditional_losses_28634153

inputs

states
states_10
matmul_readvariableop_resource: 2
 matmul_1_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity

identity_1

identity_2ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:          r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         N
ReluRelusplit:output:2*
T0*'
_output_shapes
:         _
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         m
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :         :         : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:OK
'
_output_shapes
:         
 
_user_specified_namestates:OK
'
_output_shapes
:         
 
_user_specified_namestates:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
У8
▒
while_body_28639044
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0B
0while_lstm_cell_matmul_readvariableop_resource_0: D
2while_lstm_cell_matmul_1_readvariableop_resource_0: ?
1while_lstm_cell_biasadd_readvariableop_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor@
.while_lstm_cell_matmul_readvariableop_resource: B
0while_lstm_cell_matmul_1_readvariableop_resource: =
/while_lstm_cell_biasadd_readvariableop_resource: ѕб&while/lstm_cell/BiasAdd/ReadVariableOpб%while/lstm_cell/MatMul/ReadVariableOpб'while/lstm_cell/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        »
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:                  *
element_dtype0ќ
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0│
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          џ
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0џ
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ћ
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:          ћ
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0Ю
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Т
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitt
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:         v
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:         ђ
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         n
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:         Ј
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:         ё
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:         v
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:         k
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:         Њ
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:         ┬
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         v
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         Б

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
Ь
s
G__inference_lambda_98_layer_call_and_return_conditional_losses_28636451
inputs_0
inputs_1
identity~
einsum/EinsumEinsuminputs_0inputs_1*
N*
T0*"
_output_shapes
:*
equationabcd,ace->acdY
IdentityIdentityeinsum/Einsum:output:0*
T0*"
_output_shapes
:"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :::P L
&
_output_shapes
:
"
_user_specified_name
inputs_0:LH
"
_output_shapes
:
"
_user_specified_name
inputs_1
њ┐
ъ
N__inference_bidirectional_92_layer_call_and_return_conditional_losses_28637095
inputs_0J
8forward_lstm_92_lstm_cell_matmul_readvariableop_resource: L
:forward_lstm_92_lstm_cell_matmul_1_readvariableop_resource: G
9forward_lstm_92_lstm_cell_biasadd_readvariableop_resource: K
9backward_lstm_92_lstm_cell_matmul_readvariableop_resource: M
;backward_lstm_92_lstm_cell_matmul_1_readvariableop_resource: H
:backward_lstm_92_lstm_cell_biasadd_readvariableop_resource: 
identityѕб1backward_lstm_92/lstm_cell/BiasAdd/ReadVariableOpб0backward_lstm_92/lstm_cell/MatMul/ReadVariableOpб2backward_lstm_92/lstm_cell/MatMul_1/ReadVariableOpбbackward_lstm_92/whileб0forward_lstm_92/lstm_cell/BiasAdd/ReadVariableOpб/forward_lstm_92/lstm_cell/MatMul/ReadVariableOpб1forward_lstm_92/lstm_cell/MatMul_1/ReadVariableOpбforward_lstm_92/while[
forward_lstm_92/ShapeShapeinputs_0*
T0*
_output_shapes
::ь¤m
#forward_lstm_92/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%forward_lstm_92/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%forward_lstm_92/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:А
forward_lstm_92/strided_sliceStridedSliceforward_lstm_92/Shape:output:0,forward_lstm_92/strided_slice/stack:output:0.forward_lstm_92/strided_slice/stack_1:output:0.forward_lstm_92/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
forward_lstm_92/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Б
forward_lstm_92/zeros/packedPack&forward_lstm_92/strided_slice:output:0'forward_lstm_92/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:`
forward_lstm_92/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ю
forward_lstm_92/zerosFill%forward_lstm_92/zeros/packed:output:0$forward_lstm_92/zeros/Const:output:0*
T0*'
_output_shapes
:         b
 forward_lstm_92/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Д
forward_lstm_92/zeros_1/packedPack&forward_lstm_92/strided_slice:output:0)forward_lstm_92/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:b
forward_lstm_92/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    б
forward_lstm_92/zeros_1Fill'forward_lstm_92/zeros_1/packed:output:0&forward_lstm_92/zeros_1/Const:output:0*
T0*'
_output_shapes
:         s
forward_lstm_92/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          А
forward_lstm_92/transpose	Transposeinputs_0'forward_lstm_92/transpose/perm:output:0*
T0*=
_output_shapes+
):'                           r
forward_lstm_92/Shape_1Shapeforward_lstm_92/transpose:y:0*
T0*
_output_shapes
::ь¤o
%forward_lstm_92/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_92/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'forward_lstm_92/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ф
forward_lstm_92/strided_slice_1StridedSlice forward_lstm_92/Shape_1:output:0.forward_lstm_92/strided_slice_1/stack:output:00forward_lstm_92/strided_slice_1/stack_1:output:00forward_lstm_92/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
+forward_lstm_92/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         С
forward_lstm_92/TensorArrayV2TensorListReserve4forward_lstm_92/TensorArrayV2/element_shape:output:0(forward_lstm_92/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмќ
Eforward_lstm_92/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        љ
7forward_lstm_92/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorforward_lstm_92/transpose:y:0Nforward_lstm_92/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмo
%forward_lstm_92/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_92/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'forward_lstm_92/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┬
forward_lstm_92/strided_slice_2StridedSliceforward_lstm_92/transpose:y:0.forward_lstm_92/strided_slice_2/stack:output:00forward_lstm_92/strided_slice_2/stack_1:output:00forward_lstm_92/strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:                  *
shrink_axis_maskе
/forward_lstm_92/lstm_cell/MatMul/ReadVariableOpReadVariableOp8forward_lstm_92_lstm_cell_matmul_readvariableop_resource*
_output_shapes

: *
dtype0┐
 forward_lstm_92/lstm_cell/MatMulMatMul(forward_lstm_92/strided_slice_2:output:07forward_lstm_92/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          г
1forward_lstm_92/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp:forward_lstm_92_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0╣
"forward_lstm_92/lstm_cell/MatMul_1MatMulforward_lstm_92/zeros:output:09forward_lstm_92/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ▓
forward_lstm_92/lstm_cell/addAddV2*forward_lstm_92/lstm_cell/MatMul:product:0,forward_lstm_92/lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:          д
0forward_lstm_92/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp9forward_lstm_92_lstm_cell_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0╗
!forward_lstm_92/lstm_cell/BiasAddBiasAdd!forward_lstm_92/lstm_cell/add:z:08forward_lstm_92/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          k
)forward_lstm_92/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ё
forward_lstm_92/lstm_cell/splitSplit2forward_lstm_92/lstm_cell/split/split_dim:output:0*forward_lstm_92/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitѕ
!forward_lstm_92/lstm_cell/SigmoidSigmoid(forward_lstm_92/lstm_cell/split:output:0*
T0*'
_output_shapes
:         і
#forward_lstm_92/lstm_cell/Sigmoid_1Sigmoid(forward_lstm_92/lstm_cell/split:output:1*
T0*'
_output_shapes
:         А
forward_lstm_92/lstm_cell/mulMul'forward_lstm_92/lstm_cell/Sigmoid_1:y:0 forward_lstm_92/zeros_1:output:0*
T0*'
_output_shapes
:         ѓ
forward_lstm_92/lstm_cell/ReluRelu(forward_lstm_92/lstm_cell/split:output:2*
T0*'
_output_shapes
:         Г
forward_lstm_92/lstm_cell/mul_1Mul%forward_lstm_92/lstm_cell/Sigmoid:y:0,forward_lstm_92/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:         б
forward_lstm_92/lstm_cell/add_1AddV2!forward_lstm_92/lstm_cell/mul:z:0#forward_lstm_92/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:         і
#forward_lstm_92/lstm_cell/Sigmoid_2Sigmoid(forward_lstm_92/lstm_cell/split:output:3*
T0*'
_output_shapes
:         
 forward_lstm_92/lstm_cell/Relu_1Relu#forward_lstm_92/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:         ▒
forward_lstm_92/lstm_cell/mul_2Mul'forward_lstm_92/lstm_cell/Sigmoid_2:y:0.forward_lstm_92/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:         ~
-forward_lstm_92/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       У
forward_lstm_92/TensorArrayV2_1TensorListReserve6forward_lstm_92/TensorArrayV2_1/element_shape:output:0(forward_lstm_92/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмV
forward_lstm_92/timeConst*
_output_shapes
: *
dtype0*
value	B : s
(forward_lstm_92/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         d
"forward_lstm_92/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : └
forward_lstm_92/whileWhile+forward_lstm_92/while/loop_counter:output:01forward_lstm_92/while/maximum_iterations:output:0forward_lstm_92/time:output:0(forward_lstm_92/TensorArrayV2_1:handle:0forward_lstm_92/zeros:output:0 forward_lstm_92/zeros_1:output:0(forward_lstm_92/strided_slice_1:output:0Gforward_lstm_92/TensorArrayUnstack/TensorListFromTensor:output_handle:08forward_lstm_92_lstm_cell_matmul_readvariableop_resource:forward_lstm_92_lstm_cell_matmul_1_readvariableop_resource9forward_lstm_92_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*/
body'R%
#forward_lstm_92_while_body_28636866*/
cond'R%
#forward_lstm_92_while_cond_28636865*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Љ
@forward_lstm_92/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ч
2forward_lstm_92/TensorArrayV2Stack/TensorListStackTensorListStackforward_lstm_92/while:output:3Iforward_lstm_92/TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  *
element_dtype0x
%forward_lstm_92/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         q
'forward_lstm_92/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_92/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:О
forward_lstm_92/strided_slice_3StridedSlice;forward_lstm_92/TensorArrayV2Stack/TensorListStack:tensor:0.forward_lstm_92/strided_slice_3/stack:output:00forward_lstm_92/strided_slice_3/stack_1:output:00forward_lstm_92/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_masku
 forward_lstm_92/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ¤
forward_lstm_92/transpose_1	Transpose;forward_lstm_92/TensorArrayV2Stack/TensorListStack:tensor:0)forward_lstm_92/transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  k
forward_lstm_92/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    \
backward_lstm_92/ShapeShapeinputs_0*
T0*
_output_shapes
::ь¤n
$backward_lstm_92/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&backward_lstm_92/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&backward_lstm_92/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:д
backward_lstm_92/strided_sliceStridedSlicebackward_lstm_92/Shape:output:0-backward_lstm_92/strided_slice/stack:output:0/backward_lstm_92/strided_slice/stack_1:output:0/backward_lstm_92/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
backward_lstm_92/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :д
backward_lstm_92/zeros/packedPack'backward_lstm_92/strided_slice:output:0(backward_lstm_92/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:a
backward_lstm_92/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ъ
backward_lstm_92/zerosFill&backward_lstm_92/zeros/packed:output:0%backward_lstm_92/zeros/Const:output:0*
T0*'
_output_shapes
:         c
!backward_lstm_92/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ф
backward_lstm_92/zeros_1/packedPack'backward_lstm_92/strided_slice:output:0*backward_lstm_92/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:c
backward_lstm_92/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ц
backward_lstm_92/zeros_1Fill(backward_lstm_92/zeros_1/packed:output:0'backward_lstm_92/zeros_1/Const:output:0*
T0*'
_output_shapes
:         t
backward_lstm_92/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Б
backward_lstm_92/transpose	Transposeinputs_0(backward_lstm_92/transpose/perm:output:0*
T0*=
_output_shapes+
):'                           t
backward_lstm_92/Shape_1Shapebackward_lstm_92/transpose:y:0*
T0*
_output_shapes
::ь¤p
&backward_lstm_92/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_92/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(backward_lstm_92/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:░
 backward_lstm_92/strided_slice_1StridedSlice!backward_lstm_92/Shape_1:output:0/backward_lstm_92/strided_slice_1/stack:output:01backward_lstm_92/strided_slice_1/stack_1:output:01backward_lstm_92/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskw
,backward_lstm_92/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         у
backward_lstm_92/TensorArrayV2TensorListReserve5backward_lstm_92/TensorArrayV2/element_shape:output:0)backward_lstm_92/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмi
backward_lstm_92/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: ╣
backward_lstm_92/ReverseV2	ReverseV2backward_lstm_92/transpose:y:0(backward_lstm_92/ReverseV2/axis:output:0*
T0*=
_output_shapes+
):'                           Ќ
Fbackward_lstm_92/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        ў
8backward_lstm_92/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#backward_lstm_92/ReverseV2:output:0Obackward_lstm_92/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмp
&backward_lstm_92/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_92/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(backward_lstm_92/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:К
 backward_lstm_92/strided_slice_2StridedSlicebackward_lstm_92/transpose:y:0/backward_lstm_92/strided_slice_2/stack:output:01backward_lstm_92/strided_slice_2/stack_1:output:01backward_lstm_92/strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:                  *
shrink_axis_maskф
0backward_lstm_92/lstm_cell/MatMul/ReadVariableOpReadVariableOp9backward_lstm_92_lstm_cell_matmul_readvariableop_resource*
_output_shapes

: *
dtype0┬
!backward_lstm_92/lstm_cell/MatMulMatMul)backward_lstm_92/strided_slice_2:output:08backward_lstm_92/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          «
2backward_lstm_92/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp;backward_lstm_92_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0╝
#backward_lstm_92/lstm_cell/MatMul_1MatMulbackward_lstm_92/zeros:output:0:backward_lstm_92/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          х
backward_lstm_92/lstm_cell/addAddV2+backward_lstm_92/lstm_cell/MatMul:product:0-backward_lstm_92/lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:          е
1backward_lstm_92/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp:backward_lstm_92_lstm_cell_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Й
"backward_lstm_92/lstm_cell/BiasAddBiasAdd"backward_lstm_92/lstm_cell/add:z:09backward_lstm_92/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          l
*backward_lstm_92/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Є
 backward_lstm_92/lstm_cell/splitSplit3backward_lstm_92/lstm_cell/split/split_dim:output:0+backward_lstm_92/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitі
"backward_lstm_92/lstm_cell/SigmoidSigmoid)backward_lstm_92/lstm_cell/split:output:0*
T0*'
_output_shapes
:         ї
$backward_lstm_92/lstm_cell/Sigmoid_1Sigmoid)backward_lstm_92/lstm_cell/split:output:1*
T0*'
_output_shapes
:         ц
backward_lstm_92/lstm_cell/mulMul(backward_lstm_92/lstm_cell/Sigmoid_1:y:0!backward_lstm_92/zeros_1:output:0*
T0*'
_output_shapes
:         ё
backward_lstm_92/lstm_cell/ReluRelu)backward_lstm_92/lstm_cell/split:output:2*
T0*'
_output_shapes
:         ░
 backward_lstm_92/lstm_cell/mul_1Mul&backward_lstm_92/lstm_cell/Sigmoid:y:0-backward_lstm_92/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:         Ц
 backward_lstm_92/lstm_cell/add_1AddV2"backward_lstm_92/lstm_cell/mul:z:0$backward_lstm_92/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:         ї
$backward_lstm_92/lstm_cell/Sigmoid_2Sigmoid)backward_lstm_92/lstm_cell/split:output:3*
T0*'
_output_shapes
:         Ђ
!backward_lstm_92/lstm_cell/Relu_1Relu$backward_lstm_92/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:         ┤
 backward_lstm_92/lstm_cell/mul_2Mul(backward_lstm_92/lstm_cell/Sigmoid_2:y:0/backward_lstm_92/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:         
.backward_lstm_92/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       в
 backward_lstm_92/TensorArrayV2_1TensorListReserve7backward_lstm_92/TensorArrayV2_1/element_shape:output:0)backward_lstm_92/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмW
backward_lstm_92/timeConst*
_output_shapes
: *
dtype0*
value	B : t
)backward_lstm_92/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         e
#backward_lstm_92/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ╬
backward_lstm_92/whileWhile,backward_lstm_92/while/loop_counter:output:02backward_lstm_92/while/maximum_iterations:output:0backward_lstm_92/time:output:0)backward_lstm_92/TensorArrayV2_1:handle:0backward_lstm_92/zeros:output:0!backward_lstm_92/zeros_1:output:0)backward_lstm_92/strided_slice_1:output:0Hbackward_lstm_92/TensorArrayUnstack/TensorListFromTensor:output_handle:09backward_lstm_92_lstm_cell_matmul_readvariableop_resource;backward_lstm_92_lstm_cell_matmul_1_readvariableop_resource:backward_lstm_92_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*0
body(R&
$backward_lstm_92_while_body_28637007*0
cond(R&
$backward_lstm_92_while_cond_28637006*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations њ
Abackward_lstm_92/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ■
3backward_lstm_92/TensorArrayV2Stack/TensorListStackTensorListStackbackward_lstm_92/while:output:3Jbackward_lstm_92/TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  *
element_dtype0y
&backward_lstm_92/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         r
(backward_lstm_92/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_92/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:▄
 backward_lstm_92/strided_slice_3StridedSlice<backward_lstm_92/TensorArrayV2Stack/TensorListStack:tensor:0/backward_lstm_92/strided_slice_3/stack:output:01backward_lstm_92/strided_slice_3/stack_1:output:01backward_lstm_92/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskv
!backward_lstm_92/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          м
backward_lstm_92/transpose_1	Transpose<backward_lstm_92/TensorArrayV2Stack/TensorListStack:tensor:0*backward_lstm_92/transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  l
backward_lstm_92/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    X
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:љ
	ReverseV2	ReverseV2 backward_lstm_92/transpose_1:y:0ReverseV2/axis:output:0*
T0*4
_output_shapes"
 :                  M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Ц
concatConcatV2forward_lstm_92/transpose_1:y:0ReverseV2:output:0concat/axis:output:0*
N*
T0*4
_output_shapes"
 :                  k
IdentityIdentityconcat:output:0^NoOp*
T0*4
_output_shapes"
 :                  ѕ
NoOpNoOp2^backward_lstm_92/lstm_cell/BiasAdd/ReadVariableOp1^backward_lstm_92/lstm_cell/MatMul/ReadVariableOp3^backward_lstm_92/lstm_cell/MatMul_1/ReadVariableOp^backward_lstm_92/while1^forward_lstm_92/lstm_cell/BiasAdd/ReadVariableOp0^forward_lstm_92/lstm_cell/MatMul/ReadVariableOp2^forward_lstm_92/lstm_cell/MatMul_1/ReadVariableOp^forward_lstm_92/while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:'                           : : : : : : 2f
1backward_lstm_92/lstm_cell/BiasAdd/ReadVariableOp1backward_lstm_92/lstm_cell/BiasAdd/ReadVariableOp2d
0backward_lstm_92/lstm_cell/MatMul/ReadVariableOp0backward_lstm_92/lstm_cell/MatMul/ReadVariableOp2h
2backward_lstm_92/lstm_cell/MatMul_1/ReadVariableOp2backward_lstm_92/lstm_cell/MatMul_1/ReadVariableOp20
backward_lstm_92/whilebackward_lstm_92/while2d
0forward_lstm_92/lstm_cell/BiasAdd/ReadVariableOp0forward_lstm_92/lstm_cell/BiasAdd/ReadVariableOp2b
/forward_lstm_92/lstm_cell/MatMul/ReadVariableOp/forward_lstm_92/lstm_cell/MatMul/ReadVariableOp2f
1forward_lstm_92/lstm_cell/MatMul_1/ReadVariableOp1forward_lstm_92/lstm_cell/MatMul_1/ReadVariableOp2.
forward_lstm_92/whileforward_lstm_92/while:g c
=
_output_shapes+
):'                           
"
_user_specified_name
inputs_0:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
ѕ
Ў
,__inference_dense_592_layer_call_fn_28637857

inputs
unknown:
	unknown_0:
identityѕбStatefulPartitionedCallЯ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_dense_592_layer_call_and_return_conditional_losses_28633903s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs:($
"
_user_specified_name
28637851:($
"
_user_specified_name
28637853
Љ
I
-__inference_dropout_92_layer_call_fn_28637681

inputs
identity«
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
:* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *Q
fLRJ
H__inference_dropout_92_layer_call_and_return_conditional_losses_28636119[
IdentityIdentityPartitionedCall:output:0*
T0*"
_output_shapes
:"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
::J F
"
_output_shapes
:
 
_user_specified_nameinputs
ѕ
Ў
,__inference_dense_587_layer_call_fn_28637817

inputs
unknown:
	unknown_0:
identityѕбStatefulPartitionedCallЯ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_dense_587_layer_call_and_return_conditional_losses_28633827s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs:($
"
_user_specified_name
28637811:($
"
_user_specified_name
28637813
И
А
$backward_lstm_92_while_cond_28637582>
:backward_lstm_92_while_backward_lstm_92_while_loop_counterD
@backward_lstm_92_while_backward_lstm_92_while_maximum_iterations&
"backward_lstm_92_while_placeholder(
$backward_lstm_92_while_placeholder_1(
$backward_lstm_92_while_placeholder_2(
$backward_lstm_92_while_placeholder_3@
<backward_lstm_92_while_less_backward_lstm_92_strided_slice_1X
Tbackward_lstm_92_while_backward_lstm_92_while_cond_28637582___redundant_placeholder0X
Tbackward_lstm_92_while_backward_lstm_92_while_cond_28637582___redundant_placeholder1X
Tbackward_lstm_92_while_backward_lstm_92_while_cond_28637582___redundant_placeholder2X
Tbackward_lstm_92_while_backward_lstm_92_while_cond_28637582___redundant_placeholder3#
backward_lstm_92_while_identity
д
backward_lstm_92/while/LessLess"backward_lstm_92_while_placeholder<backward_lstm_92_while_less_backward_lstm_92_strided_slice_1*
T0*
_output_shapes
: m
backward_lstm_92/while/IdentityIdentitybackward_lstm_92/while/Less:z:0*
T0
*
_output_shapes
: "K
backward_lstm_92_while_identity(backward_lstm_92/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : ::: :::::[ W

_output_shapes
: 
=
_user_specified_name%#backward_lstm_92/while/loop_counter:a]

_output_shapes
: 
C
_user_specified_name+)backward_lstm_92/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

::$ 

_output_shapes

::XT

_output_shapes
: 
:
_user_specified_name" backward_lstm_92/strided_slice_1:

_output_shapes
:
ЌL
▒
#forward_lstm_92_while_body_28636578<
8forward_lstm_92_while_forward_lstm_92_while_loop_counterB
>forward_lstm_92_while_forward_lstm_92_while_maximum_iterations%
!forward_lstm_92_while_placeholder'
#forward_lstm_92_while_placeholder_1'
#forward_lstm_92_while_placeholder_2'
#forward_lstm_92_while_placeholder_3;
7forward_lstm_92_while_forward_lstm_92_strided_slice_1_0w
sforward_lstm_92_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_92_tensorarrayunstack_tensorlistfromtensor_0R
@forward_lstm_92_while_lstm_cell_matmul_readvariableop_resource_0: T
Bforward_lstm_92_while_lstm_cell_matmul_1_readvariableop_resource_0: O
Aforward_lstm_92_while_lstm_cell_biasadd_readvariableop_resource_0: "
forward_lstm_92_while_identity$
 forward_lstm_92_while_identity_1$
 forward_lstm_92_while_identity_2$
 forward_lstm_92_while_identity_3$
 forward_lstm_92_while_identity_4$
 forward_lstm_92_while_identity_59
5forward_lstm_92_while_forward_lstm_92_strided_slice_1u
qforward_lstm_92_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_92_tensorarrayunstack_tensorlistfromtensorP
>forward_lstm_92_while_lstm_cell_matmul_readvariableop_resource: R
@forward_lstm_92_while_lstm_cell_matmul_1_readvariableop_resource: M
?forward_lstm_92_while_lstm_cell_biasadd_readvariableop_resource: ѕб6forward_lstm_92/while/lstm_cell/BiasAdd/ReadVariableOpб5forward_lstm_92/while/lstm_cell/MatMul/ReadVariableOpб7forward_lstm_92/while/lstm_cell/MatMul_1/ReadVariableOpў
Gforward_lstm_92/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"         
9forward_lstm_92/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsforward_lstm_92_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_92_tensorarrayunstack_tensorlistfromtensor_0!forward_lstm_92_while_placeholderPforward_lstm_92/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:                  *
element_dtype0Х
5forward_lstm_92/while/lstm_cell/MatMul/ReadVariableOpReadVariableOp@forward_lstm_92_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0с
&forward_lstm_92/while/lstm_cell/MatMulMatMul@forward_lstm_92/while/TensorArrayV2Read/TensorListGetItem:item:0=forward_lstm_92/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ║
7forward_lstm_92/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpBforward_lstm_92_while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0╩
(forward_lstm_92/while/lstm_cell/MatMul_1MatMul#forward_lstm_92_while_placeholder_2?forward_lstm_92/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ─
#forward_lstm_92/while/lstm_cell/addAddV20forward_lstm_92/while/lstm_cell/MatMul:product:02forward_lstm_92/while/lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:          ┤
6forward_lstm_92/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOpAforward_lstm_92_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0═
'forward_lstm_92/while/lstm_cell/BiasAddBiasAdd'forward_lstm_92/while/lstm_cell/add:z:0>forward_lstm_92/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          q
/forward_lstm_92/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ќ
%forward_lstm_92/while/lstm_cell/splitSplit8forward_lstm_92/while/lstm_cell/split/split_dim:output:00forward_lstm_92/while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitћ
'forward_lstm_92/while/lstm_cell/SigmoidSigmoid.forward_lstm_92/while/lstm_cell/split:output:0*
T0*'
_output_shapes
:         ќ
)forward_lstm_92/while/lstm_cell/Sigmoid_1Sigmoid.forward_lstm_92/while/lstm_cell/split:output:1*
T0*'
_output_shapes
:         ░
#forward_lstm_92/while/lstm_cell/mulMul-forward_lstm_92/while/lstm_cell/Sigmoid_1:y:0#forward_lstm_92_while_placeholder_3*
T0*'
_output_shapes
:         ј
$forward_lstm_92/while/lstm_cell/ReluRelu.forward_lstm_92/while/lstm_cell/split:output:2*
T0*'
_output_shapes
:         ┐
%forward_lstm_92/while/lstm_cell/mul_1Mul+forward_lstm_92/while/lstm_cell/Sigmoid:y:02forward_lstm_92/while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:         ┤
%forward_lstm_92/while/lstm_cell/add_1AddV2'forward_lstm_92/while/lstm_cell/mul:z:0)forward_lstm_92/while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:         ќ
)forward_lstm_92/while/lstm_cell/Sigmoid_2Sigmoid.forward_lstm_92/while/lstm_cell/split:output:3*
T0*'
_output_shapes
:         І
&forward_lstm_92/while/lstm_cell/Relu_1Relu)forward_lstm_92/while/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:         ├
%forward_lstm_92/while/lstm_cell/mul_2Mul-forward_lstm_92/while/lstm_cell/Sigmoid_2:y:04forward_lstm_92/while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:         ѓ
:forward_lstm_92/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem#forward_lstm_92_while_placeholder_1!forward_lstm_92_while_placeholder)forward_lstm_92/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУм]
forward_lstm_92/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :ї
forward_lstm_92/while/addAddV2!forward_lstm_92_while_placeholder$forward_lstm_92/while/add/y:output:0*
T0*
_output_shapes
: _
forward_lstm_92/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Д
forward_lstm_92/while/add_1AddV28forward_lstm_92_while_forward_lstm_92_while_loop_counter&forward_lstm_92/while/add_1/y:output:0*
T0*
_output_shapes
: Ѕ
forward_lstm_92/while/IdentityIdentityforward_lstm_92/while/add_1:z:0^forward_lstm_92/while/NoOp*
T0*
_output_shapes
: ф
 forward_lstm_92/while/Identity_1Identity>forward_lstm_92_while_forward_lstm_92_while_maximum_iterations^forward_lstm_92/while/NoOp*
T0*
_output_shapes
: Ѕ
 forward_lstm_92/while/Identity_2Identityforward_lstm_92/while/add:z:0^forward_lstm_92/while/NoOp*
T0*
_output_shapes
: Х
 forward_lstm_92/while/Identity_3IdentityJforward_lstm_92/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^forward_lstm_92/while/NoOp*
T0*
_output_shapes
: д
 forward_lstm_92/while/Identity_4Identity)forward_lstm_92/while/lstm_cell/mul_2:z:0^forward_lstm_92/while/NoOp*
T0*'
_output_shapes
:         д
 forward_lstm_92/while/Identity_5Identity)forward_lstm_92/while/lstm_cell/add_1:z:0^forward_lstm_92/while/NoOp*
T0*'
_output_shapes
:         с
forward_lstm_92/while/NoOpNoOp7^forward_lstm_92/while/lstm_cell/BiasAdd/ReadVariableOp6^forward_lstm_92/while/lstm_cell/MatMul/ReadVariableOp8^forward_lstm_92/while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "p
5forward_lstm_92_while_forward_lstm_92_strided_slice_17forward_lstm_92_while_forward_lstm_92_strided_slice_1_0"I
forward_lstm_92_while_identity'forward_lstm_92/while/Identity:output:0"M
 forward_lstm_92_while_identity_1)forward_lstm_92/while/Identity_1:output:0"M
 forward_lstm_92_while_identity_2)forward_lstm_92/while/Identity_2:output:0"M
 forward_lstm_92_while_identity_3)forward_lstm_92/while/Identity_3:output:0"M
 forward_lstm_92_while_identity_4)forward_lstm_92/while/Identity_4:output:0"M
 forward_lstm_92_while_identity_5)forward_lstm_92/while/Identity_5:output:0"ё
?forward_lstm_92_while_lstm_cell_biasadd_readvariableop_resourceAforward_lstm_92_while_lstm_cell_biasadd_readvariableop_resource_0"є
@forward_lstm_92_while_lstm_cell_matmul_1_readvariableop_resourceBforward_lstm_92_while_lstm_cell_matmul_1_readvariableop_resource_0"ѓ
>forward_lstm_92_while_lstm_cell_matmul_readvariableop_resource@forward_lstm_92_while_lstm_cell_matmul_readvariableop_resource_0"У
qforward_lstm_92_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_92_tensorarrayunstack_tensorlistfromtensorsforward_lstm_92_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_92_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2p
6forward_lstm_92/while/lstm_cell/BiasAdd/ReadVariableOp6forward_lstm_92/while/lstm_cell/BiasAdd/ReadVariableOp2n
5forward_lstm_92/while/lstm_cell/MatMul/ReadVariableOp5forward_lstm_92/while/lstm_cell/MatMul/ReadVariableOp2r
7forward_lstm_92/while/lstm_cell/MatMul_1/ReadVariableOp7forward_lstm_92/while/lstm_cell/MatMul_1/ReadVariableOp:Z V

_output_shapes
: 
<
_user_specified_name$"forward_lstm_92/while/loop_counter:`\

_output_shapes
: 
B
_user_specified_name*(forward_lstm_92/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :WS

_output_shapes
: 
9
_user_specified_name!forward_lstm_92/strided_slice_1:ok

_output_shapes
: 
Q
_user_specified_name97forward_lstm_92/TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
Ф
ѓ
G__inference_lstm_cell_layer_call_and_return_conditional_losses_28639292

inputs
states_0
states_10
matmul_readvariableop_resource: 2
 matmul_1_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity

identity_1

identity_2ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:          r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         N
ReluRelusplit:output:2*
T0*'
_output_shapes
:         _
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         m
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :         :         : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:QM
'
_output_shapes
:         
"
_user_specified_name
states_0:QM
'
_output_shapes
:         
"
_user_specified_name
states_1:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
С
■
G__inference_dense_587_layer_call_and_return_conditional_losses_28633827

inputs3
!tensordot_readvariableop_resource:-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбTensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       S
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
::ь¤Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ╗
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ┐
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ю
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:         і
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:                  і
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         [
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Д
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Ѓ
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:         T
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:         e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:         V
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:         
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
а	
╝
2__inference_forward_lstm_92_layer_call_fn_28637932

inputs
unknown: 
	unknown_0: 
	unknown_1: 
identityѕбStatefulPartitionedCallЧ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *V
fQRO
M__inference_forward_lstm_92_layer_call_and_return_conditional_losses_28635097|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :                  <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'                           : : : 22
StatefulPartitionedCallStatefulPartitionedCall:e a
=
_output_shapes+
):'                           
 
_user_specified_nameinputs:($
"
_user_specified_name
28637924:($
"
_user_specified_name
28637926:($
"
_user_specified_name
28637928
О
џ
,__inference_dense_593_layer_call_fn_28637718

inputs
unknown:	ђ
	unknown_0:
identityѕбStatefulPartitionedCallМ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_dense_593_layer_call_and_return_conditional_losses_28635746f
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*"
_input_shapes
:	ђ: : 22
StatefulPartitionedCallStatefulPartitionedCall:G C

_output_shapes
:	ђ
 
_user_specified_nameinputs:($
"
_user_specified_name
28637712:($
"
_user_specified_name
28637714
И
А
$backward_lstm_92_while_cond_28635614>
:backward_lstm_92_while_backward_lstm_92_while_loop_counterD
@backward_lstm_92_while_backward_lstm_92_while_maximum_iterations&
"backward_lstm_92_while_placeholder(
$backward_lstm_92_while_placeholder_1(
$backward_lstm_92_while_placeholder_2(
$backward_lstm_92_while_placeholder_3@
<backward_lstm_92_while_less_backward_lstm_92_strided_slice_1X
Tbackward_lstm_92_while_backward_lstm_92_while_cond_28635614___redundant_placeholder0X
Tbackward_lstm_92_while_backward_lstm_92_while_cond_28635614___redundant_placeholder1X
Tbackward_lstm_92_while_backward_lstm_92_while_cond_28635614___redundant_placeholder2X
Tbackward_lstm_92_while_backward_lstm_92_while_cond_28635614___redundant_placeholder3#
backward_lstm_92_while_identity
д
backward_lstm_92/while/LessLess"backward_lstm_92_while_placeholder<backward_lstm_92_while_less_backward_lstm_92_strided_slice_1*
T0*
_output_shapes
: m
backward_lstm_92/while/IdentityIdentitybackward_lstm_92/while/Less:z:0*
T0
*
_output_shapes
: "K
backward_lstm_92_while_identity(backward_lstm_92/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : ::: :::::[ W

_output_shapes
: 
=
_user_specified_name%#backward_lstm_92/while/loop_counter:a]

_output_shapes
: 
C
_user_specified_name+)backward_lstm_92/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

::$ 

_output_shapes

::XT

_output_shapes
: 
:
_user_specified_name" backward_lstm_92/strided_slice_1:

_output_shapes
:
Д	
Я
L__inference_sequential_407_layer_call_and_return_conditional_losses_28633910
dense_592_input$
dense_592_28633904: 
dense_592_28633906:
identityѕб!dense_592/StatefulPartitionedCallЄ
!dense_592/StatefulPartitionedCallStatefulPartitionedCalldense_592_inputdense_592_28633904dense_592_28633906*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_dense_592_layer_call_and_return_conditional_losses_28633903}
IdentityIdentity*dense_592/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         F
NoOpNoOp"^dense_592/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         : : 2F
!dense_592/StatefulPartitionedCall!dense_592/StatefulPartitionedCall:\ X
+
_output_shapes
:         
)
_user_specified_namedense_592_input:($
"
_user_specified_name
28633904:($
"
_user_specified_name
28633906
њ
X
,__inference_lambda_97_layer_call_fn_28636415
inputs_0
inputs_1
identityЙ
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *&
_output_shapes
:* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_lambda_97_layer_call_and_return_conditional_losses_28635780_
IdentityIdentityPartitionedCall:output:0*
T0*&
_output_shapes
:"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:::L H
"
_output_shapes
:
"
_user_specified_name
inputs_0:LH
"
_output_shapes
:
"
_user_specified_name
inputs_1
лK
Л
$backward_lstm_92_while_body_28636013>
:backward_lstm_92_while_backward_lstm_92_while_loop_counterD
@backward_lstm_92_while_backward_lstm_92_while_maximum_iterations&
"backward_lstm_92_while_placeholder(
$backward_lstm_92_while_placeholder_1(
$backward_lstm_92_while_placeholder_2(
$backward_lstm_92_while_placeholder_3=
9backward_lstm_92_while_backward_lstm_92_strided_slice_1_0y
ubackward_lstm_92_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_92_tensorarrayunstack_tensorlistfromtensor_0S
Abackward_lstm_92_while_lstm_cell_matmul_readvariableop_resource_0: U
Cbackward_lstm_92_while_lstm_cell_matmul_1_readvariableop_resource_0: P
Bbackward_lstm_92_while_lstm_cell_biasadd_readvariableop_resource_0: #
backward_lstm_92_while_identity%
!backward_lstm_92_while_identity_1%
!backward_lstm_92_while_identity_2%
!backward_lstm_92_while_identity_3%
!backward_lstm_92_while_identity_4%
!backward_lstm_92_while_identity_5;
7backward_lstm_92_while_backward_lstm_92_strided_slice_1w
sbackward_lstm_92_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_92_tensorarrayunstack_tensorlistfromtensorQ
?backward_lstm_92_while_lstm_cell_matmul_readvariableop_resource: S
Abackward_lstm_92_while_lstm_cell_matmul_1_readvariableop_resource: N
@backward_lstm_92_while_lstm_cell_biasadd_readvariableop_resource: ѕб7backward_lstm_92/while/lstm_cell/BiasAdd/ReadVariableOpб6backward_lstm_92/while/lstm_cell/MatMul/ReadVariableOpб8backward_lstm_92/while/lstm_cell/MatMul_1/ReadVariableOpЎ
Hbackward_lstm_92/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      Ы
:backward_lstm_92/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemubackward_lstm_92_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_92_tensorarrayunstack_tensorlistfromtensor_0"backward_lstm_92_while_placeholderQbackward_lstm_92/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

:*
element_dtype0И
6backward_lstm_92/while/lstm_cell/MatMul/ReadVariableOpReadVariableOpAbackward_lstm_92_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0П
'backward_lstm_92/while/lstm_cell/MatMulMatMulAbackward_lstm_92/while/TensorArrayV2Read/TensorListGetItem:item:0>backward_lstm_92/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

: ╝
8backward_lstm_92/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpCbackward_lstm_92_while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0─
)backward_lstm_92/while/lstm_cell/MatMul_1MatMul$backward_lstm_92_while_placeholder_2@backward_lstm_92/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes

: Й
$backward_lstm_92/while/lstm_cell/addAddV21backward_lstm_92/while/lstm_cell/MatMul:product:03backward_lstm_92/while/lstm_cell/MatMul_1:product:0*
T0*
_output_shapes

: Х
7backward_lstm_92/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOpBbackward_lstm_92_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0К
(backward_lstm_92/while/lstm_cell/BiasAddBiasAdd(backward_lstm_92/while/lstm_cell/add:z:0?backward_lstm_92/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

: r
0backward_lstm_92/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ш
&backward_lstm_92/while/lstm_cell/splitSplit9backward_lstm_92/while/lstm_cell/split/split_dim:output:01backward_lstm_92/while/lstm_cell/BiasAdd:output:0*
T0*<
_output_shapes*
(::::*
	num_splitЇ
(backward_lstm_92/while/lstm_cell/SigmoidSigmoid/backward_lstm_92/while/lstm_cell/split:output:0*
T0*
_output_shapes

:Ј
*backward_lstm_92/while/lstm_cell/Sigmoid_1Sigmoid/backward_lstm_92/while/lstm_cell/split:output:1*
T0*
_output_shapes

:ф
$backward_lstm_92/while/lstm_cell/mulMul.backward_lstm_92/while/lstm_cell/Sigmoid_1:y:0$backward_lstm_92_while_placeholder_3*
T0*
_output_shapes

:Є
%backward_lstm_92/while/lstm_cell/ReluRelu/backward_lstm_92/while/lstm_cell/split:output:2*
T0*
_output_shapes

:╣
&backward_lstm_92/while/lstm_cell/mul_1Mul,backward_lstm_92/while/lstm_cell/Sigmoid:y:03backward_lstm_92/while/lstm_cell/Relu:activations:0*
T0*
_output_shapes

:«
&backward_lstm_92/while/lstm_cell/add_1AddV2(backward_lstm_92/while/lstm_cell/mul:z:0*backward_lstm_92/while/lstm_cell/mul_1:z:0*
T0*
_output_shapes

:Ј
*backward_lstm_92/while/lstm_cell/Sigmoid_2Sigmoid/backward_lstm_92/while/lstm_cell/split:output:3*
T0*
_output_shapes

:ё
'backward_lstm_92/while/lstm_cell/Relu_1Relu*backward_lstm_92/while/lstm_cell/add_1:z:0*
T0*
_output_shapes

:й
&backward_lstm_92/while/lstm_cell/mul_2Mul.backward_lstm_92/while/lstm_cell/Sigmoid_2:y:05backward_lstm_92/while/lstm_cell/Relu_1:activations:0*
T0*
_output_shapes

:є
;backward_lstm_92/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem$backward_lstm_92_while_placeholder_1"backward_lstm_92_while_placeholder*backward_lstm_92/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУм^
backward_lstm_92/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Ј
backward_lstm_92/while/addAddV2"backward_lstm_92_while_placeholder%backward_lstm_92/while/add/y:output:0*
T0*
_output_shapes
: `
backward_lstm_92/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Ф
backward_lstm_92/while/add_1AddV2:backward_lstm_92_while_backward_lstm_92_while_loop_counter'backward_lstm_92/while/add_1/y:output:0*
T0*
_output_shapes
: ї
backward_lstm_92/while/IdentityIdentity backward_lstm_92/while/add_1:z:0^backward_lstm_92/while/NoOp*
T0*
_output_shapes
: «
!backward_lstm_92/while/Identity_1Identity@backward_lstm_92_while_backward_lstm_92_while_maximum_iterations^backward_lstm_92/while/NoOp*
T0*
_output_shapes
: ї
!backward_lstm_92/while/Identity_2Identitybackward_lstm_92/while/add:z:0^backward_lstm_92/while/NoOp*
T0*
_output_shapes
: ╣
!backward_lstm_92/while/Identity_3IdentityKbackward_lstm_92/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^backward_lstm_92/while/NoOp*
T0*
_output_shapes
: а
!backward_lstm_92/while/Identity_4Identity*backward_lstm_92/while/lstm_cell/mul_2:z:0^backward_lstm_92/while/NoOp*
T0*
_output_shapes

:а
!backward_lstm_92/while/Identity_5Identity*backward_lstm_92/while/lstm_cell/add_1:z:0^backward_lstm_92/while/NoOp*
T0*
_output_shapes

:у
backward_lstm_92/while/NoOpNoOp8^backward_lstm_92/while/lstm_cell/BiasAdd/ReadVariableOp7^backward_lstm_92/while/lstm_cell/MatMul/ReadVariableOp9^backward_lstm_92/while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "t
7backward_lstm_92_while_backward_lstm_92_strided_slice_19backward_lstm_92_while_backward_lstm_92_strided_slice_1_0"K
backward_lstm_92_while_identity(backward_lstm_92/while/Identity:output:0"O
!backward_lstm_92_while_identity_1*backward_lstm_92/while/Identity_1:output:0"O
!backward_lstm_92_while_identity_2*backward_lstm_92/while/Identity_2:output:0"O
!backward_lstm_92_while_identity_3*backward_lstm_92/while/Identity_3:output:0"O
!backward_lstm_92_while_identity_4*backward_lstm_92/while/Identity_4:output:0"O
!backward_lstm_92_while_identity_5*backward_lstm_92/while/Identity_5:output:0"є
@backward_lstm_92_while_lstm_cell_biasadd_readvariableop_resourceBbackward_lstm_92_while_lstm_cell_biasadd_readvariableop_resource_0"ѕ
Abackward_lstm_92_while_lstm_cell_matmul_1_readvariableop_resourceCbackward_lstm_92_while_lstm_cell_matmul_1_readvariableop_resource_0"ё
?backward_lstm_92_while_lstm_cell_matmul_readvariableop_resourceAbackward_lstm_92_while_lstm_cell_matmul_readvariableop_resource_0"В
sbackward_lstm_92_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_92_tensorarrayunstack_tensorlistfromtensorubackward_lstm_92_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_92_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : ::: : : : : 2r
7backward_lstm_92/while/lstm_cell/BiasAdd/ReadVariableOp7backward_lstm_92/while/lstm_cell/BiasAdd/ReadVariableOp2p
6backward_lstm_92/while/lstm_cell/MatMul/ReadVariableOp6backward_lstm_92/while/lstm_cell/MatMul/ReadVariableOp2t
8backward_lstm_92/while/lstm_cell/MatMul_1/ReadVariableOp8backward_lstm_92/while/lstm_cell/MatMul_1/ReadVariableOp:[ W

_output_shapes
: 
=
_user_specified_name%#backward_lstm_92/while/loop_counter:a]

_output_shapes
: 
C
_user_specified_name+)backward_lstm_92/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

::$ 

_output_shapes

::XT

_output_shapes
: 
:
_user_specified_name" backward_lstm_92/strided_slice_1:pl

_output_shapes
: 
R
_user_specified_name:8backward_lstm_92/TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
б	
й
3__inference_backward_lstm_92_layer_call_fn_28638537

inputs
unknown: 
	unknown_0: 
	unknown_1: 
identityѕбStatefulPartitionedCall§
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *W
fRRP
N__inference_backward_lstm_92_layer_call_and_return_conditional_losses_28634939|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :                  <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'                           : : : 22
StatefulPartitionedCallStatefulPartitionedCall:e a
=
_output_shapes+
):'                           
 
_user_specified_nameinputs:($
"
_user_specified_name
28638529:($
"
_user_specified_name
28638531:($
"
_user_specified_name
28638533
Ѕљ
Ф
#__inference__wrapped_model_28633642
input_3M
;topk_bilstm_moe_dense_576_tensordot_readvariableop_resource:G
9topk_bilstm_moe_dense_576_biasadd_readvariableop_resource:\
Jtopk_bilstm_moe_sequential_392_dense_577_tensordot_readvariableop_resource:V
Htopk_bilstm_moe_sequential_392_dense_577_biasadd_readvariableop_resource:\
Jtopk_bilstm_moe_sequential_397_dense_582_tensordot_readvariableop_resource:V
Htopk_bilstm_moe_sequential_397_dense_582_biasadd_readvariableop_resource:\
Jtopk_bilstm_moe_sequential_402_dense_587_tensordot_readvariableop_resource:V
Htopk_bilstm_moe_sequential_402_dense_587_biasadd_readvariableop_resource:\
Jtopk_bilstm_moe_sequential_407_dense_592_tensordot_readvariableop_resource:V
Htopk_bilstm_moe_sequential_407_dense_592_biasadd_readvariableop_resource:k
Ytopk_bilstm_moe_bidirectional_92_forward_lstm_92_lstm_cell_matmul_readvariableop_resource: m
[topk_bilstm_moe_bidirectional_92_forward_lstm_92_lstm_cell_matmul_1_readvariableop_resource: h
Ztopk_bilstm_moe_bidirectional_92_forward_lstm_92_lstm_cell_biasadd_readvariableop_resource: l
Ztopk_bilstm_moe_bidirectional_92_backward_lstm_92_lstm_cell_matmul_readvariableop_resource: n
\topk_bilstm_moe_bidirectional_92_backward_lstm_92_lstm_cell_matmul_1_readvariableop_resource: i
[topk_bilstm_moe_bidirectional_92_backward_lstm_92_lstm_cell_biasadd_readvariableop_resource: K
8topk_bilstm_moe_dense_593_matmul_readvariableop_resource:	ђG
9topk_bilstm_moe_dense_593_biasadd_readvariableop_resource:
identityѕбRtopk_bilstm_moe/bidirectional_92/backward_lstm_92/lstm_cell/BiasAdd/ReadVariableOpбQtopk_bilstm_moe/bidirectional_92/backward_lstm_92/lstm_cell/MatMul/ReadVariableOpбStopk_bilstm_moe/bidirectional_92/backward_lstm_92/lstm_cell/MatMul_1/ReadVariableOpб7topk_bilstm_moe/bidirectional_92/backward_lstm_92/whileбQtopk_bilstm_moe/bidirectional_92/forward_lstm_92/lstm_cell/BiasAdd/ReadVariableOpбPtopk_bilstm_moe/bidirectional_92/forward_lstm_92/lstm_cell/MatMul/ReadVariableOpбRtopk_bilstm_moe/bidirectional_92/forward_lstm_92/lstm_cell/MatMul_1/ReadVariableOpб6topk_bilstm_moe/bidirectional_92/forward_lstm_92/whileб0topk_bilstm_moe/dense_576/BiasAdd/ReadVariableOpб2topk_bilstm_moe/dense_576/Tensordot/ReadVariableOpб0topk_bilstm_moe/dense_593/BiasAdd/ReadVariableOpб/topk_bilstm_moe/dense_593/MatMul/ReadVariableOpб?topk_bilstm_moe/sequential_392/dense_577/BiasAdd/ReadVariableOpбAtopk_bilstm_moe/sequential_392/dense_577/Tensordot/ReadVariableOpб?topk_bilstm_moe/sequential_397/dense_582/BiasAdd/ReadVariableOpбAtopk_bilstm_moe/sequential_397/dense_582/Tensordot/ReadVariableOpб?topk_bilstm_moe/sequential_402/dense_587/BiasAdd/ReadVariableOpбAtopk_bilstm_moe/sequential_402/dense_587/Tensordot/ReadVariableOpб?topk_bilstm_moe/sequential_407/dense_592/BiasAdd/ReadVariableOpбAtopk_bilstm_moe/sequential_407/dense_592/Tensordot/ReadVariableOp«
2topk_bilstm_moe/dense_576/Tensordot/ReadVariableOpReadVariableOp;topk_bilstm_moe_dense_576_tensordot_readvariableop_resource*
_output_shapes

:*
dtype0ѓ
1topk_bilstm_moe/dense_576/Tensordot/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ђ     Ц
+topk_bilstm_moe/dense_576/Tensordot/ReshapeReshapeinput_3:topk_bilstm_moe/dense_576/Tensordot/Reshape/shape:output:0*
T0*
_output_shapes
:	ђл
*topk_bilstm_moe/dense_576/Tensordot/MatMulMatMul4topk_bilstm_moe/dense_576/Tensordot/Reshape:output:0:topk_bilstm_moe/dense_576/Tensordot/ReadVariableOp:value:0*
T0*
_output_shapes
:	ђ~
)topk_bilstm_moe/dense_576/Tensordot/shapeConst*
_output_shapes
:*
dtype0*!
valueB"         ┼
#topk_bilstm_moe/dense_576/TensordotReshape4topk_bilstm_moe/dense_576/Tensordot/MatMul:product:02topk_bilstm_moe/dense_576/Tensordot/shape:output:0*
T0*"
_output_shapes
:д
0topk_bilstm_moe/dense_576/BiasAdd/ReadVariableOpReadVariableOp9topk_bilstm_moe_dense_576_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0┴
!topk_bilstm_moe/dense_576/BiasAddBiasAdd,topk_bilstm_moe/dense_576/Tensordot:output:08topk_bilstm_moe/dense_576/BiasAdd/ReadVariableOp:value:0*
T0*"
_output_shapes
:Ё
!topk_bilstm_moe/dense_576/SoftmaxSoftmax*topk_bilstm_moe/dense_576/BiasAdd:output:0*
T0*"
_output_shapes
:j
(topk_bilstm_moe/tf.math.top_k_2/TopKV2/kConst*
_output_shapes
: *
dtype0*
value	B :╦
&topk_bilstm_moe/tf.math.top_k_2/TopKV2TopKV2+topk_bilstm_moe/dense_576/Softmax:softmax:01topk_bilstm_moe/tf.math.top_k_2/TopKV2/k:output:0*
T0*0
_output_shapes
::r
-topk_bilstm_moe/tf.one_hot_2/one_hot/on_valueConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?s
.topk_bilstm_moe/tf.one_hot_2/one_hot/off_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    l
*topk_bilstm_moe/tf.one_hot_2/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :┴
$topk_bilstm_moe/tf.one_hot_2/one_hotOneHot0topk_bilstm_moe/tf.math.top_k_2/TopKV2:indices:03topk_bilstm_moe/tf.one_hot_2/one_hot/depth:output:06topk_bilstm_moe/tf.one_hot_2/one_hot/on_value:output:07topk_bilstm_moe/tf.one_hot_2/one_hot/off_value:output:0*
T0*
TI0*&
_output_shapes
:С
'topk_bilstm_moe/lambda_96/einsum/EinsumEinsum/topk_bilstm_moe/tf.math.top_k_2/TopKV2:values:0-topk_bilstm_moe/tf.one_hot_2/one_hot:output:0*
N*
T0*"
_output_shapes
:*
equationabc,abcd->abd├
'topk_bilstm_moe/lambda_97/einsum/EinsumEinsuminput_30topk_bilstm_moe/lambda_96/einsum/Einsum:output:0*
N*
T0*&
_output_shapes
:*
equationabc,abd->dabc┬
$topk_bilstm_moe/tf.unstack_2/unstackUnpack0topk_bilstm_moe/lambda_97/einsum/Einsum:output:0*
T0*L
_output_shapes:
8::::*	
num╠
Atopk_bilstm_moe/sequential_392/dense_577/Tensordot/ReadVariableOpReadVariableOpJtopk_bilstm_moe_sequential_392_dense_577_tensordot_readvariableop_resource*
_output_shapes

:*
dtype0Љ
@topk_bilstm_moe/sequential_392/dense_577/Tensordot/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ђ     ж
:topk_bilstm_moe/sequential_392/dense_577/Tensordot/ReshapeReshape-topk_bilstm_moe/tf.unstack_2/unstack:output:0Itopk_bilstm_moe/sequential_392/dense_577/Tensordot/Reshape/shape:output:0*
T0*
_output_shapes
:	ђ§
9topk_bilstm_moe/sequential_392/dense_577/Tensordot/MatMulMatMulCtopk_bilstm_moe/sequential_392/dense_577/Tensordot/Reshape:output:0Itopk_bilstm_moe/sequential_392/dense_577/Tensordot/ReadVariableOp:value:0*
T0*
_output_shapes
:	ђЇ
8topk_bilstm_moe/sequential_392/dense_577/Tensordot/shapeConst*
_output_shapes
:*
dtype0*!
valueB"         Ы
2topk_bilstm_moe/sequential_392/dense_577/TensordotReshapeCtopk_bilstm_moe/sequential_392/dense_577/Tensordot/MatMul:product:0Atopk_bilstm_moe/sequential_392/dense_577/Tensordot/shape:output:0*
T0*"
_output_shapes
:─
?topk_bilstm_moe/sequential_392/dense_577/BiasAdd/ReadVariableOpReadVariableOpHtopk_bilstm_moe_sequential_392_dense_577_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ь
0topk_bilstm_moe/sequential_392/dense_577/BiasAddBiasAdd;topk_bilstm_moe/sequential_392/dense_577/Tensordot:output:0Gtopk_bilstm_moe/sequential_392/dense_577/BiasAdd/ReadVariableOp:value:0*
T0*"
_output_shapes
:Ю
-topk_bilstm_moe/sequential_392/dense_577/ReluRelu9topk_bilstm_moe/sequential_392/dense_577/BiasAdd:output:0*
T0*"
_output_shapes
:╠
Atopk_bilstm_moe/sequential_397/dense_582/Tensordot/ReadVariableOpReadVariableOpJtopk_bilstm_moe_sequential_397_dense_582_tensordot_readvariableop_resource*
_output_shapes

:*
dtype0Љ
@topk_bilstm_moe/sequential_397/dense_582/Tensordot/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ђ     ж
:topk_bilstm_moe/sequential_397/dense_582/Tensordot/ReshapeReshape-topk_bilstm_moe/tf.unstack_2/unstack:output:1Itopk_bilstm_moe/sequential_397/dense_582/Tensordot/Reshape/shape:output:0*
T0*
_output_shapes
:	ђ§
9topk_bilstm_moe/sequential_397/dense_582/Tensordot/MatMulMatMulCtopk_bilstm_moe/sequential_397/dense_582/Tensordot/Reshape:output:0Itopk_bilstm_moe/sequential_397/dense_582/Tensordot/ReadVariableOp:value:0*
T0*
_output_shapes
:	ђЇ
8topk_bilstm_moe/sequential_397/dense_582/Tensordot/shapeConst*
_output_shapes
:*
dtype0*!
valueB"         Ы
2topk_bilstm_moe/sequential_397/dense_582/TensordotReshapeCtopk_bilstm_moe/sequential_397/dense_582/Tensordot/MatMul:product:0Atopk_bilstm_moe/sequential_397/dense_582/Tensordot/shape:output:0*
T0*"
_output_shapes
:─
?topk_bilstm_moe/sequential_397/dense_582/BiasAdd/ReadVariableOpReadVariableOpHtopk_bilstm_moe_sequential_397_dense_582_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ь
0topk_bilstm_moe/sequential_397/dense_582/BiasAddBiasAdd;topk_bilstm_moe/sequential_397/dense_582/Tensordot:output:0Gtopk_bilstm_moe/sequential_397/dense_582/BiasAdd/ReadVariableOp:value:0*
T0*"
_output_shapes
:Ю
-topk_bilstm_moe/sequential_397/dense_582/ReluRelu9topk_bilstm_moe/sequential_397/dense_582/BiasAdd:output:0*
T0*"
_output_shapes
:╠
Atopk_bilstm_moe/sequential_402/dense_587/Tensordot/ReadVariableOpReadVariableOpJtopk_bilstm_moe_sequential_402_dense_587_tensordot_readvariableop_resource*
_output_shapes

:*
dtype0Љ
@topk_bilstm_moe/sequential_402/dense_587/Tensordot/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ђ     ж
:topk_bilstm_moe/sequential_402/dense_587/Tensordot/ReshapeReshape-topk_bilstm_moe/tf.unstack_2/unstack:output:2Itopk_bilstm_moe/sequential_402/dense_587/Tensordot/Reshape/shape:output:0*
T0*
_output_shapes
:	ђ§
9topk_bilstm_moe/sequential_402/dense_587/Tensordot/MatMulMatMulCtopk_bilstm_moe/sequential_402/dense_587/Tensordot/Reshape:output:0Itopk_bilstm_moe/sequential_402/dense_587/Tensordot/ReadVariableOp:value:0*
T0*
_output_shapes
:	ђЇ
8topk_bilstm_moe/sequential_402/dense_587/Tensordot/shapeConst*
_output_shapes
:*
dtype0*!
valueB"         Ы
2topk_bilstm_moe/sequential_402/dense_587/TensordotReshapeCtopk_bilstm_moe/sequential_402/dense_587/Tensordot/MatMul:product:0Atopk_bilstm_moe/sequential_402/dense_587/Tensordot/shape:output:0*
T0*"
_output_shapes
:─
?topk_bilstm_moe/sequential_402/dense_587/BiasAdd/ReadVariableOpReadVariableOpHtopk_bilstm_moe_sequential_402_dense_587_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ь
0topk_bilstm_moe/sequential_402/dense_587/BiasAddBiasAdd;topk_bilstm_moe/sequential_402/dense_587/Tensordot:output:0Gtopk_bilstm_moe/sequential_402/dense_587/BiasAdd/ReadVariableOp:value:0*
T0*"
_output_shapes
:Ю
-topk_bilstm_moe/sequential_402/dense_587/ReluRelu9topk_bilstm_moe/sequential_402/dense_587/BiasAdd:output:0*
T0*"
_output_shapes
:╠
Atopk_bilstm_moe/sequential_407/dense_592/Tensordot/ReadVariableOpReadVariableOpJtopk_bilstm_moe_sequential_407_dense_592_tensordot_readvariableop_resource*
_output_shapes

:*
dtype0Љ
@topk_bilstm_moe/sequential_407/dense_592/Tensordot/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ђ     ж
:topk_bilstm_moe/sequential_407/dense_592/Tensordot/ReshapeReshape-topk_bilstm_moe/tf.unstack_2/unstack:output:3Itopk_bilstm_moe/sequential_407/dense_592/Tensordot/Reshape/shape:output:0*
T0*
_output_shapes
:	ђ§
9topk_bilstm_moe/sequential_407/dense_592/Tensordot/MatMulMatMulCtopk_bilstm_moe/sequential_407/dense_592/Tensordot/Reshape:output:0Itopk_bilstm_moe/sequential_407/dense_592/Tensordot/ReadVariableOp:value:0*
T0*
_output_shapes
:	ђЇ
8topk_bilstm_moe/sequential_407/dense_592/Tensordot/shapeConst*
_output_shapes
:*
dtype0*!
valueB"         Ы
2topk_bilstm_moe/sequential_407/dense_592/TensordotReshapeCtopk_bilstm_moe/sequential_407/dense_592/Tensordot/MatMul:product:0Atopk_bilstm_moe/sequential_407/dense_592/Tensordot/shape:output:0*
T0*"
_output_shapes
:─
?topk_bilstm_moe/sequential_407/dense_592/BiasAdd/ReadVariableOpReadVariableOpHtopk_bilstm_moe_sequential_407_dense_592_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ь
0topk_bilstm_moe/sequential_407/dense_592/BiasAddBiasAdd;topk_bilstm_moe/sequential_407/dense_592/Tensordot:output:0Gtopk_bilstm_moe/sequential_407/dense_592/BiasAdd/ReadVariableOp:value:0*
T0*"
_output_shapes
:Ю
-topk_bilstm_moe/sequential_407/dense_592/ReluRelu9topk_bilstm_moe/sequential_407/dense_592/BiasAdd:output:0*
T0*"
_output_shapes
:с
!topk_bilstm_moe/tf.stack_93/stackPack;topk_bilstm_moe/sequential_392/dense_577/Relu:activations:0;topk_bilstm_moe/sequential_397/dense_582/Relu:activations:0;topk_bilstm_moe/sequential_402/dense_587/Relu:activations:0;topk_bilstm_moe/sequential_407/dense_592/Relu:activations:0*
N*
T0*&
_output_shapes
:*

axisР
'topk_bilstm_moe/lambda_98/einsum/EinsumEinsum*topk_bilstm_moe/tf.stack_93/stack:output:00topk_bilstm_moe/lambda_96/einsum/Einsum:output:0*
N*
T0*"
_output_shapes
:*
equationabcd,ace->acdІ
6topk_bilstm_moe/bidirectional_92/forward_lstm_92/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         ј
Dtopk_bilstm_moe/bidirectional_92/forward_lstm_92/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: љ
Ftopk_bilstm_moe/bidirectional_92/forward_lstm_92/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:љ
Ftopk_bilstm_moe/bidirectional_92/forward_lstm_92/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:к
>topk_bilstm_moe/bidirectional_92/forward_lstm_92/strided_sliceStridedSlice?topk_bilstm_moe/bidirectional_92/forward_lstm_92/Shape:output:0Mtopk_bilstm_moe/bidirectional_92/forward_lstm_92/strided_slice/stack:output:0Otopk_bilstm_moe/bidirectional_92/forward_lstm_92/strided_slice/stack_1:output:0Otopk_bilstm_moe/bidirectional_92/forward_lstm_92/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskЂ
?topk_bilstm_moe/bidirectional_92/forward_lstm_92/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :є
=topk_bilstm_moe/bidirectional_92/forward_lstm_92/zeros/packedPackGtopk_bilstm_moe/bidirectional_92/forward_lstm_92/strided_slice:output:0Htopk_bilstm_moe/bidirectional_92/forward_lstm_92/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Ђ
<topk_bilstm_moe/bidirectional_92/forward_lstm_92/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ш
6topk_bilstm_moe/bidirectional_92/forward_lstm_92/zerosFillFtopk_bilstm_moe/bidirectional_92/forward_lstm_92/zeros/packed:output:0Etopk_bilstm_moe/bidirectional_92/forward_lstm_92/zeros/Const:output:0*
T0*
_output_shapes

:Ѓ
Atopk_bilstm_moe/bidirectional_92/forward_lstm_92/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :і
?topk_bilstm_moe/bidirectional_92/forward_lstm_92/zeros_1/packedPackGtopk_bilstm_moe/bidirectional_92/forward_lstm_92/strided_slice:output:0Jtopk_bilstm_moe/bidirectional_92/forward_lstm_92/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Ѓ
>topk_bilstm_moe/bidirectional_92/forward_lstm_92/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ч
8topk_bilstm_moe/bidirectional_92/forward_lstm_92/zeros_1FillHtopk_bilstm_moe/bidirectional_92/forward_lstm_92/zeros_1/packed:output:0Gtopk_bilstm_moe/bidirectional_92/forward_lstm_92/zeros_1/Const:output:0*
T0*
_output_shapes

:ћ
?topk_bilstm_moe/bidirectional_92/forward_lstm_92/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ­
:topk_bilstm_moe/bidirectional_92/forward_lstm_92/transpose	Transpose0topk_bilstm_moe/lambda_98/einsum/Einsum:output:0Htopk_bilstm_moe/bidirectional_92/forward_lstm_92/transpose/perm:output:0*
T0*"
_output_shapes
:Ї
8topk_bilstm_moe/bidirectional_92/forward_lstm_92/Shape_1Const*
_output_shapes
:*
dtype0*!
valueB"         љ
Ftopk_bilstm_moe/bidirectional_92/forward_lstm_92/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: њ
Htopk_bilstm_moe/bidirectional_92/forward_lstm_92/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:њ
Htopk_bilstm_moe/bidirectional_92/forward_lstm_92/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
@topk_bilstm_moe/bidirectional_92/forward_lstm_92/strided_slice_1StridedSliceAtopk_bilstm_moe/bidirectional_92/forward_lstm_92/Shape_1:output:0Otopk_bilstm_moe/bidirectional_92/forward_lstm_92/strided_slice_1/stack:output:0Qtopk_bilstm_moe/bidirectional_92/forward_lstm_92/strided_slice_1/stack_1:output:0Qtopk_bilstm_moe/bidirectional_92/forward_lstm_92/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskЌ
Ltopk_bilstm_moe/bidirectional_92/forward_lstm_92/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         К
>topk_bilstm_moe/bidirectional_92/forward_lstm_92/TensorArrayV2TensorListReserveUtopk_bilstm_moe/bidirectional_92/forward_lstm_92/TensorArrayV2/element_shape:output:0Itopk_bilstm_moe/bidirectional_92/forward_lstm_92/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУми
ftopk_bilstm_moe/bidirectional_92/forward_lstm_92/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      з
Xtopk_bilstm_moe/bidirectional_92/forward_lstm_92/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor>topk_bilstm_moe/bidirectional_92/forward_lstm_92/transpose:y:0otopk_bilstm_moe/bidirectional_92/forward_lstm_92/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмљ
Ftopk_bilstm_moe/bidirectional_92/forward_lstm_92/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: њ
Htopk_bilstm_moe/bidirectional_92/forward_lstm_92/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:њ
Htopk_bilstm_moe/bidirectional_92/forward_lstm_92/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Н
@topk_bilstm_moe/bidirectional_92/forward_lstm_92/strided_slice_2StridedSlice>topk_bilstm_moe/bidirectional_92/forward_lstm_92/transpose:y:0Otopk_bilstm_moe/bidirectional_92/forward_lstm_92/strided_slice_2/stack:output:0Qtopk_bilstm_moe/bidirectional_92/forward_lstm_92/strided_slice_2/stack_1:output:0Qtopk_bilstm_moe/bidirectional_92/forward_lstm_92/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_maskЖ
Ptopk_bilstm_moe/bidirectional_92/forward_lstm_92/lstm_cell/MatMul/ReadVariableOpReadVariableOpYtopk_bilstm_moe_bidirectional_92_forward_lstm_92_lstm_cell_matmul_readvariableop_resource*
_output_shapes

: *
dtype0Ў
Atopk_bilstm_moe/bidirectional_92/forward_lstm_92/lstm_cell/MatMulMatMulItopk_bilstm_moe/bidirectional_92/forward_lstm_92/strided_slice_2:output:0Xtopk_bilstm_moe/bidirectional_92/forward_lstm_92/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

: Ь
Rtopk_bilstm_moe/bidirectional_92/forward_lstm_92/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp[topk_bilstm_moe_bidirectional_92_forward_lstm_92_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0Њ
Ctopk_bilstm_moe/bidirectional_92/forward_lstm_92/lstm_cell/MatMul_1MatMul?topk_bilstm_moe/bidirectional_92/forward_lstm_92/zeros:output:0Ztopk_bilstm_moe/bidirectional_92/forward_lstm_92/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes

: ї
>topk_bilstm_moe/bidirectional_92/forward_lstm_92/lstm_cell/addAddV2Ktopk_bilstm_moe/bidirectional_92/forward_lstm_92/lstm_cell/MatMul:product:0Mtopk_bilstm_moe/bidirectional_92/forward_lstm_92/lstm_cell/MatMul_1:product:0*
T0*
_output_shapes

: У
Qtopk_bilstm_moe/bidirectional_92/forward_lstm_92/lstm_cell/BiasAdd/ReadVariableOpReadVariableOpZtopk_bilstm_moe_bidirectional_92_forward_lstm_92_lstm_cell_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Ћ
Btopk_bilstm_moe/bidirectional_92/forward_lstm_92/lstm_cell/BiasAddBiasAddBtopk_bilstm_moe/bidirectional_92/forward_lstm_92/lstm_cell/add:z:0Ytopk_bilstm_moe/bidirectional_92/forward_lstm_92/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

: ї
Jtopk_bilstm_moe/bidirectional_92/forward_lstm_92/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :├
@topk_bilstm_moe/bidirectional_92/forward_lstm_92/lstm_cell/splitSplitStopk_bilstm_moe/bidirectional_92/forward_lstm_92/lstm_cell/split/split_dim:output:0Ktopk_bilstm_moe/bidirectional_92/forward_lstm_92/lstm_cell/BiasAdd:output:0*
T0*<
_output_shapes*
(::::*
	num_split┴
Btopk_bilstm_moe/bidirectional_92/forward_lstm_92/lstm_cell/SigmoidSigmoidItopk_bilstm_moe/bidirectional_92/forward_lstm_92/lstm_cell/split:output:0*
T0*
_output_shapes

:├
Dtopk_bilstm_moe/bidirectional_92/forward_lstm_92/lstm_cell/Sigmoid_1SigmoidItopk_bilstm_moe/bidirectional_92/forward_lstm_92/lstm_cell/split:output:1*
T0*
_output_shapes

:ч
>topk_bilstm_moe/bidirectional_92/forward_lstm_92/lstm_cell/mulMulHtopk_bilstm_moe/bidirectional_92/forward_lstm_92/lstm_cell/Sigmoid_1:y:0Atopk_bilstm_moe/bidirectional_92/forward_lstm_92/zeros_1:output:0*
T0*
_output_shapes

:╗
?topk_bilstm_moe/bidirectional_92/forward_lstm_92/lstm_cell/ReluReluItopk_bilstm_moe/bidirectional_92/forward_lstm_92/lstm_cell/split:output:2*
T0*
_output_shapes

:Є
@topk_bilstm_moe/bidirectional_92/forward_lstm_92/lstm_cell/mul_1MulFtopk_bilstm_moe/bidirectional_92/forward_lstm_92/lstm_cell/Sigmoid:y:0Mtopk_bilstm_moe/bidirectional_92/forward_lstm_92/lstm_cell/Relu:activations:0*
T0*
_output_shapes

:Ч
@topk_bilstm_moe/bidirectional_92/forward_lstm_92/lstm_cell/add_1AddV2Btopk_bilstm_moe/bidirectional_92/forward_lstm_92/lstm_cell/mul:z:0Dtopk_bilstm_moe/bidirectional_92/forward_lstm_92/lstm_cell/mul_1:z:0*
T0*
_output_shapes

:├
Dtopk_bilstm_moe/bidirectional_92/forward_lstm_92/lstm_cell/Sigmoid_2SigmoidItopk_bilstm_moe/bidirectional_92/forward_lstm_92/lstm_cell/split:output:3*
T0*
_output_shapes

:И
Atopk_bilstm_moe/bidirectional_92/forward_lstm_92/lstm_cell/Relu_1ReluDtopk_bilstm_moe/bidirectional_92/forward_lstm_92/lstm_cell/add_1:z:0*
T0*
_output_shapes

:І
@topk_bilstm_moe/bidirectional_92/forward_lstm_92/lstm_cell/mul_2MulHtopk_bilstm_moe/bidirectional_92/forward_lstm_92/lstm_cell/Sigmoid_2:y:0Otopk_bilstm_moe/bidirectional_92/forward_lstm_92/lstm_cell/Relu_1:activations:0*
T0*
_output_shapes

:Ъ
Ntopk_bilstm_moe/bidirectional_92/forward_lstm_92/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      ╦
@topk_bilstm_moe/bidirectional_92/forward_lstm_92/TensorArrayV2_1TensorListReserveWtopk_bilstm_moe/bidirectional_92/forward_lstm_92/TensorArrayV2_1/element_shape:output:0Itopk_bilstm_moe/bidirectional_92/forward_lstm_92/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмw
5topk_bilstm_moe/bidirectional_92/forward_lstm_92/timeConst*
_output_shapes
: *
dtype0*
value	B : ћ
Itopk_bilstm_moe/bidirectional_92/forward_lstm_92/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         Ё
Ctopk_bilstm_moe/bidirectional_92/forward_lstm_92/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ж

6topk_bilstm_moe/bidirectional_92/forward_lstm_92/whileWhileLtopk_bilstm_moe/bidirectional_92/forward_lstm_92/while/loop_counter:output:0Rtopk_bilstm_moe/bidirectional_92/forward_lstm_92/while/maximum_iterations:output:0>topk_bilstm_moe/bidirectional_92/forward_lstm_92/time:output:0Itopk_bilstm_moe/bidirectional_92/forward_lstm_92/TensorArrayV2_1:handle:0?topk_bilstm_moe/bidirectional_92/forward_lstm_92/zeros:output:0Atopk_bilstm_moe/bidirectional_92/forward_lstm_92/zeros_1:output:0Itopk_bilstm_moe/bidirectional_92/forward_lstm_92/strided_slice_1:output:0htopk_bilstm_moe/bidirectional_92/forward_lstm_92/TensorArrayUnstack/TensorListFromTensor:output_handle:0Ytopk_bilstm_moe_bidirectional_92_forward_lstm_92_lstm_cell_matmul_readvariableop_resource[topk_bilstm_moe_bidirectional_92_forward_lstm_92_lstm_cell_matmul_1_readvariableop_resourceZtopk_bilstm_moe_bidirectional_92_forward_lstm_92_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*:
_output_shapes(
&: : : : ::: : : : : *%
_read_only_resource_inputs
	
*P
bodyHRF
Dtopk_bilstm_moe_bidirectional_92_forward_lstm_92_while_body_28633404*P
condHRF
Dtopk_bilstm_moe_bidirectional_92_forward_lstm_92_while_cond_28633403*9
output_shapes(
&: : : : ::: : : : : *
parallel_iterations ▓
atopk_bilstm_moe/bidirectional_92/forward_lstm_92/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      ╠
Stopk_bilstm_moe/bidirectional_92/forward_lstm_92/TensorArrayV2Stack/TensorListStackTensorListStack?topk_bilstm_moe/bidirectional_92/forward_lstm_92/while:output:3jtopk_bilstm_moe/bidirectional_92/forward_lstm_92/TensorArrayV2Stack/TensorListStack/element_shape:output:0*"
_output_shapes
:*
element_dtype0Ў
Ftopk_bilstm_moe/bidirectional_92/forward_lstm_92/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         њ
Htopk_bilstm_moe/bidirectional_92/forward_lstm_92/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: њ
Htopk_bilstm_moe/bidirectional_92/forward_lstm_92/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:з
@topk_bilstm_moe/bidirectional_92/forward_lstm_92/strided_slice_3StridedSlice\topk_bilstm_moe/bidirectional_92/forward_lstm_92/TensorArrayV2Stack/TensorListStack:tensor:0Otopk_bilstm_moe/bidirectional_92/forward_lstm_92/strided_slice_3/stack:output:0Qtopk_bilstm_moe/bidirectional_92/forward_lstm_92/strided_slice_3/stack_1:output:0Qtopk_bilstm_moe/bidirectional_92/forward_lstm_92/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_maskќ
Atopk_bilstm_moe/bidirectional_92/forward_lstm_92/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          а
<topk_bilstm_moe/bidirectional_92/forward_lstm_92/transpose_1	Transpose\topk_bilstm_moe/bidirectional_92/forward_lstm_92/TensorArrayV2Stack/TensorListStack:tensor:0Jtopk_bilstm_moe/bidirectional_92/forward_lstm_92/transpose_1/perm:output:0*
T0*"
_output_shapes
:ї
8topk_bilstm_moe/bidirectional_92/forward_lstm_92/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ї
7topk_bilstm_moe/bidirectional_92/backward_lstm_92/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         Ј
Etopk_bilstm_moe/bidirectional_92/backward_lstm_92/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: Љ
Gtopk_bilstm_moe/bidirectional_92/backward_lstm_92/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Љ
Gtopk_bilstm_moe/bidirectional_92/backward_lstm_92/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╦
?topk_bilstm_moe/bidirectional_92/backward_lstm_92/strided_sliceStridedSlice@topk_bilstm_moe/bidirectional_92/backward_lstm_92/Shape:output:0Ntopk_bilstm_moe/bidirectional_92/backward_lstm_92/strided_slice/stack:output:0Ptopk_bilstm_moe/bidirectional_92/backward_lstm_92/strided_slice/stack_1:output:0Ptopk_bilstm_moe/bidirectional_92/backward_lstm_92/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskѓ
@topk_bilstm_moe/bidirectional_92/backward_lstm_92/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Ѕ
>topk_bilstm_moe/bidirectional_92/backward_lstm_92/zeros/packedPackHtopk_bilstm_moe/bidirectional_92/backward_lstm_92/strided_slice:output:0Itopk_bilstm_moe/bidirectional_92/backward_lstm_92/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:ѓ
=topk_bilstm_moe/bidirectional_92/backward_lstm_92/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    щ
7topk_bilstm_moe/bidirectional_92/backward_lstm_92/zerosFillGtopk_bilstm_moe/bidirectional_92/backward_lstm_92/zeros/packed:output:0Ftopk_bilstm_moe/bidirectional_92/backward_lstm_92/zeros/Const:output:0*
T0*
_output_shapes

:ё
Btopk_bilstm_moe/bidirectional_92/backward_lstm_92/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Ї
@topk_bilstm_moe/bidirectional_92/backward_lstm_92/zeros_1/packedPackHtopk_bilstm_moe/bidirectional_92/backward_lstm_92/strided_slice:output:0Ktopk_bilstm_moe/bidirectional_92/backward_lstm_92/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:ё
?topk_bilstm_moe/bidirectional_92/backward_lstm_92/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *     
9topk_bilstm_moe/bidirectional_92/backward_lstm_92/zeros_1FillItopk_bilstm_moe/bidirectional_92/backward_lstm_92/zeros_1/packed:output:0Htopk_bilstm_moe/bidirectional_92/backward_lstm_92/zeros_1/Const:output:0*
T0*
_output_shapes

:Ћ
@topk_bilstm_moe/bidirectional_92/backward_lstm_92/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ы
;topk_bilstm_moe/bidirectional_92/backward_lstm_92/transpose	Transpose0topk_bilstm_moe/lambda_98/einsum/Einsum:output:0Itopk_bilstm_moe/bidirectional_92/backward_lstm_92/transpose/perm:output:0*
T0*"
_output_shapes
:ј
9topk_bilstm_moe/bidirectional_92/backward_lstm_92/Shape_1Const*
_output_shapes
:*
dtype0*!
valueB"         Љ
Gtopk_bilstm_moe/bidirectional_92/backward_lstm_92/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: Њ
Itopk_bilstm_moe/bidirectional_92/backward_lstm_92/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Њ
Itopk_bilstm_moe/bidirectional_92/backward_lstm_92/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Н
Atopk_bilstm_moe/bidirectional_92/backward_lstm_92/strided_slice_1StridedSliceBtopk_bilstm_moe/bidirectional_92/backward_lstm_92/Shape_1:output:0Ptopk_bilstm_moe/bidirectional_92/backward_lstm_92/strided_slice_1/stack:output:0Rtopk_bilstm_moe/bidirectional_92/backward_lstm_92/strided_slice_1/stack_1:output:0Rtopk_bilstm_moe/bidirectional_92/backward_lstm_92/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskў
Mtopk_bilstm_moe/bidirectional_92/backward_lstm_92/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ╩
?topk_bilstm_moe/bidirectional_92/backward_lstm_92/TensorArrayV2TensorListReserveVtopk_bilstm_moe/bidirectional_92/backward_lstm_92/TensorArrayV2/element_shape:output:0Jtopk_bilstm_moe/bidirectional_92/backward_lstm_92/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмі
@topk_bilstm_moe/bidirectional_92/backward_lstm_92/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: Ђ
;topk_bilstm_moe/bidirectional_92/backward_lstm_92/ReverseV2	ReverseV2?topk_bilstm_moe/bidirectional_92/backward_lstm_92/transpose:y:0Itopk_bilstm_moe/bidirectional_92/backward_lstm_92/ReverseV2/axis:output:0*
T0*"
_output_shapes
:И
gtopk_bilstm_moe/bidirectional_92/backward_lstm_92/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      ч
Ytopk_bilstm_moe/bidirectional_92/backward_lstm_92/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorDtopk_bilstm_moe/bidirectional_92/backward_lstm_92/ReverseV2:output:0ptopk_bilstm_moe/bidirectional_92/backward_lstm_92/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмЉ
Gtopk_bilstm_moe/bidirectional_92/backward_lstm_92/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: Њ
Itopk_bilstm_moe/bidirectional_92/backward_lstm_92/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Њ
Itopk_bilstm_moe/bidirectional_92/backward_lstm_92/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┌
Atopk_bilstm_moe/bidirectional_92/backward_lstm_92/strided_slice_2StridedSlice?topk_bilstm_moe/bidirectional_92/backward_lstm_92/transpose:y:0Ptopk_bilstm_moe/bidirectional_92/backward_lstm_92/strided_slice_2/stack:output:0Rtopk_bilstm_moe/bidirectional_92/backward_lstm_92/strided_slice_2/stack_1:output:0Rtopk_bilstm_moe/bidirectional_92/backward_lstm_92/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_maskВ
Qtopk_bilstm_moe/bidirectional_92/backward_lstm_92/lstm_cell/MatMul/ReadVariableOpReadVariableOpZtopk_bilstm_moe_bidirectional_92_backward_lstm_92_lstm_cell_matmul_readvariableop_resource*
_output_shapes

: *
dtype0ю
Btopk_bilstm_moe/bidirectional_92/backward_lstm_92/lstm_cell/MatMulMatMulJtopk_bilstm_moe/bidirectional_92/backward_lstm_92/strided_slice_2:output:0Ytopk_bilstm_moe/bidirectional_92/backward_lstm_92/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

: ­
Stopk_bilstm_moe/bidirectional_92/backward_lstm_92/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp\topk_bilstm_moe_bidirectional_92_backward_lstm_92_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0ќ
Dtopk_bilstm_moe/bidirectional_92/backward_lstm_92/lstm_cell/MatMul_1MatMul@topk_bilstm_moe/bidirectional_92/backward_lstm_92/zeros:output:0[topk_bilstm_moe/bidirectional_92/backward_lstm_92/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes

: Ј
?topk_bilstm_moe/bidirectional_92/backward_lstm_92/lstm_cell/addAddV2Ltopk_bilstm_moe/bidirectional_92/backward_lstm_92/lstm_cell/MatMul:product:0Ntopk_bilstm_moe/bidirectional_92/backward_lstm_92/lstm_cell/MatMul_1:product:0*
T0*
_output_shapes

: Ж
Rtopk_bilstm_moe/bidirectional_92/backward_lstm_92/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp[topk_bilstm_moe_bidirectional_92_backward_lstm_92_lstm_cell_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0ў
Ctopk_bilstm_moe/bidirectional_92/backward_lstm_92/lstm_cell/BiasAddBiasAddCtopk_bilstm_moe/bidirectional_92/backward_lstm_92/lstm_cell/add:z:0Ztopk_bilstm_moe/bidirectional_92/backward_lstm_92/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

: Ї
Ktopk_bilstm_moe/bidirectional_92/backward_lstm_92/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :к
Atopk_bilstm_moe/bidirectional_92/backward_lstm_92/lstm_cell/splitSplitTtopk_bilstm_moe/bidirectional_92/backward_lstm_92/lstm_cell/split/split_dim:output:0Ltopk_bilstm_moe/bidirectional_92/backward_lstm_92/lstm_cell/BiasAdd:output:0*
T0*<
_output_shapes*
(::::*
	num_split├
Ctopk_bilstm_moe/bidirectional_92/backward_lstm_92/lstm_cell/SigmoidSigmoidJtopk_bilstm_moe/bidirectional_92/backward_lstm_92/lstm_cell/split:output:0*
T0*
_output_shapes

:┼
Etopk_bilstm_moe/bidirectional_92/backward_lstm_92/lstm_cell/Sigmoid_1SigmoidJtopk_bilstm_moe/bidirectional_92/backward_lstm_92/lstm_cell/split:output:1*
T0*
_output_shapes

:■
?topk_bilstm_moe/bidirectional_92/backward_lstm_92/lstm_cell/mulMulItopk_bilstm_moe/bidirectional_92/backward_lstm_92/lstm_cell/Sigmoid_1:y:0Btopk_bilstm_moe/bidirectional_92/backward_lstm_92/zeros_1:output:0*
T0*
_output_shapes

:й
@topk_bilstm_moe/bidirectional_92/backward_lstm_92/lstm_cell/ReluReluJtopk_bilstm_moe/bidirectional_92/backward_lstm_92/lstm_cell/split:output:2*
T0*
_output_shapes

:і
Atopk_bilstm_moe/bidirectional_92/backward_lstm_92/lstm_cell/mul_1MulGtopk_bilstm_moe/bidirectional_92/backward_lstm_92/lstm_cell/Sigmoid:y:0Ntopk_bilstm_moe/bidirectional_92/backward_lstm_92/lstm_cell/Relu:activations:0*
T0*
_output_shapes

: 
Atopk_bilstm_moe/bidirectional_92/backward_lstm_92/lstm_cell/add_1AddV2Ctopk_bilstm_moe/bidirectional_92/backward_lstm_92/lstm_cell/mul:z:0Etopk_bilstm_moe/bidirectional_92/backward_lstm_92/lstm_cell/mul_1:z:0*
T0*
_output_shapes

:┼
Etopk_bilstm_moe/bidirectional_92/backward_lstm_92/lstm_cell/Sigmoid_2SigmoidJtopk_bilstm_moe/bidirectional_92/backward_lstm_92/lstm_cell/split:output:3*
T0*
_output_shapes

:║
Btopk_bilstm_moe/bidirectional_92/backward_lstm_92/lstm_cell/Relu_1ReluEtopk_bilstm_moe/bidirectional_92/backward_lstm_92/lstm_cell/add_1:z:0*
T0*
_output_shapes

:ј
Atopk_bilstm_moe/bidirectional_92/backward_lstm_92/lstm_cell/mul_2MulItopk_bilstm_moe/bidirectional_92/backward_lstm_92/lstm_cell/Sigmoid_2:y:0Ptopk_bilstm_moe/bidirectional_92/backward_lstm_92/lstm_cell/Relu_1:activations:0*
T0*
_output_shapes

:а
Otopk_bilstm_moe/bidirectional_92/backward_lstm_92/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      ╬
Atopk_bilstm_moe/bidirectional_92/backward_lstm_92/TensorArrayV2_1TensorListReserveXtopk_bilstm_moe/bidirectional_92/backward_lstm_92/TensorArrayV2_1/element_shape:output:0Jtopk_bilstm_moe/bidirectional_92/backward_lstm_92/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмx
6topk_bilstm_moe/bidirectional_92/backward_lstm_92/timeConst*
_output_shapes
: *
dtype0*
value	B : Ћ
Jtopk_bilstm_moe/bidirectional_92/backward_lstm_92/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         є
Dtopk_bilstm_moe/bidirectional_92/backward_lstm_92/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Э

7topk_bilstm_moe/bidirectional_92/backward_lstm_92/whileWhileMtopk_bilstm_moe/bidirectional_92/backward_lstm_92/while/loop_counter:output:0Stopk_bilstm_moe/bidirectional_92/backward_lstm_92/while/maximum_iterations:output:0?topk_bilstm_moe/bidirectional_92/backward_lstm_92/time:output:0Jtopk_bilstm_moe/bidirectional_92/backward_lstm_92/TensorArrayV2_1:handle:0@topk_bilstm_moe/bidirectional_92/backward_lstm_92/zeros:output:0Btopk_bilstm_moe/bidirectional_92/backward_lstm_92/zeros_1:output:0Jtopk_bilstm_moe/bidirectional_92/backward_lstm_92/strided_slice_1:output:0itopk_bilstm_moe/bidirectional_92/backward_lstm_92/TensorArrayUnstack/TensorListFromTensor:output_handle:0Ztopk_bilstm_moe_bidirectional_92_backward_lstm_92_lstm_cell_matmul_readvariableop_resource\topk_bilstm_moe_bidirectional_92_backward_lstm_92_lstm_cell_matmul_1_readvariableop_resource[topk_bilstm_moe_bidirectional_92_backward_lstm_92_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*:
_output_shapes(
&: : : : ::: : : : : *%
_read_only_resource_inputs
	
*Q
bodyIRG
Etopk_bilstm_moe_bidirectional_92_backward_lstm_92_while_body_28633545*Q
condIRG
Etopk_bilstm_moe_bidirectional_92_backward_lstm_92_while_cond_28633544*9
output_shapes(
&: : : : ::: : : : : *
parallel_iterations │
btopk_bilstm_moe/bidirectional_92/backward_lstm_92/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      ¤
Ttopk_bilstm_moe/bidirectional_92/backward_lstm_92/TensorArrayV2Stack/TensorListStackTensorListStack@topk_bilstm_moe/bidirectional_92/backward_lstm_92/while:output:3ktopk_bilstm_moe/bidirectional_92/backward_lstm_92/TensorArrayV2Stack/TensorListStack/element_shape:output:0*"
_output_shapes
:*
element_dtype0џ
Gtopk_bilstm_moe/bidirectional_92/backward_lstm_92/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         Њ
Itopk_bilstm_moe/bidirectional_92/backward_lstm_92/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: Њ
Itopk_bilstm_moe/bidirectional_92/backward_lstm_92/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Э
Atopk_bilstm_moe/bidirectional_92/backward_lstm_92/strided_slice_3StridedSlice]topk_bilstm_moe/bidirectional_92/backward_lstm_92/TensorArrayV2Stack/TensorListStack:tensor:0Ptopk_bilstm_moe/bidirectional_92/backward_lstm_92/strided_slice_3/stack:output:0Rtopk_bilstm_moe/bidirectional_92/backward_lstm_92/strided_slice_3/stack_1:output:0Rtopk_bilstm_moe/bidirectional_92/backward_lstm_92/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_maskЌ
Btopk_bilstm_moe/bidirectional_92/backward_lstm_92/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Б
=topk_bilstm_moe/bidirectional_92/backward_lstm_92/transpose_1	Transpose]topk_bilstm_moe/bidirectional_92/backward_lstm_92/TensorArrayV2Stack/TensorListStack:tensor:0Ktopk_bilstm_moe/bidirectional_92/backward_lstm_92/transpose_1/perm:output:0*
T0*"
_output_shapes
:Ї
9topk_bilstm_moe/bidirectional_92/backward_lstm_92/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    y
/topk_bilstm_moe/bidirectional_92/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:р
*topk_bilstm_moe/bidirectional_92/ReverseV2	ReverseV2Atopk_bilstm_moe/bidirectional_92/backward_lstm_92/transpose_1:y:08topk_bilstm_moe/bidirectional_92/ReverseV2/axis:output:0*
T0*"
_output_shapes
:n
,topk_bilstm_moe/bidirectional_92/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Ќ
'topk_bilstm_moe/bidirectional_92/concatConcatV2@topk_bilstm_moe/bidirectional_92/forward_lstm_92/transpose_1:y:03topk_bilstm_moe/bidirectional_92/ReverseV2:output:05topk_bilstm_moe/bidirectional_92/concat/axis:output:0*
N*
T0*"
_output_shapes
:ј
#topk_bilstm_moe/dropout_92/IdentityIdentity0topk_bilstm_moe/bidirectional_92/concat:output:0*
T0*"
_output_shapes
:q
 topk_bilstm_moe/flatten_92/ConstConst*
_output_shapes
:*
dtype0*
valueB"    ђ  ░
"topk_bilstm_moe/flatten_92/ReshapeReshape,topk_bilstm_moe/dropout_92/Identity:output:0)topk_bilstm_moe/flatten_92/Const:output:0*
T0*
_output_shapes
:	ђЕ
/topk_bilstm_moe/dense_593/MatMul/ReadVariableOpReadVariableOp8topk_bilstm_moe_dense_593_matmul_readvariableop_resource*
_output_shapes
:	ђ*
dtype0╣
 topk_bilstm_moe/dense_593/MatMulMatMul+topk_bilstm_moe/flatten_92/Reshape:output:07topk_bilstm_moe/dense_593/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:д
0topk_bilstm_moe/dense_593/BiasAdd/ReadVariableOpReadVariableOp9topk_bilstm_moe_dense_593_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0╗
!topk_bilstm_moe/dense_593/BiasAddBiasAdd*topk_bilstm_moe/dense_593/MatMul:product:08topk_bilstm_moe/dense_593/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:p
IdentityIdentity*topk_bilstm_moe/dense_593/BiasAdd:output:0^NoOp*
T0*
_output_shapes

:ш

NoOpNoOpS^topk_bilstm_moe/bidirectional_92/backward_lstm_92/lstm_cell/BiasAdd/ReadVariableOpR^topk_bilstm_moe/bidirectional_92/backward_lstm_92/lstm_cell/MatMul/ReadVariableOpT^topk_bilstm_moe/bidirectional_92/backward_lstm_92/lstm_cell/MatMul_1/ReadVariableOp8^topk_bilstm_moe/bidirectional_92/backward_lstm_92/whileR^topk_bilstm_moe/bidirectional_92/forward_lstm_92/lstm_cell/BiasAdd/ReadVariableOpQ^topk_bilstm_moe/bidirectional_92/forward_lstm_92/lstm_cell/MatMul/ReadVariableOpS^topk_bilstm_moe/bidirectional_92/forward_lstm_92/lstm_cell/MatMul_1/ReadVariableOp7^topk_bilstm_moe/bidirectional_92/forward_lstm_92/while1^topk_bilstm_moe/dense_576/BiasAdd/ReadVariableOp3^topk_bilstm_moe/dense_576/Tensordot/ReadVariableOp1^topk_bilstm_moe/dense_593/BiasAdd/ReadVariableOp0^topk_bilstm_moe/dense_593/MatMul/ReadVariableOp@^topk_bilstm_moe/sequential_392/dense_577/BiasAdd/ReadVariableOpB^topk_bilstm_moe/sequential_392/dense_577/Tensordot/ReadVariableOp@^topk_bilstm_moe/sequential_397/dense_582/BiasAdd/ReadVariableOpB^topk_bilstm_moe/sequential_397/dense_582/Tensordot/ReadVariableOp@^topk_bilstm_moe/sequential_402/dense_587/BiasAdd/ReadVariableOpB^topk_bilstm_moe/sequential_402/dense_587/Tensordot/ReadVariableOp@^topk_bilstm_moe/sequential_407/dense_592/BiasAdd/ReadVariableOpB^topk_bilstm_moe/sequential_407/dense_592/Tensordot/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:: : : : : : : : : : : : : : : : : : 2е
Rtopk_bilstm_moe/bidirectional_92/backward_lstm_92/lstm_cell/BiasAdd/ReadVariableOpRtopk_bilstm_moe/bidirectional_92/backward_lstm_92/lstm_cell/BiasAdd/ReadVariableOp2д
Qtopk_bilstm_moe/bidirectional_92/backward_lstm_92/lstm_cell/MatMul/ReadVariableOpQtopk_bilstm_moe/bidirectional_92/backward_lstm_92/lstm_cell/MatMul/ReadVariableOp2ф
Stopk_bilstm_moe/bidirectional_92/backward_lstm_92/lstm_cell/MatMul_1/ReadVariableOpStopk_bilstm_moe/bidirectional_92/backward_lstm_92/lstm_cell/MatMul_1/ReadVariableOp2r
7topk_bilstm_moe/bidirectional_92/backward_lstm_92/while7topk_bilstm_moe/bidirectional_92/backward_lstm_92/while2д
Qtopk_bilstm_moe/bidirectional_92/forward_lstm_92/lstm_cell/BiasAdd/ReadVariableOpQtopk_bilstm_moe/bidirectional_92/forward_lstm_92/lstm_cell/BiasAdd/ReadVariableOp2ц
Ptopk_bilstm_moe/bidirectional_92/forward_lstm_92/lstm_cell/MatMul/ReadVariableOpPtopk_bilstm_moe/bidirectional_92/forward_lstm_92/lstm_cell/MatMul/ReadVariableOp2е
Rtopk_bilstm_moe/bidirectional_92/forward_lstm_92/lstm_cell/MatMul_1/ReadVariableOpRtopk_bilstm_moe/bidirectional_92/forward_lstm_92/lstm_cell/MatMul_1/ReadVariableOp2p
6topk_bilstm_moe/bidirectional_92/forward_lstm_92/while6topk_bilstm_moe/bidirectional_92/forward_lstm_92/while2d
0topk_bilstm_moe/dense_576/BiasAdd/ReadVariableOp0topk_bilstm_moe/dense_576/BiasAdd/ReadVariableOp2h
2topk_bilstm_moe/dense_576/Tensordot/ReadVariableOp2topk_bilstm_moe/dense_576/Tensordot/ReadVariableOp2d
0topk_bilstm_moe/dense_593/BiasAdd/ReadVariableOp0topk_bilstm_moe/dense_593/BiasAdd/ReadVariableOp2b
/topk_bilstm_moe/dense_593/MatMul/ReadVariableOp/topk_bilstm_moe/dense_593/MatMul/ReadVariableOp2ѓ
?topk_bilstm_moe/sequential_392/dense_577/BiasAdd/ReadVariableOp?topk_bilstm_moe/sequential_392/dense_577/BiasAdd/ReadVariableOp2є
Atopk_bilstm_moe/sequential_392/dense_577/Tensordot/ReadVariableOpAtopk_bilstm_moe/sequential_392/dense_577/Tensordot/ReadVariableOp2ѓ
?topk_bilstm_moe/sequential_397/dense_582/BiasAdd/ReadVariableOp?topk_bilstm_moe/sequential_397/dense_582/BiasAdd/ReadVariableOp2є
Atopk_bilstm_moe/sequential_397/dense_582/Tensordot/ReadVariableOpAtopk_bilstm_moe/sequential_397/dense_582/Tensordot/ReadVariableOp2ѓ
?topk_bilstm_moe/sequential_402/dense_587/BiasAdd/ReadVariableOp?topk_bilstm_moe/sequential_402/dense_587/BiasAdd/ReadVariableOp2є
Atopk_bilstm_moe/sequential_402/dense_587/Tensordot/ReadVariableOpAtopk_bilstm_moe/sequential_402/dense_587/Tensordot/ReadVariableOp2ѓ
?topk_bilstm_moe/sequential_407/dense_592/BiasAdd/ReadVariableOp?topk_bilstm_moe/sequential_407/dense_592/BiasAdd/ReadVariableOp2є
Atopk_bilstm_moe/sequential_407/dense_592/Tensordot/ReadVariableOpAtopk_bilstm_moe/sequential_407/dense_592/Tensordot/ReadVariableOp:K G
"
_output_shapes
:
!
_user_specified_name	input_3:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Ь
s
G__inference_lambda_96_layer_call_and_return_conditional_losses_28636403
inputs_0
inputs_1
identity~
einsum/EinsumEinsuminputs_0inputs_1*
N*
T0*"
_output_shapes
:*
equationabc,abcd->abdY
IdentityIdentityeinsum/Einsum:output:0*
T0*"
_output_shapes
:"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :::L H
"
_output_shapes
:
"
_user_specified_name
inputs_0:PL
&
_output_shapes
:
"
_user_specified_name
inputs_1
┘Y
П
$__inference__traced_restore_28639517
file_prefix3
!assignvariableop_dense_576_kernel:/
!assignvariableop_1_dense_576_bias:6
#assignvariableop_2_dense_593_kernel:	ђ/
!assignvariableop_3_dense_593_bias:5
#assignvariableop_4_dense_577_kernel:/
!assignvariableop_5_dense_577_bias:5
#assignvariableop_6_dense_582_kernel:/
!assignvariableop_7_dense_582_bias:5
#assignvariableop_8_dense_587_kernel:/
!assignvariableop_9_dense_587_bias:6
$assignvariableop_10_dense_592_kernel:0
"assignvariableop_11_dense_592_bias:W
Eassignvariableop_12_bidirectional_92_forward_lstm_92_lstm_cell_kernel: a
Oassignvariableop_13_bidirectional_92_forward_lstm_92_lstm_cell_recurrent_kernel: Q
Cassignvariableop_14_bidirectional_92_forward_lstm_92_lstm_cell_bias: X
Fassignvariableop_15_bidirectional_92_backward_lstm_92_lstm_cell_kernel: b
Passignvariableop_16_bidirectional_92_backward_lstm_92_lstm_cell_recurrent_kernel: R
Dassignvariableop_17_bidirectional_92_backward_lstm_92_lstm_cell_bias: 
identity_19ѕбAssignVariableOpбAssignVariableOp_1бAssignVariableOp_10бAssignVariableOp_11бAssignVariableOp_12бAssignVariableOp_13бAssignVariableOp_14бAssignVariableOp_15бAssignVariableOp_16бAssignVariableOp_17бAssignVariableOp_2бAssignVariableOp_3бAssignVariableOp_4бAssignVariableOp_5бAssignVariableOp_6бAssignVariableOp_7бAssignVariableOp_8бAssignVariableOp_9Ъ
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*┼
value╗BИB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHќ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*9
value0B.B B B B B B B B B B B B B B B B B B B §
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*`
_output_shapesN
L:::::::::::::::::::*!
dtypes
2[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:┤
AssignVariableOpAssignVariableOp!assignvariableop_dense_576_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:И
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_576_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:║
AssignVariableOp_2AssignVariableOp#assignvariableop_2_dense_593_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:И
AssignVariableOp_3AssignVariableOp!assignvariableop_3_dense_593_biasIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:║
AssignVariableOp_4AssignVariableOp#assignvariableop_4_dense_577_kernelIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:И
AssignVariableOp_5AssignVariableOp!assignvariableop_5_dense_577_biasIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:║
AssignVariableOp_6AssignVariableOp#assignvariableop_6_dense_582_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:И
AssignVariableOp_7AssignVariableOp!assignvariableop_7_dense_582_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:║
AssignVariableOp_8AssignVariableOp#assignvariableop_8_dense_587_kernelIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:И
AssignVariableOp_9AssignVariableOp!assignvariableop_9_dense_587_biasIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:й
AssignVariableOp_10AssignVariableOp$assignvariableop_10_dense_592_kernelIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:╗
AssignVariableOp_11AssignVariableOp"assignvariableop_11_dense_592_biasIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:я
AssignVariableOp_12AssignVariableOpEassignvariableop_12_bidirectional_92_forward_lstm_92_lstm_cell_kernelIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_13AssignVariableOpOassignvariableop_13_bidirectional_92_forward_lstm_92_lstm_cell_recurrent_kernelIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:▄
AssignVariableOp_14AssignVariableOpCassignvariableop_14_bidirectional_92_forward_lstm_92_lstm_cell_biasIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:▀
AssignVariableOp_15AssignVariableOpFassignvariableop_15_bidirectional_92_backward_lstm_92_lstm_cell_kernelIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:ж
AssignVariableOp_16AssignVariableOpPassignvariableop_16_bidirectional_92_backward_lstm_92_lstm_cell_recurrent_kernelIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_17AssignVariableOpDassignvariableop_17_bidirectional_92_backward_lstm_92_lstm_cell_biasIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 █
Identity_18Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_19IdentityIdentity_18:output:0^NoOp_1*
T0*
_output_shapes
: ц
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
_output_shapes
 "#
identity_19Identity_19:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:0,
*
_user_specified_namedense_576/kernel:.*
(
_user_specified_namedense_576/bias:0,
*
_user_specified_namedense_593/kernel:.*
(
_user_specified_namedense_593/bias:0,
*
_user_specified_namedense_577/kernel:.*
(
_user_specified_namedense_577/bias:0,
*
_user_specified_namedense_582/kernel:.*
(
_user_specified_namedense_582/bias:0	,
*
_user_specified_namedense_587/kernel:.
*
(
_user_specified_namedense_587/bias:0,
*
_user_specified_namedense_592/kernel:.*
(
_user_specified_namedense_592/bias:QM
K
_user_specified_name31bidirectional_92/forward_lstm_92/lstm_cell/kernel:[W
U
_user_specified_name=;bidirectional_92/forward_lstm_92/lstm_cell/recurrent_kernel:OK
I
_user_specified_name1/bidirectional_92/forward_lstm_92/lstm_cell/bias:RN
L
_user_specified_name42bidirectional_92/backward_lstm_92/lstm_cell/kernel:\X
V
_user_specified_name><bidirectional_92/backward_lstm_92/lstm_cell/recurrent_kernel:PL
J
_user_specified_name20bidirectional_92/backward_lstm_92/lstm_cell/bias
У8
▒
while_body_28635165
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0B
0while_lstm_cell_matmul_readvariableop_resource_0: D
2while_lstm_cell_matmul_1_readvariableop_resource_0: ?
1while_lstm_cell_biasadd_readvariableop_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor@
.while_lstm_cell_matmul_readvariableop_resource: B
0while_lstm_cell_matmul_1_readvariableop_resource: =
/while_lstm_cell_biasadd_readvariableop_resource: ѕб&while/lstm_cell/BiasAdd/ReadVariableOpб%while/lstm_cell/MatMul/ReadVariableOpб'while/lstm_cell/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        »
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:                  *
element_dtype0ќ
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0│
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          џ
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0џ
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ћ
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:          ћ
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0Ю
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Т
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitt
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:         v
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:         ђ
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         n
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:         Ј
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:         ё
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:         v
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:         k
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:         Њ
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:         ┬
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         v
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         Б

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
і

g
H__inference_dropout_92_layer_call_and_return_conditional_losses_28635728

inputs
identityѕR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?_
dropout/MulMulinputsdropout/Const:output:0*
T0*"
_output_shapes
:b
dropout/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         Є
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*"
_output_shapes
:*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>А
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*"
_output_shapes
:T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ј
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*"
_output_shapes
:\
IdentityIdentitydropout/SelectV2:output:0*
T0*"
_output_shapes
:"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
::J F
"
_output_shapes
:
 
_user_specified_nameinputs
їJ
њ
M__inference_forward_lstm_92_layer_call_and_return_conditional_losses_28638218
inputs_0:
(lstm_cell_matmul_readvariableop_resource: <
*lstm_cell_matmul_1_readvariableop_resource: 7
)lstm_cell_biasadd_readvariableop_resource: 
identityѕб lstm_cell/BiasAdd/ReadVariableOpбlstm_cell/MatMul/ReadVariableOpб!lstm_cell/MatMul_1/ReadVariableOpбwhileK
ShapeShapeinputs_0*
T0*
_output_shapes
::ь¤]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :                  R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::ь¤_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskѕ
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes

: *
dtype0Ј
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ї
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0Ѕ
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ѓ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:          є
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0І
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          [
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:         j
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:         q
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         b
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:         }
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:         r
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:         j
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:         _
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:         Ђ
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:         n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Я
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_28638134*
condR
while_cond_28638133*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                  Њ
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs_0:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
С
■
G__inference_dense_592_layer_call_and_return_conditional_losses_28637888

inputs3
!tensordot_readvariableop_resource:-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбTensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       S
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
::ь¤Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ╗
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ┐
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ю
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:         і
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:                  і
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         [
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Д
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Ѓ
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:         T
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:         e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:         V
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:         
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
▀8
▒
while_body_28638134
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0B
0while_lstm_cell_matmul_readvariableop_resource_0: D
2while_lstm_cell_matmul_1_readvariableop_resource_0: ?
1while_lstm_cell_biasadd_readvariableop_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor@
.while_lstm_cell_matmul_readvariableop_resource: B
0while_lstm_cell_matmul_1_readvariableop_resource: =
/while_lstm_cell_biasadd_readvariableop_resource: ѕб&while/lstm_cell/BiasAdd/ReadVariableOpб%while/lstm_cell/MatMul/ReadVariableOpб'while/lstm_cell/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0ќ
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0│
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          џ
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0џ
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ћ
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:          ћ
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0Ю
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Т
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitt
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:         v
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:         ђ
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         n
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:         Ј
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:         ё
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:         v
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:         k
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:         Њ
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:         ┬
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         v
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         Б

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
Н
┼
N__inference_bidirectional_92_layer_call_and_return_conditional_losses_28635262

inputs*
forward_lstm_92_28635098: *
forward_lstm_92_28635100: &
forward_lstm_92_28635102: +
backward_lstm_92_28635250: +
backward_lstm_92_28635252: '
backward_lstm_92_28635254: 
identityѕб(backward_lstm_92/StatefulPartitionedCallб'forward_lstm_92/StatefulPartitionedCall╗
'forward_lstm_92/StatefulPartitionedCallStatefulPartitionedCallinputsforward_lstm_92_28635098forward_lstm_92_28635100forward_lstm_92_28635102*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *V
fQRO
M__inference_forward_lstm_92_layer_call_and_return_conditional_losses_28635097└
(backward_lstm_92/StatefulPartitionedCallStatefulPartitionedCallinputsbackward_lstm_92_28635250backward_lstm_92_28635252backward_lstm_92_28635254*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *W
fRRP
N__inference_backward_lstm_92_layer_call_and_return_conditional_losses_28635249X
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:А
	ReverseV2	ReverseV21backward_lstm_92/StatefulPartitionedCall:output:0ReverseV2/axis:output:0*
T0*4
_output_shapes"
 :                  M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Х
concatConcatV20forward_lstm_92/StatefulPartitionedCall:output:0ReverseV2:output:0concat/axis:output:0*
N*
T0*4
_output_shapes"
 :                  k
IdentityIdentityconcat:output:0^NoOp*
T0*4
_output_shapes"
 :                  w
NoOpNoOp)^backward_lstm_92/StatefulPartitionedCall(^forward_lstm_92/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:'                           : : : : : : 2T
(backward_lstm_92/StatefulPartitionedCall(backward_lstm_92/StatefulPartitionedCall2R
'forward_lstm_92/StatefulPartitionedCall'forward_lstm_92/StatefulPartitionedCall:e a
=
_output_shapes+
):'                           
 
_user_specified_nameinputs:($
"
_user_specified_name
28635098:($
"
_user_specified_name
28635100:($
"
_user_specified_name
28635102:($
"
_user_specified_name
28635250:($
"
_user_specified_name
28635252:($
"
_user_specified_name
28635254
Д	
Я
L__inference_sequential_397_layer_call_and_return_conditional_losses_28633767
dense_582_input$
dense_582_28633761: 
dense_582_28633763:
identityѕб!dense_582/StatefulPartitionedCallЄ
!dense_582/StatefulPartitionedCallStatefulPartitionedCalldense_582_inputdense_582_28633761dense_582_28633763*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_dense_582_layer_call_and_return_conditional_losses_28633751}
IdentityIdentity*dense_582/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         F
NoOpNoOp"^dense_582/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         : : 2F
!dense_582/StatefulPartitionedCall!dense_582/StatefulPartitionedCall:\ X
+
_output_shapes
:         
)
_user_specified_namedense_582_input:($
"
_user_specified_name
28633761:($
"
_user_specified_name
28633763
Г
Д
1__inference_sequential_392_layer_call_fn_28633700
dense_577_input
unknown:
	unknown_0:
identityѕбStatefulPartitionedCallЬ
StatefulPartitionedCallStatefulPartitionedCalldense_577_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *U
fPRN
L__inference_sequential_392_layer_call_and_return_conditional_losses_28633682s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
+
_output_shapes
:         
)
_user_specified_namedense_577_input:($
"
_user_specified_name
28633694:($
"
_user_specified_name
28633696
Д	
Я
L__inference_sequential_402_layer_call_and_return_conditional_losses_28633843
dense_587_input$
dense_587_28633837: 
dense_587_28633839:
identityѕб!dense_587/StatefulPartitionedCallЄ
!dense_587/StatefulPartitionedCallStatefulPartitionedCalldense_587_inputdense_587_28633837dense_587_28633839*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_dense_587_layer_call_and_return_conditional_losses_28633827}
IdentityIdentity*dense_587/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         F
NoOpNoOp"^dense_587/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         : : 2F
!dense_587/StatefulPartitionedCall!dense_587/StatefulPartitionedCall:\ X
+
_output_shapes
:         
)
_user_specified_namedense_587_input:($
"
_user_specified_name
28633837:($
"
_user_specified_name
28633839
і

g
H__inference_dropout_92_layer_call_and_return_conditional_losses_28637693

inputs
identityѕR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?_
dropout/MulMulinputsdropout/Const:output:0*
T0*"
_output_shapes
:b
dropout/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         Є
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*"
_output_shapes
:*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>А
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*"
_output_shapes
:T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ј
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*"
_output_shapes
:\
IdentityIdentitydropout/SelectV2:output:0*
T0*"
_output_shapes
:"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
::J F
"
_output_shapes
:
 
_user_specified_nameinputs
њ
X
,__inference_lambda_97_layer_call_fn_28636409
inputs_0
inputs_1
identityЙ
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *&
_output_shapes
:* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_lambda_97_layer_call_and_return_conditional_losses_28635382_
IdentityIdentityPartitionedCall:output:0*
T0*&
_output_shapes
:"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:::L H
"
_output_shapes
:
"
_user_specified_name
inputs_0:LH
"
_output_shapes
:
"
_user_specified_name
inputs_1
Г
Д
1__inference_sequential_407_layer_call_fn_28633928
dense_592_input
unknown:
	unknown_0:
identityѕбStatefulPartitionedCallЬ
StatefulPartitionedCallStatefulPartitionedCalldense_592_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *U
fPRN
L__inference_sequential_407_layer_call_and_return_conditional_losses_28633910s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
+
_output_shapes
:         
)
_user_specified_namedense_592_input:($
"
_user_specified_name
28633922:($
"
_user_specified_name
28633924
Б
ђ
G__inference_lstm_cell_layer_call_and_return_conditional_losses_28634008

inputs

states
states_10
matmul_readvariableop_resource: 2
 matmul_1_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity

identity_1

identity_2ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:          r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         N
ReluRelusplit:output:2*
T0*'
_output_shapes
:         _
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         m
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :         :         : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:OK
'
_output_shapes
:         
 
_user_specified_namestates:OK
'
_output_shapes
:         
 
_user_specified_namestates:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
└
Ы
,__inference_lstm_cell_layer_call_fn_28639162

inputs
states_0
states_1
unknown: 
	unknown_0: 
	unknown_1: 
identity

identity_1

identity_2ѕбStatefulPartitionedCallД
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         :         :         *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_lstm_cell_layer_call_and_return_conditional_losses_28634153o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:         q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :         :         : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:QM
'
_output_shapes
:         
"
_user_specified_name
states_0:QM
'
_output_shapes
:         
"
_user_specified_name
states_1:($
"
_user_specified_name
28639150:($
"
_user_specified_name
28639152:($
"
_user_specified_name
28639154
Ф
ѓ
G__inference_lstm_cell_layer_call_and_return_conditional_losses_28639324

inputs
states_0
states_10
matmul_readvariableop_resource: 2
 matmul_1_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity

identity_1

identity_2ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:          r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         N
ReluRelusplit:output:2*
T0*'
_output_shapes
:         _
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         m
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :         :         : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:QM
'
_output_shapes
:         
"
_user_specified_name
states_0:QM
'
_output_shapes
:         
"
_user_specified_name
states_1:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
лK
Л
$backward_lstm_92_while_body_28635615>
:backward_lstm_92_while_backward_lstm_92_while_loop_counterD
@backward_lstm_92_while_backward_lstm_92_while_maximum_iterations&
"backward_lstm_92_while_placeholder(
$backward_lstm_92_while_placeholder_1(
$backward_lstm_92_while_placeholder_2(
$backward_lstm_92_while_placeholder_3=
9backward_lstm_92_while_backward_lstm_92_strided_slice_1_0y
ubackward_lstm_92_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_92_tensorarrayunstack_tensorlistfromtensor_0S
Abackward_lstm_92_while_lstm_cell_matmul_readvariableop_resource_0: U
Cbackward_lstm_92_while_lstm_cell_matmul_1_readvariableop_resource_0: P
Bbackward_lstm_92_while_lstm_cell_biasadd_readvariableop_resource_0: #
backward_lstm_92_while_identity%
!backward_lstm_92_while_identity_1%
!backward_lstm_92_while_identity_2%
!backward_lstm_92_while_identity_3%
!backward_lstm_92_while_identity_4%
!backward_lstm_92_while_identity_5;
7backward_lstm_92_while_backward_lstm_92_strided_slice_1w
sbackward_lstm_92_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_92_tensorarrayunstack_tensorlistfromtensorQ
?backward_lstm_92_while_lstm_cell_matmul_readvariableop_resource: S
Abackward_lstm_92_while_lstm_cell_matmul_1_readvariableop_resource: N
@backward_lstm_92_while_lstm_cell_biasadd_readvariableop_resource: ѕб7backward_lstm_92/while/lstm_cell/BiasAdd/ReadVariableOpб6backward_lstm_92/while/lstm_cell/MatMul/ReadVariableOpб8backward_lstm_92/while/lstm_cell/MatMul_1/ReadVariableOpЎ
Hbackward_lstm_92/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      Ы
:backward_lstm_92/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemubackward_lstm_92_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_92_tensorarrayunstack_tensorlistfromtensor_0"backward_lstm_92_while_placeholderQbackward_lstm_92/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

:*
element_dtype0И
6backward_lstm_92/while/lstm_cell/MatMul/ReadVariableOpReadVariableOpAbackward_lstm_92_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0П
'backward_lstm_92/while/lstm_cell/MatMulMatMulAbackward_lstm_92/while/TensorArrayV2Read/TensorListGetItem:item:0>backward_lstm_92/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

: ╝
8backward_lstm_92/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpCbackward_lstm_92_while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0─
)backward_lstm_92/while/lstm_cell/MatMul_1MatMul$backward_lstm_92_while_placeholder_2@backward_lstm_92/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes

: Й
$backward_lstm_92/while/lstm_cell/addAddV21backward_lstm_92/while/lstm_cell/MatMul:product:03backward_lstm_92/while/lstm_cell/MatMul_1:product:0*
T0*
_output_shapes

: Х
7backward_lstm_92/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOpBbackward_lstm_92_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0К
(backward_lstm_92/while/lstm_cell/BiasAddBiasAdd(backward_lstm_92/while/lstm_cell/add:z:0?backward_lstm_92/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

: r
0backward_lstm_92/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ш
&backward_lstm_92/while/lstm_cell/splitSplit9backward_lstm_92/while/lstm_cell/split/split_dim:output:01backward_lstm_92/while/lstm_cell/BiasAdd:output:0*
T0*<
_output_shapes*
(::::*
	num_splitЇ
(backward_lstm_92/while/lstm_cell/SigmoidSigmoid/backward_lstm_92/while/lstm_cell/split:output:0*
T0*
_output_shapes

:Ј
*backward_lstm_92/while/lstm_cell/Sigmoid_1Sigmoid/backward_lstm_92/while/lstm_cell/split:output:1*
T0*
_output_shapes

:ф
$backward_lstm_92/while/lstm_cell/mulMul.backward_lstm_92/while/lstm_cell/Sigmoid_1:y:0$backward_lstm_92_while_placeholder_3*
T0*
_output_shapes

:Є
%backward_lstm_92/while/lstm_cell/ReluRelu/backward_lstm_92/while/lstm_cell/split:output:2*
T0*
_output_shapes

:╣
&backward_lstm_92/while/lstm_cell/mul_1Mul,backward_lstm_92/while/lstm_cell/Sigmoid:y:03backward_lstm_92/while/lstm_cell/Relu:activations:0*
T0*
_output_shapes

:«
&backward_lstm_92/while/lstm_cell/add_1AddV2(backward_lstm_92/while/lstm_cell/mul:z:0*backward_lstm_92/while/lstm_cell/mul_1:z:0*
T0*
_output_shapes

:Ј
*backward_lstm_92/while/lstm_cell/Sigmoid_2Sigmoid/backward_lstm_92/while/lstm_cell/split:output:3*
T0*
_output_shapes

:ё
'backward_lstm_92/while/lstm_cell/Relu_1Relu*backward_lstm_92/while/lstm_cell/add_1:z:0*
T0*
_output_shapes

:й
&backward_lstm_92/while/lstm_cell/mul_2Mul.backward_lstm_92/while/lstm_cell/Sigmoid_2:y:05backward_lstm_92/while/lstm_cell/Relu_1:activations:0*
T0*
_output_shapes

:є
;backward_lstm_92/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem$backward_lstm_92_while_placeholder_1"backward_lstm_92_while_placeholder*backward_lstm_92/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУм^
backward_lstm_92/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Ј
backward_lstm_92/while/addAddV2"backward_lstm_92_while_placeholder%backward_lstm_92/while/add/y:output:0*
T0*
_output_shapes
: `
backward_lstm_92/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Ф
backward_lstm_92/while/add_1AddV2:backward_lstm_92_while_backward_lstm_92_while_loop_counter'backward_lstm_92/while/add_1/y:output:0*
T0*
_output_shapes
: ї
backward_lstm_92/while/IdentityIdentity backward_lstm_92/while/add_1:z:0^backward_lstm_92/while/NoOp*
T0*
_output_shapes
: «
!backward_lstm_92/while/Identity_1Identity@backward_lstm_92_while_backward_lstm_92_while_maximum_iterations^backward_lstm_92/while/NoOp*
T0*
_output_shapes
: ї
!backward_lstm_92/while/Identity_2Identitybackward_lstm_92/while/add:z:0^backward_lstm_92/while/NoOp*
T0*
_output_shapes
: ╣
!backward_lstm_92/while/Identity_3IdentityKbackward_lstm_92/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^backward_lstm_92/while/NoOp*
T0*
_output_shapes
: а
!backward_lstm_92/while/Identity_4Identity*backward_lstm_92/while/lstm_cell/mul_2:z:0^backward_lstm_92/while/NoOp*
T0*
_output_shapes

:а
!backward_lstm_92/while/Identity_5Identity*backward_lstm_92/while/lstm_cell/add_1:z:0^backward_lstm_92/while/NoOp*
T0*
_output_shapes

:у
backward_lstm_92/while/NoOpNoOp8^backward_lstm_92/while/lstm_cell/BiasAdd/ReadVariableOp7^backward_lstm_92/while/lstm_cell/MatMul/ReadVariableOp9^backward_lstm_92/while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "t
7backward_lstm_92_while_backward_lstm_92_strided_slice_19backward_lstm_92_while_backward_lstm_92_strided_slice_1_0"K
backward_lstm_92_while_identity(backward_lstm_92/while/Identity:output:0"O
!backward_lstm_92_while_identity_1*backward_lstm_92/while/Identity_1:output:0"O
!backward_lstm_92_while_identity_2*backward_lstm_92/while/Identity_2:output:0"O
!backward_lstm_92_while_identity_3*backward_lstm_92/while/Identity_3:output:0"O
!backward_lstm_92_while_identity_4*backward_lstm_92/while/Identity_4:output:0"O
!backward_lstm_92_while_identity_5*backward_lstm_92/while/Identity_5:output:0"є
@backward_lstm_92_while_lstm_cell_biasadd_readvariableop_resourceBbackward_lstm_92_while_lstm_cell_biasadd_readvariableop_resource_0"ѕ
Abackward_lstm_92_while_lstm_cell_matmul_1_readvariableop_resourceCbackward_lstm_92_while_lstm_cell_matmul_1_readvariableop_resource_0"ё
?backward_lstm_92_while_lstm_cell_matmul_readvariableop_resourceAbackward_lstm_92_while_lstm_cell_matmul_readvariableop_resource_0"В
sbackward_lstm_92_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_92_tensorarrayunstack_tensorlistfromtensorubackward_lstm_92_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_92_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : ::: : : : : 2r
7backward_lstm_92/while/lstm_cell/BiasAdd/ReadVariableOp7backward_lstm_92/while/lstm_cell/BiasAdd/ReadVariableOp2p
6backward_lstm_92/while/lstm_cell/MatMul/ReadVariableOp6backward_lstm_92/while/lstm_cell/MatMul/ReadVariableOp2t
8backward_lstm_92/while/lstm_cell/MatMul_1/ReadVariableOp8backward_lstm_92/while/lstm_cell/MatMul_1/ReadVariableOp:[ W

_output_shapes
: 
=
_user_specified_name%#backward_lstm_92/while/loop_counter:a]

_output_shapes
: 
C
_user_specified_name+)backward_lstm_92/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

::$ 

_output_shapes

::XT

_output_shapes
: 
:
_user_specified_name" backward_lstm_92/strided_slice_1:pl

_output_shapes
: 
R
_user_specified_name:8backward_lstm_92/TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
ќ	
┐
3__inference_backward_lstm_92_layer_call_fn_28638526
inputs_0
unknown: 
	unknown_0: 
	unknown_1: 
identityѕбStatefulPartitionedCall 
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *W
fRRP
N__inference_backward_lstm_92_layer_call_and_return_conditional_losses_28634586|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :                  <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs_0:($
"
_user_specified_name
28638518:($
"
_user_specified_name
28638520:($
"
_user_specified_name
28638522
д
■
G__inference_dense_576_layer_call_and_return_conditional_losses_28635357

inputs3
!tensordot_readvariableop_resource:-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбTensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:*
dtype0h
Tensordot/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ђ     p
Tensordot/ReshapeReshapeinputs Tensordot/Reshape/shape:output:0*
T0*
_output_shapes
:	ђѓ
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*
_output_shapes
:	ђd
Tensordot/shapeConst*
_output_shapes
:*
dtype0*!
valueB"         w
	TensordotReshapeTensordot/MatMul:product:0Tensordot/shape:output:0*
T0*"
_output_shapes
:r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0s
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*"
_output_shapes
:Q
SoftmaxSoftmaxBiasAdd:output:0*
T0*"
_output_shapes
:[
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*"
_output_shapes
:V
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*%
_input_shapes
:: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:J F
"
_output_shapes
:
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
њ
X
,__inference_lambda_98_layer_call_fn_28636439
inputs_0
inputs_1
identity║
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
:* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_lambda_98_layer_call_and_return_conditional_losses_28635812[
IdentityIdentityPartitionedCall:output:0*
T0*"
_output_shapes
:"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :::P L
&
_output_shapes
:
"
_user_specified_name
inputs_0:LH
"
_output_shapes
:
"
_user_specified_name
inputs_1
ъ
d
H__inference_flatten_92_layer_call_and_return_conditional_losses_28637709

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"    ђ  T
ReshapeReshapeinputsConst:output:0*
T0*
_output_shapes
:	ђP
IdentityIdentityReshape:output:0*
T0*
_output_shapes
:	ђ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
::J F
"
_output_shapes
:
 
_user_specified_nameinputs
▒M
Л
$backward_lstm_92_while_body_28637007>
:backward_lstm_92_while_backward_lstm_92_while_loop_counterD
@backward_lstm_92_while_backward_lstm_92_while_maximum_iterations&
"backward_lstm_92_while_placeholder(
$backward_lstm_92_while_placeholder_1(
$backward_lstm_92_while_placeholder_2(
$backward_lstm_92_while_placeholder_3=
9backward_lstm_92_while_backward_lstm_92_strided_slice_1_0y
ubackward_lstm_92_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_92_tensorarrayunstack_tensorlistfromtensor_0S
Abackward_lstm_92_while_lstm_cell_matmul_readvariableop_resource_0: U
Cbackward_lstm_92_while_lstm_cell_matmul_1_readvariableop_resource_0: P
Bbackward_lstm_92_while_lstm_cell_biasadd_readvariableop_resource_0: #
backward_lstm_92_while_identity%
!backward_lstm_92_while_identity_1%
!backward_lstm_92_while_identity_2%
!backward_lstm_92_while_identity_3%
!backward_lstm_92_while_identity_4%
!backward_lstm_92_while_identity_5;
7backward_lstm_92_while_backward_lstm_92_strided_slice_1w
sbackward_lstm_92_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_92_tensorarrayunstack_tensorlistfromtensorQ
?backward_lstm_92_while_lstm_cell_matmul_readvariableop_resource: S
Abackward_lstm_92_while_lstm_cell_matmul_1_readvariableop_resource: N
@backward_lstm_92_while_lstm_cell_biasadd_readvariableop_resource: ѕб7backward_lstm_92/while/lstm_cell/BiasAdd/ReadVariableOpб6backward_lstm_92/while/lstm_cell/MatMul/ReadVariableOpб8backward_lstm_92/while/lstm_cell/MatMul_1/ReadVariableOpЎ
Hbackward_lstm_92/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        ё
:backward_lstm_92/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemubackward_lstm_92_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_92_tensorarrayunstack_tensorlistfromtensor_0"backward_lstm_92_while_placeholderQbackward_lstm_92/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:                  *
element_dtype0И
6backward_lstm_92/while/lstm_cell/MatMul/ReadVariableOpReadVariableOpAbackward_lstm_92_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0Т
'backward_lstm_92/while/lstm_cell/MatMulMatMulAbackward_lstm_92/while/TensorArrayV2Read/TensorListGetItem:item:0>backward_lstm_92/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ╝
8backward_lstm_92/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpCbackward_lstm_92_while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0═
)backward_lstm_92/while/lstm_cell/MatMul_1MatMul$backward_lstm_92_while_placeholder_2@backward_lstm_92/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          К
$backward_lstm_92/while/lstm_cell/addAddV21backward_lstm_92/while/lstm_cell/MatMul:product:03backward_lstm_92/while/lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:          Х
7backward_lstm_92/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOpBbackward_lstm_92_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0л
(backward_lstm_92/while/lstm_cell/BiasAddBiasAdd(backward_lstm_92/while/lstm_cell/add:z:0?backward_lstm_92/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          r
0backward_lstm_92/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ў
&backward_lstm_92/while/lstm_cell/splitSplit9backward_lstm_92/while/lstm_cell/split/split_dim:output:01backward_lstm_92/while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitќ
(backward_lstm_92/while/lstm_cell/SigmoidSigmoid/backward_lstm_92/while/lstm_cell/split:output:0*
T0*'
_output_shapes
:         ў
*backward_lstm_92/while/lstm_cell/Sigmoid_1Sigmoid/backward_lstm_92/while/lstm_cell/split:output:1*
T0*'
_output_shapes
:         │
$backward_lstm_92/while/lstm_cell/mulMul.backward_lstm_92/while/lstm_cell/Sigmoid_1:y:0$backward_lstm_92_while_placeholder_3*
T0*'
_output_shapes
:         љ
%backward_lstm_92/while/lstm_cell/ReluRelu/backward_lstm_92/while/lstm_cell/split:output:2*
T0*'
_output_shapes
:         ┬
&backward_lstm_92/while/lstm_cell/mul_1Mul,backward_lstm_92/while/lstm_cell/Sigmoid:y:03backward_lstm_92/while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:         и
&backward_lstm_92/while/lstm_cell/add_1AddV2(backward_lstm_92/while/lstm_cell/mul:z:0*backward_lstm_92/while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:         ў
*backward_lstm_92/while/lstm_cell/Sigmoid_2Sigmoid/backward_lstm_92/while/lstm_cell/split:output:3*
T0*'
_output_shapes
:         Ї
'backward_lstm_92/while/lstm_cell/Relu_1Relu*backward_lstm_92/while/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:         к
&backward_lstm_92/while/lstm_cell/mul_2Mul.backward_lstm_92/while/lstm_cell/Sigmoid_2:y:05backward_lstm_92/while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:         є
;backward_lstm_92/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem$backward_lstm_92_while_placeholder_1"backward_lstm_92_while_placeholder*backward_lstm_92/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУм^
backward_lstm_92/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Ј
backward_lstm_92/while/addAddV2"backward_lstm_92_while_placeholder%backward_lstm_92/while/add/y:output:0*
T0*
_output_shapes
: `
backward_lstm_92/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Ф
backward_lstm_92/while/add_1AddV2:backward_lstm_92_while_backward_lstm_92_while_loop_counter'backward_lstm_92/while/add_1/y:output:0*
T0*
_output_shapes
: ї
backward_lstm_92/while/IdentityIdentity backward_lstm_92/while/add_1:z:0^backward_lstm_92/while/NoOp*
T0*
_output_shapes
: «
!backward_lstm_92/while/Identity_1Identity@backward_lstm_92_while_backward_lstm_92_while_maximum_iterations^backward_lstm_92/while/NoOp*
T0*
_output_shapes
: ї
!backward_lstm_92/while/Identity_2Identitybackward_lstm_92/while/add:z:0^backward_lstm_92/while/NoOp*
T0*
_output_shapes
: ╣
!backward_lstm_92/while/Identity_3IdentityKbackward_lstm_92/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^backward_lstm_92/while/NoOp*
T0*
_output_shapes
: Е
!backward_lstm_92/while/Identity_4Identity*backward_lstm_92/while/lstm_cell/mul_2:z:0^backward_lstm_92/while/NoOp*
T0*'
_output_shapes
:         Е
!backward_lstm_92/while/Identity_5Identity*backward_lstm_92/while/lstm_cell/add_1:z:0^backward_lstm_92/while/NoOp*
T0*'
_output_shapes
:         у
backward_lstm_92/while/NoOpNoOp8^backward_lstm_92/while/lstm_cell/BiasAdd/ReadVariableOp7^backward_lstm_92/while/lstm_cell/MatMul/ReadVariableOp9^backward_lstm_92/while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "t
7backward_lstm_92_while_backward_lstm_92_strided_slice_19backward_lstm_92_while_backward_lstm_92_strided_slice_1_0"K
backward_lstm_92_while_identity(backward_lstm_92/while/Identity:output:0"O
!backward_lstm_92_while_identity_1*backward_lstm_92/while/Identity_1:output:0"O
!backward_lstm_92_while_identity_2*backward_lstm_92/while/Identity_2:output:0"O
!backward_lstm_92_while_identity_3*backward_lstm_92/while/Identity_3:output:0"O
!backward_lstm_92_while_identity_4*backward_lstm_92/while/Identity_4:output:0"O
!backward_lstm_92_while_identity_5*backward_lstm_92/while/Identity_5:output:0"є
@backward_lstm_92_while_lstm_cell_biasadd_readvariableop_resourceBbackward_lstm_92_while_lstm_cell_biasadd_readvariableop_resource_0"ѕ
Abackward_lstm_92_while_lstm_cell_matmul_1_readvariableop_resourceCbackward_lstm_92_while_lstm_cell_matmul_1_readvariableop_resource_0"ё
?backward_lstm_92_while_lstm_cell_matmul_readvariableop_resourceAbackward_lstm_92_while_lstm_cell_matmul_readvariableop_resource_0"В
sbackward_lstm_92_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_92_tensorarrayunstack_tensorlistfromtensorubackward_lstm_92_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_92_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2r
7backward_lstm_92/while/lstm_cell/BiasAdd/ReadVariableOp7backward_lstm_92/while/lstm_cell/BiasAdd/ReadVariableOp2p
6backward_lstm_92/while/lstm_cell/MatMul/ReadVariableOp6backward_lstm_92/while/lstm_cell/MatMul/ReadVariableOp2t
8backward_lstm_92/while/lstm_cell/MatMul_1/ReadVariableOp8backward_lstm_92/while/lstm_cell/MatMul_1/ReadVariableOp:[ W

_output_shapes
: 
=
_user_specified_name%#backward_lstm_92/while/loop_counter:a]

_output_shapes
: 
C
_user_specified_name+)backward_lstm_92/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :XT

_output_shapes
: 
:
_user_specified_name" backward_lstm_92/strided_slice_1:pl

_output_shapes
: 
R
_user_specified_name:8backward_lstm_92/TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
С
■
G__inference_dense_582_layer_call_and_return_conditional_losses_28637808

inputs3
!tensordot_readvariableop_resource:-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбTensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       S
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
::ь¤Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ╗
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ┐
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ю
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:         і
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:                  і
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         [
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Д
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Ѓ
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:         T
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:         e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:         V
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:         
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
ќ	
┐
3__inference_backward_lstm_92_layer_call_fn_28638515
inputs_0
unknown: 
	unknown_0: 
	unknown_1: 
identityѕбStatefulPartitionedCall 
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *W
fRRP
N__inference_backward_lstm_92_layer_call_and_return_conditional_losses_28634439|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :                  <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs_0:($
"
_user_specified_name
28638507:($
"
_user_specified_name
28638509:($
"
_user_specified_name
28638511
ѕ
Ў
,__inference_dense_577_layer_call_fn_28637737

inputs
unknown:
	unknown_0:
identityѕбStatefulPartitionedCallЯ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_dense_577_layer_call_and_return_conditional_losses_28633675s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs:($
"
_user_specified_name
28637731:($
"
_user_specified_name
28637733
┐
f
-__inference_dropout_92_layer_call_fn_28637676

inputs
identityѕбStatefulPartitionedCallЙ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
:* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *Q
fLRJ
H__inference_dropout_92_layer_call_and_return_conditional_losses_28635728j
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*"
_output_shapes
:<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
:22
StatefulPartitionedCallStatefulPartitionedCall:J F
"
_output_shapes
:
 
_user_specified_nameinputs
Еr
О
Dtopk_bilstm_moe_bidirectional_92_forward_lstm_92_while_body_28633404~
ztopk_bilstm_moe_bidirectional_92_forward_lstm_92_while_topk_bilstm_moe_bidirectional_92_forward_lstm_92_while_loop_counterЁ
ђtopk_bilstm_moe_bidirectional_92_forward_lstm_92_while_topk_bilstm_moe_bidirectional_92_forward_lstm_92_while_maximum_iterationsF
Btopk_bilstm_moe_bidirectional_92_forward_lstm_92_while_placeholderH
Dtopk_bilstm_moe_bidirectional_92_forward_lstm_92_while_placeholder_1H
Dtopk_bilstm_moe_bidirectional_92_forward_lstm_92_while_placeholder_2H
Dtopk_bilstm_moe_bidirectional_92_forward_lstm_92_while_placeholder_3}
ytopk_bilstm_moe_bidirectional_92_forward_lstm_92_while_topk_bilstm_moe_bidirectional_92_forward_lstm_92_strided_slice_1_0║
хtopk_bilstm_moe_bidirectional_92_forward_lstm_92_while_tensorarrayv2read_tensorlistgetitem_topk_bilstm_moe_bidirectional_92_forward_lstm_92_tensorarrayunstack_tensorlistfromtensor_0s
atopk_bilstm_moe_bidirectional_92_forward_lstm_92_while_lstm_cell_matmul_readvariableop_resource_0: u
ctopk_bilstm_moe_bidirectional_92_forward_lstm_92_while_lstm_cell_matmul_1_readvariableop_resource_0: p
btopk_bilstm_moe_bidirectional_92_forward_lstm_92_while_lstm_cell_biasadd_readvariableop_resource_0: C
?topk_bilstm_moe_bidirectional_92_forward_lstm_92_while_identityE
Atopk_bilstm_moe_bidirectional_92_forward_lstm_92_while_identity_1E
Atopk_bilstm_moe_bidirectional_92_forward_lstm_92_while_identity_2E
Atopk_bilstm_moe_bidirectional_92_forward_lstm_92_while_identity_3E
Atopk_bilstm_moe_bidirectional_92_forward_lstm_92_while_identity_4E
Atopk_bilstm_moe_bidirectional_92_forward_lstm_92_while_identity_5{
wtopk_bilstm_moe_bidirectional_92_forward_lstm_92_while_topk_bilstm_moe_bidirectional_92_forward_lstm_92_strided_slice_1И
│topk_bilstm_moe_bidirectional_92_forward_lstm_92_while_tensorarrayv2read_tensorlistgetitem_topk_bilstm_moe_bidirectional_92_forward_lstm_92_tensorarrayunstack_tensorlistfromtensorq
_topk_bilstm_moe_bidirectional_92_forward_lstm_92_while_lstm_cell_matmul_readvariableop_resource: s
atopk_bilstm_moe_bidirectional_92_forward_lstm_92_while_lstm_cell_matmul_1_readvariableop_resource: n
`topk_bilstm_moe_bidirectional_92_forward_lstm_92_while_lstm_cell_biasadd_readvariableop_resource: ѕбWtopk_bilstm_moe/bidirectional_92/forward_lstm_92/while/lstm_cell/BiasAdd/ReadVariableOpбVtopk_bilstm_moe/bidirectional_92/forward_lstm_92/while/lstm_cell/MatMul/ReadVariableOpбXtopk_bilstm_moe/bidirectional_92/forward_lstm_92/while/lstm_cell/MatMul_1/ReadVariableOp╣
htopk_bilstm_moe/bidirectional_92/forward_lstm_92/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      Њ
Ztopk_bilstm_moe/bidirectional_92/forward_lstm_92/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemхtopk_bilstm_moe_bidirectional_92_forward_lstm_92_while_tensorarrayv2read_tensorlistgetitem_topk_bilstm_moe_bidirectional_92_forward_lstm_92_tensorarrayunstack_tensorlistfromtensor_0Btopk_bilstm_moe_bidirectional_92_forward_lstm_92_while_placeholderqtopk_bilstm_moe/bidirectional_92/forward_lstm_92/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

:*
element_dtype0Э
Vtopk_bilstm_moe/bidirectional_92/forward_lstm_92/while/lstm_cell/MatMul/ReadVariableOpReadVariableOpatopk_bilstm_moe_bidirectional_92_forward_lstm_92_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0й
Gtopk_bilstm_moe/bidirectional_92/forward_lstm_92/while/lstm_cell/MatMulMatMulatopk_bilstm_moe/bidirectional_92/forward_lstm_92/while/TensorArrayV2Read/TensorListGetItem:item:0^topk_bilstm_moe/bidirectional_92/forward_lstm_92/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

: Ч
Xtopk_bilstm_moe/bidirectional_92/forward_lstm_92/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpctopk_bilstm_moe_bidirectional_92_forward_lstm_92_while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0ц
Itopk_bilstm_moe/bidirectional_92/forward_lstm_92/while/lstm_cell/MatMul_1MatMulDtopk_bilstm_moe_bidirectional_92_forward_lstm_92_while_placeholder_2`topk_bilstm_moe/bidirectional_92/forward_lstm_92/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes

: ъ
Dtopk_bilstm_moe/bidirectional_92/forward_lstm_92/while/lstm_cell/addAddV2Qtopk_bilstm_moe/bidirectional_92/forward_lstm_92/while/lstm_cell/MatMul:product:0Stopk_bilstm_moe/bidirectional_92/forward_lstm_92/while/lstm_cell/MatMul_1:product:0*
T0*
_output_shapes

: Ш
Wtopk_bilstm_moe/bidirectional_92/forward_lstm_92/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOpbtopk_bilstm_moe_bidirectional_92_forward_lstm_92_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0Д
Htopk_bilstm_moe/bidirectional_92/forward_lstm_92/while/lstm_cell/BiasAddBiasAddHtopk_bilstm_moe/bidirectional_92/forward_lstm_92/while/lstm_cell/add:z:0_topk_bilstm_moe/bidirectional_92/forward_lstm_92/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

: њ
Ptopk_bilstm_moe/bidirectional_92/forward_lstm_92/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Н
Ftopk_bilstm_moe/bidirectional_92/forward_lstm_92/while/lstm_cell/splitSplitYtopk_bilstm_moe/bidirectional_92/forward_lstm_92/while/lstm_cell/split/split_dim:output:0Qtopk_bilstm_moe/bidirectional_92/forward_lstm_92/while/lstm_cell/BiasAdd:output:0*
T0*<
_output_shapes*
(::::*
	num_split═
Htopk_bilstm_moe/bidirectional_92/forward_lstm_92/while/lstm_cell/SigmoidSigmoidOtopk_bilstm_moe/bidirectional_92/forward_lstm_92/while/lstm_cell/split:output:0*
T0*
_output_shapes

:¤
Jtopk_bilstm_moe/bidirectional_92/forward_lstm_92/while/lstm_cell/Sigmoid_1SigmoidOtopk_bilstm_moe/bidirectional_92/forward_lstm_92/while/lstm_cell/split:output:1*
T0*
_output_shapes

:і
Dtopk_bilstm_moe/bidirectional_92/forward_lstm_92/while/lstm_cell/mulMulNtopk_bilstm_moe/bidirectional_92/forward_lstm_92/while/lstm_cell/Sigmoid_1:y:0Dtopk_bilstm_moe_bidirectional_92_forward_lstm_92_while_placeholder_3*
T0*
_output_shapes

:К
Etopk_bilstm_moe/bidirectional_92/forward_lstm_92/while/lstm_cell/ReluReluOtopk_bilstm_moe/bidirectional_92/forward_lstm_92/while/lstm_cell/split:output:2*
T0*
_output_shapes

:Ў
Ftopk_bilstm_moe/bidirectional_92/forward_lstm_92/while/lstm_cell/mul_1MulLtopk_bilstm_moe/bidirectional_92/forward_lstm_92/while/lstm_cell/Sigmoid:y:0Stopk_bilstm_moe/bidirectional_92/forward_lstm_92/while/lstm_cell/Relu:activations:0*
T0*
_output_shapes

:ј
Ftopk_bilstm_moe/bidirectional_92/forward_lstm_92/while/lstm_cell/add_1AddV2Htopk_bilstm_moe/bidirectional_92/forward_lstm_92/while/lstm_cell/mul:z:0Jtopk_bilstm_moe/bidirectional_92/forward_lstm_92/while/lstm_cell/mul_1:z:0*
T0*
_output_shapes

:¤
Jtopk_bilstm_moe/bidirectional_92/forward_lstm_92/while/lstm_cell/Sigmoid_2SigmoidOtopk_bilstm_moe/bidirectional_92/forward_lstm_92/while/lstm_cell/split:output:3*
T0*
_output_shapes

:─
Gtopk_bilstm_moe/bidirectional_92/forward_lstm_92/while/lstm_cell/Relu_1ReluJtopk_bilstm_moe/bidirectional_92/forward_lstm_92/while/lstm_cell/add_1:z:0*
T0*
_output_shapes

:Ю
Ftopk_bilstm_moe/bidirectional_92/forward_lstm_92/while/lstm_cell/mul_2MulNtopk_bilstm_moe/bidirectional_92/forward_lstm_92/while/lstm_cell/Sigmoid_2:y:0Utopk_bilstm_moe/bidirectional_92/forward_lstm_92/while/lstm_cell/Relu_1:activations:0*
T0*
_output_shapes

:є
[topk_bilstm_moe/bidirectional_92/forward_lstm_92/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemDtopk_bilstm_moe_bidirectional_92_forward_lstm_92_while_placeholder_1Btopk_bilstm_moe_bidirectional_92_forward_lstm_92_while_placeholderJtopk_bilstm_moe/bidirectional_92/forward_lstm_92/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУм~
<topk_bilstm_moe/bidirectional_92/forward_lstm_92/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :№
:topk_bilstm_moe/bidirectional_92/forward_lstm_92/while/addAddV2Btopk_bilstm_moe_bidirectional_92_forward_lstm_92_while_placeholderEtopk_bilstm_moe/bidirectional_92/forward_lstm_92/while/add/y:output:0*
T0*
_output_shapes
: ђ
>topk_bilstm_moe/bidirectional_92/forward_lstm_92/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Ф
<topk_bilstm_moe/bidirectional_92/forward_lstm_92/while/add_1AddV2ztopk_bilstm_moe_bidirectional_92_forward_lstm_92_while_topk_bilstm_moe_bidirectional_92_forward_lstm_92_while_loop_counterGtopk_bilstm_moe/bidirectional_92/forward_lstm_92/while/add_1/y:output:0*
T0*
_output_shapes
: В
?topk_bilstm_moe/bidirectional_92/forward_lstm_92/while/IdentityIdentity@topk_bilstm_moe/bidirectional_92/forward_lstm_92/while/add_1:z:0<^topk_bilstm_moe/bidirectional_92/forward_lstm_92/while/NoOp*
T0*
_output_shapes
: »
Atopk_bilstm_moe/bidirectional_92/forward_lstm_92/while/Identity_1Identityђtopk_bilstm_moe_bidirectional_92_forward_lstm_92_while_topk_bilstm_moe_bidirectional_92_forward_lstm_92_while_maximum_iterations<^topk_bilstm_moe/bidirectional_92/forward_lstm_92/while/NoOp*
T0*
_output_shapes
: В
Atopk_bilstm_moe/bidirectional_92/forward_lstm_92/while/Identity_2Identity>topk_bilstm_moe/bidirectional_92/forward_lstm_92/while/add:z:0<^topk_bilstm_moe/bidirectional_92/forward_lstm_92/while/NoOp*
T0*
_output_shapes
: Ў
Atopk_bilstm_moe/bidirectional_92/forward_lstm_92/while/Identity_3Identityktopk_bilstm_moe/bidirectional_92/forward_lstm_92/while/TensorArrayV2Write/TensorListSetItem:output_handle:0<^topk_bilstm_moe/bidirectional_92/forward_lstm_92/while/NoOp*
T0*
_output_shapes
: ђ
Atopk_bilstm_moe/bidirectional_92/forward_lstm_92/while/Identity_4IdentityJtopk_bilstm_moe/bidirectional_92/forward_lstm_92/while/lstm_cell/mul_2:z:0<^topk_bilstm_moe/bidirectional_92/forward_lstm_92/while/NoOp*
T0*
_output_shapes

:ђ
Atopk_bilstm_moe/bidirectional_92/forward_lstm_92/while/Identity_5IdentityJtopk_bilstm_moe/bidirectional_92/forward_lstm_92/while/lstm_cell/add_1:z:0<^topk_bilstm_moe/bidirectional_92/forward_lstm_92/while/NoOp*
T0*
_output_shapes

:у
;topk_bilstm_moe/bidirectional_92/forward_lstm_92/while/NoOpNoOpX^topk_bilstm_moe/bidirectional_92/forward_lstm_92/while/lstm_cell/BiasAdd/ReadVariableOpW^topk_bilstm_moe/bidirectional_92/forward_lstm_92/while/lstm_cell/MatMul/ReadVariableOpY^topk_bilstm_moe/bidirectional_92/forward_lstm_92/while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "І
?topk_bilstm_moe_bidirectional_92_forward_lstm_92_while_identityHtopk_bilstm_moe/bidirectional_92/forward_lstm_92/while/Identity:output:0"Ј
Atopk_bilstm_moe_bidirectional_92_forward_lstm_92_while_identity_1Jtopk_bilstm_moe/bidirectional_92/forward_lstm_92/while/Identity_1:output:0"Ј
Atopk_bilstm_moe_bidirectional_92_forward_lstm_92_while_identity_2Jtopk_bilstm_moe/bidirectional_92/forward_lstm_92/while/Identity_2:output:0"Ј
Atopk_bilstm_moe_bidirectional_92_forward_lstm_92_while_identity_3Jtopk_bilstm_moe/bidirectional_92/forward_lstm_92/while/Identity_3:output:0"Ј
Atopk_bilstm_moe_bidirectional_92_forward_lstm_92_while_identity_4Jtopk_bilstm_moe/bidirectional_92/forward_lstm_92/while/Identity_4:output:0"Ј
Atopk_bilstm_moe_bidirectional_92_forward_lstm_92_while_identity_5Jtopk_bilstm_moe/bidirectional_92/forward_lstm_92/while/Identity_5:output:0"к
`topk_bilstm_moe_bidirectional_92_forward_lstm_92_while_lstm_cell_biasadd_readvariableop_resourcebtopk_bilstm_moe_bidirectional_92_forward_lstm_92_while_lstm_cell_biasadd_readvariableop_resource_0"╚
atopk_bilstm_moe_bidirectional_92_forward_lstm_92_while_lstm_cell_matmul_1_readvariableop_resourcectopk_bilstm_moe_bidirectional_92_forward_lstm_92_while_lstm_cell_matmul_1_readvariableop_resource_0"─
_topk_bilstm_moe_bidirectional_92_forward_lstm_92_while_lstm_cell_matmul_readvariableop_resourceatopk_bilstm_moe_bidirectional_92_forward_lstm_92_while_lstm_cell_matmul_readvariableop_resource_0"Ь
│topk_bilstm_moe_bidirectional_92_forward_lstm_92_while_tensorarrayv2read_tensorlistgetitem_topk_bilstm_moe_bidirectional_92_forward_lstm_92_tensorarrayunstack_tensorlistfromtensorхtopk_bilstm_moe_bidirectional_92_forward_lstm_92_while_tensorarrayv2read_tensorlistgetitem_topk_bilstm_moe_bidirectional_92_forward_lstm_92_tensorarrayunstack_tensorlistfromtensor_0"З
wtopk_bilstm_moe_bidirectional_92_forward_lstm_92_while_topk_bilstm_moe_bidirectional_92_forward_lstm_92_strided_slice_1ytopk_bilstm_moe_bidirectional_92_forward_lstm_92_while_topk_bilstm_moe_bidirectional_92_forward_lstm_92_strided_slice_1_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : ::: : : : : 2▓
Wtopk_bilstm_moe/bidirectional_92/forward_lstm_92/while/lstm_cell/BiasAdd/ReadVariableOpWtopk_bilstm_moe/bidirectional_92/forward_lstm_92/while/lstm_cell/BiasAdd/ReadVariableOp2░
Vtopk_bilstm_moe/bidirectional_92/forward_lstm_92/while/lstm_cell/MatMul/ReadVariableOpVtopk_bilstm_moe/bidirectional_92/forward_lstm_92/while/lstm_cell/MatMul/ReadVariableOp2┤
Xtopk_bilstm_moe/bidirectional_92/forward_lstm_92/while/lstm_cell/MatMul_1/ReadVariableOpXtopk_bilstm_moe/bidirectional_92/forward_lstm_92/while/lstm_cell/MatMul_1/ReadVariableOp:{ w

_output_shapes
: 
]
_user_specified_nameECtopk_bilstm_moe/bidirectional_92/forward_lstm_92/while/loop_counter:Ђ}

_output_shapes
: 
c
_user_specified_nameKItopk_bilstm_moe/bidirectional_92/forward_lstm_92/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

::$ 

_output_shapes

::xt

_output_shapes
: 
Z
_user_specified_nameB@topk_bilstm_moe/bidirectional_92/forward_lstm_92/strided_slice_1:Љї

_output_shapes
: 
r
_user_specified_nameZXtopk_bilstm_moe/bidirectional_92/forward_lstm_92/TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
ъ
d
H__inference_flatten_92_layer_call_and_return_conditional_losses_28635735

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"    ђ  T
ReshapeReshapeinputsConst:output:0*
T0*
_output_shapes
:	ђP
IdentityIdentityReshape:output:0*
T0*
_output_shapes
:	ђ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
::J F
"
_output_shapes
:
 
_user_specified_nameinputs
й
Ї
#forward_lstm_92_while_cond_28636577<
8forward_lstm_92_while_forward_lstm_92_while_loop_counterB
>forward_lstm_92_while_forward_lstm_92_while_maximum_iterations%
!forward_lstm_92_while_placeholder'
#forward_lstm_92_while_placeholder_1'
#forward_lstm_92_while_placeholder_2'
#forward_lstm_92_while_placeholder_3>
:forward_lstm_92_while_less_forward_lstm_92_strided_slice_1V
Rforward_lstm_92_while_forward_lstm_92_while_cond_28636577___redundant_placeholder0V
Rforward_lstm_92_while_forward_lstm_92_while_cond_28636577___redundant_placeholder1V
Rforward_lstm_92_while_forward_lstm_92_while_cond_28636577___redundant_placeholder2V
Rforward_lstm_92_while_forward_lstm_92_while_cond_28636577___redundant_placeholder3"
forward_lstm_92_while_identity
б
forward_lstm_92/while/LessLess!forward_lstm_92_while_placeholder:forward_lstm_92_while_less_forward_lstm_92_strided_slice_1*
T0*
_output_shapes
: k
forward_lstm_92/while/IdentityIdentityforward_lstm_92/while/Less:z:0*
T0
*
_output_shapes
: "I
forward_lstm_92_while_identity'forward_lstm_92/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : :::::Z V

_output_shapes
: 
<
_user_specified_name$"forward_lstm_92/while/loop_counter:`\

_output_shapes
: 
B
_user_specified_name*(forward_lstm_92/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :WS

_output_shapes
: 
9
_user_specified_name!forward_lstm_92/strided_slice_1:

_output_shapes
:
Ь
s
G__inference_lambda_96_layer_call_and_return_conditional_losses_28636397
inputs_0
inputs_1
identity~
einsum/EinsumEinsuminputs_0inputs_1*
N*
T0*"
_output_shapes
:*
equationabc,abcd->abdY
IdentityIdentityeinsum/Einsum:output:0*
T0*"
_output_shapes
:"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :::L H
"
_output_shapes
:
"
_user_specified_name
inputs_0:PL
&
_output_shapes
:
"
_user_specified_name
inputs_1
Т
q
G__inference_lambda_96_layer_call_and_return_conditional_losses_28635375

inputs
inputs_1
identity|
einsum/EinsumEinsuminputsinputs_1*
N*
T0*"
_output_shapes
:*
equationabc,abcd->abdY
IdentityIdentityeinsum/Einsum:output:0*
T0*"
_output_shapes
:"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :::J F
"
_output_shapes
:
 
_user_specified_nameinputs:NJ
&
_output_shapes
:
 
_user_specified_nameinputs
▒M
Л
$backward_lstm_92_while_body_28636719>
:backward_lstm_92_while_backward_lstm_92_while_loop_counterD
@backward_lstm_92_while_backward_lstm_92_while_maximum_iterations&
"backward_lstm_92_while_placeholder(
$backward_lstm_92_while_placeholder_1(
$backward_lstm_92_while_placeholder_2(
$backward_lstm_92_while_placeholder_3=
9backward_lstm_92_while_backward_lstm_92_strided_slice_1_0y
ubackward_lstm_92_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_92_tensorarrayunstack_tensorlistfromtensor_0S
Abackward_lstm_92_while_lstm_cell_matmul_readvariableop_resource_0: U
Cbackward_lstm_92_while_lstm_cell_matmul_1_readvariableop_resource_0: P
Bbackward_lstm_92_while_lstm_cell_biasadd_readvariableop_resource_0: #
backward_lstm_92_while_identity%
!backward_lstm_92_while_identity_1%
!backward_lstm_92_while_identity_2%
!backward_lstm_92_while_identity_3%
!backward_lstm_92_while_identity_4%
!backward_lstm_92_while_identity_5;
7backward_lstm_92_while_backward_lstm_92_strided_slice_1w
sbackward_lstm_92_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_92_tensorarrayunstack_tensorlistfromtensorQ
?backward_lstm_92_while_lstm_cell_matmul_readvariableop_resource: S
Abackward_lstm_92_while_lstm_cell_matmul_1_readvariableop_resource: N
@backward_lstm_92_while_lstm_cell_biasadd_readvariableop_resource: ѕб7backward_lstm_92/while/lstm_cell/BiasAdd/ReadVariableOpб6backward_lstm_92/while/lstm_cell/MatMul/ReadVariableOpб8backward_lstm_92/while/lstm_cell/MatMul_1/ReadVariableOpЎ
Hbackward_lstm_92/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        ё
:backward_lstm_92/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemubackward_lstm_92_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_92_tensorarrayunstack_tensorlistfromtensor_0"backward_lstm_92_while_placeholderQbackward_lstm_92/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:                  *
element_dtype0И
6backward_lstm_92/while/lstm_cell/MatMul/ReadVariableOpReadVariableOpAbackward_lstm_92_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0Т
'backward_lstm_92/while/lstm_cell/MatMulMatMulAbackward_lstm_92/while/TensorArrayV2Read/TensorListGetItem:item:0>backward_lstm_92/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ╝
8backward_lstm_92/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpCbackward_lstm_92_while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0═
)backward_lstm_92/while/lstm_cell/MatMul_1MatMul$backward_lstm_92_while_placeholder_2@backward_lstm_92/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          К
$backward_lstm_92/while/lstm_cell/addAddV21backward_lstm_92/while/lstm_cell/MatMul:product:03backward_lstm_92/while/lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:          Х
7backward_lstm_92/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOpBbackward_lstm_92_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0л
(backward_lstm_92/while/lstm_cell/BiasAddBiasAdd(backward_lstm_92/while/lstm_cell/add:z:0?backward_lstm_92/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          r
0backward_lstm_92/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ў
&backward_lstm_92/while/lstm_cell/splitSplit9backward_lstm_92/while/lstm_cell/split/split_dim:output:01backward_lstm_92/while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitќ
(backward_lstm_92/while/lstm_cell/SigmoidSigmoid/backward_lstm_92/while/lstm_cell/split:output:0*
T0*'
_output_shapes
:         ў
*backward_lstm_92/while/lstm_cell/Sigmoid_1Sigmoid/backward_lstm_92/while/lstm_cell/split:output:1*
T0*'
_output_shapes
:         │
$backward_lstm_92/while/lstm_cell/mulMul.backward_lstm_92/while/lstm_cell/Sigmoid_1:y:0$backward_lstm_92_while_placeholder_3*
T0*'
_output_shapes
:         љ
%backward_lstm_92/while/lstm_cell/ReluRelu/backward_lstm_92/while/lstm_cell/split:output:2*
T0*'
_output_shapes
:         ┬
&backward_lstm_92/while/lstm_cell/mul_1Mul,backward_lstm_92/while/lstm_cell/Sigmoid:y:03backward_lstm_92/while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:         и
&backward_lstm_92/while/lstm_cell/add_1AddV2(backward_lstm_92/while/lstm_cell/mul:z:0*backward_lstm_92/while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:         ў
*backward_lstm_92/while/lstm_cell/Sigmoid_2Sigmoid/backward_lstm_92/while/lstm_cell/split:output:3*
T0*'
_output_shapes
:         Ї
'backward_lstm_92/while/lstm_cell/Relu_1Relu*backward_lstm_92/while/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:         к
&backward_lstm_92/while/lstm_cell/mul_2Mul.backward_lstm_92/while/lstm_cell/Sigmoid_2:y:05backward_lstm_92/while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:         є
;backward_lstm_92/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem$backward_lstm_92_while_placeholder_1"backward_lstm_92_while_placeholder*backward_lstm_92/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУм^
backward_lstm_92/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Ј
backward_lstm_92/while/addAddV2"backward_lstm_92_while_placeholder%backward_lstm_92/while/add/y:output:0*
T0*
_output_shapes
: `
backward_lstm_92/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Ф
backward_lstm_92/while/add_1AddV2:backward_lstm_92_while_backward_lstm_92_while_loop_counter'backward_lstm_92/while/add_1/y:output:0*
T0*
_output_shapes
: ї
backward_lstm_92/while/IdentityIdentity backward_lstm_92/while/add_1:z:0^backward_lstm_92/while/NoOp*
T0*
_output_shapes
: «
!backward_lstm_92/while/Identity_1Identity@backward_lstm_92_while_backward_lstm_92_while_maximum_iterations^backward_lstm_92/while/NoOp*
T0*
_output_shapes
: ї
!backward_lstm_92/while/Identity_2Identitybackward_lstm_92/while/add:z:0^backward_lstm_92/while/NoOp*
T0*
_output_shapes
: ╣
!backward_lstm_92/while/Identity_3IdentityKbackward_lstm_92/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^backward_lstm_92/while/NoOp*
T0*
_output_shapes
: Е
!backward_lstm_92/while/Identity_4Identity*backward_lstm_92/while/lstm_cell/mul_2:z:0^backward_lstm_92/while/NoOp*
T0*'
_output_shapes
:         Е
!backward_lstm_92/while/Identity_5Identity*backward_lstm_92/while/lstm_cell/add_1:z:0^backward_lstm_92/while/NoOp*
T0*'
_output_shapes
:         у
backward_lstm_92/while/NoOpNoOp8^backward_lstm_92/while/lstm_cell/BiasAdd/ReadVariableOp7^backward_lstm_92/while/lstm_cell/MatMul/ReadVariableOp9^backward_lstm_92/while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "t
7backward_lstm_92_while_backward_lstm_92_strided_slice_19backward_lstm_92_while_backward_lstm_92_strided_slice_1_0"K
backward_lstm_92_while_identity(backward_lstm_92/while/Identity:output:0"O
!backward_lstm_92_while_identity_1*backward_lstm_92/while/Identity_1:output:0"O
!backward_lstm_92_while_identity_2*backward_lstm_92/while/Identity_2:output:0"O
!backward_lstm_92_while_identity_3*backward_lstm_92/while/Identity_3:output:0"O
!backward_lstm_92_while_identity_4*backward_lstm_92/while/Identity_4:output:0"O
!backward_lstm_92_while_identity_5*backward_lstm_92/while/Identity_5:output:0"є
@backward_lstm_92_while_lstm_cell_biasadd_readvariableop_resourceBbackward_lstm_92_while_lstm_cell_biasadd_readvariableop_resource_0"ѕ
Abackward_lstm_92_while_lstm_cell_matmul_1_readvariableop_resourceCbackward_lstm_92_while_lstm_cell_matmul_1_readvariableop_resource_0"ё
?backward_lstm_92_while_lstm_cell_matmul_readvariableop_resourceAbackward_lstm_92_while_lstm_cell_matmul_readvariableop_resource_0"В
sbackward_lstm_92_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_92_tensorarrayunstack_tensorlistfromtensorubackward_lstm_92_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_92_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2r
7backward_lstm_92/while/lstm_cell/BiasAdd/ReadVariableOp7backward_lstm_92/while/lstm_cell/BiasAdd/ReadVariableOp2p
6backward_lstm_92/while/lstm_cell/MatMul/ReadVariableOp6backward_lstm_92/while/lstm_cell/MatMul/ReadVariableOp2t
8backward_lstm_92/while/lstm_cell/MatMul_1/ReadVariableOp8backward_lstm_92/while/lstm_cell/MatMul_1/ReadVariableOp:[ W

_output_shapes
: 
=
_user_specified_name%#backward_lstm_92/while/loop_counter:a]

_output_shapes
: 
C
_user_specified_name+)backward_lstm_92/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :XT

_output_shapes
: 
:
_user_specified_name" backward_lstm_92/strided_slice_1:pl

_output_shapes
: 
R
_user_specified_name:8backward_lstm_92/TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
д
њ
3__inference_bidirectional_92_layer_call_fn_28636485
inputs_0
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: 
identityѕбStatefulPartitionedCallд
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  *(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8ѓ *W
fRRP
N__inference_bidirectional_92_layer_call_and_return_conditional_losses_28635262|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :                  <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:'                           : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:g c
=
_output_shapes+
):'                           
"
_user_specified_name
inputs_0:($
"
_user_specified_name
28636471:($
"
_user_specified_name
28636473:($
"
_user_specified_name
28636475:($
"
_user_specified_name
28636477:($
"
_user_specified_name
28636479:($
"
_user_specified_name
28636481
─s
Э
Etopk_bilstm_moe_bidirectional_92_backward_lstm_92_while_body_28633545ђ
|topk_bilstm_moe_bidirectional_92_backward_lstm_92_while_topk_bilstm_moe_bidirectional_92_backward_lstm_92_while_loop_counterЄ
ѓtopk_bilstm_moe_bidirectional_92_backward_lstm_92_while_topk_bilstm_moe_bidirectional_92_backward_lstm_92_while_maximum_iterationsG
Ctopk_bilstm_moe_bidirectional_92_backward_lstm_92_while_placeholderI
Etopk_bilstm_moe_bidirectional_92_backward_lstm_92_while_placeholder_1I
Etopk_bilstm_moe_bidirectional_92_backward_lstm_92_while_placeholder_2I
Etopk_bilstm_moe_bidirectional_92_backward_lstm_92_while_placeholder_3
{topk_bilstm_moe_bidirectional_92_backward_lstm_92_while_topk_bilstm_moe_bidirectional_92_backward_lstm_92_strided_slice_1_0╝
иtopk_bilstm_moe_bidirectional_92_backward_lstm_92_while_tensorarrayv2read_tensorlistgetitem_topk_bilstm_moe_bidirectional_92_backward_lstm_92_tensorarrayunstack_tensorlistfromtensor_0t
btopk_bilstm_moe_bidirectional_92_backward_lstm_92_while_lstm_cell_matmul_readvariableop_resource_0: v
dtopk_bilstm_moe_bidirectional_92_backward_lstm_92_while_lstm_cell_matmul_1_readvariableop_resource_0: q
ctopk_bilstm_moe_bidirectional_92_backward_lstm_92_while_lstm_cell_biasadd_readvariableop_resource_0: D
@topk_bilstm_moe_bidirectional_92_backward_lstm_92_while_identityF
Btopk_bilstm_moe_bidirectional_92_backward_lstm_92_while_identity_1F
Btopk_bilstm_moe_bidirectional_92_backward_lstm_92_while_identity_2F
Btopk_bilstm_moe_bidirectional_92_backward_lstm_92_while_identity_3F
Btopk_bilstm_moe_bidirectional_92_backward_lstm_92_while_identity_4F
Btopk_bilstm_moe_bidirectional_92_backward_lstm_92_while_identity_5}
ytopk_bilstm_moe_bidirectional_92_backward_lstm_92_while_topk_bilstm_moe_bidirectional_92_backward_lstm_92_strided_slice_1║
хtopk_bilstm_moe_bidirectional_92_backward_lstm_92_while_tensorarrayv2read_tensorlistgetitem_topk_bilstm_moe_bidirectional_92_backward_lstm_92_tensorarrayunstack_tensorlistfromtensorr
`topk_bilstm_moe_bidirectional_92_backward_lstm_92_while_lstm_cell_matmul_readvariableop_resource: t
btopk_bilstm_moe_bidirectional_92_backward_lstm_92_while_lstm_cell_matmul_1_readvariableop_resource: o
atopk_bilstm_moe_bidirectional_92_backward_lstm_92_while_lstm_cell_biasadd_readvariableop_resource: ѕбXtopk_bilstm_moe/bidirectional_92/backward_lstm_92/while/lstm_cell/BiasAdd/ReadVariableOpбWtopk_bilstm_moe/bidirectional_92/backward_lstm_92/while/lstm_cell/MatMul/ReadVariableOpбYtopk_bilstm_moe/bidirectional_92/backward_lstm_92/while/lstm_cell/MatMul_1/ReadVariableOp║
itopk_bilstm_moe/bidirectional_92/backward_lstm_92/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      ў
[topk_bilstm_moe/bidirectional_92/backward_lstm_92/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemиtopk_bilstm_moe_bidirectional_92_backward_lstm_92_while_tensorarrayv2read_tensorlistgetitem_topk_bilstm_moe_bidirectional_92_backward_lstm_92_tensorarrayunstack_tensorlistfromtensor_0Ctopk_bilstm_moe_bidirectional_92_backward_lstm_92_while_placeholderrtopk_bilstm_moe/bidirectional_92/backward_lstm_92/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

:*
element_dtype0Щ
Wtopk_bilstm_moe/bidirectional_92/backward_lstm_92/while/lstm_cell/MatMul/ReadVariableOpReadVariableOpbtopk_bilstm_moe_bidirectional_92_backward_lstm_92_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0└
Htopk_bilstm_moe/bidirectional_92/backward_lstm_92/while/lstm_cell/MatMulMatMulbtopk_bilstm_moe/bidirectional_92/backward_lstm_92/while/TensorArrayV2Read/TensorListGetItem:item:0_topk_bilstm_moe/bidirectional_92/backward_lstm_92/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

: ■
Ytopk_bilstm_moe/bidirectional_92/backward_lstm_92/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpdtopk_bilstm_moe_bidirectional_92_backward_lstm_92_while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0Д
Jtopk_bilstm_moe/bidirectional_92/backward_lstm_92/while/lstm_cell/MatMul_1MatMulEtopk_bilstm_moe_bidirectional_92_backward_lstm_92_while_placeholder_2atopk_bilstm_moe/bidirectional_92/backward_lstm_92/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes

: А
Etopk_bilstm_moe/bidirectional_92/backward_lstm_92/while/lstm_cell/addAddV2Rtopk_bilstm_moe/bidirectional_92/backward_lstm_92/while/lstm_cell/MatMul:product:0Ttopk_bilstm_moe/bidirectional_92/backward_lstm_92/while/lstm_cell/MatMul_1:product:0*
T0*
_output_shapes

: Э
Xtopk_bilstm_moe/bidirectional_92/backward_lstm_92/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOpctopk_bilstm_moe_bidirectional_92_backward_lstm_92_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0ф
Itopk_bilstm_moe/bidirectional_92/backward_lstm_92/while/lstm_cell/BiasAddBiasAddItopk_bilstm_moe/bidirectional_92/backward_lstm_92/while/lstm_cell/add:z:0`topk_bilstm_moe/bidirectional_92/backward_lstm_92/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

: Њ
Qtopk_bilstm_moe/bidirectional_92/backward_lstm_92/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :п
Gtopk_bilstm_moe/bidirectional_92/backward_lstm_92/while/lstm_cell/splitSplitZtopk_bilstm_moe/bidirectional_92/backward_lstm_92/while/lstm_cell/split/split_dim:output:0Rtopk_bilstm_moe/bidirectional_92/backward_lstm_92/while/lstm_cell/BiasAdd:output:0*
T0*<
_output_shapes*
(::::*
	num_split¤
Itopk_bilstm_moe/bidirectional_92/backward_lstm_92/while/lstm_cell/SigmoidSigmoidPtopk_bilstm_moe/bidirectional_92/backward_lstm_92/while/lstm_cell/split:output:0*
T0*
_output_shapes

:Л
Ktopk_bilstm_moe/bidirectional_92/backward_lstm_92/while/lstm_cell/Sigmoid_1SigmoidPtopk_bilstm_moe/bidirectional_92/backward_lstm_92/while/lstm_cell/split:output:1*
T0*
_output_shapes

:Ї
Etopk_bilstm_moe/bidirectional_92/backward_lstm_92/while/lstm_cell/mulMulOtopk_bilstm_moe/bidirectional_92/backward_lstm_92/while/lstm_cell/Sigmoid_1:y:0Etopk_bilstm_moe_bidirectional_92_backward_lstm_92_while_placeholder_3*
T0*
_output_shapes

:╔
Ftopk_bilstm_moe/bidirectional_92/backward_lstm_92/while/lstm_cell/ReluReluPtopk_bilstm_moe/bidirectional_92/backward_lstm_92/while/lstm_cell/split:output:2*
T0*
_output_shapes

:ю
Gtopk_bilstm_moe/bidirectional_92/backward_lstm_92/while/lstm_cell/mul_1MulMtopk_bilstm_moe/bidirectional_92/backward_lstm_92/while/lstm_cell/Sigmoid:y:0Ttopk_bilstm_moe/bidirectional_92/backward_lstm_92/while/lstm_cell/Relu:activations:0*
T0*
_output_shapes

:Љ
Gtopk_bilstm_moe/bidirectional_92/backward_lstm_92/while/lstm_cell/add_1AddV2Itopk_bilstm_moe/bidirectional_92/backward_lstm_92/while/lstm_cell/mul:z:0Ktopk_bilstm_moe/bidirectional_92/backward_lstm_92/while/lstm_cell/mul_1:z:0*
T0*
_output_shapes

:Л
Ktopk_bilstm_moe/bidirectional_92/backward_lstm_92/while/lstm_cell/Sigmoid_2SigmoidPtopk_bilstm_moe/bidirectional_92/backward_lstm_92/while/lstm_cell/split:output:3*
T0*
_output_shapes

:к
Htopk_bilstm_moe/bidirectional_92/backward_lstm_92/while/lstm_cell/Relu_1ReluKtopk_bilstm_moe/bidirectional_92/backward_lstm_92/while/lstm_cell/add_1:z:0*
T0*
_output_shapes

:а
Gtopk_bilstm_moe/bidirectional_92/backward_lstm_92/while/lstm_cell/mul_2MulOtopk_bilstm_moe/bidirectional_92/backward_lstm_92/while/lstm_cell/Sigmoid_2:y:0Vtopk_bilstm_moe/bidirectional_92/backward_lstm_92/while/lstm_cell/Relu_1:activations:0*
T0*
_output_shapes

:і
\topk_bilstm_moe/bidirectional_92/backward_lstm_92/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemEtopk_bilstm_moe_bidirectional_92_backward_lstm_92_while_placeholder_1Ctopk_bilstm_moe_bidirectional_92_backward_lstm_92_while_placeholderKtopk_bilstm_moe/bidirectional_92/backward_lstm_92/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУм
=topk_bilstm_moe/bidirectional_92/backward_lstm_92/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Ы
;topk_bilstm_moe/bidirectional_92/backward_lstm_92/while/addAddV2Ctopk_bilstm_moe_bidirectional_92_backward_lstm_92_while_placeholderFtopk_bilstm_moe/bidirectional_92/backward_lstm_92/while/add/y:output:0*
T0*
_output_shapes
: Ђ
?topk_bilstm_moe/bidirectional_92/backward_lstm_92/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :»
=topk_bilstm_moe/bidirectional_92/backward_lstm_92/while/add_1AddV2|topk_bilstm_moe_bidirectional_92_backward_lstm_92_while_topk_bilstm_moe_bidirectional_92_backward_lstm_92_while_loop_counterHtopk_bilstm_moe/bidirectional_92/backward_lstm_92/while/add_1/y:output:0*
T0*
_output_shapes
: №
@topk_bilstm_moe/bidirectional_92/backward_lstm_92/while/IdentityIdentityAtopk_bilstm_moe/bidirectional_92/backward_lstm_92/while/add_1:z:0=^topk_bilstm_moe/bidirectional_92/backward_lstm_92/while/NoOp*
T0*
_output_shapes
: │
Btopk_bilstm_moe/bidirectional_92/backward_lstm_92/while/Identity_1Identityѓtopk_bilstm_moe_bidirectional_92_backward_lstm_92_while_topk_bilstm_moe_bidirectional_92_backward_lstm_92_while_maximum_iterations=^topk_bilstm_moe/bidirectional_92/backward_lstm_92/while/NoOp*
T0*
_output_shapes
: №
Btopk_bilstm_moe/bidirectional_92/backward_lstm_92/while/Identity_2Identity?topk_bilstm_moe/bidirectional_92/backward_lstm_92/while/add:z:0=^topk_bilstm_moe/bidirectional_92/backward_lstm_92/while/NoOp*
T0*
_output_shapes
: ю
Btopk_bilstm_moe/bidirectional_92/backward_lstm_92/while/Identity_3Identityltopk_bilstm_moe/bidirectional_92/backward_lstm_92/while/TensorArrayV2Write/TensorListSetItem:output_handle:0=^topk_bilstm_moe/bidirectional_92/backward_lstm_92/while/NoOp*
T0*
_output_shapes
: Ѓ
Btopk_bilstm_moe/bidirectional_92/backward_lstm_92/while/Identity_4IdentityKtopk_bilstm_moe/bidirectional_92/backward_lstm_92/while/lstm_cell/mul_2:z:0=^topk_bilstm_moe/bidirectional_92/backward_lstm_92/while/NoOp*
T0*
_output_shapes

:Ѓ
Btopk_bilstm_moe/bidirectional_92/backward_lstm_92/while/Identity_5IdentityKtopk_bilstm_moe/bidirectional_92/backward_lstm_92/while/lstm_cell/add_1:z:0=^topk_bilstm_moe/bidirectional_92/backward_lstm_92/while/NoOp*
T0*
_output_shapes

:в
<topk_bilstm_moe/bidirectional_92/backward_lstm_92/while/NoOpNoOpY^topk_bilstm_moe/bidirectional_92/backward_lstm_92/while/lstm_cell/BiasAdd/ReadVariableOpX^topk_bilstm_moe/bidirectional_92/backward_lstm_92/while/lstm_cell/MatMul/ReadVariableOpZ^topk_bilstm_moe/bidirectional_92/backward_lstm_92/while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "Ї
@topk_bilstm_moe_bidirectional_92_backward_lstm_92_while_identityItopk_bilstm_moe/bidirectional_92/backward_lstm_92/while/Identity:output:0"Љ
Btopk_bilstm_moe_bidirectional_92_backward_lstm_92_while_identity_1Ktopk_bilstm_moe/bidirectional_92/backward_lstm_92/while/Identity_1:output:0"Љ
Btopk_bilstm_moe_bidirectional_92_backward_lstm_92_while_identity_2Ktopk_bilstm_moe/bidirectional_92/backward_lstm_92/while/Identity_2:output:0"Љ
Btopk_bilstm_moe_bidirectional_92_backward_lstm_92_while_identity_3Ktopk_bilstm_moe/bidirectional_92/backward_lstm_92/while/Identity_3:output:0"Љ
Btopk_bilstm_moe_bidirectional_92_backward_lstm_92_while_identity_4Ktopk_bilstm_moe/bidirectional_92/backward_lstm_92/while/Identity_4:output:0"Љ
Btopk_bilstm_moe_bidirectional_92_backward_lstm_92_while_identity_5Ktopk_bilstm_moe/bidirectional_92/backward_lstm_92/while/Identity_5:output:0"╚
atopk_bilstm_moe_bidirectional_92_backward_lstm_92_while_lstm_cell_biasadd_readvariableop_resourcectopk_bilstm_moe_bidirectional_92_backward_lstm_92_while_lstm_cell_biasadd_readvariableop_resource_0"╩
btopk_bilstm_moe_bidirectional_92_backward_lstm_92_while_lstm_cell_matmul_1_readvariableop_resourcedtopk_bilstm_moe_bidirectional_92_backward_lstm_92_while_lstm_cell_matmul_1_readvariableop_resource_0"к
`topk_bilstm_moe_bidirectional_92_backward_lstm_92_while_lstm_cell_matmul_readvariableop_resourcebtopk_bilstm_moe_bidirectional_92_backward_lstm_92_while_lstm_cell_matmul_readvariableop_resource_0"Ы
хtopk_bilstm_moe_bidirectional_92_backward_lstm_92_while_tensorarrayv2read_tensorlistgetitem_topk_bilstm_moe_bidirectional_92_backward_lstm_92_tensorarrayunstack_tensorlistfromtensorиtopk_bilstm_moe_bidirectional_92_backward_lstm_92_while_tensorarrayv2read_tensorlistgetitem_topk_bilstm_moe_bidirectional_92_backward_lstm_92_tensorarrayunstack_tensorlistfromtensor_0"Э
ytopk_bilstm_moe_bidirectional_92_backward_lstm_92_while_topk_bilstm_moe_bidirectional_92_backward_lstm_92_strided_slice_1{topk_bilstm_moe_bidirectional_92_backward_lstm_92_while_topk_bilstm_moe_bidirectional_92_backward_lstm_92_strided_slice_1_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : ::: : : : : 2┤
Xtopk_bilstm_moe/bidirectional_92/backward_lstm_92/while/lstm_cell/BiasAdd/ReadVariableOpXtopk_bilstm_moe/bidirectional_92/backward_lstm_92/while/lstm_cell/BiasAdd/ReadVariableOp2▓
Wtopk_bilstm_moe/bidirectional_92/backward_lstm_92/while/lstm_cell/MatMul/ReadVariableOpWtopk_bilstm_moe/bidirectional_92/backward_lstm_92/while/lstm_cell/MatMul/ReadVariableOp2Х
Ytopk_bilstm_moe/bidirectional_92/backward_lstm_92/while/lstm_cell/MatMul_1/ReadVariableOpYtopk_bilstm_moe/bidirectional_92/backward_lstm_92/while/lstm_cell/MatMul_1/ReadVariableOp:| x

_output_shapes
: 
^
_user_specified_nameFDtopk_bilstm_moe/bidirectional_92/backward_lstm_92/while/loop_counter:ѓ~

_output_shapes
: 
d
_user_specified_nameLJtopk_bilstm_moe/bidirectional_92/backward_lstm_92/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

::$ 

_output_shapes

::yu

_output_shapes
: 
[
_user_specified_nameCAtopk_bilstm_moe/bidirectional_92/backward_lstm_92/strided_slice_1:њЇ

_output_shapes
: 
s
_user_specified_name[Ytopk_bilstm_moe/bidirectional_92/backward_lstm_92/TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
ХJ
▒
#forward_lstm_92_while_body_28635474<
8forward_lstm_92_while_forward_lstm_92_while_loop_counterB
>forward_lstm_92_while_forward_lstm_92_while_maximum_iterations%
!forward_lstm_92_while_placeholder'
#forward_lstm_92_while_placeholder_1'
#forward_lstm_92_while_placeholder_2'
#forward_lstm_92_while_placeholder_3;
7forward_lstm_92_while_forward_lstm_92_strided_slice_1_0w
sforward_lstm_92_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_92_tensorarrayunstack_tensorlistfromtensor_0R
@forward_lstm_92_while_lstm_cell_matmul_readvariableop_resource_0: T
Bforward_lstm_92_while_lstm_cell_matmul_1_readvariableop_resource_0: O
Aforward_lstm_92_while_lstm_cell_biasadd_readvariableop_resource_0: "
forward_lstm_92_while_identity$
 forward_lstm_92_while_identity_1$
 forward_lstm_92_while_identity_2$
 forward_lstm_92_while_identity_3$
 forward_lstm_92_while_identity_4$
 forward_lstm_92_while_identity_59
5forward_lstm_92_while_forward_lstm_92_strided_slice_1u
qforward_lstm_92_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_92_tensorarrayunstack_tensorlistfromtensorP
>forward_lstm_92_while_lstm_cell_matmul_readvariableop_resource: R
@forward_lstm_92_while_lstm_cell_matmul_1_readvariableop_resource: M
?forward_lstm_92_while_lstm_cell_biasadd_readvariableop_resource: ѕб6forward_lstm_92/while/lstm_cell/BiasAdd/ReadVariableOpб5forward_lstm_92/while/lstm_cell/MatMul/ReadVariableOpб7forward_lstm_92/while/lstm_cell/MatMul_1/ReadVariableOpў
Gforward_lstm_92/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      ь
9forward_lstm_92/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsforward_lstm_92_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_92_tensorarrayunstack_tensorlistfromtensor_0!forward_lstm_92_while_placeholderPforward_lstm_92/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

:*
element_dtype0Х
5forward_lstm_92/while/lstm_cell/MatMul/ReadVariableOpReadVariableOp@forward_lstm_92_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0┌
&forward_lstm_92/while/lstm_cell/MatMulMatMul@forward_lstm_92/while/TensorArrayV2Read/TensorListGetItem:item:0=forward_lstm_92/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

: ║
7forward_lstm_92/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpBforward_lstm_92_while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0┴
(forward_lstm_92/while/lstm_cell/MatMul_1MatMul#forward_lstm_92_while_placeholder_2?forward_lstm_92/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes

: ╗
#forward_lstm_92/while/lstm_cell/addAddV20forward_lstm_92/while/lstm_cell/MatMul:product:02forward_lstm_92/while/lstm_cell/MatMul_1:product:0*
T0*
_output_shapes

: ┤
6forward_lstm_92/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOpAforward_lstm_92_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0─
'forward_lstm_92/while/lstm_cell/BiasAddBiasAdd'forward_lstm_92/while/lstm_cell/add:z:0>forward_lstm_92/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

: q
/forward_lstm_92/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
%forward_lstm_92/while/lstm_cell/splitSplit8forward_lstm_92/while/lstm_cell/split/split_dim:output:00forward_lstm_92/while/lstm_cell/BiasAdd:output:0*
T0*<
_output_shapes*
(::::*
	num_splitІ
'forward_lstm_92/while/lstm_cell/SigmoidSigmoid.forward_lstm_92/while/lstm_cell/split:output:0*
T0*
_output_shapes

:Ї
)forward_lstm_92/while/lstm_cell/Sigmoid_1Sigmoid.forward_lstm_92/while/lstm_cell/split:output:1*
T0*
_output_shapes

:Д
#forward_lstm_92/while/lstm_cell/mulMul-forward_lstm_92/while/lstm_cell/Sigmoid_1:y:0#forward_lstm_92_while_placeholder_3*
T0*
_output_shapes

:Ё
$forward_lstm_92/while/lstm_cell/ReluRelu.forward_lstm_92/while/lstm_cell/split:output:2*
T0*
_output_shapes

:Х
%forward_lstm_92/while/lstm_cell/mul_1Mul+forward_lstm_92/while/lstm_cell/Sigmoid:y:02forward_lstm_92/while/lstm_cell/Relu:activations:0*
T0*
_output_shapes

:Ф
%forward_lstm_92/while/lstm_cell/add_1AddV2'forward_lstm_92/while/lstm_cell/mul:z:0)forward_lstm_92/while/lstm_cell/mul_1:z:0*
T0*
_output_shapes

:Ї
)forward_lstm_92/while/lstm_cell/Sigmoid_2Sigmoid.forward_lstm_92/while/lstm_cell/split:output:3*
T0*
_output_shapes

:ѓ
&forward_lstm_92/while/lstm_cell/Relu_1Relu)forward_lstm_92/while/lstm_cell/add_1:z:0*
T0*
_output_shapes

:║
%forward_lstm_92/while/lstm_cell/mul_2Mul-forward_lstm_92/while/lstm_cell/Sigmoid_2:y:04forward_lstm_92/while/lstm_cell/Relu_1:activations:0*
T0*
_output_shapes

:ѓ
:forward_lstm_92/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem#forward_lstm_92_while_placeholder_1!forward_lstm_92_while_placeholder)forward_lstm_92/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУм]
forward_lstm_92/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :ї
forward_lstm_92/while/addAddV2!forward_lstm_92_while_placeholder$forward_lstm_92/while/add/y:output:0*
T0*
_output_shapes
: _
forward_lstm_92/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Д
forward_lstm_92/while/add_1AddV28forward_lstm_92_while_forward_lstm_92_while_loop_counter&forward_lstm_92/while/add_1/y:output:0*
T0*
_output_shapes
: Ѕ
forward_lstm_92/while/IdentityIdentityforward_lstm_92/while/add_1:z:0^forward_lstm_92/while/NoOp*
T0*
_output_shapes
: ф
 forward_lstm_92/while/Identity_1Identity>forward_lstm_92_while_forward_lstm_92_while_maximum_iterations^forward_lstm_92/while/NoOp*
T0*
_output_shapes
: Ѕ
 forward_lstm_92/while/Identity_2Identityforward_lstm_92/while/add:z:0^forward_lstm_92/while/NoOp*
T0*
_output_shapes
: Х
 forward_lstm_92/while/Identity_3IdentityJforward_lstm_92/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^forward_lstm_92/while/NoOp*
T0*
_output_shapes
: Ю
 forward_lstm_92/while/Identity_4Identity)forward_lstm_92/while/lstm_cell/mul_2:z:0^forward_lstm_92/while/NoOp*
T0*
_output_shapes

:Ю
 forward_lstm_92/while/Identity_5Identity)forward_lstm_92/while/lstm_cell/add_1:z:0^forward_lstm_92/while/NoOp*
T0*
_output_shapes

:с
forward_lstm_92/while/NoOpNoOp7^forward_lstm_92/while/lstm_cell/BiasAdd/ReadVariableOp6^forward_lstm_92/while/lstm_cell/MatMul/ReadVariableOp8^forward_lstm_92/while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "p
5forward_lstm_92_while_forward_lstm_92_strided_slice_17forward_lstm_92_while_forward_lstm_92_strided_slice_1_0"I
forward_lstm_92_while_identity'forward_lstm_92/while/Identity:output:0"M
 forward_lstm_92_while_identity_1)forward_lstm_92/while/Identity_1:output:0"M
 forward_lstm_92_while_identity_2)forward_lstm_92/while/Identity_2:output:0"M
 forward_lstm_92_while_identity_3)forward_lstm_92/while/Identity_3:output:0"M
 forward_lstm_92_while_identity_4)forward_lstm_92/while/Identity_4:output:0"M
 forward_lstm_92_while_identity_5)forward_lstm_92/while/Identity_5:output:0"ё
?forward_lstm_92_while_lstm_cell_biasadd_readvariableop_resourceAforward_lstm_92_while_lstm_cell_biasadd_readvariableop_resource_0"є
@forward_lstm_92_while_lstm_cell_matmul_1_readvariableop_resourceBforward_lstm_92_while_lstm_cell_matmul_1_readvariableop_resource_0"ѓ
>forward_lstm_92_while_lstm_cell_matmul_readvariableop_resource@forward_lstm_92_while_lstm_cell_matmul_readvariableop_resource_0"У
qforward_lstm_92_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_92_tensorarrayunstack_tensorlistfromtensorsforward_lstm_92_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_92_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : ::: : : : : 2p
6forward_lstm_92/while/lstm_cell/BiasAdd/ReadVariableOp6forward_lstm_92/while/lstm_cell/BiasAdd/ReadVariableOp2n
5forward_lstm_92/while/lstm_cell/MatMul/ReadVariableOp5forward_lstm_92/while/lstm_cell/MatMul/ReadVariableOp2r
7forward_lstm_92/while/lstm_cell/MatMul_1/ReadVariableOp7forward_lstm_92/while/lstm_cell/MatMul_1/ReadVariableOp:Z V

_output_shapes
: 
<
_user_specified_name$"forward_lstm_92/while/loop_counter:`\

_output_shapes
: 
B
_user_specified_name*(forward_lstm_92/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

::$ 

_output_shapes

::WS

_output_shapes
: 
9
_user_specified_name!forward_lstm_92/strided_slice_1:ok

_output_shapes
: 
Q
_user_specified_name97forward_lstm_92/TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
й╣
ю
N__inference_bidirectional_92_layer_call_and_return_conditional_losses_28637383

inputsJ
8forward_lstm_92_lstm_cell_matmul_readvariableop_resource: L
:forward_lstm_92_lstm_cell_matmul_1_readvariableop_resource: G
9forward_lstm_92_lstm_cell_biasadd_readvariableop_resource: K
9backward_lstm_92_lstm_cell_matmul_readvariableop_resource: M
;backward_lstm_92_lstm_cell_matmul_1_readvariableop_resource: H
:backward_lstm_92_lstm_cell_biasadd_readvariableop_resource: 
identityѕб1backward_lstm_92/lstm_cell/BiasAdd/ReadVariableOpб0backward_lstm_92/lstm_cell/MatMul/ReadVariableOpб2backward_lstm_92/lstm_cell/MatMul_1/ReadVariableOpбbackward_lstm_92/whileб0forward_lstm_92/lstm_cell/BiasAdd/ReadVariableOpб/forward_lstm_92/lstm_cell/MatMul/ReadVariableOpб1forward_lstm_92/lstm_cell/MatMul_1/ReadVariableOpбforward_lstm_92/whilej
forward_lstm_92/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         m
#forward_lstm_92/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%forward_lstm_92/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%forward_lstm_92/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:А
forward_lstm_92/strided_sliceStridedSliceforward_lstm_92/Shape:output:0,forward_lstm_92/strided_slice/stack:output:0.forward_lstm_92/strided_slice/stack_1:output:0.forward_lstm_92/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
forward_lstm_92/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Б
forward_lstm_92/zeros/packedPack&forward_lstm_92/strided_slice:output:0'forward_lstm_92/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:`
forward_lstm_92/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Њ
forward_lstm_92/zerosFill%forward_lstm_92/zeros/packed:output:0$forward_lstm_92/zeros/Const:output:0*
T0*
_output_shapes

:b
 forward_lstm_92/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Д
forward_lstm_92/zeros_1/packedPack&forward_lstm_92/strided_slice:output:0)forward_lstm_92/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:b
forward_lstm_92/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ў
forward_lstm_92/zeros_1Fill'forward_lstm_92/zeros_1/packed:output:0&forward_lstm_92/zeros_1/Const:output:0*
T0*
_output_shapes

:s
forward_lstm_92/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ё
forward_lstm_92/transpose	Transposeinputs'forward_lstm_92/transpose/perm:output:0*
T0*"
_output_shapes
:l
forward_lstm_92/Shape_1Const*
_output_shapes
:*
dtype0*!
valueB"         o
%forward_lstm_92/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_92/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'forward_lstm_92/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ф
forward_lstm_92/strided_slice_1StridedSlice forward_lstm_92/Shape_1:output:0.forward_lstm_92/strided_slice_1/stack:output:00forward_lstm_92/strided_slice_1/stack_1:output:00forward_lstm_92/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
+forward_lstm_92/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         С
forward_lstm_92/TensorArrayV2TensorListReserve4forward_lstm_92/TensorArrayV2/element_shape:output:0(forward_lstm_92/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмќ
Eforward_lstm_92/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      љ
7forward_lstm_92/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorforward_lstm_92/transpose:y:0Nforward_lstm_92/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмo
%forward_lstm_92/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_92/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'forward_lstm_92/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:░
forward_lstm_92/strided_slice_2StridedSliceforward_lstm_92/transpose:y:0.forward_lstm_92/strided_slice_2/stack:output:00forward_lstm_92/strided_slice_2/stack_1:output:00forward_lstm_92/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_maskе
/forward_lstm_92/lstm_cell/MatMul/ReadVariableOpReadVariableOp8forward_lstm_92_lstm_cell_matmul_readvariableop_resource*
_output_shapes

: *
dtype0Х
 forward_lstm_92/lstm_cell/MatMulMatMul(forward_lstm_92/strided_slice_2:output:07forward_lstm_92/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

: г
1forward_lstm_92/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp:forward_lstm_92_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0░
"forward_lstm_92/lstm_cell/MatMul_1MatMulforward_lstm_92/zeros:output:09forward_lstm_92/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes

: Е
forward_lstm_92/lstm_cell/addAddV2*forward_lstm_92/lstm_cell/MatMul:product:0,forward_lstm_92/lstm_cell/MatMul_1:product:0*
T0*
_output_shapes

: д
0forward_lstm_92/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp9forward_lstm_92_lstm_cell_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0▓
!forward_lstm_92/lstm_cell/BiasAddBiasAdd!forward_lstm_92/lstm_cell/add:z:08forward_lstm_92/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

: k
)forward_lstm_92/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
forward_lstm_92/lstm_cell/splitSplit2forward_lstm_92/lstm_cell/split/split_dim:output:0*forward_lstm_92/lstm_cell/BiasAdd:output:0*
T0*<
_output_shapes*
(::::*
	num_split
!forward_lstm_92/lstm_cell/SigmoidSigmoid(forward_lstm_92/lstm_cell/split:output:0*
T0*
_output_shapes

:Ђ
#forward_lstm_92/lstm_cell/Sigmoid_1Sigmoid(forward_lstm_92/lstm_cell/split:output:1*
T0*
_output_shapes

:ў
forward_lstm_92/lstm_cell/mulMul'forward_lstm_92/lstm_cell/Sigmoid_1:y:0 forward_lstm_92/zeros_1:output:0*
T0*
_output_shapes

:y
forward_lstm_92/lstm_cell/ReluRelu(forward_lstm_92/lstm_cell/split:output:2*
T0*
_output_shapes

:ц
forward_lstm_92/lstm_cell/mul_1Mul%forward_lstm_92/lstm_cell/Sigmoid:y:0,forward_lstm_92/lstm_cell/Relu:activations:0*
T0*
_output_shapes

:Ў
forward_lstm_92/lstm_cell/add_1AddV2!forward_lstm_92/lstm_cell/mul:z:0#forward_lstm_92/lstm_cell/mul_1:z:0*
T0*
_output_shapes

:Ђ
#forward_lstm_92/lstm_cell/Sigmoid_2Sigmoid(forward_lstm_92/lstm_cell/split:output:3*
T0*
_output_shapes

:v
 forward_lstm_92/lstm_cell/Relu_1Relu#forward_lstm_92/lstm_cell/add_1:z:0*
T0*
_output_shapes

:е
forward_lstm_92/lstm_cell/mul_2Mul'forward_lstm_92/lstm_cell/Sigmoid_2:y:0.forward_lstm_92/lstm_cell/Relu_1:activations:0*
T0*
_output_shapes

:~
-forward_lstm_92/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      У
forward_lstm_92/TensorArrayV2_1TensorListReserve6forward_lstm_92/TensorArrayV2_1/element_shape:output:0(forward_lstm_92/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмV
forward_lstm_92/timeConst*
_output_shapes
: *
dtype0*
value	B : s
(forward_lstm_92/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         d
"forward_lstm_92/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ю
forward_lstm_92/whileWhile+forward_lstm_92/while/loop_counter:output:01forward_lstm_92/while/maximum_iterations:output:0forward_lstm_92/time:output:0(forward_lstm_92/TensorArrayV2_1:handle:0forward_lstm_92/zeros:output:0 forward_lstm_92/zeros_1:output:0(forward_lstm_92/strided_slice_1:output:0Gforward_lstm_92/TensorArrayUnstack/TensorListFromTensor:output_handle:08forward_lstm_92_lstm_cell_matmul_readvariableop_resource:forward_lstm_92_lstm_cell_matmul_1_readvariableop_resource9forward_lstm_92_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*:
_output_shapes(
&: : : : ::: : : : : *%
_read_only_resource_inputs
	
*/
body'R%
#forward_lstm_92_while_body_28637154*/
cond'R%
#forward_lstm_92_while_cond_28637153*9
output_shapes(
&: : : : ::: : : : : *
parallel_iterations Љ
@forward_lstm_92/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      ж
2forward_lstm_92/TensorArrayV2Stack/TensorListStackTensorListStackforward_lstm_92/while:output:3Iforward_lstm_92/TensorArrayV2Stack/TensorListStack/element_shape:output:0*"
_output_shapes
:*
element_dtype0x
%forward_lstm_92/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         q
'forward_lstm_92/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_92/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╬
forward_lstm_92/strided_slice_3StridedSlice;forward_lstm_92/TensorArrayV2Stack/TensorListStack:tensor:0.forward_lstm_92/strided_slice_3/stack:output:00forward_lstm_92/strided_slice_3/stack_1:output:00forward_lstm_92/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_masku
 forward_lstm_92/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          й
forward_lstm_92/transpose_1	Transpose;forward_lstm_92/TensorArrayV2Stack/TensorListStack:tensor:0)forward_lstm_92/transpose_1/perm:output:0*
T0*"
_output_shapes
:k
forward_lstm_92/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
backward_lstm_92/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         n
$backward_lstm_92/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&backward_lstm_92/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&backward_lstm_92/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:д
backward_lstm_92/strided_sliceStridedSlicebackward_lstm_92/Shape:output:0-backward_lstm_92/strided_slice/stack:output:0/backward_lstm_92/strided_slice/stack_1:output:0/backward_lstm_92/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
backward_lstm_92/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :д
backward_lstm_92/zeros/packedPack'backward_lstm_92/strided_slice:output:0(backward_lstm_92/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:a
backward_lstm_92/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ќ
backward_lstm_92/zerosFill&backward_lstm_92/zeros/packed:output:0%backward_lstm_92/zeros/Const:output:0*
T0*
_output_shapes

:c
!backward_lstm_92/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ф
backward_lstm_92/zeros_1/packedPack'backward_lstm_92/strided_slice:output:0*backward_lstm_92/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:c
backward_lstm_92/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ю
backward_lstm_92/zeros_1Fill(backward_lstm_92/zeros_1/packed:output:0'backward_lstm_92/zeros_1/Const:output:0*
T0*
_output_shapes

:t
backward_lstm_92/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          є
backward_lstm_92/transpose	Transposeinputs(backward_lstm_92/transpose/perm:output:0*
T0*"
_output_shapes
:m
backward_lstm_92/Shape_1Const*
_output_shapes
:*
dtype0*!
valueB"         p
&backward_lstm_92/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_92/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(backward_lstm_92/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:░
 backward_lstm_92/strided_slice_1StridedSlice!backward_lstm_92/Shape_1:output:0/backward_lstm_92/strided_slice_1/stack:output:01backward_lstm_92/strided_slice_1/stack_1:output:01backward_lstm_92/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskw
,backward_lstm_92/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         у
backward_lstm_92/TensorArrayV2TensorListReserve5backward_lstm_92/TensorArrayV2/element_shape:output:0)backward_lstm_92/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмi
backward_lstm_92/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: ъ
backward_lstm_92/ReverseV2	ReverseV2backward_lstm_92/transpose:y:0(backward_lstm_92/ReverseV2/axis:output:0*
T0*"
_output_shapes
:Ќ
Fbackward_lstm_92/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      ў
8backward_lstm_92/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#backward_lstm_92/ReverseV2:output:0Obackward_lstm_92/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмp
&backward_lstm_92/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_92/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(backward_lstm_92/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:х
 backward_lstm_92/strided_slice_2StridedSlicebackward_lstm_92/transpose:y:0/backward_lstm_92/strided_slice_2/stack:output:01backward_lstm_92/strided_slice_2/stack_1:output:01backward_lstm_92/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_maskф
0backward_lstm_92/lstm_cell/MatMul/ReadVariableOpReadVariableOp9backward_lstm_92_lstm_cell_matmul_readvariableop_resource*
_output_shapes

: *
dtype0╣
!backward_lstm_92/lstm_cell/MatMulMatMul)backward_lstm_92/strided_slice_2:output:08backward_lstm_92/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

: «
2backward_lstm_92/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp;backward_lstm_92_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0│
#backward_lstm_92/lstm_cell/MatMul_1MatMulbackward_lstm_92/zeros:output:0:backward_lstm_92/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes

: г
backward_lstm_92/lstm_cell/addAddV2+backward_lstm_92/lstm_cell/MatMul:product:0-backward_lstm_92/lstm_cell/MatMul_1:product:0*
T0*
_output_shapes

: е
1backward_lstm_92/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp:backward_lstm_92_lstm_cell_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0х
"backward_lstm_92/lstm_cell/BiasAddBiasAdd"backward_lstm_92/lstm_cell/add:z:09backward_lstm_92/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

: l
*backward_lstm_92/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :с
 backward_lstm_92/lstm_cell/splitSplit3backward_lstm_92/lstm_cell/split/split_dim:output:0+backward_lstm_92/lstm_cell/BiasAdd:output:0*
T0*<
_output_shapes*
(::::*
	num_splitЂ
"backward_lstm_92/lstm_cell/SigmoidSigmoid)backward_lstm_92/lstm_cell/split:output:0*
T0*
_output_shapes

:Ѓ
$backward_lstm_92/lstm_cell/Sigmoid_1Sigmoid)backward_lstm_92/lstm_cell/split:output:1*
T0*
_output_shapes

:Џ
backward_lstm_92/lstm_cell/mulMul(backward_lstm_92/lstm_cell/Sigmoid_1:y:0!backward_lstm_92/zeros_1:output:0*
T0*
_output_shapes

:{
backward_lstm_92/lstm_cell/ReluRelu)backward_lstm_92/lstm_cell/split:output:2*
T0*
_output_shapes

:Д
 backward_lstm_92/lstm_cell/mul_1Mul&backward_lstm_92/lstm_cell/Sigmoid:y:0-backward_lstm_92/lstm_cell/Relu:activations:0*
T0*
_output_shapes

:ю
 backward_lstm_92/lstm_cell/add_1AddV2"backward_lstm_92/lstm_cell/mul:z:0$backward_lstm_92/lstm_cell/mul_1:z:0*
T0*
_output_shapes

:Ѓ
$backward_lstm_92/lstm_cell/Sigmoid_2Sigmoid)backward_lstm_92/lstm_cell/split:output:3*
T0*
_output_shapes

:x
!backward_lstm_92/lstm_cell/Relu_1Relu$backward_lstm_92/lstm_cell/add_1:z:0*
T0*
_output_shapes

:Ф
 backward_lstm_92/lstm_cell/mul_2Mul(backward_lstm_92/lstm_cell/Sigmoid_2:y:0/backward_lstm_92/lstm_cell/Relu_1:activations:0*
T0*
_output_shapes

:
.backward_lstm_92/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      в
 backward_lstm_92/TensorArrayV2_1TensorListReserve7backward_lstm_92/TensorArrayV2_1/element_shape:output:0)backward_lstm_92/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмW
backward_lstm_92/timeConst*
_output_shapes
: *
dtype0*
value	B : t
)backward_lstm_92/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         e
#backward_lstm_92/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ф
backward_lstm_92/whileWhile,backward_lstm_92/while/loop_counter:output:02backward_lstm_92/while/maximum_iterations:output:0backward_lstm_92/time:output:0)backward_lstm_92/TensorArrayV2_1:handle:0backward_lstm_92/zeros:output:0!backward_lstm_92/zeros_1:output:0)backward_lstm_92/strided_slice_1:output:0Hbackward_lstm_92/TensorArrayUnstack/TensorListFromTensor:output_handle:09backward_lstm_92_lstm_cell_matmul_readvariableop_resource;backward_lstm_92_lstm_cell_matmul_1_readvariableop_resource:backward_lstm_92_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*:
_output_shapes(
&: : : : ::: : : : : *%
_read_only_resource_inputs
	
*0
body(R&
$backward_lstm_92_while_body_28637295*0
cond(R&
$backward_lstm_92_while_cond_28637294*9
output_shapes(
&: : : : ::: : : : : *
parallel_iterations њ
Abackward_lstm_92/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      В
3backward_lstm_92/TensorArrayV2Stack/TensorListStackTensorListStackbackward_lstm_92/while:output:3Jbackward_lstm_92/TensorArrayV2Stack/TensorListStack/element_shape:output:0*"
_output_shapes
:*
element_dtype0y
&backward_lstm_92/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         r
(backward_lstm_92/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_92/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:М
 backward_lstm_92/strided_slice_3StridedSlice<backward_lstm_92/TensorArrayV2Stack/TensorListStack:tensor:0/backward_lstm_92/strided_slice_3/stack:output:01backward_lstm_92/strided_slice_3/stack_1:output:01backward_lstm_92/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_maskv
!backward_lstm_92/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          └
backward_lstm_92/transpose_1	Transpose<backward_lstm_92/TensorArrayV2Stack/TensorListStack:tensor:0*backward_lstm_92/transpose_1/perm:output:0*
T0*"
_output_shapes
:l
backward_lstm_92/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    X
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:~
	ReverseV2	ReverseV2 backward_lstm_92/transpose_1:y:0ReverseV2/axis:output:0*
T0*"
_output_shapes
:M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Њ
concatConcatV2forward_lstm_92/transpose_1:y:0ReverseV2:output:0concat/axis:output:0*
N*
T0*"
_output_shapes
:Y
IdentityIdentityconcat:output:0^NoOp*
T0*"
_output_shapes
:ѕ
NoOpNoOp2^backward_lstm_92/lstm_cell/BiasAdd/ReadVariableOp1^backward_lstm_92/lstm_cell/MatMul/ReadVariableOp3^backward_lstm_92/lstm_cell/MatMul_1/ReadVariableOp^backward_lstm_92/while1^forward_lstm_92/lstm_cell/BiasAdd/ReadVariableOp0^forward_lstm_92/lstm_cell/MatMul/ReadVariableOp2^forward_lstm_92/lstm_cell/MatMul_1/ReadVariableOp^forward_lstm_92/while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*-
_input_shapes
:: : : : : : 2f
1backward_lstm_92/lstm_cell/BiasAdd/ReadVariableOp1backward_lstm_92/lstm_cell/BiasAdd/ReadVariableOp2d
0backward_lstm_92/lstm_cell/MatMul/ReadVariableOp0backward_lstm_92/lstm_cell/MatMul/ReadVariableOp2h
2backward_lstm_92/lstm_cell/MatMul_1/ReadVariableOp2backward_lstm_92/lstm_cell/MatMul_1/ReadVariableOp20
backward_lstm_92/whilebackward_lstm_92/while2d
0forward_lstm_92/lstm_cell/BiasAdd/ReadVariableOp0forward_lstm_92/lstm_cell/BiasAdd/ReadVariableOp2b
/forward_lstm_92/lstm_cell/MatMul/ReadVariableOp/forward_lstm_92/lstm_cell/MatMul/ReadVariableOp2f
1forward_lstm_92/lstm_cell/MatMul_1/ReadVariableOp1forward_lstm_92/lstm_cell/MatMul_1/ReadVariableOp2.
forward_lstm_92/whileforward_lstm_92/while:J F
"
_output_shapes
:
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
№
s
G__inference_lambda_97_layer_call_and_return_conditional_losses_28636421
inputs_0
inputs_1
identityѓ
einsum/EinsumEinsuminputs_0inputs_1*
N*
T0*&
_output_shapes
:*
equationabc,abd->dabc]
IdentityIdentityeinsum/Einsum:output:0*
T0*&
_output_shapes
:"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:::L H
"
_output_shapes
:
"
_user_specified_name
inputs_0:LH
"
_output_shapes
:
"
_user_specified_name
inputs_1
І
I
-__inference_flatten_92_layer_call_fn_28637703

inputs
identityФ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	ђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *Q
fLRJ
H__inference_flatten_92_layer_call_and_return_conditional_losses_28635735X
IdentityIdentityPartitionedCall:output:0*
T0*
_output_shapes
:	ђ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
::J F
"
_output_shapes
:
 
_user_specified_nameinputs
ХJ
▒
#forward_lstm_92_while_body_28635872<
8forward_lstm_92_while_forward_lstm_92_while_loop_counterB
>forward_lstm_92_while_forward_lstm_92_while_maximum_iterations%
!forward_lstm_92_while_placeholder'
#forward_lstm_92_while_placeholder_1'
#forward_lstm_92_while_placeholder_2'
#forward_lstm_92_while_placeholder_3;
7forward_lstm_92_while_forward_lstm_92_strided_slice_1_0w
sforward_lstm_92_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_92_tensorarrayunstack_tensorlistfromtensor_0R
@forward_lstm_92_while_lstm_cell_matmul_readvariableop_resource_0: T
Bforward_lstm_92_while_lstm_cell_matmul_1_readvariableop_resource_0: O
Aforward_lstm_92_while_lstm_cell_biasadd_readvariableop_resource_0: "
forward_lstm_92_while_identity$
 forward_lstm_92_while_identity_1$
 forward_lstm_92_while_identity_2$
 forward_lstm_92_while_identity_3$
 forward_lstm_92_while_identity_4$
 forward_lstm_92_while_identity_59
5forward_lstm_92_while_forward_lstm_92_strided_slice_1u
qforward_lstm_92_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_92_tensorarrayunstack_tensorlistfromtensorP
>forward_lstm_92_while_lstm_cell_matmul_readvariableop_resource: R
@forward_lstm_92_while_lstm_cell_matmul_1_readvariableop_resource: M
?forward_lstm_92_while_lstm_cell_biasadd_readvariableop_resource: ѕб6forward_lstm_92/while/lstm_cell/BiasAdd/ReadVariableOpб5forward_lstm_92/while/lstm_cell/MatMul/ReadVariableOpб7forward_lstm_92/while/lstm_cell/MatMul_1/ReadVariableOpў
Gforward_lstm_92/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      ь
9forward_lstm_92/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsforward_lstm_92_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_92_tensorarrayunstack_tensorlistfromtensor_0!forward_lstm_92_while_placeholderPforward_lstm_92/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

:*
element_dtype0Х
5forward_lstm_92/while/lstm_cell/MatMul/ReadVariableOpReadVariableOp@forward_lstm_92_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0┌
&forward_lstm_92/while/lstm_cell/MatMulMatMul@forward_lstm_92/while/TensorArrayV2Read/TensorListGetItem:item:0=forward_lstm_92/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

: ║
7forward_lstm_92/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpBforward_lstm_92_while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0┴
(forward_lstm_92/while/lstm_cell/MatMul_1MatMul#forward_lstm_92_while_placeholder_2?forward_lstm_92/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes

: ╗
#forward_lstm_92/while/lstm_cell/addAddV20forward_lstm_92/while/lstm_cell/MatMul:product:02forward_lstm_92/while/lstm_cell/MatMul_1:product:0*
T0*
_output_shapes

: ┤
6forward_lstm_92/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOpAforward_lstm_92_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0─
'forward_lstm_92/while/lstm_cell/BiasAddBiasAdd'forward_lstm_92/while/lstm_cell/add:z:0>forward_lstm_92/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

: q
/forward_lstm_92/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
%forward_lstm_92/while/lstm_cell/splitSplit8forward_lstm_92/while/lstm_cell/split/split_dim:output:00forward_lstm_92/while/lstm_cell/BiasAdd:output:0*
T0*<
_output_shapes*
(::::*
	num_splitІ
'forward_lstm_92/while/lstm_cell/SigmoidSigmoid.forward_lstm_92/while/lstm_cell/split:output:0*
T0*
_output_shapes

:Ї
)forward_lstm_92/while/lstm_cell/Sigmoid_1Sigmoid.forward_lstm_92/while/lstm_cell/split:output:1*
T0*
_output_shapes

:Д
#forward_lstm_92/while/lstm_cell/mulMul-forward_lstm_92/while/lstm_cell/Sigmoid_1:y:0#forward_lstm_92_while_placeholder_3*
T0*
_output_shapes

:Ё
$forward_lstm_92/while/lstm_cell/ReluRelu.forward_lstm_92/while/lstm_cell/split:output:2*
T0*
_output_shapes

:Х
%forward_lstm_92/while/lstm_cell/mul_1Mul+forward_lstm_92/while/lstm_cell/Sigmoid:y:02forward_lstm_92/while/lstm_cell/Relu:activations:0*
T0*
_output_shapes

:Ф
%forward_lstm_92/while/lstm_cell/add_1AddV2'forward_lstm_92/while/lstm_cell/mul:z:0)forward_lstm_92/while/lstm_cell/mul_1:z:0*
T0*
_output_shapes

:Ї
)forward_lstm_92/while/lstm_cell/Sigmoid_2Sigmoid.forward_lstm_92/while/lstm_cell/split:output:3*
T0*
_output_shapes

:ѓ
&forward_lstm_92/while/lstm_cell/Relu_1Relu)forward_lstm_92/while/lstm_cell/add_1:z:0*
T0*
_output_shapes

:║
%forward_lstm_92/while/lstm_cell/mul_2Mul-forward_lstm_92/while/lstm_cell/Sigmoid_2:y:04forward_lstm_92/while/lstm_cell/Relu_1:activations:0*
T0*
_output_shapes

:ѓ
:forward_lstm_92/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem#forward_lstm_92_while_placeholder_1!forward_lstm_92_while_placeholder)forward_lstm_92/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУм]
forward_lstm_92/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :ї
forward_lstm_92/while/addAddV2!forward_lstm_92_while_placeholder$forward_lstm_92/while/add/y:output:0*
T0*
_output_shapes
: _
forward_lstm_92/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Д
forward_lstm_92/while/add_1AddV28forward_lstm_92_while_forward_lstm_92_while_loop_counter&forward_lstm_92/while/add_1/y:output:0*
T0*
_output_shapes
: Ѕ
forward_lstm_92/while/IdentityIdentityforward_lstm_92/while/add_1:z:0^forward_lstm_92/while/NoOp*
T0*
_output_shapes
: ф
 forward_lstm_92/while/Identity_1Identity>forward_lstm_92_while_forward_lstm_92_while_maximum_iterations^forward_lstm_92/while/NoOp*
T0*
_output_shapes
: Ѕ
 forward_lstm_92/while/Identity_2Identityforward_lstm_92/while/add:z:0^forward_lstm_92/while/NoOp*
T0*
_output_shapes
: Х
 forward_lstm_92/while/Identity_3IdentityJforward_lstm_92/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^forward_lstm_92/while/NoOp*
T0*
_output_shapes
: Ю
 forward_lstm_92/while/Identity_4Identity)forward_lstm_92/while/lstm_cell/mul_2:z:0^forward_lstm_92/while/NoOp*
T0*
_output_shapes

:Ю
 forward_lstm_92/while/Identity_5Identity)forward_lstm_92/while/lstm_cell/add_1:z:0^forward_lstm_92/while/NoOp*
T0*
_output_shapes

:с
forward_lstm_92/while/NoOpNoOp7^forward_lstm_92/while/lstm_cell/BiasAdd/ReadVariableOp6^forward_lstm_92/while/lstm_cell/MatMul/ReadVariableOp8^forward_lstm_92/while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "p
5forward_lstm_92_while_forward_lstm_92_strided_slice_17forward_lstm_92_while_forward_lstm_92_strided_slice_1_0"I
forward_lstm_92_while_identity'forward_lstm_92/while/Identity:output:0"M
 forward_lstm_92_while_identity_1)forward_lstm_92/while/Identity_1:output:0"M
 forward_lstm_92_while_identity_2)forward_lstm_92/while/Identity_2:output:0"M
 forward_lstm_92_while_identity_3)forward_lstm_92/while/Identity_3:output:0"M
 forward_lstm_92_while_identity_4)forward_lstm_92/while/Identity_4:output:0"M
 forward_lstm_92_while_identity_5)forward_lstm_92/while/Identity_5:output:0"ё
?forward_lstm_92_while_lstm_cell_biasadd_readvariableop_resourceAforward_lstm_92_while_lstm_cell_biasadd_readvariableop_resource_0"є
@forward_lstm_92_while_lstm_cell_matmul_1_readvariableop_resourceBforward_lstm_92_while_lstm_cell_matmul_1_readvariableop_resource_0"ѓ
>forward_lstm_92_while_lstm_cell_matmul_readvariableop_resource@forward_lstm_92_while_lstm_cell_matmul_readvariableop_resource_0"У
qforward_lstm_92_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_92_tensorarrayunstack_tensorlistfromtensorsforward_lstm_92_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_92_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : ::: : : : : 2p
6forward_lstm_92/while/lstm_cell/BiasAdd/ReadVariableOp6forward_lstm_92/while/lstm_cell/BiasAdd/ReadVariableOp2n
5forward_lstm_92/while/lstm_cell/MatMul/ReadVariableOp5forward_lstm_92/while/lstm_cell/MatMul/ReadVariableOp2r
7forward_lstm_92/while/lstm_cell/MatMul_1/ReadVariableOp7forward_lstm_92/while/lstm_cell/MatMul_1/ReadVariableOp:Z V

_output_shapes
: 
<
_user_specified_name$"forward_lstm_92/while/loop_counter:`\

_output_shapes
: 
B
_user_specified_name*(forward_lstm_92/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

::$ 

_output_shapes

::WS

_output_shapes
: 
9
_user_specified_name!forward_lstm_92/strided_slice_1:ok

_output_shapes
: 
Q
_user_specified_name97forward_lstm_92/TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
Г
Д
1__inference_sequential_402_layer_call_fn_28633861
dense_587_input
unknown:
	unknown_0:
identityѕбStatefulPartitionedCallЬ
StatefulPartitionedCallStatefulPartitionedCalldense_587_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *U
fPRN
L__inference_sequential_402_layer_call_and_return_conditional_losses_28633843s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
+
_output_shapes
:         
)
_user_specified_namedense_587_input:($
"
_user_specified_name
28633855:($
"
_user_specified_name
28633857
Б
ђ
G__inference_lstm_cell_layer_call_and_return_conditional_losses_28634356

inputs

states
states_10
matmul_readvariableop_resource: 2
 matmul_1_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity

identity_1

identity_2ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:          r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         N
ReluRelusplit:output:2*
T0*'
_output_shapes
:         _
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         m
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :         :         : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:OK
'
_output_shapes
:         
 
_user_specified_namestates:OK
'
_output_shapes
:         
 
_user_specified_namestates:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
└
Ы
,__inference_lstm_cell_layer_call_fn_28639145

inputs
states_0
states_1
unknown: 
	unknown_0: 
	unknown_1: 
identity

identity_1

identity_2ѕбStatefulPartitionedCallД
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         :         :         *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_lstm_cell_layer_call_and_return_conditional_losses_28634008o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:         q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :         :         : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:QM
'
_output_shapes
:         
"
_user_specified_name
states_0:QM
'
_output_shapes
:         
"
_user_specified_name
states_1:($
"
_user_specified_name
28639133:($
"
_user_specified_name
28639135:($
"
_user_specified_name
28639137
╠	
═
while_cond_28634021
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_16
2while_while_cond_28634021___redundant_placeholder06
2while_while_cond_28634021___redundant_placeholder16
2while_while_cond_28634021___redundant_placeholder26
2while_while_cond_28634021___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
еJ
љ
M__inference_forward_lstm_92_layer_call_and_return_conditional_losses_28635097

inputs:
(lstm_cell_matmul_readvariableop_resource: <
*lstm_cell_matmul_1_readvariableop_resource: 7
)lstm_cell_biasadd_readvariableop_resource: 
identityѕб lstm_cell/BiasAdd/ReadVariableOpбlstm_cell/MatMul/ReadVariableOpб!lstm_cell/MatMul_1/ReadVariableOpбwhileI
ShapeShapeinputs*
T0*
_output_shapes
::ь¤]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
	transpose	Transposeinputstranspose/perm:output:0*
T0*=
_output_shapes+
):'                           R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::ь¤_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ы
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:                  *
shrink_axis_maskѕ
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes

: *
dtype0Ј
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ї
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0Ѕ
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ѓ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:          є
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0І
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          [
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:         j
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:         q
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         b
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:         }
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:         r
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:         j
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:         _
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:         Ђ
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:         n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Я
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_28635013*
condR
while_cond_28635012*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                  Њ
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'                           : : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:e a
=
_output_shapes+
):'                           
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
С$
о
while_body_28634022
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0,
while_lstm_cell_28634046_0: ,
while_lstm_cell_28634048_0: (
while_lstm_cell_28634050_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor*
while_lstm_cell_28634046: *
while_lstm_cell_28634048: &
while_lstm_cell_28634050: ѕб'while/lstm_cell/StatefulPartitionedCallѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0г
'while/lstm_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_28634046_0while_lstm_cell_28634048_0while_lstm_cell_28634050_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         :         :         *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_lstm_cell_layer_call_and_return_conditional_losses_28634008┘
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder0while/lstm_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: Ї
while/Identity_4Identity0while/lstm_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         Ї
while/Identity_5Identity0while/lstm_cell/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:         R

while/NoOpNoOp(^while/lstm_cell/StatefulPartitionedCall*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"6
while_lstm_cell_28634046while_lstm_cell_28634046_0"6
while_lstm_cell_28634048while_lstm_cell_28634048_0"6
while_lstm_cell_28634050while_lstm_cell_28634050_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2R
'while/lstm_cell/StatefulPartitionedCall'while/lstm_cell/StatefulPartitionedCall:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
28634046:(	$
"
_user_specified_name
28634048:(
$
"
_user_specified_name
28634050
ѕ
Ў
,__inference_dense_582_layer_call_fn_28637777

inputs
unknown:
	unknown_0:
identityѕбStatefulPartitionedCallЯ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_dense_582_layer_call_and_return_conditional_losses_28633751s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs:($
"
_user_specified_name
28637771:($
"
_user_specified_name
28637773
С
Ў
,__inference_dense_576_layer_call_fn_28636364

inputs
unknown:
	unknown_0:
identityѕбStatefulPartitionedCallО
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_dense_576_layer_call_and_return_conditional_losses_28635357j
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*"
_output_shapes
:<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*%
_input_shapes
:: : 22
StatefulPartitionedCallStatefulPartitionedCall:J F
"
_output_shapes
:
 
_user_specified_nameinputs:($
"
_user_specified_name
28636358:($
"
_user_specified_name
28636360
Ў
Ї
#forward_lstm_92_while_cond_28637441<
8forward_lstm_92_while_forward_lstm_92_while_loop_counterB
>forward_lstm_92_while_forward_lstm_92_while_maximum_iterations%
!forward_lstm_92_while_placeholder'
#forward_lstm_92_while_placeholder_1'
#forward_lstm_92_while_placeholder_2'
#forward_lstm_92_while_placeholder_3>
:forward_lstm_92_while_less_forward_lstm_92_strided_slice_1V
Rforward_lstm_92_while_forward_lstm_92_while_cond_28637441___redundant_placeholder0V
Rforward_lstm_92_while_forward_lstm_92_while_cond_28637441___redundant_placeholder1V
Rforward_lstm_92_while_forward_lstm_92_while_cond_28637441___redundant_placeholder2V
Rforward_lstm_92_while_forward_lstm_92_while_cond_28637441___redundant_placeholder3"
forward_lstm_92_while_identity
б
forward_lstm_92/while/LessLess!forward_lstm_92_while_placeholder:forward_lstm_92_while_less_forward_lstm_92_strided_slice_1*
T0*
_output_shapes
: k
forward_lstm_92/while/IdentityIdentityforward_lstm_92/while/Less:z:0*
T0
*
_output_shapes
: "I
forward_lstm_92_while_identity'forward_lstm_92/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : ::: :::::Z V

_output_shapes
: 
<
_user_specified_name$"forward_lstm_92/while/loop_counter:`\

_output_shapes
: 
B
_user_specified_name*(forward_lstm_92/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

::$ 

_output_shapes

::WS

_output_shapes
: 
9
_user_specified_name!forward_lstm_92/strided_slice_1:

_output_shapes
:
┼G
с
M__inference_topk_bilstm_moe_layer_call_and_return_conditional_losses_28636128
input_3$
dense_576_28635756: 
dense_576_28635758:)
sequential_392_28635786:%
sequential_392_28635788:)
sequential_397_28635791:%
sequential_397_28635793:)
sequential_402_28635796:%
sequential_402_28635798:)
sequential_407_28635801:%
sequential_407_28635803:+
bidirectional_92_28636102: +
bidirectional_92_28636104: '
bidirectional_92_28636106: +
bidirectional_92_28636108: +
bidirectional_92_28636110: '
bidirectional_92_28636112: %
dense_593_28636122:	ђ 
dense_593_28636124:
identityѕб(bidirectional_92/StatefulPartitionedCallб!dense_576/StatefulPartitionedCallб!dense_593/StatefulPartitionedCallб&sequential_392/StatefulPartitionedCallб&sequential_397/StatefulPartitionedCallб&sequential_402/StatefulPartitionedCallб&sequential_407/StatefulPartitionedCallШ
!dense_576/StatefulPartitionedCallStatefulPartitionedCallinput_3dense_576_28635756dense_576_28635758*
Tin
2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_dense_576_layer_call_and_return_conditional_losses_28635357Z
tf.math.top_k_2/TopKV2/kConst*
_output_shapes
: *
dtype0*
value	B :ф
tf.math.top_k_2/TopKV2TopKV2*dense_576/StatefulPartitionedCall:output:0!tf.math.top_k_2/TopKV2/k:output:0*
T0*0
_output_shapes
::b
tf.one_hot_2/one_hot/on_valueConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?c
tf.one_hot_2/one_hot/off_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    \
tf.one_hot_2/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :ы
tf.one_hot_2/one_hotOneHot tf.math.top_k_2/TopKV2:indices:0#tf.one_hot_2/one_hot/depth:output:0&tf.one_hot_2/one_hot/on_value:output:0'tf.one_hot_2/one_hot/off_value:output:0*
T0*
TI0*&
_output_shapes
:­
lambda_96/PartitionedCallPartitionedCalltf.math.top_k_2/TopKV2:values:0tf.one_hot_2/one_hot:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
:* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_lambda_96_layer_call_and_return_conditional_losses_28635773р
lambda_97/PartitionedCallPartitionedCallinput_3"lambda_96/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *&
_output_shapes
:* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_lambda_97_layer_call_and_return_conditional_losses_28635780ц
tf.unstack_2/unstackUnpack"lambda_97/PartitionedCall:output:0*
T0*L
_output_shapes:
8::::*	
numа
&sequential_392/StatefulPartitionedCallStatefulPartitionedCalltf.unstack_2/unstack:output:0sequential_392_28635786sequential_392_28635788*
Tin
2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *U
fPRN
L__inference_sequential_392_layer_call_and_return_conditional_losses_28633691а
&sequential_397/StatefulPartitionedCallStatefulPartitionedCalltf.unstack_2/unstack:output:1sequential_397_28635791sequential_397_28635793*
Tin
2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *U
fPRN
L__inference_sequential_397_layer_call_and_return_conditional_losses_28633767а
&sequential_402/StatefulPartitionedCallStatefulPartitionedCalltf.unstack_2/unstack:output:2sequential_402_28635796sequential_402_28635798*
Tin
2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *U
fPRN
L__inference_sequential_402_layer_call_and_return_conditional_losses_28633843а
&sequential_407/StatefulPartitionedCallStatefulPartitionedCalltf.unstack_2/unstack:output:3sequential_407_28635801sequential_407_28635803*
Tin
2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *U
fPRN
L__inference_sequential_407_layer_call_and_return_conditional_losses_28633919Б
tf.stack_93/stackPack/sequential_392/StatefulPartitionedCall:output:0/sequential_397/StatefulPartitionedCall:output:0/sequential_402/StatefulPartitionedCall:output:0/sequential_407/StatefulPartitionedCall:output:0*
N*
T0*&
_output_shapes
:*

axis­
lambda_98/PartitionedCallPartitionedCalltf.stack_93/stack:output:0"lambda_96/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
:* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_lambda_98_layer_call_and_return_conditional_losses_28635812А
(bidirectional_92/StatefulPartitionedCallStatefulPartitionedCall"lambda_98/PartitionedCall:output:0bidirectional_92_28636102bidirectional_92_28636104bidirectional_92_28636106bidirectional_92_28636108bidirectional_92_28636110bidirectional_92_28636112*
Tin
	2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
:*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8ѓ *W
fRRP
N__inference_bidirectional_92_layer_call_and_return_conditional_losses_28636101С
dropout_92/PartitionedCallPartitionedCall1bidirectional_92/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
:* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *Q
fLRJ
H__inference_dropout_92_layer_call_and_return_conditional_losses_28636119М
flatten_92/PartitionedCallPartitionedCall#dropout_92/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	ђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *Q
fLRJ
H__inference_flatten_92_layer_call_and_return_conditional_losses_28635735ј
!dense_593/StatefulPartitionedCallStatefulPartitionedCall#flatten_92/PartitionedCall:output:0dense_593_28636122dense_593_28636124*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_dense_593_layer_call_and_return_conditional_losses_28635746p
IdentityIdentity*dense_593/StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:╣
NoOpNoOp)^bidirectional_92/StatefulPartitionedCall"^dense_576/StatefulPartitionedCall"^dense_593/StatefulPartitionedCall'^sequential_392/StatefulPartitionedCall'^sequential_397/StatefulPartitionedCall'^sequential_402/StatefulPartitionedCall'^sequential_407/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:: : : : : : : : : : : : : : : : : : 2T
(bidirectional_92/StatefulPartitionedCall(bidirectional_92/StatefulPartitionedCall2F
!dense_576/StatefulPartitionedCall!dense_576/StatefulPartitionedCall2F
!dense_593/StatefulPartitionedCall!dense_593/StatefulPartitionedCall2P
&sequential_392/StatefulPartitionedCall&sequential_392/StatefulPartitionedCall2P
&sequential_397/StatefulPartitionedCall&sequential_397/StatefulPartitionedCall2P
&sequential_402/StatefulPartitionedCall&sequential_402/StatefulPartitionedCall2P
&sequential_407/StatefulPartitionedCall&sequential_407/StatefulPartitionedCall:K G
"
_output_shapes
:
!
_user_specified_name	input_3:($
"
_user_specified_name
28635756:($
"
_user_specified_name
28635758:($
"
_user_specified_name
28635786:($
"
_user_specified_name
28635788:($
"
_user_specified_name
28635791:($
"
_user_specified_name
28635793:($
"
_user_specified_name
28635796:($
"
_user_specified_name
28635798:(	$
"
_user_specified_name
28635801:(
$
"
_user_specified_name
28635803:($
"
_user_specified_name
28636102:($
"
_user_specified_name
28636104:($
"
_user_specified_name
28636106:($
"
_user_specified_name
28636108:($
"
_user_specified_name
28636110:($
"
_user_specified_name
28636112:($
"
_user_specified_name
28636122:($
"
_user_specified_name
28636124
й╣
ю
N__inference_bidirectional_92_layer_call_and_return_conditional_losses_28636101

inputsJ
8forward_lstm_92_lstm_cell_matmul_readvariableop_resource: L
:forward_lstm_92_lstm_cell_matmul_1_readvariableop_resource: G
9forward_lstm_92_lstm_cell_biasadd_readvariableop_resource: K
9backward_lstm_92_lstm_cell_matmul_readvariableop_resource: M
;backward_lstm_92_lstm_cell_matmul_1_readvariableop_resource: H
:backward_lstm_92_lstm_cell_biasadd_readvariableop_resource: 
identityѕб1backward_lstm_92/lstm_cell/BiasAdd/ReadVariableOpб0backward_lstm_92/lstm_cell/MatMul/ReadVariableOpб2backward_lstm_92/lstm_cell/MatMul_1/ReadVariableOpбbackward_lstm_92/whileб0forward_lstm_92/lstm_cell/BiasAdd/ReadVariableOpб/forward_lstm_92/lstm_cell/MatMul/ReadVariableOpб1forward_lstm_92/lstm_cell/MatMul_1/ReadVariableOpбforward_lstm_92/whilej
forward_lstm_92/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         m
#forward_lstm_92/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%forward_lstm_92/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%forward_lstm_92/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:А
forward_lstm_92/strided_sliceStridedSliceforward_lstm_92/Shape:output:0,forward_lstm_92/strided_slice/stack:output:0.forward_lstm_92/strided_slice/stack_1:output:0.forward_lstm_92/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
forward_lstm_92/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Б
forward_lstm_92/zeros/packedPack&forward_lstm_92/strided_slice:output:0'forward_lstm_92/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:`
forward_lstm_92/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Њ
forward_lstm_92/zerosFill%forward_lstm_92/zeros/packed:output:0$forward_lstm_92/zeros/Const:output:0*
T0*
_output_shapes

:b
 forward_lstm_92/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Д
forward_lstm_92/zeros_1/packedPack&forward_lstm_92/strided_slice:output:0)forward_lstm_92/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:b
forward_lstm_92/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ў
forward_lstm_92/zeros_1Fill'forward_lstm_92/zeros_1/packed:output:0&forward_lstm_92/zeros_1/Const:output:0*
T0*
_output_shapes

:s
forward_lstm_92/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ё
forward_lstm_92/transpose	Transposeinputs'forward_lstm_92/transpose/perm:output:0*
T0*"
_output_shapes
:l
forward_lstm_92/Shape_1Const*
_output_shapes
:*
dtype0*!
valueB"         o
%forward_lstm_92/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_92/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'forward_lstm_92/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ф
forward_lstm_92/strided_slice_1StridedSlice forward_lstm_92/Shape_1:output:0.forward_lstm_92/strided_slice_1/stack:output:00forward_lstm_92/strided_slice_1/stack_1:output:00forward_lstm_92/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
+forward_lstm_92/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         С
forward_lstm_92/TensorArrayV2TensorListReserve4forward_lstm_92/TensorArrayV2/element_shape:output:0(forward_lstm_92/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмќ
Eforward_lstm_92/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      љ
7forward_lstm_92/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorforward_lstm_92/transpose:y:0Nforward_lstm_92/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмo
%forward_lstm_92/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_92/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'forward_lstm_92/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:░
forward_lstm_92/strided_slice_2StridedSliceforward_lstm_92/transpose:y:0.forward_lstm_92/strided_slice_2/stack:output:00forward_lstm_92/strided_slice_2/stack_1:output:00forward_lstm_92/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_maskе
/forward_lstm_92/lstm_cell/MatMul/ReadVariableOpReadVariableOp8forward_lstm_92_lstm_cell_matmul_readvariableop_resource*
_output_shapes

: *
dtype0Х
 forward_lstm_92/lstm_cell/MatMulMatMul(forward_lstm_92/strided_slice_2:output:07forward_lstm_92/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

: г
1forward_lstm_92/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp:forward_lstm_92_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0░
"forward_lstm_92/lstm_cell/MatMul_1MatMulforward_lstm_92/zeros:output:09forward_lstm_92/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes

: Е
forward_lstm_92/lstm_cell/addAddV2*forward_lstm_92/lstm_cell/MatMul:product:0,forward_lstm_92/lstm_cell/MatMul_1:product:0*
T0*
_output_shapes

: д
0forward_lstm_92/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp9forward_lstm_92_lstm_cell_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0▓
!forward_lstm_92/lstm_cell/BiasAddBiasAdd!forward_lstm_92/lstm_cell/add:z:08forward_lstm_92/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

: k
)forward_lstm_92/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
forward_lstm_92/lstm_cell/splitSplit2forward_lstm_92/lstm_cell/split/split_dim:output:0*forward_lstm_92/lstm_cell/BiasAdd:output:0*
T0*<
_output_shapes*
(::::*
	num_split
!forward_lstm_92/lstm_cell/SigmoidSigmoid(forward_lstm_92/lstm_cell/split:output:0*
T0*
_output_shapes

:Ђ
#forward_lstm_92/lstm_cell/Sigmoid_1Sigmoid(forward_lstm_92/lstm_cell/split:output:1*
T0*
_output_shapes

:ў
forward_lstm_92/lstm_cell/mulMul'forward_lstm_92/lstm_cell/Sigmoid_1:y:0 forward_lstm_92/zeros_1:output:0*
T0*
_output_shapes

:y
forward_lstm_92/lstm_cell/ReluRelu(forward_lstm_92/lstm_cell/split:output:2*
T0*
_output_shapes

:ц
forward_lstm_92/lstm_cell/mul_1Mul%forward_lstm_92/lstm_cell/Sigmoid:y:0,forward_lstm_92/lstm_cell/Relu:activations:0*
T0*
_output_shapes

:Ў
forward_lstm_92/lstm_cell/add_1AddV2!forward_lstm_92/lstm_cell/mul:z:0#forward_lstm_92/lstm_cell/mul_1:z:0*
T0*
_output_shapes

:Ђ
#forward_lstm_92/lstm_cell/Sigmoid_2Sigmoid(forward_lstm_92/lstm_cell/split:output:3*
T0*
_output_shapes

:v
 forward_lstm_92/lstm_cell/Relu_1Relu#forward_lstm_92/lstm_cell/add_1:z:0*
T0*
_output_shapes

:е
forward_lstm_92/lstm_cell/mul_2Mul'forward_lstm_92/lstm_cell/Sigmoid_2:y:0.forward_lstm_92/lstm_cell/Relu_1:activations:0*
T0*
_output_shapes

:~
-forward_lstm_92/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      У
forward_lstm_92/TensorArrayV2_1TensorListReserve6forward_lstm_92/TensorArrayV2_1/element_shape:output:0(forward_lstm_92/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмV
forward_lstm_92/timeConst*
_output_shapes
: *
dtype0*
value	B : s
(forward_lstm_92/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         d
"forward_lstm_92/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ю
forward_lstm_92/whileWhile+forward_lstm_92/while/loop_counter:output:01forward_lstm_92/while/maximum_iterations:output:0forward_lstm_92/time:output:0(forward_lstm_92/TensorArrayV2_1:handle:0forward_lstm_92/zeros:output:0 forward_lstm_92/zeros_1:output:0(forward_lstm_92/strided_slice_1:output:0Gforward_lstm_92/TensorArrayUnstack/TensorListFromTensor:output_handle:08forward_lstm_92_lstm_cell_matmul_readvariableop_resource:forward_lstm_92_lstm_cell_matmul_1_readvariableop_resource9forward_lstm_92_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*:
_output_shapes(
&: : : : ::: : : : : *%
_read_only_resource_inputs
	
*/
body'R%
#forward_lstm_92_while_body_28635872*/
cond'R%
#forward_lstm_92_while_cond_28635871*9
output_shapes(
&: : : : ::: : : : : *
parallel_iterations Љ
@forward_lstm_92/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      ж
2forward_lstm_92/TensorArrayV2Stack/TensorListStackTensorListStackforward_lstm_92/while:output:3Iforward_lstm_92/TensorArrayV2Stack/TensorListStack/element_shape:output:0*"
_output_shapes
:*
element_dtype0x
%forward_lstm_92/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         q
'forward_lstm_92/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_92/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╬
forward_lstm_92/strided_slice_3StridedSlice;forward_lstm_92/TensorArrayV2Stack/TensorListStack:tensor:0.forward_lstm_92/strided_slice_3/stack:output:00forward_lstm_92/strided_slice_3/stack_1:output:00forward_lstm_92/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_masku
 forward_lstm_92/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          й
forward_lstm_92/transpose_1	Transpose;forward_lstm_92/TensorArrayV2Stack/TensorListStack:tensor:0)forward_lstm_92/transpose_1/perm:output:0*
T0*"
_output_shapes
:k
forward_lstm_92/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
backward_lstm_92/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         n
$backward_lstm_92/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&backward_lstm_92/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&backward_lstm_92/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:д
backward_lstm_92/strided_sliceStridedSlicebackward_lstm_92/Shape:output:0-backward_lstm_92/strided_slice/stack:output:0/backward_lstm_92/strided_slice/stack_1:output:0/backward_lstm_92/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
backward_lstm_92/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :д
backward_lstm_92/zeros/packedPack'backward_lstm_92/strided_slice:output:0(backward_lstm_92/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:a
backward_lstm_92/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ќ
backward_lstm_92/zerosFill&backward_lstm_92/zeros/packed:output:0%backward_lstm_92/zeros/Const:output:0*
T0*
_output_shapes

:c
!backward_lstm_92/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ф
backward_lstm_92/zeros_1/packedPack'backward_lstm_92/strided_slice:output:0*backward_lstm_92/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:c
backward_lstm_92/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ю
backward_lstm_92/zeros_1Fill(backward_lstm_92/zeros_1/packed:output:0'backward_lstm_92/zeros_1/Const:output:0*
T0*
_output_shapes

:t
backward_lstm_92/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          є
backward_lstm_92/transpose	Transposeinputs(backward_lstm_92/transpose/perm:output:0*
T0*"
_output_shapes
:m
backward_lstm_92/Shape_1Const*
_output_shapes
:*
dtype0*!
valueB"         p
&backward_lstm_92/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_92/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(backward_lstm_92/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:░
 backward_lstm_92/strided_slice_1StridedSlice!backward_lstm_92/Shape_1:output:0/backward_lstm_92/strided_slice_1/stack:output:01backward_lstm_92/strided_slice_1/stack_1:output:01backward_lstm_92/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskw
,backward_lstm_92/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         у
backward_lstm_92/TensorArrayV2TensorListReserve5backward_lstm_92/TensorArrayV2/element_shape:output:0)backward_lstm_92/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмi
backward_lstm_92/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: ъ
backward_lstm_92/ReverseV2	ReverseV2backward_lstm_92/transpose:y:0(backward_lstm_92/ReverseV2/axis:output:0*
T0*"
_output_shapes
:Ќ
Fbackward_lstm_92/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      ў
8backward_lstm_92/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#backward_lstm_92/ReverseV2:output:0Obackward_lstm_92/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмp
&backward_lstm_92/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_92/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(backward_lstm_92/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:х
 backward_lstm_92/strided_slice_2StridedSlicebackward_lstm_92/transpose:y:0/backward_lstm_92/strided_slice_2/stack:output:01backward_lstm_92/strided_slice_2/stack_1:output:01backward_lstm_92/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_maskф
0backward_lstm_92/lstm_cell/MatMul/ReadVariableOpReadVariableOp9backward_lstm_92_lstm_cell_matmul_readvariableop_resource*
_output_shapes

: *
dtype0╣
!backward_lstm_92/lstm_cell/MatMulMatMul)backward_lstm_92/strided_slice_2:output:08backward_lstm_92/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

: «
2backward_lstm_92/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp;backward_lstm_92_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0│
#backward_lstm_92/lstm_cell/MatMul_1MatMulbackward_lstm_92/zeros:output:0:backward_lstm_92/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes

: г
backward_lstm_92/lstm_cell/addAddV2+backward_lstm_92/lstm_cell/MatMul:product:0-backward_lstm_92/lstm_cell/MatMul_1:product:0*
T0*
_output_shapes

: е
1backward_lstm_92/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp:backward_lstm_92_lstm_cell_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0х
"backward_lstm_92/lstm_cell/BiasAddBiasAdd"backward_lstm_92/lstm_cell/add:z:09backward_lstm_92/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

: l
*backward_lstm_92/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :с
 backward_lstm_92/lstm_cell/splitSplit3backward_lstm_92/lstm_cell/split/split_dim:output:0+backward_lstm_92/lstm_cell/BiasAdd:output:0*
T0*<
_output_shapes*
(::::*
	num_splitЂ
"backward_lstm_92/lstm_cell/SigmoidSigmoid)backward_lstm_92/lstm_cell/split:output:0*
T0*
_output_shapes

:Ѓ
$backward_lstm_92/lstm_cell/Sigmoid_1Sigmoid)backward_lstm_92/lstm_cell/split:output:1*
T0*
_output_shapes

:Џ
backward_lstm_92/lstm_cell/mulMul(backward_lstm_92/lstm_cell/Sigmoid_1:y:0!backward_lstm_92/zeros_1:output:0*
T0*
_output_shapes

:{
backward_lstm_92/lstm_cell/ReluRelu)backward_lstm_92/lstm_cell/split:output:2*
T0*
_output_shapes

:Д
 backward_lstm_92/lstm_cell/mul_1Mul&backward_lstm_92/lstm_cell/Sigmoid:y:0-backward_lstm_92/lstm_cell/Relu:activations:0*
T0*
_output_shapes

:ю
 backward_lstm_92/lstm_cell/add_1AddV2"backward_lstm_92/lstm_cell/mul:z:0$backward_lstm_92/lstm_cell/mul_1:z:0*
T0*
_output_shapes

:Ѓ
$backward_lstm_92/lstm_cell/Sigmoid_2Sigmoid)backward_lstm_92/lstm_cell/split:output:3*
T0*
_output_shapes

:x
!backward_lstm_92/lstm_cell/Relu_1Relu$backward_lstm_92/lstm_cell/add_1:z:0*
T0*
_output_shapes

:Ф
 backward_lstm_92/lstm_cell/mul_2Mul(backward_lstm_92/lstm_cell/Sigmoid_2:y:0/backward_lstm_92/lstm_cell/Relu_1:activations:0*
T0*
_output_shapes

:
.backward_lstm_92/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      в
 backward_lstm_92/TensorArrayV2_1TensorListReserve7backward_lstm_92/TensorArrayV2_1/element_shape:output:0)backward_lstm_92/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмW
backward_lstm_92/timeConst*
_output_shapes
: *
dtype0*
value	B : t
)backward_lstm_92/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         e
#backward_lstm_92/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ф
backward_lstm_92/whileWhile,backward_lstm_92/while/loop_counter:output:02backward_lstm_92/while/maximum_iterations:output:0backward_lstm_92/time:output:0)backward_lstm_92/TensorArrayV2_1:handle:0backward_lstm_92/zeros:output:0!backward_lstm_92/zeros_1:output:0)backward_lstm_92/strided_slice_1:output:0Hbackward_lstm_92/TensorArrayUnstack/TensorListFromTensor:output_handle:09backward_lstm_92_lstm_cell_matmul_readvariableop_resource;backward_lstm_92_lstm_cell_matmul_1_readvariableop_resource:backward_lstm_92_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*:
_output_shapes(
&: : : : ::: : : : : *%
_read_only_resource_inputs
	
*0
body(R&
$backward_lstm_92_while_body_28636013*0
cond(R&
$backward_lstm_92_while_cond_28636012*9
output_shapes(
&: : : : ::: : : : : *
parallel_iterations њ
Abackward_lstm_92/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      В
3backward_lstm_92/TensorArrayV2Stack/TensorListStackTensorListStackbackward_lstm_92/while:output:3Jbackward_lstm_92/TensorArrayV2Stack/TensorListStack/element_shape:output:0*"
_output_shapes
:*
element_dtype0y
&backward_lstm_92/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         r
(backward_lstm_92/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_92/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:М
 backward_lstm_92/strided_slice_3StridedSlice<backward_lstm_92/TensorArrayV2Stack/TensorListStack:tensor:0/backward_lstm_92/strided_slice_3/stack:output:01backward_lstm_92/strided_slice_3/stack_1:output:01backward_lstm_92/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_maskv
!backward_lstm_92/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          └
backward_lstm_92/transpose_1	Transpose<backward_lstm_92/TensorArrayV2Stack/TensorListStack:tensor:0*backward_lstm_92/transpose_1/perm:output:0*
T0*"
_output_shapes
:l
backward_lstm_92/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    X
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:~
	ReverseV2	ReverseV2 backward_lstm_92/transpose_1:y:0ReverseV2/axis:output:0*
T0*"
_output_shapes
:M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Њ
concatConcatV2forward_lstm_92/transpose_1:y:0ReverseV2:output:0concat/axis:output:0*
N*
T0*"
_output_shapes
:Y
IdentityIdentityconcat:output:0^NoOp*
T0*"
_output_shapes
:ѕ
NoOpNoOp2^backward_lstm_92/lstm_cell/BiasAdd/ReadVariableOp1^backward_lstm_92/lstm_cell/MatMul/ReadVariableOp3^backward_lstm_92/lstm_cell/MatMul_1/ReadVariableOp^backward_lstm_92/while1^forward_lstm_92/lstm_cell/BiasAdd/ReadVariableOp0^forward_lstm_92/lstm_cell/MatMul/ReadVariableOp2^forward_lstm_92/lstm_cell/MatMul_1/ReadVariableOp^forward_lstm_92/while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*-
_input_shapes
:: : : : : : 2f
1backward_lstm_92/lstm_cell/BiasAdd/ReadVariableOp1backward_lstm_92/lstm_cell/BiasAdd/ReadVariableOp2d
0backward_lstm_92/lstm_cell/MatMul/ReadVariableOp0backward_lstm_92/lstm_cell/MatMul/ReadVariableOp2h
2backward_lstm_92/lstm_cell/MatMul_1/ReadVariableOp2backward_lstm_92/lstm_cell/MatMul_1/ReadVariableOp20
backward_lstm_92/whilebackward_lstm_92/while2d
0forward_lstm_92/lstm_cell/BiasAdd/ReadVariableOp0forward_lstm_92/lstm_cell/BiasAdd/ReadVariableOp2b
/forward_lstm_92/lstm_cell/MatMul/ReadVariableOp/forward_lstm_92/lstm_cell/MatMul/ReadVariableOp2f
1forward_lstm_92/lstm_cell/MatMul_1/ReadVariableOp1forward_lstm_92/lstm_cell/MatMul_1/ReadVariableOp2.
forward_lstm_92/whileforward_lstm_92/while:J F
"
_output_shapes
:
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
ЉL
Љ
N__inference_backward_lstm_92_layer_call_and_return_conditional_losses_28639128

inputs:
(lstm_cell_matmul_readvariableop_resource: <
*lstm_cell_matmul_1_readvariableop_resource: 7
)lstm_cell_biasadd_readvariableop_resource: 
identityѕб lstm_cell/BiasAdd/ReadVariableOpбlstm_cell/MatMul/ReadVariableOpб!lstm_cell/MatMul_1/ReadVariableOpбwhileI
ShapeShapeinputs*
T0*
_output_shapes
::ь¤]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
	transpose	Transposeinputstranspose/perm:output:0*
T0*=
_output_shapes+
):'                           R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::ь¤_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмX
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: є
	ReverseV2	ReverseV2transpose:y:0ReverseV2/axis:output:0*
T0*=
_output_shapes+
):'                           є
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        т
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensorReverseV2:output:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ы
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:                  *
shrink_axis_maskѕ
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes

: *
dtype0Ј
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ї
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0Ѕ
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ѓ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:          є
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0І
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          [
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:         j
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:         q
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         b
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:         }
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:         r
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:         j
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:         _
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:         Ђ
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:         n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Я
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_28639044*
condR
while_cond_28639043*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                  Њ
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'                           : : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:e a
=
_output_shapes+
):'                           
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
┘ќ
Ј
!__inference__traced_save_28639454
file_prefix9
'read_disablecopyonread_dense_576_kernel:5
'read_1_disablecopyonread_dense_576_bias:<
)read_2_disablecopyonread_dense_593_kernel:	ђ5
'read_3_disablecopyonread_dense_593_bias:;
)read_4_disablecopyonread_dense_577_kernel:5
'read_5_disablecopyonread_dense_577_bias:;
)read_6_disablecopyonread_dense_582_kernel:5
'read_7_disablecopyonread_dense_582_bias:;
)read_8_disablecopyonread_dense_587_kernel:5
'read_9_disablecopyonread_dense_587_bias:<
*read_10_disablecopyonread_dense_592_kernel:6
(read_11_disablecopyonread_dense_592_bias:]
Kread_12_disablecopyonread_bidirectional_92_forward_lstm_92_lstm_cell_kernel: g
Uread_13_disablecopyonread_bidirectional_92_forward_lstm_92_lstm_cell_recurrent_kernel: W
Iread_14_disablecopyonread_bidirectional_92_forward_lstm_92_lstm_cell_bias: ^
Lread_15_disablecopyonread_bidirectional_92_backward_lstm_92_lstm_cell_kernel: h
Vread_16_disablecopyonread_bidirectional_92_backward_lstm_92_lstm_cell_recurrent_kernel: X
Jread_17_disablecopyonread_bidirectional_92_backward_lstm_92_lstm_cell_bias: 
savev2_const
identity_37ѕбMergeV2CheckpointsбRead/DisableCopyOnReadбRead/ReadVariableOpбRead_1/DisableCopyOnReadбRead_1/ReadVariableOpбRead_10/DisableCopyOnReadбRead_10/ReadVariableOpбRead_11/DisableCopyOnReadбRead_11/ReadVariableOpбRead_12/DisableCopyOnReadбRead_12/ReadVariableOpбRead_13/DisableCopyOnReadбRead_13/ReadVariableOpбRead_14/DisableCopyOnReadбRead_14/ReadVariableOpбRead_15/DisableCopyOnReadбRead_15/ReadVariableOpбRead_16/DisableCopyOnReadбRead_16/ReadVariableOpбRead_17/DisableCopyOnReadбRead_17/ReadVariableOpбRead_2/DisableCopyOnReadбRead_2/ReadVariableOpбRead_3/DisableCopyOnReadбRead_3/ReadVariableOpбRead_4/DisableCopyOnReadбRead_4/ReadVariableOpбRead_5/DisableCopyOnReadбRead_5/ReadVariableOpбRead_6/DisableCopyOnReadбRead_6/ReadVariableOpбRead_7/DisableCopyOnReadбRead_7/ReadVariableOpбRead_8/DisableCopyOnReadбRead_8/ReadVariableOpбRead_9/DisableCopyOnReadбRead_9/ReadVariableOpw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/partЂ
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : Њ
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: y
Read/DisableCopyOnReadDisableCopyOnRead'read_disablecopyonread_dense_576_kernel"/device:CPU:0*
_output_shapes
 Б
Read/ReadVariableOpReadVariableOp'read_disablecopyonread_dense_576_kernel^Read/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0i
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:a

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*
_output_shapes

:{
Read_1/DisableCopyOnReadDisableCopyOnRead'read_1_disablecopyonread_dense_576_bias"/device:CPU:0*
_output_shapes
 Б
Read_1/ReadVariableOpReadVariableOp'read_1_disablecopyonread_dense_576_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
:}
Read_2/DisableCopyOnReadDisableCopyOnRead)read_2_disablecopyonread_dense_593_kernel"/device:CPU:0*
_output_shapes
 ф
Read_2/ReadVariableOpReadVariableOp)read_2_disablecopyonread_dense_593_kernel^Read_2/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	ђ*
dtype0n

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	ђd

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*
_output_shapes
:	ђ{
Read_3/DisableCopyOnReadDisableCopyOnRead'read_3_disablecopyonread_dense_593_bias"/device:CPU:0*
_output_shapes
 Б
Read_3/ReadVariableOpReadVariableOp'read_3_disablecopyonread_dense_593_bias^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes
:}
Read_4/DisableCopyOnReadDisableCopyOnRead)read_4_disablecopyonread_dense_577_kernel"/device:CPU:0*
_output_shapes
 Е
Read_4/ReadVariableOpReadVariableOp)read_4_disablecopyonread_dense_577_kernel^Read_4/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0m

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:c

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*
_output_shapes

:{
Read_5/DisableCopyOnReadDisableCopyOnRead'read_5_disablecopyonread_dense_577_bias"/device:CPU:0*
_output_shapes
 Б
Read_5/ReadVariableOpReadVariableOp'read_5_disablecopyonread_dense_577_bias^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0j
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes
:}
Read_6/DisableCopyOnReadDisableCopyOnRead)read_6_disablecopyonread_dense_582_kernel"/device:CPU:0*
_output_shapes
 Е
Read_6/ReadVariableOpReadVariableOp)read_6_disablecopyonread_dense_582_kernel^Read_6/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0n
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*
_output_shapes

:{
Read_7/DisableCopyOnReadDisableCopyOnRead'read_7_disablecopyonread_dense_582_bias"/device:CPU:0*
_output_shapes
 Б
Read_7/ReadVariableOpReadVariableOp'read_7_disablecopyonread_dense_582_bias^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0j
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes
:}
Read_8/DisableCopyOnReadDisableCopyOnRead)read_8_disablecopyonread_dense_587_kernel"/device:CPU:0*
_output_shapes
 Е
Read_8/ReadVariableOpReadVariableOp)read_8_disablecopyonread_dense_587_kernel^Read_8/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0n
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*
_output_shapes

:{
Read_9/DisableCopyOnReadDisableCopyOnRead'read_9_disablecopyonread_dense_587_bias"/device:CPU:0*
_output_shapes
 Б
Read_9/ReadVariableOpReadVariableOp'read_9_disablecopyonread_dense_587_bias^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0j
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes
:
Read_10/DisableCopyOnReadDisableCopyOnRead*read_10_disablecopyonread_dense_592_kernel"/device:CPU:0*
_output_shapes
 г
Read_10/ReadVariableOpReadVariableOp*read_10_disablecopyonread_dense_592_kernel^Read_10/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0o
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*
_output_shapes

:}
Read_11/DisableCopyOnReadDisableCopyOnRead(read_11_disablecopyonread_dense_592_bias"/device:CPU:0*
_output_shapes
 д
Read_11/ReadVariableOpReadVariableOp(read_11_disablecopyonread_dense_592_bias^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes
:а
Read_12/DisableCopyOnReadDisableCopyOnReadKread_12_disablecopyonread_bidirectional_92_forward_lstm_92_lstm_cell_kernel"/device:CPU:0*
_output_shapes
 ═
Read_12/ReadVariableOpReadVariableOpKread_12_disablecopyonread_bidirectional_92_forward_lstm_92_lstm_cell_kernel^Read_12/DisableCopyOnRead"/device:CPU:0*
_output_shapes

: *
dtype0o
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

: e
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*
_output_shapes

: ф
Read_13/DisableCopyOnReadDisableCopyOnReadUread_13_disablecopyonread_bidirectional_92_forward_lstm_92_lstm_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 О
Read_13/ReadVariableOpReadVariableOpUread_13_disablecopyonread_bidirectional_92_forward_lstm_92_lstm_cell_recurrent_kernel^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes

: *
dtype0o
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

: e
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes

: ъ
Read_14/DisableCopyOnReadDisableCopyOnReadIread_14_disablecopyonread_bidirectional_92_forward_lstm_92_lstm_cell_bias"/device:CPU:0*
_output_shapes
 К
Read_14/ReadVariableOpReadVariableOpIread_14_disablecopyonread_bidirectional_92_forward_lstm_92_lstm_cell_bias^Read_14/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*
_output_shapes
: А
Read_15/DisableCopyOnReadDisableCopyOnReadLread_15_disablecopyonread_bidirectional_92_backward_lstm_92_lstm_cell_kernel"/device:CPU:0*
_output_shapes
 ╬
Read_15/ReadVariableOpReadVariableOpLread_15_disablecopyonread_bidirectional_92_backward_lstm_92_lstm_cell_kernel^Read_15/DisableCopyOnRead"/device:CPU:0*
_output_shapes

: *
dtype0o
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

: e
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*
_output_shapes

: Ф
Read_16/DisableCopyOnReadDisableCopyOnReadVread_16_disablecopyonread_bidirectional_92_backward_lstm_92_lstm_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 п
Read_16/ReadVariableOpReadVariableOpVread_16_disablecopyonread_bidirectional_92_backward_lstm_92_lstm_cell_recurrent_kernel^Read_16/DisableCopyOnRead"/device:CPU:0*
_output_shapes

: *
dtype0o
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

: e
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*
_output_shapes

: Ъ
Read_17/DisableCopyOnReadDisableCopyOnReadJread_17_disablecopyonread_bidirectional_92_backward_lstm_92_lstm_cell_bias"/device:CPU:0*
_output_shapes
 ╚
Read_17/ReadVariableOpReadVariableOpJread_17_disablecopyonread_bidirectional_92_backward_lstm_92_lstm_cell_bias^Read_17/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes
: ю
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*┼
value╗BИB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHЊ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*9
value0B.B B B B B B B B B B B B B B B B B B B ы
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *!
dtypes
2љ
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:│
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_36Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_37IdentityIdentity_36:output:0^NoOp*
T0*
_output_shapes
: ┘
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*
_output_shapes
 "#
identity_37Identity_37:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(: : : : : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp26
Read_15/DisableCopyOnReadRead_15/DisableCopyOnRead20
Read_15/ReadVariableOpRead_15/ReadVariableOp26
Read_16/DisableCopyOnReadRead_16/DisableCopyOnRead20
Read_16/ReadVariableOpRead_16/ReadVariableOp26
Read_17/DisableCopyOnReadRead_17/DisableCopyOnRead20
Read_17/ReadVariableOpRead_17/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:0,
*
_user_specified_namedense_576/kernel:.*
(
_user_specified_namedense_576/bias:0,
*
_user_specified_namedense_593/kernel:.*
(
_user_specified_namedense_593/bias:0,
*
_user_specified_namedense_577/kernel:.*
(
_user_specified_namedense_577/bias:0,
*
_user_specified_namedense_582/kernel:.*
(
_user_specified_namedense_582/bias:0	,
*
_user_specified_namedense_587/kernel:.
*
(
_user_specified_namedense_587/bias:0,
*
_user_specified_namedense_592/kernel:.*
(
_user_specified_namedense_592/bias:QM
K
_user_specified_name31bidirectional_92/forward_lstm_92/lstm_cell/kernel:[W
U
_user_specified_name=;bidirectional_92/forward_lstm_92/lstm_cell/recurrent_kernel:OK
I
_user_specified_name1/bidirectional_92/forward_lstm_92/lstm_cell/bias:RN
L
_user_specified_name42bidirectional_92/backward_lstm_92/lstm_cell/kernel:\X
V
_user_specified_name><bidirectional_92/backward_lstm_92/lstm_cell/recurrent_kernel:PL
J
_user_specified_name20bidirectional_92/backward_lstm_92/lstm_cell/bias:=9

_output_shapes
: 

_user_specified_nameConst
╠	
═
while_cond_28637990
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_16
2while_while_cond_28637990___redundant_placeholder06
2while_while_cond_28637990___redundant_placeholder16
2while_while_cond_28637990___redundant_placeholder26
2while_while_cond_28637990___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
Л	
щ
G__inference_dense_593_layer_call_and_return_conditional_losses_28635746

inputs1
matmul_readvariableop_resource:	ђ-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	ђ*
dtype0`
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0m
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:V
IdentityIdentityBiasAdd:output:0^NoOp*
T0*
_output_shapes

:S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*"
_input_shapes
:	ђ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:G C

_output_shapes
:	ђ
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
д
г
Dtopk_bilstm_moe_bidirectional_92_forward_lstm_92_while_cond_28633403~
ztopk_bilstm_moe_bidirectional_92_forward_lstm_92_while_topk_bilstm_moe_bidirectional_92_forward_lstm_92_while_loop_counterЁ
ђtopk_bilstm_moe_bidirectional_92_forward_lstm_92_while_topk_bilstm_moe_bidirectional_92_forward_lstm_92_while_maximum_iterationsF
Btopk_bilstm_moe_bidirectional_92_forward_lstm_92_while_placeholderH
Dtopk_bilstm_moe_bidirectional_92_forward_lstm_92_while_placeholder_1H
Dtopk_bilstm_moe_bidirectional_92_forward_lstm_92_while_placeholder_2H
Dtopk_bilstm_moe_bidirectional_92_forward_lstm_92_while_placeholder_3ђ
|topk_bilstm_moe_bidirectional_92_forward_lstm_92_while_less_topk_bilstm_moe_bidirectional_92_forward_lstm_92_strided_slice_1Ў
ћtopk_bilstm_moe_bidirectional_92_forward_lstm_92_while_topk_bilstm_moe_bidirectional_92_forward_lstm_92_while_cond_28633403___redundant_placeholder0Ў
ћtopk_bilstm_moe_bidirectional_92_forward_lstm_92_while_topk_bilstm_moe_bidirectional_92_forward_lstm_92_while_cond_28633403___redundant_placeholder1Ў
ћtopk_bilstm_moe_bidirectional_92_forward_lstm_92_while_topk_bilstm_moe_bidirectional_92_forward_lstm_92_while_cond_28633403___redundant_placeholder2Ў
ћtopk_bilstm_moe_bidirectional_92_forward_lstm_92_while_topk_bilstm_moe_bidirectional_92_forward_lstm_92_while_cond_28633403___redundant_placeholder3C
?topk_bilstm_moe_bidirectional_92_forward_lstm_92_while_identity
д
;topk_bilstm_moe/bidirectional_92/forward_lstm_92/while/LessLessBtopk_bilstm_moe_bidirectional_92_forward_lstm_92_while_placeholder|topk_bilstm_moe_bidirectional_92_forward_lstm_92_while_less_topk_bilstm_moe_bidirectional_92_forward_lstm_92_strided_slice_1*
T0*
_output_shapes
: Г
?topk_bilstm_moe/bidirectional_92/forward_lstm_92/while/IdentityIdentity?topk_bilstm_moe/bidirectional_92/forward_lstm_92/while/Less:z:0*
T0
*
_output_shapes
: "І
?topk_bilstm_moe_bidirectional_92_forward_lstm_92_while_identityHtopk_bilstm_moe/bidirectional_92/forward_lstm_92/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : ::: :::::{ w

_output_shapes
: 
]
_user_specified_nameECtopk_bilstm_moe/bidirectional_92/forward_lstm_92/while/loop_counter:Ђ}

_output_shapes
: 
c
_user_specified_nameKItopk_bilstm_moe/bidirectional_92/forward_lstm_92/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

::$ 

_output_shapes

::xt

_output_shapes
: 
Z
_user_specified_nameB@topk_bilstm_moe/bidirectional_92/forward_lstm_92/strided_slice_1:

_output_shapes
:
Д	
Я
L__inference_sequential_392_layer_call_and_return_conditional_losses_28633691
dense_577_input$
dense_577_28633685: 
dense_577_28633687:
identityѕб!dense_577/StatefulPartitionedCallЄ
!dense_577/StatefulPartitionedCallStatefulPartitionedCalldense_577_inputdense_577_28633685dense_577_28633687*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_dense_577_layer_call_and_return_conditional_losses_28633675}
IdentityIdentity*dense_577/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         F
NoOpNoOp"^dense_577/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         : : 2F
!dense_577/StatefulPartitionedCall!dense_577/StatefulPartitionedCall:\ X
+
_output_shapes
:         
)
_user_specified_namedense_577_input:($
"
_user_specified_name
28633685:($
"
_user_specified_name
28633687
Г
Д
1__inference_sequential_402_layer_call_fn_28633852
dense_587_input
unknown:
	unknown_0:
identityѕбStatefulPartitionedCallЬ
StatefulPartitionedCallStatefulPartitionedCalldense_587_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *U
fPRN
L__inference_sequential_402_layer_call_and_return_conditional_losses_28633834s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
+
_output_shapes
:         
)
_user_specified_namedense_587_input:($
"
_user_specified_name
28633846:($
"
_user_specified_name
28633848
Б
ђ
G__inference_lstm_cell_layer_call_and_return_conditional_losses_28634503

inputs

states
states_10
matmul_readvariableop_resource: 2
 matmul_1_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity

identity_1

identity_2ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:          r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         N
ReluRelusplit:output:2*
T0*'
_output_shapes
:         _
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         m
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :         :         : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:OK
'
_output_shapes
:         
 
_user_specified_namestates:OK
'
_output_shapes
:         
 
_user_specified_namestates:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
У8
▒
while_body_28638277
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0B
0while_lstm_cell_matmul_readvariableop_resource_0: D
2while_lstm_cell_matmul_1_readvariableop_resource_0: ?
1while_lstm_cell_biasadd_readvariableop_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor@
.while_lstm_cell_matmul_readvariableop_resource: B
0while_lstm_cell_matmul_1_readvariableop_resource: =
/while_lstm_cell_biasadd_readvariableop_resource: ѕб&while/lstm_cell/BiasAdd/ReadVariableOpб%while/lstm_cell/MatMul/ReadVariableOpб'while/lstm_cell/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        »
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:                  *
element_dtype0ќ
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0│
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          џ
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0џ
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ћ
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:          ћ
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0Ю
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Т
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitt
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:         v
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:         ђ
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         n
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:         Ј
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:         ё
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:         v
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:         k
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:         Њ
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:         ┬
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         v
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         Б

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
ћ	
Й
2__inference_forward_lstm_92_layer_call_fn_28637899
inputs_0
unknown: 
	unknown_0: 
	unknown_1: 
identityѕбStatefulPartitionedCall■
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *V
fQRO
M__inference_forward_lstm_92_layer_call_and_return_conditional_losses_28634091|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :                  <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs_0:($
"
_user_specified_name
28637891:($
"
_user_specified_name
28637893:($
"
_user_specified_name
28637895
Ў
Ї
#forward_lstm_92_while_cond_28635871<
8forward_lstm_92_while_forward_lstm_92_while_loop_counterB
>forward_lstm_92_while_forward_lstm_92_while_maximum_iterations%
!forward_lstm_92_while_placeholder'
#forward_lstm_92_while_placeholder_1'
#forward_lstm_92_while_placeholder_2'
#forward_lstm_92_while_placeholder_3>
:forward_lstm_92_while_less_forward_lstm_92_strided_slice_1V
Rforward_lstm_92_while_forward_lstm_92_while_cond_28635871___redundant_placeholder0V
Rforward_lstm_92_while_forward_lstm_92_while_cond_28635871___redundant_placeholder1V
Rforward_lstm_92_while_forward_lstm_92_while_cond_28635871___redundant_placeholder2V
Rforward_lstm_92_while_forward_lstm_92_while_cond_28635871___redundant_placeholder3"
forward_lstm_92_while_identity
б
forward_lstm_92/while/LessLess!forward_lstm_92_while_placeholder:forward_lstm_92_while_less_forward_lstm_92_strided_slice_1*
T0*
_output_shapes
: k
forward_lstm_92/while/IdentityIdentityforward_lstm_92/while/Less:z:0*
T0
*
_output_shapes
: "I
forward_lstm_92_while_identity'forward_lstm_92/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : ::: :::::Z V

_output_shapes
: 
<
_user_specified_name$"forward_lstm_92/while/loop_counter:`\

_output_shapes
: 
B
_user_specified_name*(forward_lstm_92/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

::$ 

_output_shapes

::WS

_output_shapes
: 
9
_user_specified_name!forward_lstm_92/strided_slice_1:

_output_shapes
:
И
А
$backward_lstm_92_while_cond_28636012>
:backward_lstm_92_while_backward_lstm_92_while_loop_counterD
@backward_lstm_92_while_backward_lstm_92_while_maximum_iterations&
"backward_lstm_92_while_placeholder(
$backward_lstm_92_while_placeholder_1(
$backward_lstm_92_while_placeholder_2(
$backward_lstm_92_while_placeholder_3@
<backward_lstm_92_while_less_backward_lstm_92_strided_slice_1X
Tbackward_lstm_92_while_backward_lstm_92_while_cond_28636012___redundant_placeholder0X
Tbackward_lstm_92_while_backward_lstm_92_while_cond_28636012___redundant_placeholder1X
Tbackward_lstm_92_while_backward_lstm_92_while_cond_28636012___redundant_placeholder2X
Tbackward_lstm_92_while_backward_lstm_92_while_cond_28636012___redundant_placeholder3#
backward_lstm_92_while_identity
д
backward_lstm_92/while/LessLess"backward_lstm_92_while_placeholder<backward_lstm_92_while_less_backward_lstm_92_strided_slice_1*
T0*
_output_shapes
: m
backward_lstm_92/while/IdentityIdentitybackward_lstm_92/while/Less:z:0*
T0
*
_output_shapes
: "K
backward_lstm_92_while_identity(backward_lstm_92/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : ::: :::::[ W

_output_shapes
: 
=
_user_specified_name%#backward_lstm_92/while/loop_counter:a]

_output_shapes
: 
C
_user_specified_name+)backward_lstm_92/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

::$ 

_output_shapes

::XT

_output_shapes
: 
:
_user_specified_name" backward_lstm_92/strided_slice_1:

_output_shapes
:
Т
q
G__inference_lambda_96_layer_call_and_return_conditional_losses_28635773

inputs
inputs_1
identity|
einsum/EinsumEinsuminputsinputs_1*
N*
T0*"
_output_shapes
:*
equationabc,abcd->abdY
IdentityIdentityeinsum/Einsum:output:0*
T0*"
_output_shapes
:"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :::J F
"
_output_shapes
:
 
_user_specified_nameinputs:NJ
&
_output_shapes
:
 
_user_specified_nameinputs
▀8
▒
while_body_28638754
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0B
0while_lstm_cell_matmul_readvariableop_resource_0: D
2while_lstm_cell_matmul_1_readvariableop_resource_0: ?
1while_lstm_cell_biasadd_readvariableop_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor@
.while_lstm_cell_matmul_readvariableop_resource: B
0while_lstm_cell_matmul_1_readvariableop_resource: =
/while_lstm_cell_biasadd_readvariableop_resource: ѕб&while/lstm_cell/BiasAdd/ReadVariableOpб%while/lstm_cell/MatMul/ReadVariableOpб'while/lstm_cell/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0ќ
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0│
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          џ
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0џ
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ћ
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:          ћ
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0Ю
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Т
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitt
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:         v
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:         ђ
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         n
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:         Ј
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:         ё
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:         v
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:         k
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:         Њ
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:         ┬
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         v
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         Б

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
њ
X
,__inference_lambda_96_layer_call_fn_28636385
inputs_0
inputs_1
identity║
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
:* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_lambda_96_layer_call_and_return_conditional_losses_28635375[
IdentityIdentityPartitionedCall:output:0*
T0*"
_output_shapes
:"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :::L H
"
_output_shapes
:
"
_user_specified_name
inputs_0:PL
&
_output_shapes
:
"
_user_specified_name
inputs_1
Й
▄
2__inference_topk_bilstm_moe_layer_call_fn_28636169
input_3
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9: 

unknown_10: 

unknown_11: 

unknown_12: 

unknown_13: 

unknown_14: 

unknown_15:	ђ

unknown_16:
identityѕбStatefulPartitionedCall▒
StatefulPartitionedCallStatefulPartitionedCallinput_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*4
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8ѓ *V
fQRO
M__inference_topk_bilstm_moe_layer_call_and_return_conditional_losses_28635753f
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:: : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:K G
"
_output_shapes
:
!
_user_specified_name	input_3:($
"
_user_specified_name
28636131:($
"
_user_specified_name
28636133:($
"
_user_specified_name
28636135:($
"
_user_specified_name
28636137:($
"
_user_specified_name
28636139:($
"
_user_specified_name
28636141:($
"
_user_specified_name
28636143:($
"
_user_specified_name
28636145:(	$
"
_user_specified_name
28636147:(
$
"
_user_specified_name
28636149:($
"
_user_specified_name
28636151:($
"
_user_specified_name
28636153:($
"
_user_specified_name
28636155:($
"
_user_specified_name
28636157:($
"
_user_specified_name
28636159:($
"
_user_specified_name
28636161:($
"
_user_specified_name
28636163:($
"
_user_specified_name
28636165
їJ
њ
M__inference_forward_lstm_92_layer_call_and_return_conditional_losses_28638075
inputs_0:
(lstm_cell_matmul_readvariableop_resource: <
*lstm_cell_matmul_1_readvariableop_resource: 7
)lstm_cell_biasadd_readvariableop_resource: 
identityѕб lstm_cell/BiasAdd/ReadVariableOpбlstm_cell/MatMul/ReadVariableOpб!lstm_cell/MatMul_1/ReadVariableOpбwhileK
ShapeShapeinputs_0*
T0*
_output_shapes
::ь¤]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :                  R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::ь¤_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskѕ
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes

: *
dtype0Ј
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ї
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0Ѕ
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ѓ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:          є
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0І
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          [
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:         j
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:         q
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         b
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:         }
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:         r
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:         j
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:         _
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:         Ђ
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:         n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Я
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_28637991*
condR
while_cond_28637990*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                  Њ
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs_0:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
▀8
▒
while_body_28637991
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0B
0while_lstm_cell_matmul_readvariableop_resource_0: D
2while_lstm_cell_matmul_1_readvariableop_resource_0: ?
1while_lstm_cell_biasadd_readvariableop_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor@
.while_lstm_cell_matmul_readvariableop_resource: B
0while_lstm_cell_matmul_1_readvariableop_resource: =
/while_lstm_cell_biasadd_readvariableop_resource: ѕб&while/lstm_cell/BiasAdd/ReadVariableOpб%while/lstm_cell/MatMul/ReadVariableOpб'while/lstm_cell/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0ќ
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0│
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          џ
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0џ
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ћ
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:          ћ
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0Ю
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Т
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitt
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:         v
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:         ђ
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         n
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:         Ј
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:         ё
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:         v
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:         k
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:         Њ
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:         ┬
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         v
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         Б

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
лK
Л
$backward_lstm_92_while_body_28637295>
:backward_lstm_92_while_backward_lstm_92_while_loop_counterD
@backward_lstm_92_while_backward_lstm_92_while_maximum_iterations&
"backward_lstm_92_while_placeholder(
$backward_lstm_92_while_placeholder_1(
$backward_lstm_92_while_placeholder_2(
$backward_lstm_92_while_placeholder_3=
9backward_lstm_92_while_backward_lstm_92_strided_slice_1_0y
ubackward_lstm_92_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_92_tensorarrayunstack_tensorlistfromtensor_0S
Abackward_lstm_92_while_lstm_cell_matmul_readvariableop_resource_0: U
Cbackward_lstm_92_while_lstm_cell_matmul_1_readvariableop_resource_0: P
Bbackward_lstm_92_while_lstm_cell_biasadd_readvariableop_resource_0: #
backward_lstm_92_while_identity%
!backward_lstm_92_while_identity_1%
!backward_lstm_92_while_identity_2%
!backward_lstm_92_while_identity_3%
!backward_lstm_92_while_identity_4%
!backward_lstm_92_while_identity_5;
7backward_lstm_92_while_backward_lstm_92_strided_slice_1w
sbackward_lstm_92_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_92_tensorarrayunstack_tensorlistfromtensorQ
?backward_lstm_92_while_lstm_cell_matmul_readvariableop_resource: S
Abackward_lstm_92_while_lstm_cell_matmul_1_readvariableop_resource: N
@backward_lstm_92_while_lstm_cell_biasadd_readvariableop_resource: ѕб7backward_lstm_92/while/lstm_cell/BiasAdd/ReadVariableOpб6backward_lstm_92/while/lstm_cell/MatMul/ReadVariableOpб8backward_lstm_92/while/lstm_cell/MatMul_1/ReadVariableOpЎ
Hbackward_lstm_92/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      Ы
:backward_lstm_92/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemubackward_lstm_92_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_92_tensorarrayunstack_tensorlistfromtensor_0"backward_lstm_92_while_placeholderQbackward_lstm_92/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

:*
element_dtype0И
6backward_lstm_92/while/lstm_cell/MatMul/ReadVariableOpReadVariableOpAbackward_lstm_92_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0П
'backward_lstm_92/while/lstm_cell/MatMulMatMulAbackward_lstm_92/while/TensorArrayV2Read/TensorListGetItem:item:0>backward_lstm_92/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

: ╝
8backward_lstm_92/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpCbackward_lstm_92_while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0─
)backward_lstm_92/while/lstm_cell/MatMul_1MatMul$backward_lstm_92_while_placeholder_2@backward_lstm_92/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes

: Й
$backward_lstm_92/while/lstm_cell/addAddV21backward_lstm_92/while/lstm_cell/MatMul:product:03backward_lstm_92/while/lstm_cell/MatMul_1:product:0*
T0*
_output_shapes

: Х
7backward_lstm_92/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOpBbackward_lstm_92_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0К
(backward_lstm_92/while/lstm_cell/BiasAddBiasAdd(backward_lstm_92/while/lstm_cell/add:z:0?backward_lstm_92/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

: r
0backward_lstm_92/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ш
&backward_lstm_92/while/lstm_cell/splitSplit9backward_lstm_92/while/lstm_cell/split/split_dim:output:01backward_lstm_92/while/lstm_cell/BiasAdd:output:0*
T0*<
_output_shapes*
(::::*
	num_splitЇ
(backward_lstm_92/while/lstm_cell/SigmoidSigmoid/backward_lstm_92/while/lstm_cell/split:output:0*
T0*
_output_shapes

:Ј
*backward_lstm_92/while/lstm_cell/Sigmoid_1Sigmoid/backward_lstm_92/while/lstm_cell/split:output:1*
T0*
_output_shapes

:ф
$backward_lstm_92/while/lstm_cell/mulMul.backward_lstm_92/while/lstm_cell/Sigmoid_1:y:0$backward_lstm_92_while_placeholder_3*
T0*
_output_shapes

:Є
%backward_lstm_92/while/lstm_cell/ReluRelu/backward_lstm_92/while/lstm_cell/split:output:2*
T0*
_output_shapes

:╣
&backward_lstm_92/while/lstm_cell/mul_1Mul,backward_lstm_92/while/lstm_cell/Sigmoid:y:03backward_lstm_92/while/lstm_cell/Relu:activations:0*
T0*
_output_shapes

:«
&backward_lstm_92/while/lstm_cell/add_1AddV2(backward_lstm_92/while/lstm_cell/mul:z:0*backward_lstm_92/while/lstm_cell/mul_1:z:0*
T0*
_output_shapes

:Ј
*backward_lstm_92/while/lstm_cell/Sigmoid_2Sigmoid/backward_lstm_92/while/lstm_cell/split:output:3*
T0*
_output_shapes

:ё
'backward_lstm_92/while/lstm_cell/Relu_1Relu*backward_lstm_92/while/lstm_cell/add_1:z:0*
T0*
_output_shapes

:й
&backward_lstm_92/while/lstm_cell/mul_2Mul.backward_lstm_92/while/lstm_cell/Sigmoid_2:y:05backward_lstm_92/while/lstm_cell/Relu_1:activations:0*
T0*
_output_shapes

:є
;backward_lstm_92/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem$backward_lstm_92_while_placeholder_1"backward_lstm_92_while_placeholder*backward_lstm_92/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУм^
backward_lstm_92/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Ј
backward_lstm_92/while/addAddV2"backward_lstm_92_while_placeholder%backward_lstm_92/while/add/y:output:0*
T0*
_output_shapes
: `
backward_lstm_92/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Ф
backward_lstm_92/while/add_1AddV2:backward_lstm_92_while_backward_lstm_92_while_loop_counter'backward_lstm_92/while/add_1/y:output:0*
T0*
_output_shapes
: ї
backward_lstm_92/while/IdentityIdentity backward_lstm_92/while/add_1:z:0^backward_lstm_92/while/NoOp*
T0*
_output_shapes
: «
!backward_lstm_92/while/Identity_1Identity@backward_lstm_92_while_backward_lstm_92_while_maximum_iterations^backward_lstm_92/while/NoOp*
T0*
_output_shapes
: ї
!backward_lstm_92/while/Identity_2Identitybackward_lstm_92/while/add:z:0^backward_lstm_92/while/NoOp*
T0*
_output_shapes
: ╣
!backward_lstm_92/while/Identity_3IdentityKbackward_lstm_92/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^backward_lstm_92/while/NoOp*
T0*
_output_shapes
: а
!backward_lstm_92/while/Identity_4Identity*backward_lstm_92/while/lstm_cell/mul_2:z:0^backward_lstm_92/while/NoOp*
T0*
_output_shapes

:а
!backward_lstm_92/while/Identity_5Identity*backward_lstm_92/while/lstm_cell/add_1:z:0^backward_lstm_92/while/NoOp*
T0*
_output_shapes

:у
backward_lstm_92/while/NoOpNoOp8^backward_lstm_92/while/lstm_cell/BiasAdd/ReadVariableOp7^backward_lstm_92/while/lstm_cell/MatMul/ReadVariableOp9^backward_lstm_92/while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "t
7backward_lstm_92_while_backward_lstm_92_strided_slice_19backward_lstm_92_while_backward_lstm_92_strided_slice_1_0"K
backward_lstm_92_while_identity(backward_lstm_92/while/Identity:output:0"O
!backward_lstm_92_while_identity_1*backward_lstm_92/while/Identity_1:output:0"O
!backward_lstm_92_while_identity_2*backward_lstm_92/while/Identity_2:output:0"O
!backward_lstm_92_while_identity_3*backward_lstm_92/while/Identity_3:output:0"O
!backward_lstm_92_while_identity_4*backward_lstm_92/while/Identity_4:output:0"O
!backward_lstm_92_while_identity_5*backward_lstm_92/while/Identity_5:output:0"є
@backward_lstm_92_while_lstm_cell_biasadd_readvariableop_resourceBbackward_lstm_92_while_lstm_cell_biasadd_readvariableop_resource_0"ѕ
Abackward_lstm_92_while_lstm_cell_matmul_1_readvariableop_resourceCbackward_lstm_92_while_lstm_cell_matmul_1_readvariableop_resource_0"ё
?backward_lstm_92_while_lstm_cell_matmul_readvariableop_resourceAbackward_lstm_92_while_lstm_cell_matmul_readvariableop_resource_0"В
sbackward_lstm_92_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_92_tensorarrayunstack_tensorlistfromtensorubackward_lstm_92_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_92_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : ::: : : : : 2r
7backward_lstm_92/while/lstm_cell/BiasAdd/ReadVariableOp7backward_lstm_92/while/lstm_cell/BiasAdd/ReadVariableOp2p
6backward_lstm_92/while/lstm_cell/MatMul/ReadVariableOp6backward_lstm_92/while/lstm_cell/MatMul/ReadVariableOp2t
8backward_lstm_92/while/lstm_cell/MatMul_1/ReadVariableOp8backward_lstm_92/while/lstm_cell/MatMul_1/ReadVariableOp:[ W

_output_shapes
: 
=
_user_specified_name%#backward_lstm_92/while/loop_counter:a]

_output_shapes
: 
C
_user_specified_name+)backward_lstm_92/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

::$ 

_output_shapes

::XT

_output_shapes
: 
:
_user_specified_name" backward_lstm_92/strided_slice_1:pl

_output_shapes
: 
R
_user_specified_name:8backward_lstm_92/TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
ыH
ѕ	
M__inference_topk_bilstm_moe_layer_call_and_return_conditional_losses_28635753
input_3$
dense_576_28635358: 
dense_576_28635360:)
sequential_392_28635388:%
sequential_392_28635390:)
sequential_397_28635393:%
sequential_397_28635395:)
sequential_402_28635398:%
sequential_402_28635400:)
sequential_407_28635403:%
sequential_407_28635405:+
bidirectional_92_28635704: +
bidirectional_92_28635706: '
bidirectional_92_28635708: +
bidirectional_92_28635710: +
bidirectional_92_28635712: '
bidirectional_92_28635714: %
dense_593_28635747:	ђ 
dense_593_28635749:
identityѕб(bidirectional_92/StatefulPartitionedCallб!dense_576/StatefulPartitionedCallб!dense_593/StatefulPartitionedCallб"dropout_92/StatefulPartitionedCallб&sequential_392/StatefulPartitionedCallб&sequential_397/StatefulPartitionedCallб&sequential_402/StatefulPartitionedCallб&sequential_407/StatefulPartitionedCallШ
!dense_576/StatefulPartitionedCallStatefulPartitionedCallinput_3dense_576_28635358dense_576_28635360*
Tin
2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_dense_576_layer_call_and_return_conditional_losses_28635357Z
tf.math.top_k_2/TopKV2/kConst*
_output_shapes
: *
dtype0*
value	B :ф
tf.math.top_k_2/TopKV2TopKV2*dense_576/StatefulPartitionedCall:output:0!tf.math.top_k_2/TopKV2/k:output:0*
T0*0
_output_shapes
::b
tf.one_hot_2/one_hot/on_valueConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?c
tf.one_hot_2/one_hot/off_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    \
tf.one_hot_2/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :ы
tf.one_hot_2/one_hotOneHot tf.math.top_k_2/TopKV2:indices:0#tf.one_hot_2/one_hot/depth:output:0&tf.one_hot_2/one_hot/on_value:output:0'tf.one_hot_2/one_hot/off_value:output:0*
T0*
TI0*&
_output_shapes
:­
lambda_96/PartitionedCallPartitionedCalltf.math.top_k_2/TopKV2:values:0tf.one_hot_2/one_hot:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
:* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_lambda_96_layer_call_and_return_conditional_losses_28635375р
lambda_97/PartitionedCallPartitionedCallinput_3"lambda_96/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *&
_output_shapes
:* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_lambda_97_layer_call_and_return_conditional_losses_28635382ц
tf.unstack_2/unstackUnpack"lambda_97/PartitionedCall:output:0*
T0*L
_output_shapes:
8::::*	
numа
&sequential_392/StatefulPartitionedCallStatefulPartitionedCalltf.unstack_2/unstack:output:0sequential_392_28635388sequential_392_28635390*
Tin
2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *U
fPRN
L__inference_sequential_392_layer_call_and_return_conditional_losses_28633682а
&sequential_397/StatefulPartitionedCallStatefulPartitionedCalltf.unstack_2/unstack:output:1sequential_397_28635393sequential_397_28635395*
Tin
2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *U
fPRN
L__inference_sequential_397_layer_call_and_return_conditional_losses_28633758а
&sequential_402/StatefulPartitionedCallStatefulPartitionedCalltf.unstack_2/unstack:output:2sequential_402_28635398sequential_402_28635400*
Tin
2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *U
fPRN
L__inference_sequential_402_layer_call_and_return_conditional_losses_28633834а
&sequential_407/StatefulPartitionedCallStatefulPartitionedCalltf.unstack_2/unstack:output:3sequential_407_28635403sequential_407_28635405*
Tin
2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *U
fPRN
L__inference_sequential_407_layer_call_and_return_conditional_losses_28633910Б
tf.stack_93/stackPack/sequential_392/StatefulPartitionedCall:output:0/sequential_397/StatefulPartitionedCall:output:0/sequential_402/StatefulPartitionedCall:output:0/sequential_407/StatefulPartitionedCall:output:0*
N*
T0*&
_output_shapes
:*

axis­
lambda_98/PartitionedCallPartitionedCalltf.stack_93/stack:output:0"lambda_96/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
:* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_lambda_98_layer_call_and_return_conditional_losses_28635414А
(bidirectional_92/StatefulPartitionedCallStatefulPartitionedCall"lambda_98/PartitionedCall:output:0bidirectional_92_28635704bidirectional_92_28635706bidirectional_92_28635708bidirectional_92_28635710bidirectional_92_28635712bidirectional_92_28635714*
Tin
	2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
:*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8ѓ *W
fRRP
N__inference_bidirectional_92_layer_call_and_return_conditional_losses_28635703З
"dropout_92/StatefulPartitionedCallStatefulPartitionedCall1bidirectional_92/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
:* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *Q
fLRJ
H__inference_dropout_92_layer_call_and_return_conditional_losses_28635728█
flatten_92/PartitionedCallPartitionedCall+dropout_92/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	ђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *Q
fLRJ
H__inference_flatten_92_layer_call_and_return_conditional_losses_28635735ј
!dense_593/StatefulPartitionedCallStatefulPartitionedCall#flatten_92/PartitionedCall:output:0dense_593_28635747dense_593_28635749*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_dense_593_layer_call_and_return_conditional_losses_28635746p
IdentityIdentity*dense_593/StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:я
NoOpNoOp)^bidirectional_92/StatefulPartitionedCall"^dense_576/StatefulPartitionedCall"^dense_593/StatefulPartitionedCall#^dropout_92/StatefulPartitionedCall'^sequential_392/StatefulPartitionedCall'^sequential_397/StatefulPartitionedCall'^sequential_402/StatefulPartitionedCall'^sequential_407/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:: : : : : : : : : : : : : : : : : : 2T
(bidirectional_92/StatefulPartitionedCall(bidirectional_92/StatefulPartitionedCall2F
!dense_576/StatefulPartitionedCall!dense_576/StatefulPartitionedCall2F
!dense_593/StatefulPartitionedCall!dense_593/StatefulPartitionedCall2H
"dropout_92/StatefulPartitionedCall"dropout_92/StatefulPartitionedCall2P
&sequential_392/StatefulPartitionedCall&sequential_392/StatefulPartitionedCall2P
&sequential_397/StatefulPartitionedCall&sequential_397/StatefulPartitionedCall2P
&sequential_402/StatefulPartitionedCall&sequential_402/StatefulPartitionedCall2P
&sequential_407/StatefulPartitionedCall&sequential_407/StatefulPartitionedCall:K G
"
_output_shapes
:
!
_user_specified_name	input_3:($
"
_user_specified_name
28635358:($
"
_user_specified_name
28635360:($
"
_user_specified_name
28635388:($
"
_user_specified_name
28635390:($
"
_user_specified_name
28635393:($
"
_user_specified_name
28635395:($
"
_user_specified_name
28635398:($
"
_user_specified_name
28635400:(	$
"
_user_specified_name
28635403:(
$
"
_user_specified_name
28635405:($
"
_user_specified_name
28635704:($
"
_user_specified_name
28635706:($
"
_user_specified_name
28635708:($
"
_user_specified_name
28635710:($
"
_user_specified_name
28635712:($
"
_user_specified_name
28635714:($
"
_user_specified_name
28635747:($
"
_user_specified_name
28635749
П8
є
M__inference_forward_lstm_92_layer_call_and_return_conditional_losses_28634236

inputs$
lstm_cell_28634154: $
lstm_cell_28634156:  
lstm_cell_28634158: 
identityѕб!lstm_cell/StatefulPartitionedCallбwhileI
ShapeShapeinputs*
T0*
_output_shapes
::ь¤]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::ь¤_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskЬ
!lstm_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_28634154lstm_cell_28634156lstm_cell_28634158*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         :         :         *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_lstm_cell_layer_call_and_return_conditional_losses_28634153n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Џ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_28634154lstm_cell_28634156lstm_cell_28634158*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_28634167*
condR
while_cond_28634166*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                  N
NoOpNoOp"^lstm_cell/StatefulPartitionedCall^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2F
!lstm_cell/StatefulPartitionedCall!lstm_cell/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs:($
"
_user_specified_name
28634154:($
"
_user_specified_name
28634156:($
"
_user_specified_name
28634158
к
┴
Etopk_bilstm_moe_bidirectional_92_backward_lstm_92_while_cond_28633544ђ
|topk_bilstm_moe_bidirectional_92_backward_lstm_92_while_topk_bilstm_moe_bidirectional_92_backward_lstm_92_while_loop_counterЄ
ѓtopk_bilstm_moe_bidirectional_92_backward_lstm_92_while_topk_bilstm_moe_bidirectional_92_backward_lstm_92_while_maximum_iterationsG
Ctopk_bilstm_moe_bidirectional_92_backward_lstm_92_while_placeholderI
Etopk_bilstm_moe_bidirectional_92_backward_lstm_92_while_placeholder_1I
Etopk_bilstm_moe_bidirectional_92_backward_lstm_92_while_placeholder_2I
Etopk_bilstm_moe_bidirectional_92_backward_lstm_92_while_placeholder_3ѓ
~topk_bilstm_moe_bidirectional_92_backward_lstm_92_while_less_topk_bilstm_moe_bidirectional_92_backward_lstm_92_strided_slice_1Џ
ќtopk_bilstm_moe_bidirectional_92_backward_lstm_92_while_topk_bilstm_moe_bidirectional_92_backward_lstm_92_while_cond_28633544___redundant_placeholder0Џ
ќtopk_bilstm_moe_bidirectional_92_backward_lstm_92_while_topk_bilstm_moe_bidirectional_92_backward_lstm_92_while_cond_28633544___redundant_placeholder1Џ
ќtopk_bilstm_moe_bidirectional_92_backward_lstm_92_while_topk_bilstm_moe_bidirectional_92_backward_lstm_92_while_cond_28633544___redundant_placeholder2Џ
ќtopk_bilstm_moe_bidirectional_92_backward_lstm_92_while_topk_bilstm_moe_bidirectional_92_backward_lstm_92_while_cond_28633544___redundant_placeholder3D
@topk_bilstm_moe_bidirectional_92_backward_lstm_92_while_identity
ф
<topk_bilstm_moe/bidirectional_92/backward_lstm_92/while/LessLessCtopk_bilstm_moe_bidirectional_92_backward_lstm_92_while_placeholder~topk_bilstm_moe_bidirectional_92_backward_lstm_92_while_less_topk_bilstm_moe_bidirectional_92_backward_lstm_92_strided_slice_1*
T0*
_output_shapes
: »
@topk_bilstm_moe/bidirectional_92/backward_lstm_92/while/IdentityIdentity@topk_bilstm_moe/bidirectional_92/backward_lstm_92/while/Less:z:0*
T0
*
_output_shapes
: "Ї
@topk_bilstm_moe_bidirectional_92_backward_lstm_92_while_identityItopk_bilstm_moe/bidirectional_92/backward_lstm_92/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : ::: :::::| x

_output_shapes
: 
^
_user_specified_nameFDtopk_bilstm_moe/bidirectional_92/backward_lstm_92/while/loop_counter:ѓ~

_output_shapes
: 
d
_user_specified_nameLJtopk_bilstm_moe/bidirectional_92/backward_lstm_92/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

::$ 

_output_shapes

::yu

_output_shapes
: 
[
_user_specified_nameCAtopk_bilstm_moe/bidirectional_92/backward_lstm_92/strided_slice_1:

_output_shapes
:
У8
▒
while_body_28638899
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0B
0while_lstm_cell_matmul_readvariableop_resource_0: D
2while_lstm_cell_matmul_1_readvariableop_resource_0: ?
1while_lstm_cell_biasadd_readvariableop_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor@
.while_lstm_cell_matmul_readvariableop_resource: B
0while_lstm_cell_matmul_1_readvariableop_resource: =
/while_lstm_cell_biasadd_readvariableop_resource: ѕб&while/lstm_cell/BiasAdd/ReadVariableOpб%while/lstm_cell/MatMul/ReadVariableOpб'while/lstm_cell/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        »
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:                  *
element_dtype0ќ
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0│
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          џ
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0џ
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ћ
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:          ћ
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0Ю
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Т
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitt
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:         v
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:         ђ
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         n
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:         Ј
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:         ё
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:         v
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:         k
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:         Њ
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:         ┬
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         v
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         Б

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
вK
Њ
N__inference_backward_lstm_92_layer_call_and_return_conditional_losses_28638693
inputs_0:
(lstm_cell_matmul_readvariableop_resource: <
*lstm_cell_matmul_1_readvariableop_resource: 7
)lstm_cell_biasadd_readvariableop_resource: 
identityѕб lstm_cell/BiasAdd/ReadVariableOpбlstm_cell/MatMul/ReadVariableOpб!lstm_cell/MatMul_1/ReadVariableOpбwhileK
ShapeShapeinputs_0*
T0*
_output_shapes
::ь¤]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :                  R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::ь¤_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмX
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: }
	ReverseV2	ReverseV2transpose:y:0ReverseV2/axis:output:0*
T0*4
_output_shapes"
 :                  є
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       т
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensorReverseV2:output:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskѕ
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes

: *
dtype0Ј
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ї
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0Ѕ
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ѓ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:          є
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0І
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          [
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:         j
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:         q
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         b
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:         }
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:         r
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:         j
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:         _
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:         Ђ
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:         n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Я
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_28638609*
condR
while_cond_28638608*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                  Њ
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs_0:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
у
q
G__inference_lambda_97_layer_call_and_return_conditional_losses_28635382

inputs
inputs_1
identityђ
einsum/EinsumEinsuminputsinputs_1*
N*
T0*&
_output_shapes
:*
equationabc,abd->dabc]
IdentityIdentityeinsum/Einsum:output:0*
T0*&
_output_shapes
:"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:::J F
"
_output_shapes
:
 
_user_specified_nameinputs:JF
"
_output_shapes
:
 
_user_specified_nameinputs
С
■
G__inference_dense_587_layer_call_and_return_conditional_losses_28637848

inputs3
!tensordot_readvariableop_resource:-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбTensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       S
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
::ь¤Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ╗
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ┐
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ю
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:         і
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:                  і
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         [
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Д
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Ѓ
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:         T
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:         e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:         V
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:         
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
б	
й
3__inference_backward_lstm_92_layer_call_fn_28638548

inputs
unknown: 
	unknown_0: 
	unknown_1: 
identityѕбStatefulPartitionedCall§
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *W
fRRP
N__inference_backward_lstm_92_layer_call_and_return_conditional_losses_28635249|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :                  <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'                           : : : 22
StatefulPartitionedCallStatefulPartitionedCall:e a
=
_output_shapes+
):'                           
 
_user_specified_nameinputs:($
"
_user_specified_name
28638540:($
"
_user_specified_name
28638542:($
"
_user_specified_name
28638544
╠	
═
while_cond_28634516
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_16
2while_while_cond_28634516___redundant_placeholder06
2while_while_cond_28634516___redundant_placeholder16
2while_while_cond_28634516___redundant_placeholder26
2while_while_cond_28634516___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
њ
X
,__inference_lambda_96_layer_call_fn_28636391
inputs_0
inputs_1
identity║
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
:* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_lambda_96_layer_call_and_return_conditional_losses_28635773[
IdentityIdentityPartitionedCall:output:0*
T0*"
_output_shapes
:"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :::L H
"
_output_shapes
:
"
_user_specified_name
inputs_0:PL
&
_output_shapes
:
"
_user_specified_name
inputs_1
╝:
Є
N__inference_backward_lstm_92_layer_call_and_return_conditional_losses_28634586

inputs$
lstm_cell_28634504: $
lstm_cell_28634506:  
lstm_cell_28634508: 
identityѕб!lstm_cell/StatefulPartitionedCallбwhileI
ShapeShapeinputs*
T0*
_output_shapes
::ь¤]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::ь¤_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмX
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: }
	ReverseV2	ReverseV2transpose:y:0ReverseV2/axis:output:0*
T0*4
_output_shapes"
 :                  є
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       т
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensorReverseV2:output:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskЬ
!lstm_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_28634504lstm_cell_28634506lstm_cell_28634508*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         :         :         *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_lstm_cell_layer_call_and_return_conditional_losses_28634503n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Џ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_28634504lstm_cell_28634506lstm_cell_28634508*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_28634517*
condR
while_cond_28634516*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                  N
NoOpNoOp"^lstm_cell/StatefulPartitionedCall^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2F
!lstm_cell/StatefulPartitionedCall!lstm_cell/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs:($
"
_user_specified_name
28634504:($
"
_user_specified_name
28634506:($
"
_user_specified_name
28634508
└
Ы
,__inference_lstm_cell_layer_call_fn_28639260

inputs
states_0
states_1
unknown: 
	unknown_0: 
	unknown_1: 
identity

identity_1

identity_2ѕбStatefulPartitionedCallД
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         :         :         *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_lstm_cell_layer_call_and_return_conditional_losses_28634503o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:         q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :         :         : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:QM
'
_output_shapes
:         
"
_user_specified_name
states_0:QM
'
_output_shapes
:         
"
_user_specified_name
states_1:($
"
_user_specified_name
28639248:($
"
_user_specified_name
28639250:($
"
_user_specified_name
28639252
ЌL
▒
#forward_lstm_92_while_body_28636866<
8forward_lstm_92_while_forward_lstm_92_while_loop_counterB
>forward_lstm_92_while_forward_lstm_92_while_maximum_iterations%
!forward_lstm_92_while_placeholder'
#forward_lstm_92_while_placeholder_1'
#forward_lstm_92_while_placeholder_2'
#forward_lstm_92_while_placeholder_3;
7forward_lstm_92_while_forward_lstm_92_strided_slice_1_0w
sforward_lstm_92_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_92_tensorarrayunstack_tensorlistfromtensor_0R
@forward_lstm_92_while_lstm_cell_matmul_readvariableop_resource_0: T
Bforward_lstm_92_while_lstm_cell_matmul_1_readvariableop_resource_0: O
Aforward_lstm_92_while_lstm_cell_biasadd_readvariableop_resource_0: "
forward_lstm_92_while_identity$
 forward_lstm_92_while_identity_1$
 forward_lstm_92_while_identity_2$
 forward_lstm_92_while_identity_3$
 forward_lstm_92_while_identity_4$
 forward_lstm_92_while_identity_59
5forward_lstm_92_while_forward_lstm_92_strided_slice_1u
qforward_lstm_92_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_92_tensorarrayunstack_tensorlistfromtensorP
>forward_lstm_92_while_lstm_cell_matmul_readvariableop_resource: R
@forward_lstm_92_while_lstm_cell_matmul_1_readvariableop_resource: M
?forward_lstm_92_while_lstm_cell_biasadd_readvariableop_resource: ѕб6forward_lstm_92/while/lstm_cell/BiasAdd/ReadVariableOpб5forward_lstm_92/while/lstm_cell/MatMul/ReadVariableOpб7forward_lstm_92/while/lstm_cell/MatMul_1/ReadVariableOpў
Gforward_lstm_92/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"         
9forward_lstm_92/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsforward_lstm_92_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_92_tensorarrayunstack_tensorlistfromtensor_0!forward_lstm_92_while_placeholderPforward_lstm_92/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:                  *
element_dtype0Х
5forward_lstm_92/while/lstm_cell/MatMul/ReadVariableOpReadVariableOp@forward_lstm_92_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0с
&forward_lstm_92/while/lstm_cell/MatMulMatMul@forward_lstm_92/while/TensorArrayV2Read/TensorListGetItem:item:0=forward_lstm_92/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ║
7forward_lstm_92/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpBforward_lstm_92_while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0╩
(forward_lstm_92/while/lstm_cell/MatMul_1MatMul#forward_lstm_92_while_placeholder_2?forward_lstm_92/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ─
#forward_lstm_92/while/lstm_cell/addAddV20forward_lstm_92/while/lstm_cell/MatMul:product:02forward_lstm_92/while/lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:          ┤
6forward_lstm_92/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOpAforward_lstm_92_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0═
'forward_lstm_92/while/lstm_cell/BiasAddBiasAdd'forward_lstm_92/while/lstm_cell/add:z:0>forward_lstm_92/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          q
/forward_lstm_92/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ќ
%forward_lstm_92/while/lstm_cell/splitSplit8forward_lstm_92/while/lstm_cell/split/split_dim:output:00forward_lstm_92/while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitћ
'forward_lstm_92/while/lstm_cell/SigmoidSigmoid.forward_lstm_92/while/lstm_cell/split:output:0*
T0*'
_output_shapes
:         ќ
)forward_lstm_92/while/lstm_cell/Sigmoid_1Sigmoid.forward_lstm_92/while/lstm_cell/split:output:1*
T0*'
_output_shapes
:         ░
#forward_lstm_92/while/lstm_cell/mulMul-forward_lstm_92/while/lstm_cell/Sigmoid_1:y:0#forward_lstm_92_while_placeholder_3*
T0*'
_output_shapes
:         ј
$forward_lstm_92/while/lstm_cell/ReluRelu.forward_lstm_92/while/lstm_cell/split:output:2*
T0*'
_output_shapes
:         ┐
%forward_lstm_92/while/lstm_cell/mul_1Mul+forward_lstm_92/while/lstm_cell/Sigmoid:y:02forward_lstm_92/while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:         ┤
%forward_lstm_92/while/lstm_cell/add_1AddV2'forward_lstm_92/while/lstm_cell/mul:z:0)forward_lstm_92/while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:         ќ
)forward_lstm_92/while/lstm_cell/Sigmoid_2Sigmoid.forward_lstm_92/while/lstm_cell/split:output:3*
T0*'
_output_shapes
:         І
&forward_lstm_92/while/lstm_cell/Relu_1Relu)forward_lstm_92/while/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:         ├
%forward_lstm_92/while/lstm_cell/mul_2Mul-forward_lstm_92/while/lstm_cell/Sigmoid_2:y:04forward_lstm_92/while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:         ѓ
:forward_lstm_92/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem#forward_lstm_92_while_placeholder_1!forward_lstm_92_while_placeholder)forward_lstm_92/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУм]
forward_lstm_92/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :ї
forward_lstm_92/while/addAddV2!forward_lstm_92_while_placeholder$forward_lstm_92/while/add/y:output:0*
T0*
_output_shapes
: _
forward_lstm_92/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Д
forward_lstm_92/while/add_1AddV28forward_lstm_92_while_forward_lstm_92_while_loop_counter&forward_lstm_92/while/add_1/y:output:0*
T0*
_output_shapes
: Ѕ
forward_lstm_92/while/IdentityIdentityforward_lstm_92/while/add_1:z:0^forward_lstm_92/while/NoOp*
T0*
_output_shapes
: ф
 forward_lstm_92/while/Identity_1Identity>forward_lstm_92_while_forward_lstm_92_while_maximum_iterations^forward_lstm_92/while/NoOp*
T0*
_output_shapes
: Ѕ
 forward_lstm_92/while/Identity_2Identityforward_lstm_92/while/add:z:0^forward_lstm_92/while/NoOp*
T0*
_output_shapes
: Х
 forward_lstm_92/while/Identity_3IdentityJforward_lstm_92/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^forward_lstm_92/while/NoOp*
T0*
_output_shapes
: д
 forward_lstm_92/while/Identity_4Identity)forward_lstm_92/while/lstm_cell/mul_2:z:0^forward_lstm_92/while/NoOp*
T0*'
_output_shapes
:         д
 forward_lstm_92/while/Identity_5Identity)forward_lstm_92/while/lstm_cell/add_1:z:0^forward_lstm_92/while/NoOp*
T0*'
_output_shapes
:         с
forward_lstm_92/while/NoOpNoOp7^forward_lstm_92/while/lstm_cell/BiasAdd/ReadVariableOp6^forward_lstm_92/while/lstm_cell/MatMul/ReadVariableOp8^forward_lstm_92/while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "p
5forward_lstm_92_while_forward_lstm_92_strided_slice_17forward_lstm_92_while_forward_lstm_92_strided_slice_1_0"I
forward_lstm_92_while_identity'forward_lstm_92/while/Identity:output:0"M
 forward_lstm_92_while_identity_1)forward_lstm_92/while/Identity_1:output:0"M
 forward_lstm_92_while_identity_2)forward_lstm_92/while/Identity_2:output:0"M
 forward_lstm_92_while_identity_3)forward_lstm_92/while/Identity_3:output:0"M
 forward_lstm_92_while_identity_4)forward_lstm_92/while/Identity_4:output:0"M
 forward_lstm_92_while_identity_5)forward_lstm_92/while/Identity_5:output:0"ё
?forward_lstm_92_while_lstm_cell_biasadd_readvariableop_resourceAforward_lstm_92_while_lstm_cell_biasadd_readvariableop_resource_0"є
@forward_lstm_92_while_lstm_cell_matmul_1_readvariableop_resourceBforward_lstm_92_while_lstm_cell_matmul_1_readvariableop_resource_0"ѓ
>forward_lstm_92_while_lstm_cell_matmul_readvariableop_resource@forward_lstm_92_while_lstm_cell_matmul_readvariableop_resource_0"У
qforward_lstm_92_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_92_tensorarrayunstack_tensorlistfromtensorsforward_lstm_92_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_92_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2p
6forward_lstm_92/while/lstm_cell/BiasAdd/ReadVariableOp6forward_lstm_92/while/lstm_cell/BiasAdd/ReadVariableOp2n
5forward_lstm_92/while/lstm_cell/MatMul/ReadVariableOp5forward_lstm_92/while/lstm_cell/MatMul/ReadVariableOp2r
7forward_lstm_92/while/lstm_cell/MatMul_1/ReadVariableOp7forward_lstm_92/while/lstm_cell/MatMul_1/ReadVariableOp:Z V

_output_shapes
: 
<
_user_specified_name$"forward_lstm_92/while/loop_counter:`\

_output_shapes
: 
B
_user_specified_name*(forward_lstm_92/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :WS

_output_shapes
: 
9
_user_specified_name!forward_lstm_92/strided_slice_1:ok

_output_shapes
: 
Q
_user_specified_name97forward_lstm_92/TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
Ф
ѓ
G__inference_lstm_cell_layer_call_and_return_conditional_losses_28639226

inputs
states_0
states_10
matmul_readvariableop_resource: 2
 matmul_1_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity

identity_1

identity_2ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:          r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         N
ReluRelusplit:output:2*
T0*'
_output_shapes
:         _
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         m
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :         :         : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:QM
'
_output_shapes
:         
"
_user_specified_name
states_0:QM
'
_output_shapes
:         
"
_user_specified_name
states_1:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
С$
о
while_body_28634370
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0,
while_lstm_cell_28634394_0: ,
while_lstm_cell_28634396_0: (
while_lstm_cell_28634398_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor*
while_lstm_cell_28634394: *
while_lstm_cell_28634396: &
while_lstm_cell_28634398: ѕб'while/lstm_cell/StatefulPartitionedCallѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0г
'while/lstm_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_28634394_0while_lstm_cell_28634396_0while_lstm_cell_28634398_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         :         :         *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_lstm_cell_layer_call_and_return_conditional_losses_28634356┘
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder0while/lstm_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: Ї
while/Identity_4Identity0while/lstm_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         Ї
while/Identity_5Identity0while/lstm_cell/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:         R

while/NoOpNoOp(^while/lstm_cell/StatefulPartitionedCall*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"6
while_lstm_cell_28634394while_lstm_cell_28634394_0"6
while_lstm_cell_28634396while_lstm_cell_28634396_0"6
while_lstm_cell_28634398while_lstm_cell_28634398_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2R
'while/lstm_cell/StatefulPartitionedCall'while/lstm_cell/StatefulPartitionedCall:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
28634394:(	$
"
_user_specified_name
28634396:(
$
"
_user_specified_name
28634398
╠	
═
while_cond_28634166
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_16
2while_while_cond_28634166___redundant_placeholder06
2while_while_cond_28634166___redundant_placeholder16
2while_while_cond_28634166___redundant_placeholder26
2while_while_cond_28634166___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
С$
о
while_body_28634167
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0,
while_lstm_cell_28634191_0: ,
while_lstm_cell_28634193_0: (
while_lstm_cell_28634195_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor*
while_lstm_cell_28634191: *
while_lstm_cell_28634193: &
while_lstm_cell_28634195: ѕб'while/lstm_cell/StatefulPartitionedCallѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0г
'while/lstm_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_28634191_0while_lstm_cell_28634193_0while_lstm_cell_28634195_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         :         :         *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_lstm_cell_layer_call_and_return_conditional_losses_28634153┘
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder0while/lstm_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: Ї
while/Identity_4Identity0while/lstm_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         Ї
while/Identity_5Identity0while/lstm_cell/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:         R

while/NoOpNoOp(^while/lstm_cell/StatefulPartitionedCall*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"6
while_lstm_cell_28634191while_lstm_cell_28634191_0"6
while_lstm_cell_28634193while_lstm_cell_28634193_0"6
while_lstm_cell_28634195while_lstm_cell_28634195_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2R
'while/lstm_cell/StatefulPartitionedCall'while/lstm_cell/StatefulPartitionedCall:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
28634191:(	$
"
_user_specified_name
28634193:(
$
"
_user_specified_name
28634195
лK
Л
$backward_lstm_92_while_body_28637583>
:backward_lstm_92_while_backward_lstm_92_while_loop_counterD
@backward_lstm_92_while_backward_lstm_92_while_maximum_iterations&
"backward_lstm_92_while_placeholder(
$backward_lstm_92_while_placeholder_1(
$backward_lstm_92_while_placeholder_2(
$backward_lstm_92_while_placeholder_3=
9backward_lstm_92_while_backward_lstm_92_strided_slice_1_0y
ubackward_lstm_92_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_92_tensorarrayunstack_tensorlistfromtensor_0S
Abackward_lstm_92_while_lstm_cell_matmul_readvariableop_resource_0: U
Cbackward_lstm_92_while_lstm_cell_matmul_1_readvariableop_resource_0: P
Bbackward_lstm_92_while_lstm_cell_biasadd_readvariableop_resource_0: #
backward_lstm_92_while_identity%
!backward_lstm_92_while_identity_1%
!backward_lstm_92_while_identity_2%
!backward_lstm_92_while_identity_3%
!backward_lstm_92_while_identity_4%
!backward_lstm_92_while_identity_5;
7backward_lstm_92_while_backward_lstm_92_strided_slice_1w
sbackward_lstm_92_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_92_tensorarrayunstack_tensorlistfromtensorQ
?backward_lstm_92_while_lstm_cell_matmul_readvariableop_resource: S
Abackward_lstm_92_while_lstm_cell_matmul_1_readvariableop_resource: N
@backward_lstm_92_while_lstm_cell_biasadd_readvariableop_resource: ѕб7backward_lstm_92/while/lstm_cell/BiasAdd/ReadVariableOpб6backward_lstm_92/while/lstm_cell/MatMul/ReadVariableOpб8backward_lstm_92/while/lstm_cell/MatMul_1/ReadVariableOpЎ
Hbackward_lstm_92/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      Ы
:backward_lstm_92/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemubackward_lstm_92_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_92_tensorarrayunstack_tensorlistfromtensor_0"backward_lstm_92_while_placeholderQbackward_lstm_92/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

:*
element_dtype0И
6backward_lstm_92/while/lstm_cell/MatMul/ReadVariableOpReadVariableOpAbackward_lstm_92_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0П
'backward_lstm_92/while/lstm_cell/MatMulMatMulAbackward_lstm_92/while/TensorArrayV2Read/TensorListGetItem:item:0>backward_lstm_92/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

: ╝
8backward_lstm_92/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpCbackward_lstm_92_while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0─
)backward_lstm_92/while/lstm_cell/MatMul_1MatMul$backward_lstm_92_while_placeholder_2@backward_lstm_92/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes

: Й
$backward_lstm_92/while/lstm_cell/addAddV21backward_lstm_92/while/lstm_cell/MatMul:product:03backward_lstm_92/while/lstm_cell/MatMul_1:product:0*
T0*
_output_shapes

: Х
7backward_lstm_92/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOpBbackward_lstm_92_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0К
(backward_lstm_92/while/lstm_cell/BiasAddBiasAdd(backward_lstm_92/while/lstm_cell/add:z:0?backward_lstm_92/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

: r
0backward_lstm_92/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ш
&backward_lstm_92/while/lstm_cell/splitSplit9backward_lstm_92/while/lstm_cell/split/split_dim:output:01backward_lstm_92/while/lstm_cell/BiasAdd:output:0*
T0*<
_output_shapes*
(::::*
	num_splitЇ
(backward_lstm_92/while/lstm_cell/SigmoidSigmoid/backward_lstm_92/while/lstm_cell/split:output:0*
T0*
_output_shapes

:Ј
*backward_lstm_92/while/lstm_cell/Sigmoid_1Sigmoid/backward_lstm_92/while/lstm_cell/split:output:1*
T0*
_output_shapes

:ф
$backward_lstm_92/while/lstm_cell/mulMul.backward_lstm_92/while/lstm_cell/Sigmoid_1:y:0$backward_lstm_92_while_placeholder_3*
T0*
_output_shapes

:Є
%backward_lstm_92/while/lstm_cell/ReluRelu/backward_lstm_92/while/lstm_cell/split:output:2*
T0*
_output_shapes

:╣
&backward_lstm_92/while/lstm_cell/mul_1Mul,backward_lstm_92/while/lstm_cell/Sigmoid:y:03backward_lstm_92/while/lstm_cell/Relu:activations:0*
T0*
_output_shapes

:«
&backward_lstm_92/while/lstm_cell/add_1AddV2(backward_lstm_92/while/lstm_cell/mul:z:0*backward_lstm_92/while/lstm_cell/mul_1:z:0*
T0*
_output_shapes

:Ј
*backward_lstm_92/while/lstm_cell/Sigmoid_2Sigmoid/backward_lstm_92/while/lstm_cell/split:output:3*
T0*
_output_shapes

:ё
'backward_lstm_92/while/lstm_cell/Relu_1Relu*backward_lstm_92/while/lstm_cell/add_1:z:0*
T0*
_output_shapes

:й
&backward_lstm_92/while/lstm_cell/mul_2Mul.backward_lstm_92/while/lstm_cell/Sigmoid_2:y:05backward_lstm_92/while/lstm_cell/Relu_1:activations:0*
T0*
_output_shapes

:є
;backward_lstm_92/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem$backward_lstm_92_while_placeholder_1"backward_lstm_92_while_placeholder*backward_lstm_92/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУм^
backward_lstm_92/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Ј
backward_lstm_92/while/addAddV2"backward_lstm_92_while_placeholder%backward_lstm_92/while/add/y:output:0*
T0*
_output_shapes
: `
backward_lstm_92/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Ф
backward_lstm_92/while/add_1AddV2:backward_lstm_92_while_backward_lstm_92_while_loop_counter'backward_lstm_92/while/add_1/y:output:0*
T0*
_output_shapes
: ї
backward_lstm_92/while/IdentityIdentity backward_lstm_92/while/add_1:z:0^backward_lstm_92/while/NoOp*
T0*
_output_shapes
: «
!backward_lstm_92/while/Identity_1Identity@backward_lstm_92_while_backward_lstm_92_while_maximum_iterations^backward_lstm_92/while/NoOp*
T0*
_output_shapes
: ї
!backward_lstm_92/while/Identity_2Identitybackward_lstm_92/while/add:z:0^backward_lstm_92/while/NoOp*
T0*
_output_shapes
: ╣
!backward_lstm_92/while/Identity_3IdentityKbackward_lstm_92/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^backward_lstm_92/while/NoOp*
T0*
_output_shapes
: а
!backward_lstm_92/while/Identity_4Identity*backward_lstm_92/while/lstm_cell/mul_2:z:0^backward_lstm_92/while/NoOp*
T0*
_output_shapes

:а
!backward_lstm_92/while/Identity_5Identity*backward_lstm_92/while/lstm_cell/add_1:z:0^backward_lstm_92/while/NoOp*
T0*
_output_shapes

:у
backward_lstm_92/while/NoOpNoOp8^backward_lstm_92/while/lstm_cell/BiasAdd/ReadVariableOp7^backward_lstm_92/while/lstm_cell/MatMul/ReadVariableOp9^backward_lstm_92/while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "t
7backward_lstm_92_while_backward_lstm_92_strided_slice_19backward_lstm_92_while_backward_lstm_92_strided_slice_1_0"K
backward_lstm_92_while_identity(backward_lstm_92/while/Identity:output:0"O
!backward_lstm_92_while_identity_1*backward_lstm_92/while/Identity_1:output:0"O
!backward_lstm_92_while_identity_2*backward_lstm_92/while/Identity_2:output:0"O
!backward_lstm_92_while_identity_3*backward_lstm_92/while/Identity_3:output:0"O
!backward_lstm_92_while_identity_4*backward_lstm_92/while/Identity_4:output:0"O
!backward_lstm_92_while_identity_5*backward_lstm_92/while/Identity_5:output:0"є
@backward_lstm_92_while_lstm_cell_biasadd_readvariableop_resourceBbackward_lstm_92_while_lstm_cell_biasadd_readvariableop_resource_0"ѕ
Abackward_lstm_92_while_lstm_cell_matmul_1_readvariableop_resourceCbackward_lstm_92_while_lstm_cell_matmul_1_readvariableop_resource_0"ё
?backward_lstm_92_while_lstm_cell_matmul_readvariableop_resourceAbackward_lstm_92_while_lstm_cell_matmul_readvariableop_resource_0"В
sbackward_lstm_92_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_92_tensorarrayunstack_tensorlistfromtensorubackward_lstm_92_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_92_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : ::: : : : : 2r
7backward_lstm_92/while/lstm_cell/BiasAdd/ReadVariableOp7backward_lstm_92/while/lstm_cell/BiasAdd/ReadVariableOp2p
6backward_lstm_92/while/lstm_cell/MatMul/ReadVariableOp6backward_lstm_92/while/lstm_cell/MatMul/ReadVariableOp2t
8backward_lstm_92/while/lstm_cell/MatMul_1/ReadVariableOp8backward_lstm_92/while/lstm_cell/MatMul_1/ReadVariableOp:[ W

_output_shapes
: 
=
_user_specified_name%#backward_lstm_92/while/loop_counter:a]

_output_shapes
: 
C
_user_specified_name+)backward_lstm_92/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

::$ 

_output_shapes

::XT

_output_shapes
: 
:
_user_specified_name" backward_lstm_92/strided_slice_1:pl

_output_shapes
: 
R
_user_specified_name:8backward_lstm_92/TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
У8
▒
while_body_28638420
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0B
0while_lstm_cell_matmul_readvariableop_resource_0: D
2while_lstm_cell_matmul_1_readvariableop_resource_0: ?
1while_lstm_cell_biasadd_readvariableop_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor@
.while_lstm_cell_matmul_readvariableop_resource: B
0while_lstm_cell_matmul_1_readvariableop_resource: =
/while_lstm_cell_biasadd_readvariableop_resource: ѕб&while/lstm_cell/BiasAdd/ReadVariableOpб%while/lstm_cell/MatMul/ReadVariableOpб'while/lstm_cell/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        »
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:                  *
element_dtype0ќ
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0│
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          џ
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0џ
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ћ
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:          ћ
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0Ю
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Т
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitt
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:         v
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:         ђ
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         n
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:         Ј
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:         ё
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:         v
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:         k
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:         Њ
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:         ┬
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         v
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         Б

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource"╩L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*ъ
serving_defaultі
6
input_3+
serving_default_input_3:04
	dense_593'
StatefulPartitionedCall:0tensorflow/serving/predict:гО
Њ
layer-0
layer_with_weights-0
layer-1
layer-2
layer-3
layer-4
layer-5
layer-6
layer_with_weights-1
layer-7
	layer_with_weights-2
	layer-8

layer_with_weights-3

layer-9
layer_with_weights-4
layer-10
layer-11
layer-12
layer_with_weights-5
layer-13
layer-14
layer-15
layer_with_weights-6
layer-16
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures
#_self_saveable_object_factories"
_tf_keras_network
D
#_self_saveable_object_factories"
_tf_keras_input_layer
Я
	variables
trainable_variables
regularization_losses
	keras_api
 __call__
*!&call_and_return_all_conditional_losses

"kernel
#bias
#$_self_saveable_object_factories"
_tf_keras_layer
M
%	keras_api
#&_self_saveable_object_factories"
_tf_keras_layer
M
'	keras_api
#(_self_saveable_object_factories"
_tf_keras_layer
╩
)	variables
*trainable_variables
+regularization_losses
,	keras_api
-__call__
*.&call_and_return_all_conditional_losses
#/_self_saveable_object_factories"
_tf_keras_layer
╩
0	variables
1trainable_variables
2regularization_losses
3	keras_api
4__call__
*5&call_and_return_all_conditional_losses
#6_self_saveable_object_factories"
_tf_keras_layer
M
7	keras_api
#8_self_saveable_object_factories"
_tf_keras_layer
Ш
9layer_with_weights-0
9layer-0
:	variables
;trainable_variables
<regularization_losses
=	keras_api
>__call__
*?&call_and_return_all_conditional_losses
#@_self_saveable_object_factories"
_tf_keras_sequential
Ш
Alayer_with_weights-0
Alayer-0
B	variables
Ctrainable_variables
Dregularization_losses
E	keras_api
F__call__
*G&call_and_return_all_conditional_losses
#H_self_saveable_object_factories"
_tf_keras_sequential
Ш
Ilayer_with_weights-0
Ilayer-0
J	variables
Ktrainable_variables
Lregularization_losses
M	keras_api
N__call__
*O&call_and_return_all_conditional_losses
#P_self_saveable_object_factories"
_tf_keras_sequential
Ш
Qlayer_with_weights-0
Qlayer-0
R	variables
Strainable_variables
Tregularization_losses
U	keras_api
V__call__
*W&call_and_return_all_conditional_losses
#X_self_saveable_object_factories"
_tf_keras_sequential
M
Y	keras_api
#Z_self_saveable_object_factories"
_tf_keras_layer
╩
[	variables
\trainable_variables
]regularization_losses
^	keras_api
___call__
*`&call_and_return_all_conditional_losses
#a_self_saveable_object_factories"
_tf_keras_layer
ы
b	variables
ctrainable_variables
dregularization_losses
e	keras_api
f__call__
*g&call_and_return_all_conditional_losses
hforward_layer
ibackward_layer
#j_self_saveable_object_factories"
_tf_keras_layer
р
k	variables
ltrainable_variables
mregularization_losses
n	keras_api
o__call__
*p&call_and_return_all_conditional_losses
q_random_generator
#r_self_saveable_object_factories"
_tf_keras_layer
╩
s	variables
ttrainable_variables
uregularization_losses
v	keras_api
w__call__
*x&call_and_return_all_conditional_losses
#y_self_saveable_object_factories"
_tf_keras_layer
с
z	variables
{trainable_variables
|regularization_losses
}	keras_api
~__call__
*&call_and_return_all_conditional_losses
ђkernel
	Ђbias
$ѓ_self_saveable_object_factories"
_tf_keras_layer
Х
"0
#1
Ѓ2
ё3
Ё4
є5
Є6
ѕ7
Ѕ8
і9
І10
ї11
Ї12
ј13
Ј14
љ15
ђ16
Ђ17"
trackable_list_wrapper
Х
"0
#1
Ѓ2
ё3
Ё4
є5
Є6
ѕ7
Ѕ8
і9
І10
ї11
Ї12
ј13
Ј14
љ15
ђ16
Ђ17"
trackable_list_wrapper
 "
trackable_list_wrapper
¤
Љnon_trainable_variables
њlayers
Њmetrics
 ћlayer_regularization_losses
Ћlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
█
ќtrace_0
Ќtrace_12а
2__inference_topk_bilstm_moe_layer_call_fn_28636169
2__inference_topk_bilstm_moe_layer_call_fn_28636210х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zќtrace_0zЌtrace_1
Љ
ўtrace_0
Ўtrace_12о
M__inference_topk_bilstm_moe_layer_call_and_return_conditional_losses_28635753
M__inference_topk_bilstm_moe_layer_call_and_return_conditional_losses_28636128х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zўtrace_0zЎtrace_1
╬B╦
#__inference__wrapped_model_28633642input_3"ў
Љ▓Ї
FullArgSpec
argsџ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
-
џserving_default"
signature_map
 "
trackable_dict_wrapper
 "
trackable_dict_wrapper
.
"0
#1"
trackable_list_wrapper
.
"0
#1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Џnon_trainable_variables
юlayers
Юmetrics
 ъlayer_regularization_losses
Ъlayer_metrics
	variables
trainable_variables
regularization_losses
 __call__
*!&call_and_return_all_conditional_losses
&!"call_and_return_conditional_losses"
_generic_user_object
У
аtrace_02╔
,__inference_dense_576_layer_call_fn_28636364ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zаtrace_0
Ѓ
Аtrace_02С
G__inference_dense_576_layer_call_and_return_conditional_losses_28636379ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zАtrace_0
": 2dense_576/kernel
:2dense_576/bias
 "
trackable_dict_wrapper
"
_generic_user_object
 "
trackable_dict_wrapper
"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
бnon_trainable_variables
Бlayers
цmetrics
 Цlayer_regularization_losses
дlayer_metrics
)	variables
*trainable_variables
+regularization_losses
-__call__
*.&call_and_return_all_conditional_losses
&."call_and_return_conditional_losses"
_generic_user_object
¤
Дtrace_0
еtrace_12ћ
,__inference_lambda_96_layer_call_fn_28636385
,__inference_lambda_96_layer_call_fn_28636391х
«▓ф
FullArgSpec)
args!џ
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsб

 
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zДtrace_0zеtrace_1
Ё
Еtrace_0
фtrace_12╩
G__inference_lambda_96_layer_call_and_return_conditional_losses_28636397
G__inference_lambda_96_layer_call_and_return_conditional_losses_28636403х
«▓ф
FullArgSpec)
args!џ
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsб

 
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zЕtrace_0zфtrace_1
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Фnon_trainable_variables
гlayers
Гmetrics
 «layer_regularization_losses
»layer_metrics
0	variables
1trainable_variables
2regularization_losses
4__call__
*5&call_and_return_all_conditional_losses
&5"call_and_return_conditional_losses"
_generic_user_object
¤
░trace_0
▒trace_12ћ
,__inference_lambda_97_layer_call_fn_28636409
,__inference_lambda_97_layer_call_fn_28636415х
«▓ф
FullArgSpec)
args!џ
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsб

 
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z░trace_0z▒trace_1
Ё
▓trace_0
│trace_12╩
G__inference_lambda_97_layer_call_and_return_conditional_losses_28636421
G__inference_lambda_97_layer_call_and_return_conditional_losses_28636427х
«▓ф
FullArgSpec)
args!џ
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsб

 
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z▓trace_0z│trace_1
 "
trackable_dict_wrapper
"
_generic_user_object
 "
trackable_dict_wrapper
ж
┤	variables
хtrainable_variables
Хregularization_losses
и	keras_api
И__call__
+╣&call_and_return_all_conditional_losses
Ѓkernel
	ёbias
$║_self_saveable_object_factories"
_tf_keras_layer
0
Ѓ0
ё1"
trackable_list_wrapper
0
Ѓ0
ё1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
╗non_trainable_variables
╝layers
йmetrics
 Йlayer_regularization_losses
┐layer_metrics
:	variables
;trainable_variables
<regularization_losses
>__call__
*?&call_and_return_all_conditional_losses
&?"call_and_return_conditional_losses"
_generic_user_object
┘
└trace_0
┴trace_12ъ
1__inference_sequential_392_layer_call_fn_28633700
1__inference_sequential_392_layer_call_fn_28633709х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z└trace_0z┴trace_1
Ј
┬trace_0
├trace_12н
L__inference_sequential_392_layer_call_and_return_conditional_losses_28633682
L__inference_sequential_392_layer_call_and_return_conditional_losses_28633691х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z┬trace_0z├trace_1
 "
trackable_dict_wrapper
ж
─	variables
┼trainable_variables
кregularization_losses
К	keras_api
╚__call__
+╔&call_and_return_all_conditional_losses
Ёkernel
	єbias
$╩_self_saveable_object_factories"
_tf_keras_layer
0
Ё0
є1"
trackable_list_wrapper
0
Ё0
є1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
╦non_trainable_variables
╠layers
═metrics
 ╬layer_regularization_losses
¤layer_metrics
B	variables
Ctrainable_variables
Dregularization_losses
F__call__
*G&call_and_return_all_conditional_losses
&G"call_and_return_conditional_losses"
_generic_user_object
┘
лtrace_0
Лtrace_12ъ
1__inference_sequential_397_layer_call_fn_28633776
1__inference_sequential_397_layer_call_fn_28633785х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zлtrace_0zЛtrace_1
Ј
мtrace_0
Мtrace_12н
L__inference_sequential_397_layer_call_and_return_conditional_losses_28633758
L__inference_sequential_397_layer_call_and_return_conditional_losses_28633767х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zмtrace_0zМtrace_1
 "
trackable_dict_wrapper
ж
н	variables
Нtrainable_variables
оregularization_losses
О	keras_api
п__call__
+┘&call_and_return_all_conditional_losses
Єkernel
	ѕbias
$┌_self_saveable_object_factories"
_tf_keras_layer
0
Є0
ѕ1"
trackable_list_wrapper
0
Є0
ѕ1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
█non_trainable_variables
▄layers
Пmetrics
 яlayer_regularization_losses
▀layer_metrics
J	variables
Ktrainable_variables
Lregularization_losses
N__call__
*O&call_and_return_all_conditional_losses
&O"call_and_return_conditional_losses"
_generic_user_object
┘
Яtrace_0
рtrace_12ъ
1__inference_sequential_402_layer_call_fn_28633852
1__inference_sequential_402_layer_call_fn_28633861х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zЯtrace_0zрtrace_1
Ј
Рtrace_0
сtrace_12н
L__inference_sequential_402_layer_call_and_return_conditional_losses_28633834
L__inference_sequential_402_layer_call_and_return_conditional_losses_28633843х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zРtrace_0zсtrace_1
 "
trackable_dict_wrapper
ж
С	variables
тtrainable_variables
Тregularization_losses
у	keras_api
У__call__
+ж&call_and_return_all_conditional_losses
Ѕkernel
	іbias
$Ж_self_saveable_object_factories"
_tf_keras_layer
0
Ѕ0
і1"
trackable_list_wrapper
0
Ѕ0
і1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
вnon_trainable_variables
Вlayers
ьmetrics
 Ьlayer_regularization_losses
№layer_metrics
R	variables
Strainable_variables
Tregularization_losses
V__call__
*W&call_and_return_all_conditional_losses
&W"call_and_return_conditional_losses"
_generic_user_object
┘
­trace_0
ыtrace_12ъ
1__inference_sequential_407_layer_call_fn_28633928
1__inference_sequential_407_layer_call_fn_28633937х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z­trace_0zыtrace_1
Ј
Ыtrace_0
зtrace_12н
L__inference_sequential_407_layer_call_and_return_conditional_losses_28633910
L__inference_sequential_407_layer_call_and_return_conditional_losses_28633919х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zЫtrace_0zзtrace_1
 "
trackable_dict_wrapper
"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Зnon_trainable_variables
шlayers
Шmetrics
 эlayer_regularization_losses
Эlayer_metrics
[	variables
\trainable_variables
]regularization_losses
___call__
*`&call_and_return_all_conditional_losses
&`"call_and_return_conditional_losses"
_generic_user_object
¤
щtrace_0
Щtrace_12ћ
,__inference_lambda_98_layer_call_fn_28636433
,__inference_lambda_98_layer_call_fn_28636439х
«▓ф
FullArgSpec)
args!џ
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsб

 
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zщtrace_0zЩtrace_1
Ё
чtrace_0
Чtrace_12╩
G__inference_lambda_98_layer_call_and_return_conditional_losses_28636445
G__inference_lambda_98_layer_call_and_return_conditional_losses_28636451х
«▓ф
FullArgSpec)
args!џ
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsб

 
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zчtrace_0zЧtrace_1
 "
trackable_dict_wrapper
P
І0
ї1
Ї2
ј3
Ј4
љ5"
trackable_list_wrapper
P
І0
ї1
Ї2
ј3
Ј4
љ5"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
§non_trainable_variables
■layers
 metrics
 ђlayer_regularization_losses
Ђlayer_metrics
b	variables
ctrainable_variables
dregularization_losses
f__call__
*g&call_and_return_all_conditional_losses
&g"call_and_return_conditional_losses"
_generic_user_object
Ц
ѓtrace_0
Ѓtrace_1
ёtrace_2
Ёtrace_32▓
3__inference_bidirectional_92_layer_call_fn_28636468
3__inference_bidirectional_92_layer_call_fn_28636485
3__inference_bidirectional_92_layer_call_fn_28636502
3__inference_bidirectional_92_layer_call_fn_28636519█
н▓л
FullArgSpecG
args?џ<
jinputs

jtraining
jmask
jinitial_state
j	constants
varargs
 
varkw
 
defaultsб
p 

 

 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zѓtrace_0zЃtrace_1zёtrace_2zЁtrace_3
Љ
єtrace_0
Єtrace_1
ѕtrace_2
Ѕtrace_32ъ
N__inference_bidirectional_92_layer_call_and_return_conditional_losses_28636807
N__inference_bidirectional_92_layer_call_and_return_conditional_losses_28637095
N__inference_bidirectional_92_layer_call_and_return_conditional_losses_28637383
N__inference_bidirectional_92_layer_call_and_return_conditional_losses_28637671█
н▓л
FullArgSpecG
args?џ<
jinputs

jtraining
jmask
jinitial_state
j	constants
varargs
 
varkw
 
defaultsб
p 

 

 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zєtrace_0zЄtrace_1zѕtrace_2zЅtrace_3
Ѕ
і	variables
Іtrainable_variables
їregularization_losses
Ї	keras_api
ј__call__
+Ј&call_and_return_all_conditional_losses
љ_random_generator
	Љcell
њ
state_spec
$Њ_self_saveable_object_factories"
_tf_keras_rnn_layer
Ѕ
ћ	variables
Ћtrainable_variables
ќregularization_losses
Ќ	keras_api
ў__call__
+Ў&call_and_return_all_conditional_losses
џ_random_generator
	Џcell
ю
state_spec
$Ю_self_saveable_object_factories"
_tf_keras_rnn_layer
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
ъnon_trainable_variables
Ъlayers
аmetrics
 Аlayer_regularization_losses
бlayer_metrics
k	variables
ltrainable_variables
mregularization_losses
o__call__
*p&call_and_return_all_conditional_losses
&p"call_and_return_conditional_losses"
_generic_user_object
┼
Бtrace_0
цtrace_12і
-__inference_dropout_92_layer_call_fn_28637676
-__inference_dropout_92_layer_call_fn_28637681Е
б▓ъ
FullArgSpec!
argsџ
jinputs

jtraining
varargs
 
varkw
 
defaultsб
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zБtrace_0zцtrace_1
ч
Цtrace_0
дtrace_12└
H__inference_dropout_92_layer_call_and_return_conditional_losses_28637693
H__inference_dropout_92_layer_call_and_return_conditional_losses_28637698Е
б▓ъ
FullArgSpec!
argsџ
jinputs

jtraining
varargs
 
varkw
 
defaultsб
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zЦtrace_0zдtrace_1
D
$Д_self_saveable_object_factories"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
еnon_trainable_variables
Еlayers
фmetrics
 Фlayer_regularization_losses
гlayer_metrics
s	variables
ttrainable_variables
uregularization_losses
w__call__
*x&call_and_return_all_conditional_losses
&x"call_and_return_conditional_losses"
_generic_user_object
ж
Гtrace_02╩
-__inference_flatten_92_layer_call_fn_28637703ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zГtrace_0
ё
«trace_02т
H__inference_flatten_92_layer_call_and_return_conditional_losses_28637709ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z«trace_0
 "
trackable_dict_wrapper
0
ђ0
Ђ1"
trackable_list_wrapper
0
ђ0
Ђ1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
»non_trainable_variables
░layers
▒metrics
 ▓layer_regularization_losses
│layer_metrics
z	variables
{trainable_variables
|regularization_losses
~__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
У
┤trace_02╔
,__inference_dense_593_layer_call_fn_28637718ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z┤trace_0
Ѓ
хtrace_02С
G__inference_dense_593_layer_call_and_return_conditional_losses_28637728ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zхtrace_0
#:!	ђ2dense_593/kernel
:2dense_593/bias
 "
trackable_dict_wrapper
": 2dense_577/kernel
:2dense_577/bias
": 2dense_582/kernel
:2dense_582/bias
": 2dense_587/kernel
:2dense_587/bias
": 2dense_592/kernel
:2dense_592/bias
C:A 21bidirectional_92/forward_lstm_92/lstm_cell/kernel
M:K 2;bidirectional_92/forward_lstm_92/lstm_cell/recurrent_kernel
=:; 2/bidirectional_92/forward_lstm_92/lstm_cell/bias
D:B 22bidirectional_92/backward_lstm_92/lstm_cell/kernel
N:L 2<bidirectional_92/backward_lstm_92/lstm_cell/recurrent_kernel
>:< 20bidirectional_92/backward_lstm_92/lstm_cell/bias
 "
trackable_list_wrapper
ъ
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЩBэ
2__inference_topk_bilstm_moe_layer_call_fn_28636169input_3"х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЩBэ
2__inference_topk_bilstm_moe_layer_call_fn_28636210input_3"х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЋBњ
M__inference_topk_bilstm_moe_layer_call_and_return_conditional_losses_28635753input_3"х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЋBњ
M__inference_topk_bilstm_moe_layer_call_and_return_conditional_losses_28636128input_3"х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
═B╩
&__inference_signature_wrapper_28636355input_3"ћ
Ї▓Ѕ
FullArgSpec
argsџ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
оBМ
,__inference_dense_576_layer_call_fn_28636364inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ыBЬ
G__inference_dense_576_layer_call_and_return_conditional_losses_28636379inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 BЧ
,__inference_lambda_96_layer_call_fn_28636385inputs_0inputs_1"х
«▓ф
FullArgSpec)
args!џ
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsб

 
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
 BЧ
,__inference_lambda_96_layer_call_fn_28636391inputs_0inputs_1"х
«▓ф
FullArgSpec)
args!џ
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsб

 
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
џBЌ
G__inference_lambda_96_layer_call_and_return_conditional_losses_28636397inputs_0inputs_1"х
«▓ф
FullArgSpec)
args!џ
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsб

 
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
џBЌ
G__inference_lambda_96_layer_call_and_return_conditional_losses_28636403inputs_0inputs_1"х
«▓ф
FullArgSpec)
args!џ
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsб

 
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 BЧ
,__inference_lambda_97_layer_call_fn_28636409inputs_0inputs_1"х
«▓ф
FullArgSpec)
args!џ
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsб

 
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
 BЧ
,__inference_lambda_97_layer_call_fn_28636415inputs_0inputs_1"х
«▓ф
FullArgSpec)
args!џ
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsб

 
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
џBЌ
G__inference_lambda_97_layer_call_and_return_conditional_losses_28636421inputs_0inputs_1"х
«▓ф
FullArgSpec)
args!џ
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsб

 
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
џBЌ
G__inference_lambda_97_layer_call_and_return_conditional_losses_28636427inputs_0inputs_1"х
«▓ф
FullArgSpec)
args!џ
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsб

 
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
0
Ѓ0
ё1"
trackable_list_wrapper
0
Ѓ0
ё1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
Хnon_trainable_variables
иlayers
Иmetrics
 ╣layer_regularization_losses
║layer_metrics
┤	variables
хtrainable_variables
Хregularization_losses
И__call__
+╣&call_and_return_all_conditional_losses
'╣"call_and_return_conditional_losses"
_generic_user_object
У
╗trace_02╔
,__inference_dense_577_layer_call_fn_28637737ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z╗trace_0
Ѓ
╝trace_02С
G__inference_dense_577_layer_call_and_return_conditional_losses_28637768ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z╝trace_0
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
'
90"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЂB■
1__inference_sequential_392_layer_call_fn_28633700dense_577_input"х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЂB■
1__inference_sequential_392_layer_call_fn_28633709dense_577_input"х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
юBЎ
L__inference_sequential_392_layer_call_and_return_conditional_losses_28633682dense_577_input"х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
юBЎ
L__inference_sequential_392_layer_call_and_return_conditional_losses_28633691dense_577_input"х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
0
Ё0
є1"
trackable_list_wrapper
0
Ё0
є1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
йnon_trainable_variables
Йlayers
┐metrics
 └layer_regularization_losses
┴layer_metrics
─	variables
┼trainable_variables
кregularization_losses
╚__call__
+╔&call_and_return_all_conditional_losses
'╔"call_and_return_conditional_losses"
_generic_user_object
У
┬trace_02╔
,__inference_dense_582_layer_call_fn_28637777ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z┬trace_0
Ѓ
├trace_02С
G__inference_dense_582_layer_call_and_return_conditional_losses_28637808ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z├trace_0
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
'
A0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЂB■
1__inference_sequential_397_layer_call_fn_28633776dense_582_input"х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЂB■
1__inference_sequential_397_layer_call_fn_28633785dense_582_input"х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
юBЎ
L__inference_sequential_397_layer_call_and_return_conditional_losses_28633758dense_582_input"х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
юBЎ
L__inference_sequential_397_layer_call_and_return_conditional_losses_28633767dense_582_input"х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
0
Є0
ѕ1"
trackable_list_wrapper
0
Є0
ѕ1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
─non_trainable_variables
┼layers
кmetrics
 Кlayer_regularization_losses
╚layer_metrics
н	variables
Нtrainable_variables
оregularization_losses
п__call__
+┘&call_and_return_all_conditional_losses
'┘"call_and_return_conditional_losses"
_generic_user_object
У
╔trace_02╔
,__inference_dense_587_layer_call_fn_28637817ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z╔trace_0
Ѓ
╩trace_02С
G__inference_dense_587_layer_call_and_return_conditional_losses_28637848ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z╩trace_0
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
'
I0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЂB■
1__inference_sequential_402_layer_call_fn_28633852dense_587_input"х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЂB■
1__inference_sequential_402_layer_call_fn_28633861dense_587_input"х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
юBЎ
L__inference_sequential_402_layer_call_and_return_conditional_losses_28633834dense_587_input"х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
юBЎ
L__inference_sequential_402_layer_call_and_return_conditional_losses_28633843dense_587_input"х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
0
Ѕ0
і1"
trackable_list_wrapper
0
Ѕ0
і1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
╦non_trainable_variables
╠layers
═metrics
 ╬layer_regularization_losses
¤layer_metrics
С	variables
тtrainable_variables
Тregularization_losses
У__call__
+ж&call_and_return_all_conditional_losses
'ж"call_and_return_conditional_losses"
_generic_user_object
У
лtrace_02╔
,__inference_dense_592_layer_call_fn_28637857ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zлtrace_0
Ѓ
Лtrace_02С
G__inference_dense_592_layer_call_and_return_conditional_losses_28637888ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zЛtrace_0
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
'
Q0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЂB■
1__inference_sequential_407_layer_call_fn_28633928dense_592_input"х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЂB■
1__inference_sequential_407_layer_call_fn_28633937dense_592_input"х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
юBЎ
L__inference_sequential_407_layer_call_and_return_conditional_losses_28633910dense_592_input"х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
юBЎ
L__inference_sequential_407_layer_call_and_return_conditional_losses_28633919dense_592_input"х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 BЧ
,__inference_lambda_98_layer_call_fn_28636433inputs_0inputs_1"х
«▓ф
FullArgSpec)
args!џ
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsб

 
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
 BЧ
,__inference_lambda_98_layer_call_fn_28636439inputs_0inputs_1"х
«▓ф
FullArgSpec)
args!џ
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsб

 
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
џBЌ
G__inference_lambda_98_layer_call_and_return_conditional_losses_28636445inputs_0inputs_1"х
«▓ф
FullArgSpec)
args!џ
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsб

 
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
џBЌ
G__inference_lambda_98_layer_call_and_return_conditional_losses_28636451inputs_0inputs_1"х
«▓ф
FullArgSpec)
args!џ
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsб

 
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
 "
trackable_list_wrapper
.
h0
i1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
бBЪ
3__inference_bidirectional_92_layer_call_fn_28636468inputs_0"█
н▓л
FullArgSpecG
args?џ<
jinputs

jtraining
jmask
jinitial_state
j	constants
varargs
 
varkw
 
defaultsб
p 

 

 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
бBЪ
3__inference_bidirectional_92_layer_call_fn_28636485inputs_0"█
н▓л
FullArgSpecG
args?џ<
jinputs

jtraining
jmask
jinitial_state
j	constants
varargs
 
varkw
 
defaultsб
p 

 

 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
аBЮ
3__inference_bidirectional_92_layer_call_fn_28636502inputs"█
н▓л
FullArgSpecG
args?џ<
jinputs

jtraining
jmask
jinitial_state
j	constants
varargs
 
varkw
 
defaultsб
p 

 

 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
аBЮ
3__inference_bidirectional_92_layer_call_fn_28636519inputs"█
н▓л
FullArgSpecG
args?џ<
jinputs

jtraining
jmask
jinitial_state
j	constants
varargs
 
varkw
 
defaultsб
p 

 

 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
йB║
N__inference_bidirectional_92_layer_call_and_return_conditional_losses_28636807inputs_0"█
н▓л
FullArgSpecG
args?џ<
jinputs

jtraining
jmask
jinitial_state
j	constants
varargs
 
varkw
 
defaultsб
p 

 

 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
йB║
N__inference_bidirectional_92_layer_call_and_return_conditional_losses_28637095inputs_0"█
н▓л
FullArgSpecG
args?џ<
jinputs

jtraining
jmask
jinitial_state
j	constants
varargs
 
varkw
 
defaultsб
p 

 

 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
╗BИ
N__inference_bidirectional_92_layer_call_and_return_conditional_losses_28637383inputs"█
н▓л
FullArgSpecG
args?џ<
jinputs

jtraining
jmask
jinitial_state
j	constants
varargs
 
varkw
 
defaultsб
p 

 

 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
╗BИ
N__inference_bidirectional_92_layer_call_and_return_conditional_losses_28637671inputs"█
н▓л
FullArgSpecG
args?џ<
jinputs

jtraining
jmask
jinitial_state
j	constants
varargs
 
varkw
 
defaultsб
p 

 

 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
8
І0
ї1
Ї2"
trackable_list_wrapper
8
І0
ї1
Ї2"
trackable_list_wrapper
 "
trackable_list_wrapper
┼
мstates
Мnon_trainable_variables
нlayers
Нmetrics
 оlayer_regularization_losses
Оlayer_metrics
і	variables
Іtrainable_variables
їregularization_losses
ј__call__
+Ј&call_and_return_all_conditional_losses
'Ј"call_and_return_conditional_losses"
_generic_user_object
љ
пtrace_0
┘trace_1
┌trace_2
█trace_32Ю
2__inference_forward_lstm_92_layer_call_fn_28637899
2__inference_forward_lstm_92_layer_call_fn_28637910
2__inference_forward_lstm_92_layer_call_fn_28637921
2__inference_forward_lstm_92_layer_call_fn_28637932╩
├▓┐
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsб

 
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zпtrace_0z┘trace_1z┌trace_2z█trace_3
Ч
▄trace_0
Пtrace_1
яtrace_2
▀trace_32Ѕ
M__inference_forward_lstm_92_layer_call_and_return_conditional_losses_28638075
M__inference_forward_lstm_92_layer_call_and_return_conditional_losses_28638218
M__inference_forward_lstm_92_layer_call_and_return_conditional_losses_28638361
M__inference_forward_lstm_92_layer_call_and_return_conditional_losses_28638504╩
├▓┐
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsб

 
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z▄trace_0zПtrace_1zяtrace_2z▀trace_3
D
$Я_self_saveable_object_factories"
_generic_user_object
Е
р	variables
Рtrainable_variables
сregularization_losses
С	keras_api
т__call__
+Т&call_and_return_all_conditional_losses
у_random_generator
У
state_size
Іkernel
їrecurrent_kernel
	Їbias
$ж_self_saveable_object_factories"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
8
ј0
Ј1
љ2"
trackable_list_wrapper
8
ј0
Ј1
љ2"
trackable_list_wrapper
 "
trackable_list_wrapper
┼
Жstates
вnon_trainable_variables
Вlayers
ьmetrics
 Ьlayer_regularization_losses
№layer_metrics
ћ	variables
Ћtrainable_variables
ќregularization_losses
ў__call__
+Ў&call_and_return_all_conditional_losses
'Ў"call_and_return_conditional_losses"
_generic_user_object
ћ
­trace_0
ыtrace_1
Ыtrace_2
зtrace_32А
3__inference_backward_lstm_92_layer_call_fn_28638515
3__inference_backward_lstm_92_layer_call_fn_28638526
3__inference_backward_lstm_92_layer_call_fn_28638537
3__inference_backward_lstm_92_layer_call_fn_28638548╩
├▓┐
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsб

 
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z­trace_0zыtrace_1zЫtrace_2zзtrace_3
ђ
Зtrace_0
шtrace_1
Шtrace_2
эtrace_32Ї
N__inference_backward_lstm_92_layer_call_and_return_conditional_losses_28638693
N__inference_backward_lstm_92_layer_call_and_return_conditional_losses_28638838
N__inference_backward_lstm_92_layer_call_and_return_conditional_losses_28638983
N__inference_backward_lstm_92_layer_call_and_return_conditional_losses_28639128╩
├▓┐
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsб

 
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zЗtrace_0zшtrace_1zШtrace_2zэtrace_3
D
$Э_self_saveable_object_factories"
_generic_user_object
Е
щ	variables
Щtrainable_variables
чregularization_losses
Ч	keras_api
§__call__
+■&call_and_return_all_conditional_losses
 _random_generator
ђ
state_size
јkernel
Јrecurrent_kernel
	љbias
$Ђ_self_saveable_object_factories"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
УBт
-__inference_dropout_92_layer_call_fn_28637676inputs"Е
б▓ъ
FullArgSpec!
argsџ
jinputs

jtraining
varargs
 
varkw
 
defaultsб
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
УBт
-__inference_dropout_92_layer_call_fn_28637681inputs"Е
б▓ъ
FullArgSpec!
argsџ
jinputs

jtraining
varargs
 
varkw
 
defaultsб
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЃBђ
H__inference_dropout_92_layer_call_and_return_conditional_losses_28637693inputs"Е
б▓ъ
FullArgSpec!
argsџ
jinputs

jtraining
varargs
 
varkw
 
defaultsб
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЃBђ
H__inference_dropout_92_layer_call_and_return_conditional_losses_28637698inputs"Е
б▓ъ
FullArgSpec!
argsџ
jinputs

jtraining
varargs
 
varkw
 
defaultsб
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ОBн
-__inference_flatten_92_layer_call_fn_28637703inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЫB№
H__inference_flatten_92_layer_call_and_return_conditional_losses_28637709inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
оBМ
,__inference_dense_593_layer_call_fn_28637718inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ыBЬ
G__inference_dense_593_layer_call_and_return_conditional_losses_28637728inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
оBМ
,__inference_dense_577_layer_call_fn_28637737inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ыBЬ
G__inference_dense_577_layer_call_and_return_conditional_losses_28637768inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
оBМ
,__inference_dense_582_layer_call_fn_28637777inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ыBЬ
G__inference_dense_582_layer_call_and_return_conditional_losses_28637808inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
оBМ
,__inference_dense_587_layer_call_fn_28637817inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ыBЬ
G__inference_dense_587_layer_call_and_return_conditional_losses_28637848inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
оBМ
,__inference_dense_592_layer_call_fn_28637857inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ыBЬ
G__inference_dense_592_layer_call_and_return_conditional_losses_28637888inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
Љ0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
љBЇ
2__inference_forward_lstm_92_layer_call_fn_28637899inputs_0"╩
├▓┐
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsб

 
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
љBЇ
2__inference_forward_lstm_92_layer_call_fn_28637910inputs_0"╩
├▓┐
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsб

 
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
јBІ
2__inference_forward_lstm_92_layer_call_fn_28637921inputs"╩
├▓┐
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsб

 
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
јBІ
2__inference_forward_lstm_92_layer_call_fn_28637932inputs"╩
├▓┐
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsб

 
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ФBе
M__inference_forward_lstm_92_layer_call_and_return_conditional_losses_28638075inputs_0"╩
├▓┐
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsб

 
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ФBе
M__inference_forward_lstm_92_layer_call_and_return_conditional_losses_28638218inputs_0"╩
├▓┐
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsб

 
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЕBд
M__inference_forward_lstm_92_layer_call_and_return_conditional_losses_28638361inputs"╩
├▓┐
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsб

 
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЕBд
M__inference_forward_lstm_92_layer_call_and_return_conditional_losses_28638504inputs"╩
├▓┐
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsб

 
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
 "
trackable_dict_wrapper
8
І0
ї1
Ї2"
trackable_list_wrapper
8
І0
ї1
Ї2"
trackable_list_wrapper
 "
trackable_list_wrapper
И
ѓnon_trainable_variables
Ѓlayers
ёmetrics
 Ёlayer_regularization_losses
єlayer_metrics
р	variables
Рtrainable_variables
сregularization_losses
т__call__
+Т&call_and_return_all_conditional_losses
'Т"call_and_return_conditional_losses"
_generic_user_object
═
Єtrace_0
ѕtrace_12њ
,__inference_lstm_cell_layer_call_fn_28639145
,__inference_lstm_cell_layer_call_fn_28639162│
г▓е
FullArgSpec+
args#џ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsб
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zЄtrace_0zѕtrace_1
Ѓ
Ѕtrace_0
іtrace_12╚
G__inference_lstm_cell_layer_call_and_return_conditional_losses_28639194
G__inference_lstm_cell_layer_call_and_return_conditional_losses_28639226│
г▓е
FullArgSpec+
args#џ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsб
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zЅtrace_0zіtrace_1
D
$І_self_saveable_object_factories"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
Џ0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЉBј
3__inference_backward_lstm_92_layer_call_fn_28638515inputs_0"╩
├▓┐
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsб

 
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЉBј
3__inference_backward_lstm_92_layer_call_fn_28638526inputs_0"╩
├▓┐
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsб

 
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЈBї
3__inference_backward_lstm_92_layer_call_fn_28638537inputs"╩
├▓┐
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsб

 
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЈBї
3__inference_backward_lstm_92_layer_call_fn_28638548inputs"╩
├▓┐
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsб

 
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
гBЕ
N__inference_backward_lstm_92_layer_call_and_return_conditional_losses_28638693inputs_0"╩
├▓┐
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsб

 
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
гBЕ
N__inference_backward_lstm_92_layer_call_and_return_conditional_losses_28638838inputs_0"╩
├▓┐
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsб

 
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
фBД
N__inference_backward_lstm_92_layer_call_and_return_conditional_losses_28638983inputs"╩
├▓┐
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsб

 
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
фBД
N__inference_backward_lstm_92_layer_call_and_return_conditional_losses_28639128inputs"╩
├▓┐
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsб

 
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
 "
trackable_dict_wrapper
8
ј0
Ј1
љ2"
trackable_list_wrapper
8
ј0
Ј1
љ2"
trackable_list_wrapper
 "
trackable_list_wrapper
И
їnon_trainable_variables
Їlayers
јmetrics
 Јlayer_regularization_losses
љlayer_metrics
щ	variables
Щtrainable_variables
чregularization_losses
§__call__
+■&call_and_return_all_conditional_losses
'■"call_and_return_conditional_losses"
_generic_user_object
═
Љtrace_0
њtrace_12њ
,__inference_lstm_cell_layer_call_fn_28639243
,__inference_lstm_cell_layer_call_fn_28639260│
г▓е
FullArgSpec+
args#џ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsб
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zЉtrace_0zњtrace_1
Ѓ
Њtrace_0
ћtrace_12╚
G__inference_lstm_cell_layer_call_and_return_conditional_losses_28639292
G__inference_lstm_cell_layer_call_and_return_conditional_losses_28639324│
г▓е
FullArgSpec+
args#џ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsб
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zЊtrace_0zћtrace_1
D
$Ћ_self_saveable_object_factories"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЁBѓ
,__inference_lstm_cell_layer_call_fn_28639145inputsstates_0states_1"│
г▓е
FullArgSpec+
args#џ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsб
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЁBѓ
,__inference_lstm_cell_layer_call_fn_28639162inputsstates_0states_1"│
г▓е
FullArgSpec+
args#џ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsб
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
аBЮ
G__inference_lstm_cell_layer_call_and_return_conditional_losses_28639194inputsstates_0states_1"│
г▓е
FullArgSpec+
args#џ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsб
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
аBЮ
G__inference_lstm_cell_layer_call_and_return_conditional_losses_28639226inputsstates_0states_1"│
г▓е
FullArgSpec+
args#џ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsб
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЁBѓ
,__inference_lstm_cell_layer_call_fn_28639243inputsstates_0states_1"│
г▓е
FullArgSpec+
args#џ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsб
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЁBѓ
,__inference_lstm_cell_layer_call_fn_28639260inputsstates_0states_1"│
г▓е
FullArgSpec+
args#џ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsб
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
аBЮ
G__inference_lstm_cell_layer_call_and_return_conditional_losses_28639292inputsstates_0states_1"│
г▓е
FullArgSpec+
args#џ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsб
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
аBЮ
G__inference_lstm_cell_layer_call_and_return_conditional_losses_28639324inputsstates_0states_1"│
г▓е
FullArgSpec+
args#џ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsб
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
 "
trackable_dict_wrapperд
#__inference__wrapped_model_28633642""#ЃёЁєЄѕЅіІїЇјЈљђЂ+б(
!б
і
input_3
ф ",ф)
'
	dense_593і
	dense_593у
N__inference_backward_lstm_92_layer_call_and_return_conditional_losses_28638693ћјЈљOбL
EбB
4џ1
/і,
inputs_0                  

 
p

 
ф "9б6
/і,
tensor_0                  
џ у
N__inference_backward_lstm_92_layer_call_and_return_conditional_losses_28638838ћјЈљOбL
EбB
4џ1
/і,
inputs_0                  

 
p 

 
ф "9б6
/і,
tensor_0                  
џ ж
N__inference_backward_lstm_92_layer_call_and_return_conditional_losses_28638983ќјЈљQбN
GбD
6і3
inputs'                           

 
p

 
ф "9б6
/і,
tensor_0                  
џ ж
N__inference_backward_lstm_92_layer_call_and_return_conditional_losses_28639128ќјЈљQбN
GбD
6і3
inputs'                           

 
p 

 
ф "9б6
/і,
tensor_0                  
џ ┴
3__inference_backward_lstm_92_layer_call_fn_28638515ЅјЈљOбL
EбB
4џ1
/і,
inputs_0                  

 
p

 
ф ".і+
unknown                  ┴
3__inference_backward_lstm_92_layer_call_fn_28638526ЅјЈљOбL
EбB
4џ1
/і,
inputs_0                  

 
p 

 
ф ".і+
unknown                  ├
3__inference_backward_lstm_92_layer_call_fn_28638537ІјЈљQбN
GбD
6і3
inputs'                           

 
p

 
ф ".і+
unknown                  ├
3__inference_backward_lstm_92_layer_call_fn_28638548ІјЈљQбN
GбD
6і3
inputs'                           

 
p 

 
ф ".і+
unknown                  Щ
N__inference_bidirectional_92_layer_call_and_return_conditional_losses_28636807ДІїЇјЈљ\бY
RбO
=џ:
8і5
inputs_0'                           
p

 

 

 
ф "9б6
/і,
tensor_0                  
џ Щ
N__inference_bidirectional_92_layer_call_and_return_conditional_losses_28637095ДІїЇјЈљ\бY
RбO
=џ:
8і5
inputs_0'                           
p 

 

 

 
ф "9б6
/і,
tensor_0                  
џ ┼
N__inference_bidirectional_92_layer_call_and_return_conditional_losses_28637383sІїЇјЈљ:б7
0б-
і
inputs
p

 

 

 
ф "'б$
і
tensor_0
џ ┼
N__inference_bidirectional_92_layer_call_and_return_conditional_losses_28637671sІїЇјЈљ:б7
0б-
і
inputs
p 

 

 

 
ф "'б$
і
tensor_0
џ н
3__inference_bidirectional_92_layer_call_fn_28636468юІїЇјЈљ\бY
RбO
=џ:
8і5
inputs_0'                           
p

 

 

 
ф ".і+
unknown                  н
3__inference_bidirectional_92_layer_call_fn_28636485юІїЇјЈљ\бY
RбO
=џ:
8і5
inputs_0'                           
p 

 

 

 
ф ".і+
unknown                  Ъ
3__inference_bidirectional_92_layer_call_fn_28636502hІїЇјЈљ:б7
0б-
і
inputs
p

 

 

 
ф "і
unknownЪ
3__inference_bidirectional_92_layer_call_fn_28636519hІїЇјЈљ:б7
0б-
і
inputs
p 

 

 

 
ф "і
unknownц
G__inference_dense_576_layer_call_and_return_conditional_losses_28636379Y"#*б'
 б
і
inputs
ф "'б$
і
tensor_0
џ ~
,__inference_dense_576_layer_call_fn_28636364N"#*б'
 б
і
inputs
ф "і
unknownИ
G__inference_dense_577_layer_call_and_return_conditional_losses_28637768mЃё3б0
)б&
$і!
inputs         
ф "0б-
&і#
tensor_0         
џ њ
,__inference_dense_577_layer_call_fn_28637737bЃё3б0
)б&
$і!
inputs         
ф "%і"
unknown         И
G__inference_dense_582_layer_call_and_return_conditional_losses_28637808mЁє3б0
)б&
$і!
inputs         
ф "0б-
&і#
tensor_0         
џ њ
,__inference_dense_582_layer_call_fn_28637777bЁє3б0
)б&
$і!
inputs         
ф "%і"
unknown         И
G__inference_dense_587_layer_call_and_return_conditional_losses_28637848mЄѕ3б0
)б&
$і!
inputs         
ф "0б-
&і#
tensor_0         
џ њ
,__inference_dense_587_layer_call_fn_28637817bЄѕ3б0
)б&
$і!
inputs         
ф "%і"
unknown         И
G__inference_dense_592_layer_call_and_return_conditional_losses_28637888mЅі3б0
)б&
$і!
inputs         
ф "0б-
&і#
tensor_0         
џ њ
,__inference_dense_592_layer_call_fn_28637857bЅі3б0
)б&
$і!
inputs         
ф "%і"
unknown         Ъ
G__inference_dense_593_layer_call_and_return_conditional_losses_28637728TђЂ'б$
б
і
inputs	ђ
ф "#б 
і
tensor_0
џ y
,__inference_dense_593_layer_call_fn_28637718IђЂ'б$
б
і
inputs	ђ
ф "і
unknownЦ
H__inference_dropout_92_layer_call_and_return_conditional_losses_28637693Y.б+
$б!
і
inputs
p
ф "'б$
і
tensor_0
џ Ц
H__inference_dropout_92_layer_call_and_return_conditional_losses_28637698Y.б+
$б!
і
inputs
p 
ф "'б$
і
tensor_0
џ 
-__inference_dropout_92_layer_call_fn_28637676N.б+
$б!
і
inputs
p
ф "і
unknown
-__inference_dropout_92_layer_call_fn_28637681N.б+
$б!
і
inputs
p 
ф "і
unknownъ
H__inference_flatten_92_layer_call_and_return_conditional_losses_28637709R*б'
 б
і
inputs
ф "$б!
і
tensor_0	ђ
џ x
-__inference_flatten_92_layer_call_fn_28637703G*б'
 б
і
inputs
ф "і
unknown	ђТ
M__inference_forward_lstm_92_layer_call_and_return_conditional_losses_28638075ћІїЇOбL
EбB
4џ1
/і,
inputs_0                  

 
p

 
ф "9б6
/і,
tensor_0                  
џ Т
M__inference_forward_lstm_92_layer_call_and_return_conditional_losses_28638218ћІїЇOбL
EбB
4џ1
/і,
inputs_0                  

 
p 

 
ф "9б6
/і,
tensor_0                  
џ У
M__inference_forward_lstm_92_layer_call_and_return_conditional_losses_28638361ќІїЇQбN
GбD
6і3
inputs'                           

 
p

 
ф "9б6
/і,
tensor_0                  
џ У
M__inference_forward_lstm_92_layer_call_and_return_conditional_losses_28638504ќІїЇQбN
GбD
6і3
inputs'                           

 
p 

 
ф "9б6
/і,
tensor_0                  
џ └
2__inference_forward_lstm_92_layer_call_fn_28637899ЅІїЇOбL
EбB
4џ1
/і,
inputs_0                  

 
p

 
ф ".і+
unknown                  └
2__inference_forward_lstm_92_layer_call_fn_28637910ЅІїЇOбL
EбB
4џ1
/і,
inputs_0                  

 
p 

 
ф ".і+
unknown                  ┬
2__inference_forward_lstm_92_layer_call_fn_28637921ІІїЇQбN
GбD
6і3
inputs'                           

 
p

 
ф ".і+
unknown                  ┬
2__inference_forward_lstm_92_layer_call_fn_28637932ІІїЇQбN
GбD
6і3
inputs'                           

 
p 

 
ф ".і+
unknown                  М
G__inference_lambda_96_layer_call_and_return_conditional_losses_28636397Є\бY
RбO
EџB
і
inputs_0
!і
inputs_1

 
p
ф "'б$
і
tensor_0
џ М
G__inference_lambda_96_layer_call_and_return_conditional_losses_28636403Є\бY
RбO
EџB
і
inputs_0
!і
inputs_1

 
p 
ф "'б$
і
tensor_0
џ г
,__inference_lambda_96_layer_call_fn_28636385|\бY
RбO
EџB
і
inputs_0
!і
inputs_1

 
p
ф "і
unknownг
,__inference_lambda_96_layer_call_fn_28636391|\бY
RбO
EџB
і
inputs_0
!і
inputs_1

 
p 
ф "і
unknownМ
G__inference_lambda_97_layer_call_and_return_conditional_losses_28636421ЄXбU
NбK
Aџ>
і
inputs_0
і
inputs_1

 
p
ф "+б(
!і
tensor_0
џ М
G__inference_lambda_97_layer_call_and_return_conditional_losses_28636427ЄXбU
NбK
Aџ>
і
inputs_0
і
inputs_1

 
p 
ф "+б(
!і
tensor_0
џ г
,__inference_lambda_97_layer_call_fn_28636409|XбU
NбK
Aџ>
і
inputs_0
і
inputs_1

 
p
ф " і
unknownг
,__inference_lambda_97_layer_call_fn_28636415|XбU
NбK
Aџ>
і
inputs_0
і
inputs_1

 
p 
ф " і
unknownМ
G__inference_lambda_98_layer_call_and_return_conditional_losses_28636445Є\бY
RбO
EџB
!і
inputs_0
і
inputs_1

 
p
ф "'б$
і
tensor_0
џ М
G__inference_lambda_98_layer_call_and_return_conditional_losses_28636451Є\бY
RбO
EџB
!і
inputs_0
і
inputs_1

 
p 
ф "'б$
і
tensor_0
џ г
,__inference_lambda_98_layer_call_fn_28636433|\бY
RбO
EџB
!і
inputs_0
і
inputs_1

 
p
ф "і
unknownг
,__inference_lambda_98_layer_call_fn_28636439|\бY
RбO
EџB
!і
inputs_0
і
inputs_1

 
p 
ф "і
unknownс
G__inference_lstm_cell_layer_call_and_return_conditional_losses_28639194ЌІїЇђб}
vбs
 і
inputs         
KбH
"і
states_0         
"і
states_1         
p
ф "ЅбЁ
~б{
$і!

tensor_0_0         
SџP
&і#
tensor_0_1_0         
&і#
tensor_0_1_1         
џ с
G__inference_lstm_cell_layer_call_and_return_conditional_losses_28639226ЌІїЇђб}
vбs
 і
inputs         
KбH
"і
states_0         
"і
states_1         
p 
ф "ЅбЁ
~б{
$і!

tensor_0_0         
SџP
&і#
tensor_0_1_0         
&і#
tensor_0_1_1         
џ с
G__inference_lstm_cell_layer_call_and_return_conditional_losses_28639292ЌјЈљђб}
vбs
 і
inputs         
KбH
"і
states_0         
"і
states_1         
p
ф "ЅбЁ
~б{
$і!

tensor_0_0         
SџP
&і#
tensor_0_1_0         
&і#
tensor_0_1_1         
џ с
G__inference_lstm_cell_layer_call_and_return_conditional_losses_28639324ЌјЈљђб}
vбs
 і
inputs         
KбH
"і
states_0         
"і
states_1         
p 
ф "ЅбЁ
~б{
$і!

tensor_0_0         
SџP
&і#
tensor_0_1_0         
&і#
tensor_0_1_1         
џ Х
,__inference_lstm_cell_layer_call_fn_28639145ЁІїЇђб}
vбs
 і
inputs         
KбH
"і
states_0         
"і
states_1         
p
ф "xбu
"і
tensor_0         
OџL
$і!

tensor_1_0         
$і!

tensor_1_1         Х
,__inference_lstm_cell_layer_call_fn_28639162ЁІїЇђб}
vбs
 і
inputs         
KбH
"і
states_0         
"і
states_1         
p 
ф "xбu
"і
tensor_0         
OџL
$і!

tensor_1_0         
$і!

tensor_1_1         Х
,__inference_lstm_cell_layer_call_fn_28639243ЁјЈљђб}
vбs
 і
inputs         
KбH
"і
states_0         
"і
states_1         
p
ф "xбu
"і
tensor_0         
OџL
$і!

tensor_1_0         
$і!

tensor_1_1         Х
,__inference_lstm_cell_layer_call_fn_28639260ЁјЈљђб}
vбs
 і
inputs         
KбH
"і
states_0         
"і
states_1         
p 
ф "xбu
"і
tensor_0         
OџL
$і!

tensor_1_0         
$і!

tensor_1_1         ╬
L__inference_sequential_392_layer_call_and_return_conditional_losses_28633682~ЃёDбA
:б7
-і*
dense_577_input         
p

 
ф "0б-
&і#
tensor_0         
џ ╬
L__inference_sequential_392_layer_call_and_return_conditional_losses_28633691~ЃёDбA
:б7
-і*
dense_577_input         
p 

 
ф "0б-
&і#
tensor_0         
џ е
1__inference_sequential_392_layer_call_fn_28633700sЃёDбA
:б7
-і*
dense_577_input         
p

 
ф "%і"
unknown         е
1__inference_sequential_392_layer_call_fn_28633709sЃёDбA
:б7
-і*
dense_577_input         
p 

 
ф "%і"
unknown         ╬
L__inference_sequential_397_layer_call_and_return_conditional_losses_28633758~ЁєDбA
:б7
-і*
dense_582_input         
p

 
ф "0б-
&і#
tensor_0         
џ ╬
L__inference_sequential_397_layer_call_and_return_conditional_losses_28633767~ЁєDбA
:б7
-і*
dense_582_input         
p 

 
ф "0б-
&і#
tensor_0         
џ е
1__inference_sequential_397_layer_call_fn_28633776sЁєDбA
:б7
-і*
dense_582_input         
p

 
ф "%і"
unknown         е
1__inference_sequential_397_layer_call_fn_28633785sЁєDбA
:б7
-і*
dense_582_input         
p 

 
ф "%і"
unknown         ╬
L__inference_sequential_402_layer_call_and_return_conditional_losses_28633834~ЄѕDбA
:б7
-і*
dense_587_input         
p

 
ф "0б-
&і#
tensor_0         
џ ╬
L__inference_sequential_402_layer_call_and_return_conditional_losses_28633843~ЄѕDбA
:б7
-і*
dense_587_input         
p 

 
ф "0б-
&і#
tensor_0         
џ е
1__inference_sequential_402_layer_call_fn_28633852sЄѕDбA
:б7
-і*
dense_587_input         
p

 
ф "%і"
unknown         е
1__inference_sequential_402_layer_call_fn_28633861sЄѕDбA
:б7
-і*
dense_587_input         
p 

 
ф "%і"
unknown         ╬
L__inference_sequential_407_layer_call_and_return_conditional_losses_28633910~ЅіDбA
:б7
-і*
dense_592_input         
p

 
ф "0б-
&і#
tensor_0         
џ ╬
L__inference_sequential_407_layer_call_and_return_conditional_losses_28633919~ЅіDбA
:б7
-і*
dense_592_input         
p 

 
ф "0б-
&і#
tensor_0         
џ е
1__inference_sequential_407_layer_call_fn_28633928sЅіDбA
:б7
-і*
dense_592_input         
p

 
ф "%і"
unknown         е
1__inference_sequential_407_layer_call_fn_28633937sЅіDбA
:б7
-і*
dense_592_input         
p 

 
ф "%і"
unknown         х
&__inference_signature_wrapper_28636355і""#ЃёЁєЄѕЅіІїЇјЈљђЂ6б3
б 
,ф)
'
input_3і
input_3",ф)
'
	dense_593і
	dense_593¤
M__inference_topk_bilstm_moe_layer_call_and_return_conditional_losses_28635753~""#ЃёЁєЄѕЅіІїЇјЈљђЂ3б0
)б&
і
input_3
p

 
ф "#б 
і
tensor_0
џ ¤
M__inference_topk_bilstm_moe_layer_call_and_return_conditional_losses_28636128~""#ЃёЁєЄѕЅіІїЇјЈљђЂ3б0
)б&
і
input_3
p 

 
ф "#б 
і
tensor_0
џ Е
2__inference_topk_bilstm_moe_layer_call_fn_28636169s""#ЃёЁєЄѕЅіІїЇјЈљђЂ3б0
)б&
і
input_3
p

 
ф "і
unknownЕ
2__inference_topk_bilstm_moe_layer_call_fn_28636210s""#ЃёЁєЄѕЅіІїЇјЈљђЂ3б0
)б&
і
input_3
p 

 
ф "і
unknown