9
Џџ
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 

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
resource
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

MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( 
?
Mul
x"T
y"T
z"T"
Ttype:
2	

NoOp

OneHot
indices"TI	
depth
on_value"T
	off_value"T
output"T"
axisintџџџџџџџџџ"	
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
dtypetype
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
list(type)(0
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
list(type)(0
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
С
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
executor_typestring Ј
@
StaticRegexFullMatch	
input

output
"
patternstring
ї
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
А
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type/
output_handleщшelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListReserve
element_shape"
shape_type
num_elements(
handleщшelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsintџџџџџџџџџ
Ќ
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

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 

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
"serve*2.13.02v2.13.0-rc2-7-g1cb1a030a628Б4
И
0bidirectional_94/backward_lstm_94/lstm_cell/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *A
shared_name20bidirectional_94/backward_lstm_94/lstm_cell/bias
Б
Dbidirectional_94/backward_lstm_94/lstm_cell/bias/Read/ReadVariableOpReadVariableOp0bidirectional_94/backward_lstm_94/lstm_cell/bias*
_output_shapes
: *
dtype0
д
<bidirectional_94/backward_lstm_94/lstm_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *M
shared_name><bidirectional_94/backward_lstm_94/lstm_cell/recurrent_kernel
Э
Pbidirectional_94/backward_lstm_94/lstm_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp<bidirectional_94/backward_lstm_94/lstm_cell/recurrent_kernel*
_output_shapes

: *
dtype0
Р
2bidirectional_94/backward_lstm_94/lstm_cell/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *C
shared_name42bidirectional_94/backward_lstm_94/lstm_cell/kernel
Й
Fbidirectional_94/backward_lstm_94/lstm_cell/kernel/Read/ReadVariableOpReadVariableOp2bidirectional_94/backward_lstm_94/lstm_cell/kernel*
_output_shapes

: *
dtype0
Ж
/bidirectional_94/forward_lstm_94/lstm_cell/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *@
shared_name1/bidirectional_94/forward_lstm_94/lstm_cell/bias
Џ
Cbidirectional_94/forward_lstm_94/lstm_cell/bias/Read/ReadVariableOpReadVariableOp/bidirectional_94/forward_lstm_94/lstm_cell/bias*
_output_shapes
: *
dtype0
в
;bidirectional_94/forward_lstm_94/lstm_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *L
shared_name=;bidirectional_94/forward_lstm_94/lstm_cell/recurrent_kernel
Ы
Obidirectional_94/forward_lstm_94/lstm_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp;bidirectional_94/forward_lstm_94/lstm_cell/recurrent_kernel*
_output_shapes

: *
dtype0
О
1bidirectional_94/forward_lstm_94/lstm_cell/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *B
shared_name31bidirectional_94/forward_lstm_94/lstm_cell/kernel
З
Ebidirectional_94/forward_lstm_94/lstm_cell/kernel/Read/ReadVariableOpReadVariableOp1bidirectional_94/forward_lstm_94/lstm_cell/kernel*
_output_shapes

: *
dtype0
t
dense_628/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_628/bias
m
"dense_628/bias/Read/ReadVariableOpReadVariableOpdense_628/bias*
_output_shapes
:*
dtype0
|
dense_628/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*!
shared_namedense_628/kernel
u
$dense_628/kernel/Read/ReadVariableOpReadVariableOpdense_628/kernel*
_output_shapes

:*
dtype0
t
dense_623/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_623/bias
m
"dense_623/bias/Read/ReadVariableOpReadVariableOpdense_623/bias*
_output_shapes
:*
dtype0
|
dense_623/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*!
shared_namedense_623/kernel
u
$dense_623/kernel/Read/ReadVariableOpReadVariableOpdense_623/kernel*
_output_shapes

:*
dtype0
t
dense_618/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_618/bias
m
"dense_618/bias/Read/ReadVariableOpReadVariableOpdense_618/bias*
_output_shapes
:*
dtype0
|
dense_618/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*!
shared_namedense_618/kernel
u
$dense_618/kernel/Read/ReadVariableOpReadVariableOpdense_618/kernel*
_output_shapes

:*
dtype0
t
dense_613/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_613/bias
m
"dense_613/bias/Read/ReadVariableOpReadVariableOpdense_613/bias*
_output_shapes
:*
dtype0
|
dense_613/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*!
shared_namedense_613/kernel
u
$dense_613/kernel/Read/ReadVariableOpReadVariableOpdense_613/kernel*
_output_shapes

:*
dtype0
t
dense_629/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_629/bias
m
"dense_629/bias/Read/ReadVariableOpReadVariableOpdense_629/bias*
_output_shapes
:*
dtype0
}
dense_629/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*!
shared_namedense_629/kernel
v
$dense_629/kernel/Read/ReadVariableOpReadVariableOpdense_629/kernel*
_output_shapes
:	*
dtype0
t
dense_612/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_612/bias
m
"dense_612/bias/Read/ReadVariableOpReadVariableOpdense_612/bias*
_output_shapes
:*
dtype0
|
dense_612/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*!
shared_namedense_612/kernel
u
$dense_612/kernel/Read/ReadVariableOpReadVariableOpdense_612/kernel*
_output_shapes

:*
dtype0
p
serving_default_input_5Placeholder*"
_output_shapes
:*
dtype0*
shape:
р
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_5dense_612/kerneldense_612/biasdense_613/kerneldense_613/biasdense_618/kerneldense_618/biasdense_623/kerneldense_623/biasdense_628/kerneldense_628/bias1bidirectional_94/forward_lstm_94/lstm_cell/kernel;bidirectional_94/forward_lstm_94/lstm_cell/recurrent_kernel/bidirectional_94/forward_lstm_94/lstm_cell/bias2bidirectional_94/backward_lstm_94/lstm_cell/kernel<bidirectional_94/backward_lstm_94/lstm_cell/recurrent_kernel0bidirectional_94/backward_lstm_94/lstm_cell/biasdense_629/kerneldense_629/bias*
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
GPU 2J 8 */
f*R(
&__inference_signature_wrapper_56045779

NoOpNoOp

ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*Ь
valueСBН BЕ
ќ
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
Ы
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
Г
)	variables
*trainable_variables
+regularization_losses
,	keras_api
-__call__
*.&call_and_return_all_conditional_losses
#/_self_saveable_object_factories* 
Г
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
м
9layer_with_weights-0
9layer-0
:	variables
;trainable_variables
<regularization_losses
=	keras_api
>__call__
*?&call_and_return_all_conditional_losses
#@_self_saveable_object_factories*
м
Alayer_with_weights-0
Alayer-0
B	variables
Ctrainable_variables
Dregularization_losses
E	keras_api
F__call__
*G&call_and_return_all_conditional_losses
#H_self_saveable_object_factories*
м
Ilayer_with_weights-0
Ilayer-0
J	variables
Ktrainable_variables
Lregularization_losses
M	keras_api
N__call__
*O&call_and_return_all_conditional_losses
#P_self_saveable_object_factories*
м
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
Г
[	variables
\trainable_variables
]regularization_losses
^	keras_api
___call__
*`&call_and_return_all_conditional_losses
#a_self_saveable_object_factories* 
м
b	variables
ctrainable_variables
dregularization_losses
e	keras_api
f__call__
*g&call_and_return_all_conditional_losses
hforward_layer
ibackward_layer
#j_self_saveable_object_factories*
Ъ
k	variables
ltrainable_variables
mregularization_losses
n	keras_api
o__call__
*p&call_and_return_all_conditional_losses
q_random_generator
#r_self_saveable_object_factories* 
Г
s	variables
ttrainable_variables
uregularization_losses
v	keras_api
w__call__
*x&call_and_return_all_conditional_losses
#y_self_saveable_object_factories* 
Ю
z	variables
{trainable_variables
|regularization_losses
}	keras_api
~__call__
*&call_and_return_all_conditional_losses
kernel
	bias
$_self_saveable_object_factories*

"0
#1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17*

"0
#1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17*
* 
Е
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

trace_0
trace_1* 

trace_0
trace_1* 
* 

serving_default* 
* 
* 

"0
#1*

"0
#1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
 __call__
*!&call_and_return_all_conditional_losses
&!"call_and_return_conditional_losses*

 trace_0* 

Ёtrace_0* 
`Z
VARIABLE_VALUEdense_612/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEdense_612/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 

Ђnon_trainable_variables
Ѓlayers
Єmetrics
 Ѕlayer_regularization_losses
Іlayer_metrics
)	variables
*trainable_variables
+regularization_losses
-__call__
*.&call_and_return_all_conditional_losses
&."call_and_return_conditional_losses* 

Їtrace_0
Јtrace_1* 

Љtrace_0
Њtrace_1* 
* 
* 
* 
* 

Ћnon_trainable_variables
Ќlayers
­metrics
 Ўlayer_regularization_losses
Џlayer_metrics
0	variables
1trainable_variables
2regularization_losses
4__call__
*5&call_and_return_all_conditional_losses
&5"call_and_return_conditional_losses* 

Аtrace_0
Бtrace_1* 

Вtrace_0
Гtrace_1* 
* 
* 
* 
д
Д	variables
Еtrainable_variables
Жregularization_losses
З	keras_api
И__call__
+Й&call_and_return_all_conditional_losses
kernel
	bias
$К_self_saveable_object_factories*

0
1*

0
1*
* 

Лnon_trainable_variables
Мlayers
Нmetrics
 Оlayer_regularization_losses
Пlayer_metrics
:	variables
;trainable_variables
<regularization_losses
>__call__
*?&call_and_return_all_conditional_losses
&?"call_and_return_conditional_losses*

Рtrace_0
Сtrace_1* 

Тtrace_0
Уtrace_1* 
* 
д
Ф	variables
Хtrainable_variables
Цregularization_losses
Ч	keras_api
Ш__call__
+Щ&call_and_return_all_conditional_losses
kernel
	bias
$Ъ_self_saveable_object_factories*

0
1*

0
1*
* 

Ыnon_trainable_variables
Ьlayers
Эmetrics
 Юlayer_regularization_losses
Яlayer_metrics
B	variables
Ctrainable_variables
Dregularization_losses
F__call__
*G&call_and_return_all_conditional_losses
&G"call_and_return_conditional_losses*

аtrace_0
бtrace_1* 

вtrace_0
гtrace_1* 
* 
д
д	variables
еtrainable_variables
жregularization_losses
з	keras_api
и__call__
+й&call_and_return_all_conditional_losses
kernel
	bias
$к_self_saveable_object_factories*

0
1*

0
1*
* 

лnon_trainable_variables
мlayers
нmetrics
 оlayer_regularization_losses
пlayer_metrics
J	variables
Ktrainable_variables
Lregularization_losses
N__call__
*O&call_and_return_all_conditional_losses
&O"call_and_return_conditional_losses*

рtrace_0
сtrace_1* 

тtrace_0
уtrace_1* 
* 
д
ф	variables
хtrainable_variables
цregularization_losses
ч	keras_api
ш__call__
+щ&call_and_return_all_conditional_losses
kernel
	bias
$ъ_self_saveable_object_factories*

0
1*

0
1*
* 

ыnon_trainable_variables
ьlayers
эmetrics
 юlayer_regularization_losses
яlayer_metrics
R	variables
Strainable_variables
Tregularization_losses
V__call__
*W&call_and_return_all_conditional_losses
&W"call_and_return_conditional_losses*

№trace_0
ёtrace_1* 

ђtrace_0
ѓtrace_1* 
* 
* 
* 
* 
* 
* 

єnon_trainable_variables
ѕlayers
іmetrics
 їlayer_regularization_losses
јlayer_metrics
[	variables
\trainable_variables
]regularization_losses
___call__
*`&call_and_return_all_conditional_losses
&`"call_and_return_conditional_losses* 

љtrace_0
њtrace_1* 

ћtrace_0
ќtrace_1* 
* 
4
0
1
2
3
4
5*
4
0
1
2
3
4
5*
* 

§non_trainable_variables
ўlayers
џmetrics
 layer_regularization_losses
layer_metrics
b	variables
ctrainable_variables
dregularization_losses
f__call__
*g&call_and_return_all_conditional_losses
&g"call_and_return_conditional_losses*
:
trace_0
trace_1
trace_2
trace_3* 
:
trace_0
trace_1
trace_2
trace_3* 
№
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
_random_generator
	cell

state_spec
$_self_saveable_object_factories*
№
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
_random_generator
	cell

state_spec
$_self_saveable_object_factories*
* 
* 
* 
* 

non_trainable_variables
layers
 metrics
 Ёlayer_regularization_losses
Ђlayer_metrics
k	variables
ltrainable_variables
mregularization_losses
o__call__
*p&call_and_return_all_conditional_losses
&p"call_and_return_conditional_losses* 

Ѓtrace_0
Єtrace_1* 

Ѕtrace_0
Іtrace_1* 
(
$Ї_self_saveable_object_factories* 
* 
* 
* 
* 

Јnon_trainable_variables
Љlayers
Њmetrics
 Ћlayer_regularization_losses
Ќlayer_metrics
s	variables
ttrainable_variables
uregularization_losses
w__call__
*x&call_and_return_all_conditional_losses
&x"call_and_return_conditional_losses* 

­trace_0* 

Ўtrace_0* 
* 

0
1*

0
1*
* 

Џnon_trainable_variables
Аlayers
Бmetrics
 Вlayer_regularization_losses
Гlayer_metrics
z	variables
{trainable_variables
|regularization_losses
~__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

Дtrace_0* 

Еtrace_0* 
`Z
VARIABLE_VALUEdense_629/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEdense_629/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
PJ
VARIABLE_VALUEdense_613/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEdense_613/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEdense_618/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEdense_618/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEdense_623/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEdense_623/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEdense_628/kernel&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEdense_628/bias&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUE1bidirectional_94/forward_lstm_94/lstm_cell/kernel'variables/10/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE;bidirectional_94/forward_lstm_94/lstm_cell/recurrent_kernel'variables/11/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUE/bidirectional_94/forward_lstm_94/lstm_cell/bias'variables/12/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUE2bidirectional_94/backward_lstm_94/lstm_cell/kernel'variables/13/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE<bidirectional_94/backward_lstm_94/lstm_cell/recurrent_kernel'variables/14/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUE0bidirectional_94/backward_lstm_94/lstm_cell/bias'variables/15/.ATTRIBUTES/VARIABLE_VALUE*
* 

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
0
1*

0
1*
* 

Жnon_trainable_variables
Зlayers
Иmetrics
 Йlayer_regularization_losses
Кlayer_metrics
Д	variables
Еtrainable_variables
Жregularization_losses
И__call__
+Й&call_and_return_all_conditional_losses
'Й"call_and_return_conditional_losses*

Лtrace_0* 

Мtrace_0* 
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
0
1*

0
1*
* 

Нnon_trainable_variables
Оlayers
Пmetrics
 Рlayer_regularization_losses
Сlayer_metrics
Ф	variables
Хtrainable_variables
Цregularization_losses
Ш__call__
+Щ&call_and_return_all_conditional_losses
'Щ"call_and_return_conditional_losses*

Тtrace_0* 

Уtrace_0* 
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
0
1*

0
1*
* 

Фnon_trainable_variables
Хlayers
Цmetrics
 Чlayer_regularization_losses
Шlayer_metrics
д	variables
еtrainable_variables
жregularization_losses
и__call__
+й&call_and_return_all_conditional_losses
'й"call_and_return_conditional_losses*

Щtrace_0* 

Ъtrace_0* 
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
0
1*

0
1*
* 

Ыnon_trainable_variables
Ьlayers
Эmetrics
 Юlayer_regularization_losses
Яlayer_metrics
ф	variables
хtrainable_variables
цregularization_losses
ш__call__
+щ&call_and_return_all_conditional_losses
'щ"call_and_return_conditional_losses*

аtrace_0* 

бtrace_0* 
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

0
1
2*

0
1
2*
* 
Ћ
вstates
гnon_trainable_variables
дlayers
еmetrics
 жlayer_regularization_losses
зlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*
:
иtrace_0
йtrace_1
кtrace_2
лtrace_3* 
:
мtrace_0
нtrace_1
оtrace_2
пtrace_3* 
(
$р_self_saveable_object_factories* 

с	variables
тtrainable_variables
уregularization_losses
ф	keras_api
х__call__
+ц&call_and_return_all_conditional_losses
ч_random_generator
ш
state_size
kernel
recurrent_kernel
	bias
$щ_self_saveable_object_factories*
* 
* 

0
1
2*

0
1
2*
* 
Ћ
ъstates
ыnon_trainable_variables
ьlayers
эmetrics
 юlayer_regularization_losses
яlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*
:
№trace_0
ёtrace_1
ђtrace_2
ѓtrace_3* 
:
єtrace_0
ѕtrace_1
іtrace_2
їtrace_3* 
(
$ј_self_saveable_object_factories* 

љ	variables
њtrainable_variables
ћregularization_losses
ќ	keras_api
§__call__
+ў&call_and_return_all_conditional_losses
џ_random_generator

state_size
kernel
recurrent_kernel
	bias
$_self_saveable_object_factories*
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

0*
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

0
1
2*

0
1
2*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
с	variables
тtrainable_variables
уregularization_losses
х__call__
+ц&call_and_return_all_conditional_losses
'ц"call_and_return_conditional_losses*

trace_0
trace_1* 

trace_0
trace_1* 
(
$_self_saveable_object_factories* 
* 
* 
* 
* 

0*
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

0
1
2*

0
1
2*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
љ	variables
њtrainable_variables
ћregularization_losses
§__call__
+ў&call_and_return_all_conditional_losses
'ў"call_and_return_conditional_losses*

trace_0
trace_1* 

trace_0
trace_1* 
(
$_self_saveable_object_factories* 
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
Р
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenamedense_612/kerneldense_612/biasdense_629/kerneldense_629/biasdense_613/kerneldense_613/biasdense_618/kerneldense_618/biasdense_623/kerneldense_623/biasdense_628/kerneldense_628/bias1bidirectional_94/forward_lstm_94/lstm_cell/kernel;bidirectional_94/forward_lstm_94/lstm_cell/recurrent_kernel/bidirectional_94/forward_lstm_94/lstm_cell/bias2bidirectional_94/backward_lstm_94/lstm_cell/kernel<bidirectional_94/backward_lstm_94/lstm_cell/recurrent_kernel0bidirectional_94/backward_lstm_94/lstm_cell/biasConst*
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
GPU 2J 8 **
f%R#
!__inference__traced_save_56048878
Л
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_612/kerneldense_612/biasdense_629/kerneldense_629/biasdense_613/kerneldense_613/biasdense_618/kerneldense_618/biasdense_623/kerneldense_623/biasdense_628/kerneldense_628/bias1bidirectional_94/forward_lstm_94/lstm_cell/kernel;bidirectional_94/forward_lstm_94/lstm_cell/recurrent_kernel/bidirectional_94/forward_lstm_94/lstm_cell/bias2bidirectional_94/backward_lstm_94/lstm_cell/kernel<bidirectional_94/backward_lstm_94/lstm_cell/recurrent_kernel0bidirectional_94/backward_lstm_94/lstm_cell/bias*
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
GPU 2J 8 *-
f(R&
$__inference__traced_restore_56048941Ч2
Ь	
Э
while_cond_56044436
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_16
2while_while_cond_56044436___redundant_placeholder06
2while_while_cond_56044436___redundant_placeholder16
2while_while_cond_56044436___redundant_placeholder26
2while_while_cond_56044436___redundant_placeholder3
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
@: : : : :џџџџџџџџџ:џџџџџџџџџ: :::::J F
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
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
Ћ

G__inference_lstm_cell_layer_call_and_return_conditional_losses_56048650

inputs
states_0
states_10
matmul_readvariableop_resource: 2
 matmul_1_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity

identity_1

identity_2ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ж
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:џџџџџџџџџV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:џџџџџџџџџU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:џџџџџџџџџN
ReluRelusplit:output:2*
T0*'
_output_shapes
:џџџџџџџџџ_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:џџџџџџџџџK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџm
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
states_0:QM
'
_output_shapes
:џџџџџџџџџ
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

I
-__inference_flatten_94_layer_call_fn_56047127

inputs
identityЋ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_flatten_94_layer_call_and_return_conditional_losses_56045159X
IdentityIdentityPartitionedCall:output:0*
T0*
_output_shapes
:	"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
::J F
"
_output_shapes
:
 
_user_specified_nameinputs
Ї	
р
L__inference_sequential_439_layer_call_and_return_conditional_losses_56043334
dense_628_input$
dense_628_56043328: 
dense_628_56043330:
identityЂ!dense_628/StatefulPartitionedCall
!dense_628/StatefulPartitionedCallStatefulPartitionedCalldense_628_inputdense_628_56043328dense_628_56043330*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dense_628_layer_call_and_return_conditional_losses_56043327}
IdentityIdentity*dense_628/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџF
NoOpNoOp"^dense_628/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ: : 2F
!dense_628/StatefulPartitionedCall!dense_628/StatefulPartitionedCall:\ X
+
_output_shapes
:џџџџџџџџџ
)
_user_specified_namedense_628_input:($
"
_user_specified_name
56043328:($
"
_user_specified_name
56043330
Ц


3__inference_bidirectional_94_layer_call_fn_56045926

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: 
identityЂStatefulPartitionedCall
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
GPU 2J 8 *W
fRRP
N__inference_bidirectional_94_layer_call_and_return_conditional_losses_56045127j
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
56045912:($
"
_user_specified_name
56045914:($
"
_user_specified_name
56045916:($
"
_user_specified_name
56045918:($
"
_user_specified_name
56045920:($
"
_user_specified_name
56045922
аK
б
$backward_lstm_94_while_body_56045437>
:backward_lstm_94_while_backward_lstm_94_while_loop_counterD
@backward_lstm_94_while_backward_lstm_94_while_maximum_iterations&
"backward_lstm_94_while_placeholder(
$backward_lstm_94_while_placeholder_1(
$backward_lstm_94_while_placeholder_2(
$backward_lstm_94_while_placeholder_3=
9backward_lstm_94_while_backward_lstm_94_strided_slice_1_0y
ubackward_lstm_94_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_94_tensorarrayunstack_tensorlistfromtensor_0S
Abackward_lstm_94_while_lstm_cell_matmul_readvariableop_resource_0: U
Cbackward_lstm_94_while_lstm_cell_matmul_1_readvariableop_resource_0: P
Bbackward_lstm_94_while_lstm_cell_biasadd_readvariableop_resource_0: #
backward_lstm_94_while_identity%
!backward_lstm_94_while_identity_1%
!backward_lstm_94_while_identity_2%
!backward_lstm_94_while_identity_3%
!backward_lstm_94_while_identity_4%
!backward_lstm_94_while_identity_5;
7backward_lstm_94_while_backward_lstm_94_strided_slice_1w
sbackward_lstm_94_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_94_tensorarrayunstack_tensorlistfromtensorQ
?backward_lstm_94_while_lstm_cell_matmul_readvariableop_resource: S
Abackward_lstm_94_while_lstm_cell_matmul_1_readvariableop_resource: N
@backward_lstm_94_while_lstm_cell_biasadd_readvariableop_resource: Ђ7backward_lstm_94/while/lstm_cell/BiasAdd/ReadVariableOpЂ6backward_lstm_94/while/lstm_cell/MatMul/ReadVariableOpЂ8backward_lstm_94/while/lstm_cell/MatMul_1/ReadVariableOp
Hbackward_lstm_94/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      ђ
:backward_lstm_94/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemubackward_lstm_94_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_94_tensorarrayunstack_tensorlistfromtensor_0"backward_lstm_94_while_placeholderQbackward_lstm_94/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

:*
element_dtype0И
6backward_lstm_94/while/lstm_cell/MatMul/ReadVariableOpReadVariableOpAbackward_lstm_94_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0н
'backward_lstm_94/while/lstm_cell/MatMulMatMulAbackward_lstm_94/while/TensorArrayV2Read/TensorListGetItem:item:0>backward_lstm_94/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

: М
8backward_lstm_94/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpCbackward_lstm_94_while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0Ф
)backward_lstm_94/while/lstm_cell/MatMul_1MatMul$backward_lstm_94_while_placeholder_2@backward_lstm_94/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes

: О
$backward_lstm_94/while/lstm_cell/addAddV21backward_lstm_94/while/lstm_cell/MatMul:product:03backward_lstm_94/while/lstm_cell/MatMul_1:product:0*
T0*
_output_shapes

: Ж
7backward_lstm_94/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOpBbackward_lstm_94_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0Ч
(backward_lstm_94/while/lstm_cell/BiasAddBiasAdd(backward_lstm_94/while/lstm_cell/add:z:0?backward_lstm_94/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

: r
0backward_lstm_94/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ѕ
&backward_lstm_94/while/lstm_cell/splitSplit9backward_lstm_94/while/lstm_cell/split/split_dim:output:01backward_lstm_94/while/lstm_cell/BiasAdd:output:0*
T0*<
_output_shapes*
(::::*
	num_split
(backward_lstm_94/while/lstm_cell/SigmoidSigmoid/backward_lstm_94/while/lstm_cell/split:output:0*
T0*
_output_shapes

:
*backward_lstm_94/while/lstm_cell/Sigmoid_1Sigmoid/backward_lstm_94/while/lstm_cell/split:output:1*
T0*
_output_shapes

:Њ
$backward_lstm_94/while/lstm_cell/mulMul.backward_lstm_94/while/lstm_cell/Sigmoid_1:y:0$backward_lstm_94_while_placeholder_3*
T0*
_output_shapes

:
%backward_lstm_94/while/lstm_cell/ReluRelu/backward_lstm_94/while/lstm_cell/split:output:2*
T0*
_output_shapes

:Й
&backward_lstm_94/while/lstm_cell/mul_1Mul,backward_lstm_94/while/lstm_cell/Sigmoid:y:03backward_lstm_94/while/lstm_cell/Relu:activations:0*
T0*
_output_shapes

:Ў
&backward_lstm_94/while/lstm_cell/add_1AddV2(backward_lstm_94/while/lstm_cell/mul:z:0*backward_lstm_94/while/lstm_cell/mul_1:z:0*
T0*
_output_shapes

:
*backward_lstm_94/while/lstm_cell/Sigmoid_2Sigmoid/backward_lstm_94/while/lstm_cell/split:output:3*
T0*
_output_shapes

:
'backward_lstm_94/while/lstm_cell/Relu_1Relu*backward_lstm_94/while/lstm_cell/add_1:z:0*
T0*
_output_shapes

:Н
&backward_lstm_94/while/lstm_cell/mul_2Mul.backward_lstm_94/while/lstm_cell/Sigmoid_2:y:05backward_lstm_94/while/lstm_cell/Relu_1:activations:0*
T0*
_output_shapes

:
;backward_lstm_94/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem$backward_lstm_94_while_placeholder_1"backward_lstm_94_while_placeholder*backward_lstm_94/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшв^
backward_lstm_94/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
backward_lstm_94/while/addAddV2"backward_lstm_94_while_placeholder%backward_lstm_94/while/add/y:output:0*
T0*
_output_shapes
: `
backward_lstm_94/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Ћ
backward_lstm_94/while/add_1AddV2:backward_lstm_94_while_backward_lstm_94_while_loop_counter'backward_lstm_94/while/add_1/y:output:0*
T0*
_output_shapes
: 
backward_lstm_94/while/IdentityIdentity backward_lstm_94/while/add_1:z:0^backward_lstm_94/while/NoOp*
T0*
_output_shapes
: Ў
!backward_lstm_94/while/Identity_1Identity@backward_lstm_94_while_backward_lstm_94_while_maximum_iterations^backward_lstm_94/while/NoOp*
T0*
_output_shapes
: 
!backward_lstm_94/while/Identity_2Identitybackward_lstm_94/while/add:z:0^backward_lstm_94/while/NoOp*
T0*
_output_shapes
: Й
!backward_lstm_94/while/Identity_3IdentityKbackward_lstm_94/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^backward_lstm_94/while/NoOp*
T0*
_output_shapes
:  
!backward_lstm_94/while/Identity_4Identity*backward_lstm_94/while/lstm_cell/mul_2:z:0^backward_lstm_94/while/NoOp*
T0*
_output_shapes

: 
!backward_lstm_94/while/Identity_5Identity*backward_lstm_94/while/lstm_cell/add_1:z:0^backward_lstm_94/while/NoOp*
T0*
_output_shapes

:ч
backward_lstm_94/while/NoOpNoOp8^backward_lstm_94/while/lstm_cell/BiasAdd/ReadVariableOp7^backward_lstm_94/while/lstm_cell/MatMul/ReadVariableOp9^backward_lstm_94/while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "t
7backward_lstm_94_while_backward_lstm_94_strided_slice_19backward_lstm_94_while_backward_lstm_94_strided_slice_1_0"K
backward_lstm_94_while_identity(backward_lstm_94/while/Identity:output:0"O
!backward_lstm_94_while_identity_1*backward_lstm_94/while/Identity_1:output:0"O
!backward_lstm_94_while_identity_2*backward_lstm_94/while/Identity_2:output:0"O
!backward_lstm_94_while_identity_3*backward_lstm_94/while/Identity_3:output:0"O
!backward_lstm_94_while_identity_4*backward_lstm_94/while/Identity_4:output:0"O
!backward_lstm_94_while_identity_5*backward_lstm_94/while/Identity_5:output:0"
@backward_lstm_94_while_lstm_cell_biasadd_readvariableop_resourceBbackward_lstm_94_while_lstm_cell_biasadd_readvariableop_resource_0"
Abackward_lstm_94_while_lstm_cell_matmul_1_readvariableop_resourceCbackward_lstm_94_while_lstm_cell_matmul_1_readvariableop_resource_0"
?backward_lstm_94_while_lstm_cell_matmul_readvariableop_resourceAbackward_lstm_94_while_lstm_cell_matmul_readvariableop_resource_0"ь
sbackward_lstm_94_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_94_tensorarrayunstack_tensorlistfromtensorubackward_lstm_94_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_94_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : ::: : : : : 2r
7backward_lstm_94/while/lstm_cell/BiasAdd/ReadVariableOp7backward_lstm_94/while/lstm_cell/BiasAdd/ReadVariableOp2p
6backward_lstm_94/while/lstm_cell/MatMul/ReadVariableOp6backward_lstm_94/while/lstm_cell/MatMul/ReadVariableOp2t
8backward_lstm_94/while/lstm_cell/MatMul_1/ReadVariableOp8backward_lstm_94/while/lstm_cell/MatMul_1/ReadVariableOp:[ W

_output_shapes
: 
=
_user_specified_name%#backward_lstm_94/while/loop_counter:a]

_output_shapes
: 
C
_user_specified_name+)backward_lstm_94/while/maximum_iterations:
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
_user_specified_name" backward_lstm_94/strided_slice_1:pl

_output_shapes
: 
R
_user_specified_name:8backward_lstm_94/TensorArrayUnstack/TensorListFromTensor:($
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
­
Ї
1__inference_sequential_424_layer_call_fn_56043133
dense_613_input
unknown:
	unknown_0:
identityЂStatefulPartitionedCallю
StatefulPartitionedCallStatefulPartitionedCalldense_613_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_sequential_424_layer_call_and_return_conditional_losses_56043115s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
+
_output_shapes
:џџџџџџџџџ
)
_user_specified_namedense_613_input:($
"
_user_specified_name
56043127:($
"
_user_specified_name
56043129
п8
Б
while_body_56047415
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
/while_lstm_cell_biasadd_readvariableop_resource: Ђ&while/lstm_cell/BiasAdd/ReadVariableOpЂ%while/lstm_cell/MatMul/ReadVariableOpЂ'while/lstm_cell/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0Г
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ 
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ц
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_splitt
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџv
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџn
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџv
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџk
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџТ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџv
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџЃ

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
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : 2P
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
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:GC
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
О
м
2__inference_topk_bilstm_moe_layer_call_fn_56045593
input_5
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

unknown_15:	

unknown_16:
identityЂStatefulPartitionedCallБ
StatefulPartitionedCallStatefulPartitionedCallinput_5unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
GPU 2J 8 *V
fQRO
M__inference_topk_bilstm_moe_layer_call_and_return_conditional_losses_56045177f
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
_user_specified_name	input_5:($
"
_user_specified_name
56045555:($
"
_user_specified_name
56045557:($
"
_user_specified_name
56045559:($
"
_user_specified_name
56045561:($
"
_user_specified_name
56045563:($
"
_user_specified_name
56045565:($
"
_user_specified_name
56045567:($
"
_user_specified_name
56045569:(	$
"
_user_specified_name
56045571:(
$
"
_user_specified_name
56045573:($
"
_user_specified_name
56045575:($
"
_user_specified_name
56045577:($
"
_user_specified_name
56045579:($
"
_user_specified_name
56045581:($
"
_user_specified_name
56045583:($
"
_user_specified_name
56045585:($
"
_user_specified_name
56045587:($
"
_user_specified_name
56045589
	
П
3__inference_backward_lstm_94_layer_call_fn_56047950
inputs_0
unknown: 
	unknown_0: 
	unknown_1: 
identityЂStatefulPartitionedCallџ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_backward_lstm_94_layer_call_and_return_conditional_losses_56044010|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs_0:($
"
_user_specified_name
56047942:($
"
_user_specified_name
56047944:($
"
_user_specified_name
56047946
я
t
H__inference_lambda_104_layer_call_and_return_conditional_losses_56045869
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
Ь	
Э
while_cond_56048177
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_16
2while_while_cond_56048177___redundant_placeholder06
2while_while_cond_56048177___redundant_placeholder16
2while_while_cond_56048177___redundant_placeholder26
2while_while_cond_56048177___redundant_placeholder3
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
@: : : : :џџџџџџџџџ:џџџџџџџџџ: :::::J F
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
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
ф$
ж
while_body_56043591
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0,
while_lstm_cell_56043615_0: ,
while_lstm_cell_56043617_0: (
while_lstm_cell_56043619_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor*
while_lstm_cell_56043615: *
while_lstm_cell_56043617: &
while_lstm_cell_56043619: Ђ'while/lstm_cell/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0Ќ
'while/lstm_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_56043615_0while_lstm_cell_56043617_0while_lstm_cell_56043619_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_lstm_cell_layer_call_and_return_conditional_losses_56043577й
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder0while/lstm_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:щшвM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity0while/lstm_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
while/Identity_5Identity0while/lstm_cell/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџR

while/NoOpNoOp(^while/lstm_cell/StatefulPartitionedCall*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"6
while_lstm_cell_56043615while_lstm_cell_56043615_0"6
while_lstm_cell_56043617while_lstm_cell_56043617_0"6
while_lstm_cell_56043619while_lstm_cell_56043619_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : 2R
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
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:GC
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
56043615:(	$
"
_user_specified_name
56043617:(
$
"
_user_specified_name
56043619
ф
ў
G__inference_dense_613_layer_call_and_return_conditional_losses_56047192

inputs3
!tensordot_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂTensordot/ReadVariableOpz
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
::эЯY
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : Л
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
value	B : П
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
value	B : 
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
:џџџџџџџџџ
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ї
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџT
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:џџџџџџџџџe
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџV
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
ф$
ж
while_body_56043941
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0,
while_lstm_cell_56043965_0: ,
while_lstm_cell_56043967_0: (
while_lstm_cell_56043969_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor*
while_lstm_cell_56043965: *
while_lstm_cell_56043967: &
while_lstm_cell_56043969: Ђ'while/lstm_cell/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0Ќ
'while/lstm_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_56043965_0while_lstm_cell_56043967_0while_lstm_cell_56043969_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_lstm_cell_layer_call_and_return_conditional_losses_56043927й
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder0while/lstm_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:щшвM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity0while/lstm_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
while/Identity_5Identity0while/lstm_cell/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџR

while/NoOpNoOp(^while/lstm_cell/StatefulPartitionedCall*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"6
while_lstm_cell_56043965while_lstm_cell_56043965_0"6
while_lstm_cell_56043967while_lstm_cell_56043967_0"6
while_lstm_cell_56043969while_lstm_cell_56043969_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : 2R
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
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:GC
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
56043965:(	$
"
_user_specified_name
56043967:(
$
"
_user_specified_name
56043969
й

!__inference__traced_save_56048878
file_prefix9
'read_disablecopyonread_dense_612_kernel:5
'read_1_disablecopyonread_dense_612_bias:<
)read_2_disablecopyonread_dense_629_kernel:	5
'read_3_disablecopyonread_dense_629_bias:;
)read_4_disablecopyonread_dense_613_kernel:5
'read_5_disablecopyonread_dense_613_bias:;
)read_6_disablecopyonread_dense_618_kernel:5
'read_7_disablecopyonread_dense_618_bias:;
)read_8_disablecopyonread_dense_623_kernel:5
'read_9_disablecopyonread_dense_623_bias:<
*read_10_disablecopyonread_dense_628_kernel:6
(read_11_disablecopyonread_dense_628_bias:]
Kread_12_disablecopyonread_bidirectional_94_forward_lstm_94_lstm_cell_kernel: g
Uread_13_disablecopyonread_bidirectional_94_forward_lstm_94_lstm_cell_recurrent_kernel: W
Iread_14_disablecopyonread_bidirectional_94_forward_lstm_94_lstm_cell_bias: ^
Lread_15_disablecopyonread_bidirectional_94_backward_lstm_94_lstm_cell_kernel: h
Vread_16_disablecopyonread_bidirectional_94_backward_lstm_94_lstm_cell_recurrent_kernel: X
Jread_17_disablecopyonread_bidirectional_94_backward_lstm_94_lstm_cell_bias: 
savev2_const
identity_37ЂMergeV2CheckpointsЂRead/DisableCopyOnReadЂRead/ReadVariableOpЂRead_1/DisableCopyOnReadЂRead_1/ReadVariableOpЂRead_10/DisableCopyOnReadЂRead_10/ReadVariableOpЂRead_11/DisableCopyOnReadЂRead_11/ReadVariableOpЂRead_12/DisableCopyOnReadЂRead_12/ReadVariableOpЂRead_13/DisableCopyOnReadЂRead_13/ReadVariableOpЂRead_14/DisableCopyOnReadЂRead_14/ReadVariableOpЂRead_15/DisableCopyOnReadЂRead_15/ReadVariableOpЂRead_16/DisableCopyOnReadЂRead_16/ReadVariableOpЂRead_17/DisableCopyOnReadЂRead_17/ReadVariableOpЂRead_2/DisableCopyOnReadЂRead_2/ReadVariableOpЂRead_3/DisableCopyOnReadЂRead_3/ReadVariableOpЂRead_4/DisableCopyOnReadЂRead_4/ReadVariableOpЂRead_5/DisableCopyOnReadЂRead_5/ReadVariableOpЂRead_6/DisableCopyOnReadЂRead_6/ReadVariableOpЂRead_7/DisableCopyOnReadЂRead_7/ReadVariableOpЂRead_8/DisableCopyOnReadЂRead_8/ReadVariableOpЂRead_9/DisableCopyOnReadЂRead_9/ReadVariableOpw
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
_temp/part
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
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: y
Read/DisableCopyOnReadDisableCopyOnRead'read_disablecopyonread_dense_612_kernel"/device:CPU:0*
_output_shapes
 Ѓ
Read/ReadVariableOpReadVariableOp'read_disablecopyonread_dense_612_kernel^Read/DisableCopyOnRead"/device:CPU:0*
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
Read_1/DisableCopyOnReadDisableCopyOnRead'read_1_disablecopyonread_dense_612_bias"/device:CPU:0*
_output_shapes
 Ѓ
Read_1/ReadVariableOpReadVariableOp'read_1_disablecopyonread_dense_612_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
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
Read_2/DisableCopyOnReadDisableCopyOnRead)read_2_disablecopyonread_dense_629_kernel"/device:CPU:0*
_output_shapes
 Њ
Read_2/ReadVariableOpReadVariableOp)read_2_disablecopyonread_dense_629_kernel^Read_2/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	*
dtype0n

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	d

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*
_output_shapes
:	{
Read_3/DisableCopyOnReadDisableCopyOnRead'read_3_disablecopyonread_dense_629_bias"/device:CPU:0*
_output_shapes
 Ѓ
Read_3/ReadVariableOpReadVariableOp'read_3_disablecopyonread_dense_629_bias^Read_3/DisableCopyOnRead"/device:CPU:0*
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
Read_4/DisableCopyOnReadDisableCopyOnRead)read_4_disablecopyonread_dense_613_kernel"/device:CPU:0*
_output_shapes
 Љ
Read_4/ReadVariableOpReadVariableOp)read_4_disablecopyonread_dense_613_kernel^Read_4/DisableCopyOnRead"/device:CPU:0*
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
Read_5/DisableCopyOnReadDisableCopyOnRead'read_5_disablecopyonread_dense_613_bias"/device:CPU:0*
_output_shapes
 Ѓ
Read_5/ReadVariableOpReadVariableOp'read_5_disablecopyonread_dense_613_bias^Read_5/DisableCopyOnRead"/device:CPU:0*
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
Read_6/DisableCopyOnReadDisableCopyOnRead)read_6_disablecopyonread_dense_618_kernel"/device:CPU:0*
_output_shapes
 Љ
Read_6/ReadVariableOpReadVariableOp)read_6_disablecopyonread_dense_618_kernel^Read_6/DisableCopyOnRead"/device:CPU:0*
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
Read_7/DisableCopyOnReadDisableCopyOnRead'read_7_disablecopyonread_dense_618_bias"/device:CPU:0*
_output_shapes
 Ѓ
Read_7/ReadVariableOpReadVariableOp'read_7_disablecopyonread_dense_618_bias^Read_7/DisableCopyOnRead"/device:CPU:0*
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
Read_8/DisableCopyOnReadDisableCopyOnRead)read_8_disablecopyonread_dense_623_kernel"/device:CPU:0*
_output_shapes
 Љ
Read_8/ReadVariableOpReadVariableOp)read_8_disablecopyonread_dense_623_kernel^Read_8/DisableCopyOnRead"/device:CPU:0*
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
Read_9/DisableCopyOnReadDisableCopyOnRead'read_9_disablecopyonread_dense_623_bias"/device:CPU:0*
_output_shapes
 Ѓ
Read_9/ReadVariableOpReadVariableOp'read_9_disablecopyonread_dense_623_bias^Read_9/DisableCopyOnRead"/device:CPU:0*
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
Read_10/DisableCopyOnReadDisableCopyOnRead*read_10_disablecopyonread_dense_628_kernel"/device:CPU:0*
_output_shapes
 Ќ
Read_10/ReadVariableOpReadVariableOp*read_10_disablecopyonread_dense_628_kernel^Read_10/DisableCopyOnRead"/device:CPU:0*
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
Read_11/DisableCopyOnReadDisableCopyOnRead(read_11_disablecopyonread_dense_628_bias"/device:CPU:0*
_output_shapes
 І
Read_11/ReadVariableOpReadVariableOp(read_11_disablecopyonread_dense_628_bias^Read_11/DisableCopyOnRead"/device:CPU:0*
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
: 
Read_12/DisableCopyOnReadDisableCopyOnReadKread_12_disablecopyonread_bidirectional_94_forward_lstm_94_lstm_cell_kernel"/device:CPU:0*
_output_shapes
 Э
Read_12/ReadVariableOpReadVariableOpKread_12_disablecopyonread_bidirectional_94_forward_lstm_94_lstm_cell_kernel^Read_12/DisableCopyOnRead"/device:CPU:0*
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

: Њ
Read_13/DisableCopyOnReadDisableCopyOnReadUread_13_disablecopyonread_bidirectional_94_forward_lstm_94_lstm_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 з
Read_13/ReadVariableOpReadVariableOpUread_13_disablecopyonread_bidirectional_94_forward_lstm_94_lstm_cell_recurrent_kernel^Read_13/DisableCopyOnRead"/device:CPU:0*
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

: 
Read_14/DisableCopyOnReadDisableCopyOnReadIread_14_disablecopyonread_bidirectional_94_forward_lstm_94_lstm_cell_bias"/device:CPU:0*
_output_shapes
 Ч
Read_14/ReadVariableOpReadVariableOpIread_14_disablecopyonread_bidirectional_94_forward_lstm_94_lstm_cell_bias^Read_14/DisableCopyOnRead"/device:CPU:0*
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
: Ё
Read_15/DisableCopyOnReadDisableCopyOnReadLread_15_disablecopyonread_bidirectional_94_backward_lstm_94_lstm_cell_kernel"/device:CPU:0*
_output_shapes
 Ю
Read_15/ReadVariableOpReadVariableOpLread_15_disablecopyonread_bidirectional_94_backward_lstm_94_lstm_cell_kernel^Read_15/DisableCopyOnRead"/device:CPU:0*
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

: Ћ
Read_16/DisableCopyOnReadDisableCopyOnReadVread_16_disablecopyonread_bidirectional_94_backward_lstm_94_lstm_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 и
Read_16/ReadVariableOpReadVariableOpVread_16_disablecopyonread_bidirectional_94_backward_lstm_94_lstm_cell_recurrent_kernel^Read_16/DisableCopyOnRead"/device:CPU:0*
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

: 
Read_17/DisableCopyOnReadDisableCopyOnReadJread_17_disablecopyonread_bidirectional_94_backward_lstm_94_lstm_cell_bias"/device:CPU:0*
_output_shapes
 Ш
Read_17/ReadVariableOpReadVariableOpJread_17_disablecopyonread_bidirectional_94_backward_lstm_94_lstm_cell_bias^Read_17/DisableCopyOnRead"/device:CPU:0*
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
: 
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Х
valueЛBИB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*9
value0B.B B B B B B B B B B B B B B B B B B B ё
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *!
dtypes
2
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:Г
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
: й
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
_user_specified_namedense_612/kernel:.*
(
_user_specified_namedense_612/bias:0,
*
_user_specified_namedense_629/kernel:.*
(
_user_specified_namedense_629/bias:0,
*
_user_specified_namedense_613/kernel:.*
(
_user_specified_namedense_613/bias:0,
*
_user_specified_namedense_618/kernel:.*
(
_user_specified_namedense_618/bias:0	,
*
_user_specified_namedense_623/kernel:.
*
(
_user_specified_namedense_623/bias:0,
*
_user_specified_namedense_628/kernel:.*
(
_user_specified_namedense_628/bias:QM
K
_user_specified_name31bidirectional_94/forward_lstm_94/lstm_cell/kernel:[W
U
_user_specified_name=;bidirectional_94/forward_lstm_94/lstm_cell/recurrent_kernel:OK
I
_user_specified_name1/bidirectional_94/forward_lstm_94/lstm_cell/bias:RN
L
_user_specified_name42bidirectional_94/backward_lstm_94/lstm_cell/kernel:\X
V
_user_specified_name><bidirectional_94/backward_lstm_94/lstm_cell/recurrent_kernel:PL
J
_user_specified_name20bidirectional_94/backward_lstm_94/lstm_cell/bias:=9

_output_shapes
: 

_user_specified_nameConst
Ђ	
Н
3__inference_backward_lstm_94_layer_call_fn_56047972

inputs
unknown: 
	unknown_0: 
	unknown_1: 
identityЂStatefulPartitionedCall§
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_backward_lstm_94_layer_call_and_return_conditional_losses_56044673|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:e a
=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs:($
"
_user_specified_name
56047964:($
"
_user_specified_name
56047966:($
"
_user_specified_name
56047968
аK
б
$backward_lstm_94_while_body_56046719>
:backward_lstm_94_while_backward_lstm_94_while_loop_counterD
@backward_lstm_94_while_backward_lstm_94_while_maximum_iterations&
"backward_lstm_94_while_placeholder(
$backward_lstm_94_while_placeholder_1(
$backward_lstm_94_while_placeholder_2(
$backward_lstm_94_while_placeholder_3=
9backward_lstm_94_while_backward_lstm_94_strided_slice_1_0y
ubackward_lstm_94_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_94_tensorarrayunstack_tensorlistfromtensor_0S
Abackward_lstm_94_while_lstm_cell_matmul_readvariableop_resource_0: U
Cbackward_lstm_94_while_lstm_cell_matmul_1_readvariableop_resource_0: P
Bbackward_lstm_94_while_lstm_cell_biasadd_readvariableop_resource_0: #
backward_lstm_94_while_identity%
!backward_lstm_94_while_identity_1%
!backward_lstm_94_while_identity_2%
!backward_lstm_94_while_identity_3%
!backward_lstm_94_while_identity_4%
!backward_lstm_94_while_identity_5;
7backward_lstm_94_while_backward_lstm_94_strided_slice_1w
sbackward_lstm_94_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_94_tensorarrayunstack_tensorlistfromtensorQ
?backward_lstm_94_while_lstm_cell_matmul_readvariableop_resource: S
Abackward_lstm_94_while_lstm_cell_matmul_1_readvariableop_resource: N
@backward_lstm_94_while_lstm_cell_biasadd_readvariableop_resource: Ђ7backward_lstm_94/while/lstm_cell/BiasAdd/ReadVariableOpЂ6backward_lstm_94/while/lstm_cell/MatMul/ReadVariableOpЂ8backward_lstm_94/while/lstm_cell/MatMul_1/ReadVariableOp
Hbackward_lstm_94/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      ђ
:backward_lstm_94/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemubackward_lstm_94_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_94_tensorarrayunstack_tensorlistfromtensor_0"backward_lstm_94_while_placeholderQbackward_lstm_94/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

:*
element_dtype0И
6backward_lstm_94/while/lstm_cell/MatMul/ReadVariableOpReadVariableOpAbackward_lstm_94_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0н
'backward_lstm_94/while/lstm_cell/MatMulMatMulAbackward_lstm_94/while/TensorArrayV2Read/TensorListGetItem:item:0>backward_lstm_94/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

: М
8backward_lstm_94/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpCbackward_lstm_94_while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0Ф
)backward_lstm_94/while/lstm_cell/MatMul_1MatMul$backward_lstm_94_while_placeholder_2@backward_lstm_94/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes

: О
$backward_lstm_94/while/lstm_cell/addAddV21backward_lstm_94/while/lstm_cell/MatMul:product:03backward_lstm_94/while/lstm_cell/MatMul_1:product:0*
T0*
_output_shapes

: Ж
7backward_lstm_94/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOpBbackward_lstm_94_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0Ч
(backward_lstm_94/while/lstm_cell/BiasAddBiasAdd(backward_lstm_94/while/lstm_cell/add:z:0?backward_lstm_94/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

: r
0backward_lstm_94/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ѕ
&backward_lstm_94/while/lstm_cell/splitSplit9backward_lstm_94/while/lstm_cell/split/split_dim:output:01backward_lstm_94/while/lstm_cell/BiasAdd:output:0*
T0*<
_output_shapes*
(::::*
	num_split
(backward_lstm_94/while/lstm_cell/SigmoidSigmoid/backward_lstm_94/while/lstm_cell/split:output:0*
T0*
_output_shapes

:
*backward_lstm_94/while/lstm_cell/Sigmoid_1Sigmoid/backward_lstm_94/while/lstm_cell/split:output:1*
T0*
_output_shapes

:Њ
$backward_lstm_94/while/lstm_cell/mulMul.backward_lstm_94/while/lstm_cell/Sigmoid_1:y:0$backward_lstm_94_while_placeholder_3*
T0*
_output_shapes

:
%backward_lstm_94/while/lstm_cell/ReluRelu/backward_lstm_94/while/lstm_cell/split:output:2*
T0*
_output_shapes

:Й
&backward_lstm_94/while/lstm_cell/mul_1Mul,backward_lstm_94/while/lstm_cell/Sigmoid:y:03backward_lstm_94/while/lstm_cell/Relu:activations:0*
T0*
_output_shapes

:Ў
&backward_lstm_94/while/lstm_cell/add_1AddV2(backward_lstm_94/while/lstm_cell/mul:z:0*backward_lstm_94/while/lstm_cell/mul_1:z:0*
T0*
_output_shapes

:
*backward_lstm_94/while/lstm_cell/Sigmoid_2Sigmoid/backward_lstm_94/while/lstm_cell/split:output:3*
T0*
_output_shapes

:
'backward_lstm_94/while/lstm_cell/Relu_1Relu*backward_lstm_94/while/lstm_cell/add_1:z:0*
T0*
_output_shapes

:Н
&backward_lstm_94/while/lstm_cell/mul_2Mul.backward_lstm_94/while/lstm_cell/Sigmoid_2:y:05backward_lstm_94/while/lstm_cell/Relu_1:activations:0*
T0*
_output_shapes

:
;backward_lstm_94/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem$backward_lstm_94_while_placeholder_1"backward_lstm_94_while_placeholder*backward_lstm_94/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшв^
backward_lstm_94/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
backward_lstm_94/while/addAddV2"backward_lstm_94_while_placeholder%backward_lstm_94/while/add/y:output:0*
T0*
_output_shapes
: `
backward_lstm_94/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Ћ
backward_lstm_94/while/add_1AddV2:backward_lstm_94_while_backward_lstm_94_while_loop_counter'backward_lstm_94/while/add_1/y:output:0*
T0*
_output_shapes
: 
backward_lstm_94/while/IdentityIdentity backward_lstm_94/while/add_1:z:0^backward_lstm_94/while/NoOp*
T0*
_output_shapes
: Ў
!backward_lstm_94/while/Identity_1Identity@backward_lstm_94_while_backward_lstm_94_while_maximum_iterations^backward_lstm_94/while/NoOp*
T0*
_output_shapes
: 
!backward_lstm_94/while/Identity_2Identitybackward_lstm_94/while/add:z:0^backward_lstm_94/while/NoOp*
T0*
_output_shapes
: Й
!backward_lstm_94/while/Identity_3IdentityKbackward_lstm_94/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^backward_lstm_94/while/NoOp*
T0*
_output_shapes
:  
!backward_lstm_94/while/Identity_4Identity*backward_lstm_94/while/lstm_cell/mul_2:z:0^backward_lstm_94/while/NoOp*
T0*
_output_shapes

: 
!backward_lstm_94/while/Identity_5Identity*backward_lstm_94/while/lstm_cell/add_1:z:0^backward_lstm_94/while/NoOp*
T0*
_output_shapes

:ч
backward_lstm_94/while/NoOpNoOp8^backward_lstm_94/while/lstm_cell/BiasAdd/ReadVariableOp7^backward_lstm_94/while/lstm_cell/MatMul/ReadVariableOp9^backward_lstm_94/while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "t
7backward_lstm_94_while_backward_lstm_94_strided_slice_19backward_lstm_94_while_backward_lstm_94_strided_slice_1_0"K
backward_lstm_94_while_identity(backward_lstm_94/while/Identity:output:0"O
!backward_lstm_94_while_identity_1*backward_lstm_94/while/Identity_1:output:0"O
!backward_lstm_94_while_identity_2*backward_lstm_94/while/Identity_2:output:0"O
!backward_lstm_94_while_identity_3*backward_lstm_94/while/Identity_3:output:0"O
!backward_lstm_94_while_identity_4*backward_lstm_94/while/Identity_4:output:0"O
!backward_lstm_94_while_identity_5*backward_lstm_94/while/Identity_5:output:0"
@backward_lstm_94_while_lstm_cell_biasadd_readvariableop_resourceBbackward_lstm_94_while_lstm_cell_biasadd_readvariableop_resource_0"
Abackward_lstm_94_while_lstm_cell_matmul_1_readvariableop_resourceCbackward_lstm_94_while_lstm_cell_matmul_1_readvariableop_resource_0"
?backward_lstm_94_while_lstm_cell_matmul_readvariableop_resourceAbackward_lstm_94_while_lstm_cell_matmul_readvariableop_resource_0"ь
sbackward_lstm_94_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_94_tensorarrayunstack_tensorlistfromtensorubackward_lstm_94_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_94_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : ::: : : : : 2r
7backward_lstm_94/while/lstm_cell/BiasAdd/ReadVariableOp7backward_lstm_94/while/lstm_cell/BiasAdd/ReadVariableOp2p
6backward_lstm_94/while/lstm_cell/MatMul/ReadVariableOp6backward_lstm_94/while/lstm_cell/MatMul/ReadVariableOp2t
8backward_lstm_94/while/lstm_cell/MatMul_1/ReadVariableOp8backward_lstm_94/while/lstm_cell/MatMul_1/ReadVariableOp:[ W

_output_shapes
: 
=
_user_specified_name%#backward_lstm_94/while/loop_counter:a]

_output_shapes
: 
C
_user_specified_name+)backward_lstm_94/while/maximum_iterations:
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
_user_specified_name" backward_lstm_94/strided_slice_1:pl

_output_shapes
: 
R
_user_specified_name:8backward_lstm_94/TensorArrayUnstack/TensorListFromTensor:($
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
Ч
f
H__inference_dropout_94_layer_call_and_return_conditional_losses_56045543

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

I
-__inference_dropout_94_layer_call_fn_56047105

inputs
identityЎ
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
GPU 2J 8 *Q
fLRJ
H__inference_dropout_94_layer_call_and_return_conditional_losses_56045543[
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


,__inference_dense_628_layer_call_fn_56047281

inputs
unknown:
	unknown_0:
identityЂStatefulPartitionedCallр
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dense_628_layer_call_and_return_conditional_losses_56043327s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:($
"
_user_specified_name
56047275:($
"
_user_specified_name
56047277
аK
б
$backward_lstm_94_while_body_56047007>
:backward_lstm_94_while_backward_lstm_94_while_loop_counterD
@backward_lstm_94_while_backward_lstm_94_while_maximum_iterations&
"backward_lstm_94_while_placeholder(
$backward_lstm_94_while_placeholder_1(
$backward_lstm_94_while_placeholder_2(
$backward_lstm_94_while_placeholder_3=
9backward_lstm_94_while_backward_lstm_94_strided_slice_1_0y
ubackward_lstm_94_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_94_tensorarrayunstack_tensorlistfromtensor_0S
Abackward_lstm_94_while_lstm_cell_matmul_readvariableop_resource_0: U
Cbackward_lstm_94_while_lstm_cell_matmul_1_readvariableop_resource_0: P
Bbackward_lstm_94_while_lstm_cell_biasadd_readvariableop_resource_0: #
backward_lstm_94_while_identity%
!backward_lstm_94_while_identity_1%
!backward_lstm_94_while_identity_2%
!backward_lstm_94_while_identity_3%
!backward_lstm_94_while_identity_4%
!backward_lstm_94_while_identity_5;
7backward_lstm_94_while_backward_lstm_94_strided_slice_1w
sbackward_lstm_94_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_94_tensorarrayunstack_tensorlistfromtensorQ
?backward_lstm_94_while_lstm_cell_matmul_readvariableop_resource: S
Abackward_lstm_94_while_lstm_cell_matmul_1_readvariableop_resource: N
@backward_lstm_94_while_lstm_cell_biasadd_readvariableop_resource: Ђ7backward_lstm_94/while/lstm_cell/BiasAdd/ReadVariableOpЂ6backward_lstm_94/while/lstm_cell/MatMul/ReadVariableOpЂ8backward_lstm_94/while/lstm_cell/MatMul_1/ReadVariableOp
Hbackward_lstm_94/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      ђ
:backward_lstm_94/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemubackward_lstm_94_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_94_tensorarrayunstack_tensorlistfromtensor_0"backward_lstm_94_while_placeholderQbackward_lstm_94/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

:*
element_dtype0И
6backward_lstm_94/while/lstm_cell/MatMul/ReadVariableOpReadVariableOpAbackward_lstm_94_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0н
'backward_lstm_94/while/lstm_cell/MatMulMatMulAbackward_lstm_94/while/TensorArrayV2Read/TensorListGetItem:item:0>backward_lstm_94/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

: М
8backward_lstm_94/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpCbackward_lstm_94_while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0Ф
)backward_lstm_94/while/lstm_cell/MatMul_1MatMul$backward_lstm_94_while_placeholder_2@backward_lstm_94/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes

: О
$backward_lstm_94/while/lstm_cell/addAddV21backward_lstm_94/while/lstm_cell/MatMul:product:03backward_lstm_94/while/lstm_cell/MatMul_1:product:0*
T0*
_output_shapes

: Ж
7backward_lstm_94/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOpBbackward_lstm_94_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0Ч
(backward_lstm_94/while/lstm_cell/BiasAddBiasAdd(backward_lstm_94/while/lstm_cell/add:z:0?backward_lstm_94/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

: r
0backward_lstm_94/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ѕ
&backward_lstm_94/while/lstm_cell/splitSplit9backward_lstm_94/while/lstm_cell/split/split_dim:output:01backward_lstm_94/while/lstm_cell/BiasAdd:output:0*
T0*<
_output_shapes*
(::::*
	num_split
(backward_lstm_94/while/lstm_cell/SigmoidSigmoid/backward_lstm_94/while/lstm_cell/split:output:0*
T0*
_output_shapes

:
*backward_lstm_94/while/lstm_cell/Sigmoid_1Sigmoid/backward_lstm_94/while/lstm_cell/split:output:1*
T0*
_output_shapes

:Њ
$backward_lstm_94/while/lstm_cell/mulMul.backward_lstm_94/while/lstm_cell/Sigmoid_1:y:0$backward_lstm_94_while_placeholder_3*
T0*
_output_shapes

:
%backward_lstm_94/while/lstm_cell/ReluRelu/backward_lstm_94/while/lstm_cell/split:output:2*
T0*
_output_shapes

:Й
&backward_lstm_94/while/lstm_cell/mul_1Mul,backward_lstm_94/while/lstm_cell/Sigmoid:y:03backward_lstm_94/while/lstm_cell/Relu:activations:0*
T0*
_output_shapes

:Ў
&backward_lstm_94/while/lstm_cell/add_1AddV2(backward_lstm_94/while/lstm_cell/mul:z:0*backward_lstm_94/while/lstm_cell/mul_1:z:0*
T0*
_output_shapes

:
*backward_lstm_94/while/lstm_cell/Sigmoid_2Sigmoid/backward_lstm_94/while/lstm_cell/split:output:3*
T0*
_output_shapes

:
'backward_lstm_94/while/lstm_cell/Relu_1Relu*backward_lstm_94/while/lstm_cell/add_1:z:0*
T0*
_output_shapes

:Н
&backward_lstm_94/while/lstm_cell/mul_2Mul.backward_lstm_94/while/lstm_cell/Sigmoid_2:y:05backward_lstm_94/while/lstm_cell/Relu_1:activations:0*
T0*
_output_shapes

:
;backward_lstm_94/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem$backward_lstm_94_while_placeholder_1"backward_lstm_94_while_placeholder*backward_lstm_94/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшв^
backward_lstm_94/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
backward_lstm_94/while/addAddV2"backward_lstm_94_while_placeholder%backward_lstm_94/while/add/y:output:0*
T0*
_output_shapes
: `
backward_lstm_94/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Ћ
backward_lstm_94/while/add_1AddV2:backward_lstm_94_while_backward_lstm_94_while_loop_counter'backward_lstm_94/while/add_1/y:output:0*
T0*
_output_shapes
: 
backward_lstm_94/while/IdentityIdentity backward_lstm_94/while/add_1:z:0^backward_lstm_94/while/NoOp*
T0*
_output_shapes
: Ў
!backward_lstm_94/while/Identity_1Identity@backward_lstm_94_while_backward_lstm_94_while_maximum_iterations^backward_lstm_94/while/NoOp*
T0*
_output_shapes
: 
!backward_lstm_94/while/Identity_2Identitybackward_lstm_94/while/add:z:0^backward_lstm_94/while/NoOp*
T0*
_output_shapes
: Й
!backward_lstm_94/while/Identity_3IdentityKbackward_lstm_94/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^backward_lstm_94/while/NoOp*
T0*
_output_shapes
:  
!backward_lstm_94/while/Identity_4Identity*backward_lstm_94/while/lstm_cell/mul_2:z:0^backward_lstm_94/while/NoOp*
T0*
_output_shapes

: 
!backward_lstm_94/while/Identity_5Identity*backward_lstm_94/while/lstm_cell/add_1:z:0^backward_lstm_94/while/NoOp*
T0*
_output_shapes

:ч
backward_lstm_94/while/NoOpNoOp8^backward_lstm_94/while/lstm_cell/BiasAdd/ReadVariableOp7^backward_lstm_94/while/lstm_cell/MatMul/ReadVariableOp9^backward_lstm_94/while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "t
7backward_lstm_94_while_backward_lstm_94_strided_slice_19backward_lstm_94_while_backward_lstm_94_strided_slice_1_0"K
backward_lstm_94_while_identity(backward_lstm_94/while/Identity:output:0"O
!backward_lstm_94_while_identity_1*backward_lstm_94/while/Identity_1:output:0"O
!backward_lstm_94_while_identity_2*backward_lstm_94/while/Identity_2:output:0"O
!backward_lstm_94_while_identity_3*backward_lstm_94/while/Identity_3:output:0"O
!backward_lstm_94_while_identity_4*backward_lstm_94/while/Identity_4:output:0"O
!backward_lstm_94_while_identity_5*backward_lstm_94/while/Identity_5:output:0"
@backward_lstm_94_while_lstm_cell_biasadd_readvariableop_resourceBbackward_lstm_94_while_lstm_cell_biasadd_readvariableop_resource_0"
Abackward_lstm_94_while_lstm_cell_matmul_1_readvariableop_resourceCbackward_lstm_94_while_lstm_cell_matmul_1_readvariableop_resource_0"
?backward_lstm_94_while_lstm_cell_matmul_readvariableop_resourceAbackward_lstm_94_while_lstm_cell_matmul_readvariableop_resource_0"ь
sbackward_lstm_94_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_94_tensorarrayunstack_tensorlistfromtensorubackward_lstm_94_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_94_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : ::: : : : : 2r
7backward_lstm_94/while/lstm_cell/BiasAdd/ReadVariableOp7backward_lstm_94/while/lstm_cell/BiasAdd/ReadVariableOp2p
6backward_lstm_94/while/lstm_cell/MatMul/ReadVariableOp6backward_lstm_94/while/lstm_cell/MatMul/ReadVariableOp2t
8backward_lstm_94/while/lstm_cell/MatMul_1/ReadVariableOp8backward_lstm_94/while/lstm_cell/MatMul_1/ReadVariableOp:[ W

_output_shapes
: 
=
_user_specified_name%#backward_lstm_94/while/loop_counter:a]

_output_shapes
: 
C
_user_specified_name+)backward_lstm_94/while/maximum_iterations:
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
_user_specified_name" backward_lstm_94/strided_slice_1:pl

_output_shapes
: 
R
_user_specified_name:8backward_lstm_94/TensorArrayUnstack/TensorListFromTensor:($
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


,__inference_dense_618_layer_call_fn_56047201

inputs
unknown:
	unknown_0:
identityЂStatefulPartitionedCallр
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dense_618_layer_call_and_return_conditional_losses_56043175s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:($
"
_user_specified_name
56047195:($
"
_user_specified_name
56047197

Ћ
#__inference__wrapped_model_56043066
input_5M
;topk_bilstm_moe_dense_612_tensordot_readvariableop_resource:G
9topk_bilstm_moe_dense_612_biasadd_readvariableop_resource:\
Jtopk_bilstm_moe_sequential_424_dense_613_tensordot_readvariableop_resource:V
Htopk_bilstm_moe_sequential_424_dense_613_biasadd_readvariableop_resource:\
Jtopk_bilstm_moe_sequential_429_dense_618_tensordot_readvariableop_resource:V
Htopk_bilstm_moe_sequential_429_dense_618_biasadd_readvariableop_resource:\
Jtopk_bilstm_moe_sequential_434_dense_623_tensordot_readvariableop_resource:V
Htopk_bilstm_moe_sequential_434_dense_623_biasadd_readvariableop_resource:\
Jtopk_bilstm_moe_sequential_439_dense_628_tensordot_readvariableop_resource:V
Htopk_bilstm_moe_sequential_439_dense_628_biasadd_readvariableop_resource:k
Ytopk_bilstm_moe_bidirectional_94_forward_lstm_94_lstm_cell_matmul_readvariableop_resource: m
[topk_bilstm_moe_bidirectional_94_forward_lstm_94_lstm_cell_matmul_1_readvariableop_resource: h
Ztopk_bilstm_moe_bidirectional_94_forward_lstm_94_lstm_cell_biasadd_readvariableop_resource: l
Ztopk_bilstm_moe_bidirectional_94_backward_lstm_94_lstm_cell_matmul_readvariableop_resource: n
\topk_bilstm_moe_bidirectional_94_backward_lstm_94_lstm_cell_matmul_1_readvariableop_resource: i
[topk_bilstm_moe_bidirectional_94_backward_lstm_94_lstm_cell_biasadd_readvariableop_resource: K
8topk_bilstm_moe_dense_629_matmul_readvariableop_resource:	G
9topk_bilstm_moe_dense_629_biasadd_readvariableop_resource:
identityЂRtopk_bilstm_moe/bidirectional_94/backward_lstm_94/lstm_cell/BiasAdd/ReadVariableOpЂQtopk_bilstm_moe/bidirectional_94/backward_lstm_94/lstm_cell/MatMul/ReadVariableOpЂStopk_bilstm_moe/bidirectional_94/backward_lstm_94/lstm_cell/MatMul_1/ReadVariableOpЂ7topk_bilstm_moe/bidirectional_94/backward_lstm_94/whileЂQtopk_bilstm_moe/bidirectional_94/forward_lstm_94/lstm_cell/BiasAdd/ReadVariableOpЂPtopk_bilstm_moe/bidirectional_94/forward_lstm_94/lstm_cell/MatMul/ReadVariableOpЂRtopk_bilstm_moe/bidirectional_94/forward_lstm_94/lstm_cell/MatMul_1/ReadVariableOpЂ6topk_bilstm_moe/bidirectional_94/forward_lstm_94/whileЂ0topk_bilstm_moe/dense_612/BiasAdd/ReadVariableOpЂ2topk_bilstm_moe/dense_612/Tensordot/ReadVariableOpЂ0topk_bilstm_moe/dense_629/BiasAdd/ReadVariableOpЂ/topk_bilstm_moe/dense_629/MatMul/ReadVariableOpЂ?topk_bilstm_moe/sequential_424/dense_613/BiasAdd/ReadVariableOpЂAtopk_bilstm_moe/sequential_424/dense_613/Tensordot/ReadVariableOpЂ?topk_bilstm_moe/sequential_429/dense_618/BiasAdd/ReadVariableOpЂAtopk_bilstm_moe/sequential_429/dense_618/Tensordot/ReadVariableOpЂ?topk_bilstm_moe/sequential_434/dense_623/BiasAdd/ReadVariableOpЂAtopk_bilstm_moe/sequential_434/dense_623/Tensordot/ReadVariableOpЂ?topk_bilstm_moe/sequential_439/dense_628/BiasAdd/ReadVariableOpЂAtopk_bilstm_moe/sequential_439/dense_628/Tensordot/ReadVariableOpЎ
2topk_bilstm_moe/dense_612/Tensordot/ReadVariableOpReadVariableOp;topk_bilstm_moe_dense_612_tensordot_readvariableop_resource*
_output_shapes

:*
dtype0
1topk_bilstm_moe/dense_612/Tensordot/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"     Ѕ
+topk_bilstm_moe/dense_612/Tensordot/ReshapeReshapeinput_5:topk_bilstm_moe/dense_612/Tensordot/Reshape/shape:output:0*
T0*
_output_shapes
:	а
*topk_bilstm_moe/dense_612/Tensordot/MatMulMatMul4topk_bilstm_moe/dense_612/Tensordot/Reshape:output:0:topk_bilstm_moe/dense_612/Tensordot/ReadVariableOp:value:0*
T0*
_output_shapes
:	~
)topk_bilstm_moe/dense_612/Tensordot/shapeConst*
_output_shapes
:*
dtype0*!
valueB"         Х
#topk_bilstm_moe/dense_612/TensordotReshape4topk_bilstm_moe/dense_612/Tensordot/MatMul:product:02topk_bilstm_moe/dense_612/Tensordot/shape:output:0*
T0*"
_output_shapes
:І
0topk_bilstm_moe/dense_612/BiasAdd/ReadVariableOpReadVariableOp9topk_bilstm_moe_dense_612_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0С
!topk_bilstm_moe/dense_612/BiasAddBiasAdd,topk_bilstm_moe/dense_612/Tensordot:output:08topk_bilstm_moe/dense_612/BiasAdd/ReadVariableOp:value:0*
T0*"
_output_shapes
:
!topk_bilstm_moe/dense_612/SoftmaxSoftmax*topk_bilstm_moe/dense_612/BiasAdd:output:0*
T0*"
_output_shapes
:j
(topk_bilstm_moe/tf.math.top_k_4/TopKV2/kConst*
_output_shapes
: *
dtype0*
value	B :Ы
&topk_bilstm_moe/tf.math.top_k_4/TopKV2TopKV2+topk_bilstm_moe/dense_612/Softmax:softmax:01topk_bilstm_moe/tf.math.top_k_4/TopKV2/k:output:0*
T0*0
_output_shapes
::r
-topk_bilstm_moe/tf.one_hot_4/one_hot/on_valueConst*
_output_shapes
: *
dtype0*
valueB
 *  ?s
.topk_bilstm_moe/tf.one_hot_4/one_hot/off_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    l
*topk_bilstm_moe/tf.one_hot_4/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :С
$topk_bilstm_moe/tf.one_hot_4/one_hotOneHot0topk_bilstm_moe/tf.math.top_k_4/TopKV2:indices:03topk_bilstm_moe/tf.one_hot_4/one_hot/depth:output:06topk_bilstm_moe/tf.one_hot_4/one_hot/on_value:output:07topk_bilstm_moe/tf.one_hot_4/one_hot/off_value:output:0*
T0*
TI0*&
_output_shapes
:х
(topk_bilstm_moe/lambda_102/einsum/EinsumEinsum/topk_bilstm_moe/tf.math.top_k_4/TopKV2:values:0-topk_bilstm_moe/tf.one_hot_4/one_hot:output:0*
N*
T0*"
_output_shapes
:*
equationabc,abcd->abdХ
(topk_bilstm_moe/lambda_103/einsum/EinsumEinsuminput_51topk_bilstm_moe/lambda_102/einsum/Einsum:output:0*
N*
T0*&
_output_shapes
:*
equationabc,abd->dabcУ
$topk_bilstm_moe/tf.unstack_4/unstackUnpack1topk_bilstm_moe/lambda_103/einsum/Einsum:output:0*
T0*L
_output_shapes:
8::::*	
numЬ
Atopk_bilstm_moe/sequential_424/dense_613/Tensordot/ReadVariableOpReadVariableOpJtopk_bilstm_moe_sequential_424_dense_613_tensordot_readvariableop_resource*
_output_shapes

:*
dtype0
@topk_bilstm_moe/sequential_424/dense_613/Tensordot/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"     щ
:topk_bilstm_moe/sequential_424/dense_613/Tensordot/ReshapeReshape-topk_bilstm_moe/tf.unstack_4/unstack:output:0Itopk_bilstm_moe/sequential_424/dense_613/Tensordot/Reshape/shape:output:0*
T0*
_output_shapes
:	§
9topk_bilstm_moe/sequential_424/dense_613/Tensordot/MatMulMatMulCtopk_bilstm_moe/sequential_424/dense_613/Tensordot/Reshape:output:0Itopk_bilstm_moe/sequential_424/dense_613/Tensordot/ReadVariableOp:value:0*
T0*
_output_shapes
:	
8topk_bilstm_moe/sequential_424/dense_613/Tensordot/shapeConst*
_output_shapes
:*
dtype0*!
valueB"         ђ
2topk_bilstm_moe/sequential_424/dense_613/TensordotReshapeCtopk_bilstm_moe/sequential_424/dense_613/Tensordot/MatMul:product:0Atopk_bilstm_moe/sequential_424/dense_613/Tensordot/shape:output:0*
T0*"
_output_shapes
:Ф
?topk_bilstm_moe/sequential_424/dense_613/BiasAdd/ReadVariableOpReadVariableOpHtopk_bilstm_moe_sequential_424_dense_613_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ю
0topk_bilstm_moe/sequential_424/dense_613/BiasAddBiasAdd;topk_bilstm_moe/sequential_424/dense_613/Tensordot:output:0Gtopk_bilstm_moe/sequential_424/dense_613/BiasAdd/ReadVariableOp:value:0*
T0*"
_output_shapes
:
-topk_bilstm_moe/sequential_424/dense_613/ReluRelu9topk_bilstm_moe/sequential_424/dense_613/BiasAdd:output:0*
T0*"
_output_shapes
:Ь
Atopk_bilstm_moe/sequential_429/dense_618/Tensordot/ReadVariableOpReadVariableOpJtopk_bilstm_moe_sequential_429_dense_618_tensordot_readvariableop_resource*
_output_shapes

:*
dtype0
@topk_bilstm_moe/sequential_429/dense_618/Tensordot/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"     щ
:topk_bilstm_moe/sequential_429/dense_618/Tensordot/ReshapeReshape-topk_bilstm_moe/tf.unstack_4/unstack:output:1Itopk_bilstm_moe/sequential_429/dense_618/Tensordot/Reshape/shape:output:0*
T0*
_output_shapes
:	§
9topk_bilstm_moe/sequential_429/dense_618/Tensordot/MatMulMatMulCtopk_bilstm_moe/sequential_429/dense_618/Tensordot/Reshape:output:0Itopk_bilstm_moe/sequential_429/dense_618/Tensordot/ReadVariableOp:value:0*
T0*
_output_shapes
:	
8topk_bilstm_moe/sequential_429/dense_618/Tensordot/shapeConst*
_output_shapes
:*
dtype0*!
valueB"         ђ
2topk_bilstm_moe/sequential_429/dense_618/TensordotReshapeCtopk_bilstm_moe/sequential_429/dense_618/Tensordot/MatMul:product:0Atopk_bilstm_moe/sequential_429/dense_618/Tensordot/shape:output:0*
T0*"
_output_shapes
:Ф
?topk_bilstm_moe/sequential_429/dense_618/BiasAdd/ReadVariableOpReadVariableOpHtopk_bilstm_moe_sequential_429_dense_618_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ю
0topk_bilstm_moe/sequential_429/dense_618/BiasAddBiasAdd;topk_bilstm_moe/sequential_429/dense_618/Tensordot:output:0Gtopk_bilstm_moe/sequential_429/dense_618/BiasAdd/ReadVariableOp:value:0*
T0*"
_output_shapes
:
-topk_bilstm_moe/sequential_429/dense_618/ReluRelu9topk_bilstm_moe/sequential_429/dense_618/BiasAdd:output:0*
T0*"
_output_shapes
:Ь
Atopk_bilstm_moe/sequential_434/dense_623/Tensordot/ReadVariableOpReadVariableOpJtopk_bilstm_moe_sequential_434_dense_623_tensordot_readvariableop_resource*
_output_shapes

:*
dtype0
@topk_bilstm_moe/sequential_434/dense_623/Tensordot/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"     щ
:topk_bilstm_moe/sequential_434/dense_623/Tensordot/ReshapeReshape-topk_bilstm_moe/tf.unstack_4/unstack:output:2Itopk_bilstm_moe/sequential_434/dense_623/Tensordot/Reshape/shape:output:0*
T0*
_output_shapes
:	§
9topk_bilstm_moe/sequential_434/dense_623/Tensordot/MatMulMatMulCtopk_bilstm_moe/sequential_434/dense_623/Tensordot/Reshape:output:0Itopk_bilstm_moe/sequential_434/dense_623/Tensordot/ReadVariableOp:value:0*
T0*
_output_shapes
:	
8topk_bilstm_moe/sequential_434/dense_623/Tensordot/shapeConst*
_output_shapes
:*
dtype0*!
valueB"         ђ
2topk_bilstm_moe/sequential_434/dense_623/TensordotReshapeCtopk_bilstm_moe/sequential_434/dense_623/Tensordot/MatMul:product:0Atopk_bilstm_moe/sequential_434/dense_623/Tensordot/shape:output:0*
T0*"
_output_shapes
:Ф
?topk_bilstm_moe/sequential_434/dense_623/BiasAdd/ReadVariableOpReadVariableOpHtopk_bilstm_moe_sequential_434_dense_623_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ю
0topk_bilstm_moe/sequential_434/dense_623/BiasAddBiasAdd;topk_bilstm_moe/sequential_434/dense_623/Tensordot:output:0Gtopk_bilstm_moe/sequential_434/dense_623/BiasAdd/ReadVariableOp:value:0*
T0*"
_output_shapes
:
-topk_bilstm_moe/sequential_434/dense_623/ReluRelu9topk_bilstm_moe/sequential_434/dense_623/BiasAdd:output:0*
T0*"
_output_shapes
:Ь
Atopk_bilstm_moe/sequential_439/dense_628/Tensordot/ReadVariableOpReadVariableOpJtopk_bilstm_moe_sequential_439_dense_628_tensordot_readvariableop_resource*
_output_shapes

:*
dtype0
@topk_bilstm_moe/sequential_439/dense_628/Tensordot/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"     щ
:topk_bilstm_moe/sequential_439/dense_628/Tensordot/ReshapeReshape-topk_bilstm_moe/tf.unstack_4/unstack:output:3Itopk_bilstm_moe/sequential_439/dense_628/Tensordot/Reshape/shape:output:0*
T0*
_output_shapes
:	§
9topk_bilstm_moe/sequential_439/dense_628/Tensordot/MatMulMatMulCtopk_bilstm_moe/sequential_439/dense_628/Tensordot/Reshape:output:0Itopk_bilstm_moe/sequential_439/dense_628/Tensordot/ReadVariableOp:value:0*
T0*
_output_shapes
:	
8topk_bilstm_moe/sequential_439/dense_628/Tensordot/shapeConst*
_output_shapes
:*
dtype0*!
valueB"         ђ
2topk_bilstm_moe/sequential_439/dense_628/TensordotReshapeCtopk_bilstm_moe/sequential_439/dense_628/Tensordot/MatMul:product:0Atopk_bilstm_moe/sequential_439/dense_628/Tensordot/shape:output:0*
T0*"
_output_shapes
:Ф
?topk_bilstm_moe/sequential_439/dense_628/BiasAdd/ReadVariableOpReadVariableOpHtopk_bilstm_moe_sequential_439_dense_628_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ю
0topk_bilstm_moe/sequential_439/dense_628/BiasAddBiasAdd;topk_bilstm_moe/sequential_439/dense_628/Tensordot:output:0Gtopk_bilstm_moe/sequential_439/dense_628/BiasAdd/ReadVariableOp:value:0*
T0*"
_output_shapes
:
-topk_bilstm_moe/sequential_439/dense_628/ReluRelu9topk_bilstm_moe/sequential_439/dense_628/BiasAdd:output:0*
T0*"
_output_shapes
:у
!topk_bilstm_moe/tf.stack_95/stackPack;topk_bilstm_moe/sequential_424/dense_613/Relu:activations:0;topk_bilstm_moe/sequential_429/dense_618/Relu:activations:0;topk_bilstm_moe/sequential_434/dense_623/Relu:activations:0;topk_bilstm_moe/sequential_439/dense_628/Relu:activations:0*
N*
T0*&
_output_shapes
:*

axisф
(topk_bilstm_moe/lambda_104/einsum/EinsumEinsum*topk_bilstm_moe/tf.stack_95/stack:output:01topk_bilstm_moe/lambda_102/einsum/Einsum:output:0*
N*
T0*"
_output_shapes
:*
equationabcd,ace->acd
6topk_bilstm_moe/bidirectional_94/forward_lstm_94/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         
Dtopk_bilstm_moe/bidirectional_94/forward_lstm_94/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Ftopk_bilstm_moe/bidirectional_94/forward_lstm_94/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Ftopk_bilstm_moe/bidirectional_94/forward_lstm_94/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ц
>topk_bilstm_moe/bidirectional_94/forward_lstm_94/strided_sliceStridedSlice?topk_bilstm_moe/bidirectional_94/forward_lstm_94/Shape:output:0Mtopk_bilstm_moe/bidirectional_94/forward_lstm_94/strided_slice/stack:output:0Otopk_bilstm_moe/bidirectional_94/forward_lstm_94/strided_slice/stack_1:output:0Otopk_bilstm_moe/bidirectional_94/forward_lstm_94/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
?topk_bilstm_moe/bidirectional_94/forward_lstm_94/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
=topk_bilstm_moe/bidirectional_94/forward_lstm_94/zeros/packedPackGtopk_bilstm_moe/bidirectional_94/forward_lstm_94/strided_slice:output:0Htopk_bilstm_moe/bidirectional_94/forward_lstm_94/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:
<topk_bilstm_moe/bidirectional_94/forward_lstm_94/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    і
6topk_bilstm_moe/bidirectional_94/forward_lstm_94/zerosFillFtopk_bilstm_moe/bidirectional_94/forward_lstm_94/zeros/packed:output:0Etopk_bilstm_moe/bidirectional_94/forward_lstm_94/zeros/Const:output:0*
T0*
_output_shapes

:
Atopk_bilstm_moe/bidirectional_94/forward_lstm_94/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?topk_bilstm_moe/bidirectional_94/forward_lstm_94/zeros_1/packedPackGtopk_bilstm_moe/bidirectional_94/forward_lstm_94/strided_slice:output:0Jtopk_bilstm_moe/bidirectional_94/forward_lstm_94/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:
>topk_bilstm_moe/bidirectional_94/forward_lstm_94/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ќ
8topk_bilstm_moe/bidirectional_94/forward_lstm_94/zeros_1FillHtopk_bilstm_moe/bidirectional_94/forward_lstm_94/zeros_1/packed:output:0Gtopk_bilstm_moe/bidirectional_94/forward_lstm_94/zeros_1/Const:output:0*
T0*
_output_shapes

:
?topk_bilstm_moe/bidirectional_94/forward_lstm_94/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ё
:topk_bilstm_moe/bidirectional_94/forward_lstm_94/transpose	Transpose1topk_bilstm_moe/lambda_104/einsum/Einsum:output:0Htopk_bilstm_moe/bidirectional_94/forward_lstm_94/transpose/perm:output:0*
T0*"
_output_shapes
:
8topk_bilstm_moe/bidirectional_94/forward_lstm_94/Shape_1Const*
_output_shapes
:*
dtype0*!
valueB"         
Ftopk_bilstm_moe/bidirectional_94/forward_lstm_94/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Htopk_bilstm_moe/bidirectional_94/forward_lstm_94/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Htopk_bilstm_moe/bidirectional_94/forward_lstm_94/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:а
@topk_bilstm_moe/bidirectional_94/forward_lstm_94/strided_slice_1StridedSliceAtopk_bilstm_moe/bidirectional_94/forward_lstm_94/Shape_1:output:0Otopk_bilstm_moe/bidirectional_94/forward_lstm_94/strided_slice_1/stack:output:0Qtopk_bilstm_moe/bidirectional_94/forward_lstm_94/strided_slice_1/stack_1:output:0Qtopk_bilstm_moe/bidirectional_94/forward_lstm_94/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
Ltopk_bilstm_moe/bidirectional_94/forward_lstm_94/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџЧ
>topk_bilstm_moe/bidirectional_94/forward_lstm_94/TensorArrayV2TensorListReserveUtopk_bilstm_moe/bidirectional_94/forward_lstm_94/TensorArrayV2/element_shape:output:0Itopk_bilstm_moe/bidirectional_94/forward_lstm_94/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвЗ
ftopk_bilstm_moe/bidirectional_94/forward_lstm_94/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      ѓ
Xtopk_bilstm_moe/bidirectional_94/forward_lstm_94/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor>topk_bilstm_moe/bidirectional_94/forward_lstm_94/transpose:y:0otopk_bilstm_moe/bidirectional_94/forward_lstm_94/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
Ftopk_bilstm_moe/bidirectional_94/forward_lstm_94/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Htopk_bilstm_moe/bidirectional_94/forward_lstm_94/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Htopk_bilstm_moe/bidirectional_94/forward_lstm_94/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:е
@topk_bilstm_moe/bidirectional_94/forward_lstm_94/strided_slice_2StridedSlice>topk_bilstm_moe/bidirectional_94/forward_lstm_94/transpose:y:0Otopk_bilstm_moe/bidirectional_94/forward_lstm_94/strided_slice_2/stack:output:0Qtopk_bilstm_moe/bidirectional_94/forward_lstm_94/strided_slice_2/stack_1:output:0Qtopk_bilstm_moe/bidirectional_94/forward_lstm_94/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_maskъ
Ptopk_bilstm_moe/bidirectional_94/forward_lstm_94/lstm_cell/MatMul/ReadVariableOpReadVariableOpYtopk_bilstm_moe_bidirectional_94_forward_lstm_94_lstm_cell_matmul_readvariableop_resource*
_output_shapes

: *
dtype0
Atopk_bilstm_moe/bidirectional_94/forward_lstm_94/lstm_cell/MatMulMatMulItopk_bilstm_moe/bidirectional_94/forward_lstm_94/strided_slice_2:output:0Xtopk_bilstm_moe/bidirectional_94/forward_lstm_94/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

: ю
Rtopk_bilstm_moe/bidirectional_94/forward_lstm_94/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp[topk_bilstm_moe_bidirectional_94_forward_lstm_94_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0
Ctopk_bilstm_moe/bidirectional_94/forward_lstm_94/lstm_cell/MatMul_1MatMul?topk_bilstm_moe/bidirectional_94/forward_lstm_94/zeros:output:0Ztopk_bilstm_moe/bidirectional_94/forward_lstm_94/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes

: 
>topk_bilstm_moe/bidirectional_94/forward_lstm_94/lstm_cell/addAddV2Ktopk_bilstm_moe/bidirectional_94/forward_lstm_94/lstm_cell/MatMul:product:0Mtopk_bilstm_moe/bidirectional_94/forward_lstm_94/lstm_cell/MatMul_1:product:0*
T0*
_output_shapes

: ш
Qtopk_bilstm_moe/bidirectional_94/forward_lstm_94/lstm_cell/BiasAdd/ReadVariableOpReadVariableOpZtopk_bilstm_moe_bidirectional_94_forward_lstm_94_lstm_cell_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
Btopk_bilstm_moe/bidirectional_94/forward_lstm_94/lstm_cell/BiasAddBiasAddBtopk_bilstm_moe/bidirectional_94/forward_lstm_94/lstm_cell/add:z:0Ytopk_bilstm_moe/bidirectional_94/forward_lstm_94/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

: 
Jtopk_bilstm_moe/bidirectional_94/forward_lstm_94/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :У
@topk_bilstm_moe/bidirectional_94/forward_lstm_94/lstm_cell/splitSplitStopk_bilstm_moe/bidirectional_94/forward_lstm_94/lstm_cell/split/split_dim:output:0Ktopk_bilstm_moe/bidirectional_94/forward_lstm_94/lstm_cell/BiasAdd:output:0*
T0*<
_output_shapes*
(::::*
	num_splitС
Btopk_bilstm_moe/bidirectional_94/forward_lstm_94/lstm_cell/SigmoidSigmoidItopk_bilstm_moe/bidirectional_94/forward_lstm_94/lstm_cell/split:output:0*
T0*
_output_shapes

:У
Dtopk_bilstm_moe/bidirectional_94/forward_lstm_94/lstm_cell/Sigmoid_1SigmoidItopk_bilstm_moe/bidirectional_94/forward_lstm_94/lstm_cell/split:output:1*
T0*
_output_shapes

:ћ
>topk_bilstm_moe/bidirectional_94/forward_lstm_94/lstm_cell/mulMulHtopk_bilstm_moe/bidirectional_94/forward_lstm_94/lstm_cell/Sigmoid_1:y:0Atopk_bilstm_moe/bidirectional_94/forward_lstm_94/zeros_1:output:0*
T0*
_output_shapes

:Л
?topk_bilstm_moe/bidirectional_94/forward_lstm_94/lstm_cell/ReluReluItopk_bilstm_moe/bidirectional_94/forward_lstm_94/lstm_cell/split:output:2*
T0*
_output_shapes

:
@topk_bilstm_moe/bidirectional_94/forward_lstm_94/lstm_cell/mul_1MulFtopk_bilstm_moe/bidirectional_94/forward_lstm_94/lstm_cell/Sigmoid:y:0Mtopk_bilstm_moe/bidirectional_94/forward_lstm_94/lstm_cell/Relu:activations:0*
T0*
_output_shapes

:ќ
@topk_bilstm_moe/bidirectional_94/forward_lstm_94/lstm_cell/add_1AddV2Btopk_bilstm_moe/bidirectional_94/forward_lstm_94/lstm_cell/mul:z:0Dtopk_bilstm_moe/bidirectional_94/forward_lstm_94/lstm_cell/mul_1:z:0*
T0*
_output_shapes

:У
Dtopk_bilstm_moe/bidirectional_94/forward_lstm_94/lstm_cell/Sigmoid_2SigmoidItopk_bilstm_moe/bidirectional_94/forward_lstm_94/lstm_cell/split:output:3*
T0*
_output_shapes

:И
Atopk_bilstm_moe/bidirectional_94/forward_lstm_94/lstm_cell/Relu_1ReluDtopk_bilstm_moe/bidirectional_94/forward_lstm_94/lstm_cell/add_1:z:0*
T0*
_output_shapes

:
@topk_bilstm_moe/bidirectional_94/forward_lstm_94/lstm_cell/mul_2MulHtopk_bilstm_moe/bidirectional_94/forward_lstm_94/lstm_cell/Sigmoid_2:y:0Otopk_bilstm_moe/bidirectional_94/forward_lstm_94/lstm_cell/Relu_1:activations:0*
T0*
_output_shapes

:
Ntopk_bilstm_moe/bidirectional_94/forward_lstm_94/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      Ы
@topk_bilstm_moe/bidirectional_94/forward_lstm_94/TensorArrayV2_1TensorListReserveWtopk_bilstm_moe/bidirectional_94/forward_lstm_94/TensorArrayV2_1/element_shape:output:0Itopk_bilstm_moe/bidirectional_94/forward_lstm_94/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвw
5topk_bilstm_moe/bidirectional_94/forward_lstm_94/timeConst*
_output_shapes
: *
dtype0*
value	B : 
Itopk_bilstm_moe/bidirectional_94/forward_lstm_94/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ
Ctopk_bilstm_moe/bidirectional_94/forward_lstm_94/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ъ

6topk_bilstm_moe/bidirectional_94/forward_lstm_94/whileWhileLtopk_bilstm_moe/bidirectional_94/forward_lstm_94/while/loop_counter:output:0Rtopk_bilstm_moe/bidirectional_94/forward_lstm_94/while/maximum_iterations:output:0>topk_bilstm_moe/bidirectional_94/forward_lstm_94/time:output:0Itopk_bilstm_moe/bidirectional_94/forward_lstm_94/TensorArrayV2_1:handle:0?topk_bilstm_moe/bidirectional_94/forward_lstm_94/zeros:output:0Atopk_bilstm_moe/bidirectional_94/forward_lstm_94/zeros_1:output:0Itopk_bilstm_moe/bidirectional_94/forward_lstm_94/strided_slice_1:output:0htopk_bilstm_moe/bidirectional_94/forward_lstm_94/TensorArrayUnstack/TensorListFromTensor:output_handle:0Ytopk_bilstm_moe_bidirectional_94_forward_lstm_94_lstm_cell_matmul_readvariableop_resource[topk_bilstm_moe_bidirectional_94_forward_lstm_94_lstm_cell_matmul_1_readvariableop_resourceZtopk_bilstm_moe_bidirectional_94_forward_lstm_94_lstm_cell_biasadd_readvariableop_resource*
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
Dtopk_bilstm_moe_bidirectional_94_forward_lstm_94_while_body_56042828*P
condHRF
Dtopk_bilstm_moe_bidirectional_94_forward_lstm_94_while_cond_56042827*9
output_shapes(
&: : : : ::: : : : : *
parallel_iterations В
atopk_bilstm_moe/bidirectional_94/forward_lstm_94/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      Ь
Stopk_bilstm_moe/bidirectional_94/forward_lstm_94/TensorArrayV2Stack/TensorListStackTensorListStack?topk_bilstm_moe/bidirectional_94/forward_lstm_94/while:output:3jtopk_bilstm_moe/bidirectional_94/forward_lstm_94/TensorArrayV2Stack/TensorListStack/element_shape:output:0*"
_output_shapes
:*
element_dtype0
Ftopk_bilstm_moe/bidirectional_94/forward_lstm_94/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
Htopk_bilstm_moe/bidirectional_94/forward_lstm_94/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
Htopk_bilstm_moe/bidirectional_94/forward_lstm_94/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѓ
@topk_bilstm_moe/bidirectional_94/forward_lstm_94/strided_slice_3StridedSlice\topk_bilstm_moe/bidirectional_94/forward_lstm_94/TensorArrayV2Stack/TensorListStack:tensor:0Otopk_bilstm_moe/bidirectional_94/forward_lstm_94/strided_slice_3/stack:output:0Qtopk_bilstm_moe/bidirectional_94/forward_lstm_94/strided_slice_3/stack_1:output:0Qtopk_bilstm_moe/bidirectional_94/forward_lstm_94/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_mask
Atopk_bilstm_moe/bidirectional_94/forward_lstm_94/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"           
<topk_bilstm_moe/bidirectional_94/forward_lstm_94/transpose_1	Transpose\topk_bilstm_moe/bidirectional_94/forward_lstm_94/TensorArrayV2Stack/TensorListStack:tensor:0Jtopk_bilstm_moe/bidirectional_94/forward_lstm_94/transpose_1/perm:output:0*
T0*"
_output_shapes
:
8topk_bilstm_moe/bidirectional_94/forward_lstm_94/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    
7topk_bilstm_moe/bidirectional_94/backward_lstm_94/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         
Etopk_bilstm_moe/bidirectional_94/backward_lstm_94/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Gtopk_bilstm_moe/bidirectional_94/backward_lstm_94/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Gtopk_bilstm_moe/bidirectional_94/backward_lstm_94/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ы
?topk_bilstm_moe/bidirectional_94/backward_lstm_94/strided_sliceStridedSlice@topk_bilstm_moe/bidirectional_94/backward_lstm_94/Shape:output:0Ntopk_bilstm_moe/bidirectional_94/backward_lstm_94/strided_slice/stack:output:0Ptopk_bilstm_moe/bidirectional_94/backward_lstm_94/strided_slice/stack_1:output:0Ptopk_bilstm_moe/bidirectional_94/backward_lstm_94/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
@topk_bilstm_moe/bidirectional_94/backward_lstm_94/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
>topk_bilstm_moe/bidirectional_94/backward_lstm_94/zeros/packedPackHtopk_bilstm_moe/bidirectional_94/backward_lstm_94/strided_slice:output:0Itopk_bilstm_moe/bidirectional_94/backward_lstm_94/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:
=topk_bilstm_moe/bidirectional_94/backward_lstm_94/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    љ
7topk_bilstm_moe/bidirectional_94/backward_lstm_94/zerosFillGtopk_bilstm_moe/bidirectional_94/backward_lstm_94/zeros/packed:output:0Ftopk_bilstm_moe/bidirectional_94/backward_lstm_94/zeros/Const:output:0*
T0*
_output_shapes

:
Btopk_bilstm_moe/bidirectional_94/backward_lstm_94/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
@topk_bilstm_moe/bidirectional_94/backward_lstm_94/zeros_1/packedPackHtopk_bilstm_moe/bidirectional_94/backward_lstm_94/strided_slice:output:0Ktopk_bilstm_moe/bidirectional_94/backward_lstm_94/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:
?topk_bilstm_moe/bidirectional_94/backward_lstm_94/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    џ
9topk_bilstm_moe/bidirectional_94/backward_lstm_94/zeros_1FillItopk_bilstm_moe/bidirectional_94/backward_lstm_94/zeros_1/packed:output:0Htopk_bilstm_moe/bidirectional_94/backward_lstm_94/zeros_1/Const:output:0*
T0*
_output_shapes

:
@topk_bilstm_moe/bidirectional_94/backward_lstm_94/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ѓ
;topk_bilstm_moe/bidirectional_94/backward_lstm_94/transpose	Transpose1topk_bilstm_moe/lambda_104/einsum/Einsum:output:0Itopk_bilstm_moe/bidirectional_94/backward_lstm_94/transpose/perm:output:0*
T0*"
_output_shapes
:
9topk_bilstm_moe/bidirectional_94/backward_lstm_94/Shape_1Const*
_output_shapes
:*
dtype0*!
valueB"         
Gtopk_bilstm_moe/bidirectional_94/backward_lstm_94/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Itopk_bilstm_moe/bidirectional_94/backward_lstm_94/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Itopk_bilstm_moe/bidirectional_94/backward_lstm_94/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:е
Atopk_bilstm_moe/bidirectional_94/backward_lstm_94/strided_slice_1StridedSliceBtopk_bilstm_moe/bidirectional_94/backward_lstm_94/Shape_1:output:0Ptopk_bilstm_moe/bidirectional_94/backward_lstm_94/strided_slice_1/stack:output:0Rtopk_bilstm_moe/bidirectional_94/backward_lstm_94/strided_slice_1/stack_1:output:0Rtopk_bilstm_moe/bidirectional_94/backward_lstm_94/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
Mtopk_bilstm_moe/bidirectional_94/backward_lstm_94/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџЪ
?topk_bilstm_moe/bidirectional_94/backward_lstm_94/TensorArrayV2TensorListReserveVtopk_bilstm_moe/bidirectional_94/backward_lstm_94/TensorArrayV2/element_shape:output:0Jtopk_bilstm_moe/bidirectional_94/backward_lstm_94/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
@topk_bilstm_moe/bidirectional_94/backward_lstm_94/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: 
;topk_bilstm_moe/bidirectional_94/backward_lstm_94/ReverseV2	ReverseV2?topk_bilstm_moe/bidirectional_94/backward_lstm_94/transpose:y:0Itopk_bilstm_moe/bidirectional_94/backward_lstm_94/ReverseV2/axis:output:0*
T0*"
_output_shapes
:И
gtopk_bilstm_moe/bidirectional_94/backward_lstm_94/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      ћ
Ytopk_bilstm_moe/bidirectional_94/backward_lstm_94/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorDtopk_bilstm_moe/bidirectional_94/backward_lstm_94/ReverseV2:output:0ptopk_bilstm_moe/bidirectional_94/backward_lstm_94/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
Gtopk_bilstm_moe/bidirectional_94/backward_lstm_94/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Itopk_bilstm_moe/bidirectional_94/backward_lstm_94/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Itopk_bilstm_moe/bidirectional_94/backward_lstm_94/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:к
Atopk_bilstm_moe/bidirectional_94/backward_lstm_94/strided_slice_2StridedSlice?topk_bilstm_moe/bidirectional_94/backward_lstm_94/transpose:y:0Ptopk_bilstm_moe/bidirectional_94/backward_lstm_94/strided_slice_2/stack:output:0Rtopk_bilstm_moe/bidirectional_94/backward_lstm_94/strided_slice_2/stack_1:output:0Rtopk_bilstm_moe/bidirectional_94/backward_lstm_94/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_maskь
Qtopk_bilstm_moe/bidirectional_94/backward_lstm_94/lstm_cell/MatMul/ReadVariableOpReadVariableOpZtopk_bilstm_moe_bidirectional_94_backward_lstm_94_lstm_cell_matmul_readvariableop_resource*
_output_shapes

: *
dtype0
Btopk_bilstm_moe/bidirectional_94/backward_lstm_94/lstm_cell/MatMulMatMulJtopk_bilstm_moe/bidirectional_94/backward_lstm_94/strided_slice_2:output:0Ytopk_bilstm_moe/bidirectional_94/backward_lstm_94/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

: №
Stopk_bilstm_moe/bidirectional_94/backward_lstm_94/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp\topk_bilstm_moe_bidirectional_94_backward_lstm_94_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0
Dtopk_bilstm_moe/bidirectional_94/backward_lstm_94/lstm_cell/MatMul_1MatMul@topk_bilstm_moe/bidirectional_94/backward_lstm_94/zeros:output:0[topk_bilstm_moe/bidirectional_94/backward_lstm_94/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes

: 
?topk_bilstm_moe/bidirectional_94/backward_lstm_94/lstm_cell/addAddV2Ltopk_bilstm_moe/bidirectional_94/backward_lstm_94/lstm_cell/MatMul:product:0Ntopk_bilstm_moe/bidirectional_94/backward_lstm_94/lstm_cell/MatMul_1:product:0*
T0*
_output_shapes

: ъ
Rtopk_bilstm_moe/bidirectional_94/backward_lstm_94/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp[topk_bilstm_moe_bidirectional_94_backward_lstm_94_lstm_cell_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
Ctopk_bilstm_moe/bidirectional_94/backward_lstm_94/lstm_cell/BiasAddBiasAddCtopk_bilstm_moe/bidirectional_94/backward_lstm_94/lstm_cell/add:z:0Ztopk_bilstm_moe/bidirectional_94/backward_lstm_94/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

: 
Ktopk_bilstm_moe/bidirectional_94/backward_lstm_94/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ц
Atopk_bilstm_moe/bidirectional_94/backward_lstm_94/lstm_cell/splitSplitTtopk_bilstm_moe/bidirectional_94/backward_lstm_94/lstm_cell/split/split_dim:output:0Ltopk_bilstm_moe/bidirectional_94/backward_lstm_94/lstm_cell/BiasAdd:output:0*
T0*<
_output_shapes*
(::::*
	num_splitУ
Ctopk_bilstm_moe/bidirectional_94/backward_lstm_94/lstm_cell/SigmoidSigmoidJtopk_bilstm_moe/bidirectional_94/backward_lstm_94/lstm_cell/split:output:0*
T0*
_output_shapes

:Х
Etopk_bilstm_moe/bidirectional_94/backward_lstm_94/lstm_cell/Sigmoid_1SigmoidJtopk_bilstm_moe/bidirectional_94/backward_lstm_94/lstm_cell/split:output:1*
T0*
_output_shapes

:ў
?topk_bilstm_moe/bidirectional_94/backward_lstm_94/lstm_cell/mulMulItopk_bilstm_moe/bidirectional_94/backward_lstm_94/lstm_cell/Sigmoid_1:y:0Btopk_bilstm_moe/bidirectional_94/backward_lstm_94/zeros_1:output:0*
T0*
_output_shapes

:Н
@topk_bilstm_moe/bidirectional_94/backward_lstm_94/lstm_cell/ReluReluJtopk_bilstm_moe/bidirectional_94/backward_lstm_94/lstm_cell/split:output:2*
T0*
_output_shapes

:
Atopk_bilstm_moe/bidirectional_94/backward_lstm_94/lstm_cell/mul_1MulGtopk_bilstm_moe/bidirectional_94/backward_lstm_94/lstm_cell/Sigmoid:y:0Ntopk_bilstm_moe/bidirectional_94/backward_lstm_94/lstm_cell/Relu:activations:0*
T0*
_output_shapes

:џ
Atopk_bilstm_moe/bidirectional_94/backward_lstm_94/lstm_cell/add_1AddV2Ctopk_bilstm_moe/bidirectional_94/backward_lstm_94/lstm_cell/mul:z:0Etopk_bilstm_moe/bidirectional_94/backward_lstm_94/lstm_cell/mul_1:z:0*
T0*
_output_shapes

:Х
Etopk_bilstm_moe/bidirectional_94/backward_lstm_94/lstm_cell/Sigmoid_2SigmoidJtopk_bilstm_moe/bidirectional_94/backward_lstm_94/lstm_cell/split:output:3*
T0*
_output_shapes

:К
Btopk_bilstm_moe/bidirectional_94/backward_lstm_94/lstm_cell/Relu_1ReluEtopk_bilstm_moe/bidirectional_94/backward_lstm_94/lstm_cell/add_1:z:0*
T0*
_output_shapes

:
Atopk_bilstm_moe/bidirectional_94/backward_lstm_94/lstm_cell/mul_2MulItopk_bilstm_moe/bidirectional_94/backward_lstm_94/lstm_cell/Sigmoid_2:y:0Ptopk_bilstm_moe/bidirectional_94/backward_lstm_94/lstm_cell/Relu_1:activations:0*
T0*
_output_shapes

: 
Otopk_bilstm_moe/bidirectional_94/backward_lstm_94/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      Ю
Atopk_bilstm_moe/bidirectional_94/backward_lstm_94/TensorArrayV2_1TensorListReserveXtopk_bilstm_moe/bidirectional_94/backward_lstm_94/TensorArrayV2_1/element_shape:output:0Jtopk_bilstm_moe/bidirectional_94/backward_lstm_94/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвx
6topk_bilstm_moe/bidirectional_94/backward_lstm_94/timeConst*
_output_shapes
: *
dtype0*
value	B : 
Jtopk_bilstm_moe/bidirectional_94/backward_lstm_94/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ
Dtopk_bilstm_moe/bidirectional_94/backward_lstm_94/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ј

7topk_bilstm_moe/bidirectional_94/backward_lstm_94/whileWhileMtopk_bilstm_moe/bidirectional_94/backward_lstm_94/while/loop_counter:output:0Stopk_bilstm_moe/bidirectional_94/backward_lstm_94/while/maximum_iterations:output:0?topk_bilstm_moe/bidirectional_94/backward_lstm_94/time:output:0Jtopk_bilstm_moe/bidirectional_94/backward_lstm_94/TensorArrayV2_1:handle:0@topk_bilstm_moe/bidirectional_94/backward_lstm_94/zeros:output:0Btopk_bilstm_moe/bidirectional_94/backward_lstm_94/zeros_1:output:0Jtopk_bilstm_moe/bidirectional_94/backward_lstm_94/strided_slice_1:output:0itopk_bilstm_moe/bidirectional_94/backward_lstm_94/TensorArrayUnstack/TensorListFromTensor:output_handle:0Ztopk_bilstm_moe_bidirectional_94_backward_lstm_94_lstm_cell_matmul_readvariableop_resource\topk_bilstm_moe_bidirectional_94_backward_lstm_94_lstm_cell_matmul_1_readvariableop_resource[topk_bilstm_moe_bidirectional_94_backward_lstm_94_lstm_cell_biasadd_readvariableop_resource*
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
Etopk_bilstm_moe_bidirectional_94_backward_lstm_94_while_body_56042969*Q
condIRG
Etopk_bilstm_moe_bidirectional_94_backward_lstm_94_while_cond_56042968*9
output_shapes(
&: : : : ::: : : : : *
parallel_iterations Г
btopk_bilstm_moe/bidirectional_94/backward_lstm_94/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      Я
Ttopk_bilstm_moe/bidirectional_94/backward_lstm_94/TensorArrayV2Stack/TensorListStackTensorListStack@topk_bilstm_moe/bidirectional_94/backward_lstm_94/while:output:3ktopk_bilstm_moe/bidirectional_94/backward_lstm_94/TensorArrayV2Stack/TensorListStack/element_shape:output:0*"
_output_shapes
:*
element_dtype0
Gtopk_bilstm_moe/bidirectional_94/backward_lstm_94/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
Itopk_bilstm_moe/bidirectional_94/backward_lstm_94/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
Itopk_bilstm_moe/bidirectional_94/backward_lstm_94/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ј
Atopk_bilstm_moe/bidirectional_94/backward_lstm_94/strided_slice_3StridedSlice]topk_bilstm_moe/bidirectional_94/backward_lstm_94/TensorArrayV2Stack/TensorListStack:tensor:0Ptopk_bilstm_moe/bidirectional_94/backward_lstm_94/strided_slice_3/stack:output:0Rtopk_bilstm_moe/bidirectional_94/backward_lstm_94/strided_slice_3/stack_1:output:0Rtopk_bilstm_moe/bidirectional_94/backward_lstm_94/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_mask
Btopk_bilstm_moe/bidirectional_94/backward_lstm_94/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ѓ
=topk_bilstm_moe/bidirectional_94/backward_lstm_94/transpose_1	Transpose]topk_bilstm_moe/bidirectional_94/backward_lstm_94/TensorArrayV2Stack/TensorListStack:tensor:0Ktopk_bilstm_moe/bidirectional_94/backward_lstm_94/transpose_1/perm:output:0*
T0*"
_output_shapes
:
9topk_bilstm_moe/bidirectional_94/backward_lstm_94/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    y
/topk_bilstm_moe/bidirectional_94/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:с
*topk_bilstm_moe/bidirectional_94/ReverseV2	ReverseV2Atopk_bilstm_moe/bidirectional_94/backward_lstm_94/transpose_1:y:08topk_bilstm_moe/bidirectional_94/ReverseV2/axis:output:0*
T0*"
_output_shapes
:n
,topk_bilstm_moe/bidirectional_94/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :
'topk_bilstm_moe/bidirectional_94/concatConcatV2@topk_bilstm_moe/bidirectional_94/forward_lstm_94/transpose_1:y:03topk_bilstm_moe/bidirectional_94/ReverseV2:output:05topk_bilstm_moe/bidirectional_94/concat/axis:output:0*
N*
T0*"
_output_shapes
:
#topk_bilstm_moe/dropout_94/IdentityIdentity0topk_bilstm_moe/bidirectional_94/concat:output:0*
T0*"
_output_shapes
:q
 topk_bilstm_moe/flatten_94/ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ  А
"topk_bilstm_moe/flatten_94/ReshapeReshape,topk_bilstm_moe/dropout_94/Identity:output:0)topk_bilstm_moe/flatten_94/Const:output:0*
T0*
_output_shapes
:	Љ
/topk_bilstm_moe/dense_629/MatMul/ReadVariableOpReadVariableOp8topk_bilstm_moe_dense_629_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0Й
 topk_bilstm_moe/dense_629/MatMulMatMul+topk_bilstm_moe/flatten_94/Reshape:output:07topk_bilstm_moe/dense_629/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:І
0topk_bilstm_moe/dense_629/BiasAdd/ReadVariableOpReadVariableOp9topk_bilstm_moe_dense_629_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Л
!topk_bilstm_moe/dense_629/BiasAddBiasAdd*topk_bilstm_moe/dense_629/MatMul:product:08topk_bilstm_moe/dense_629/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:p
IdentityIdentity*topk_bilstm_moe/dense_629/BiasAdd:output:0^NoOp*
T0*
_output_shapes

:ѕ

NoOpNoOpS^topk_bilstm_moe/bidirectional_94/backward_lstm_94/lstm_cell/BiasAdd/ReadVariableOpR^topk_bilstm_moe/bidirectional_94/backward_lstm_94/lstm_cell/MatMul/ReadVariableOpT^topk_bilstm_moe/bidirectional_94/backward_lstm_94/lstm_cell/MatMul_1/ReadVariableOp8^topk_bilstm_moe/bidirectional_94/backward_lstm_94/whileR^topk_bilstm_moe/bidirectional_94/forward_lstm_94/lstm_cell/BiasAdd/ReadVariableOpQ^topk_bilstm_moe/bidirectional_94/forward_lstm_94/lstm_cell/MatMul/ReadVariableOpS^topk_bilstm_moe/bidirectional_94/forward_lstm_94/lstm_cell/MatMul_1/ReadVariableOp7^topk_bilstm_moe/bidirectional_94/forward_lstm_94/while1^topk_bilstm_moe/dense_612/BiasAdd/ReadVariableOp3^topk_bilstm_moe/dense_612/Tensordot/ReadVariableOp1^topk_bilstm_moe/dense_629/BiasAdd/ReadVariableOp0^topk_bilstm_moe/dense_629/MatMul/ReadVariableOp@^topk_bilstm_moe/sequential_424/dense_613/BiasAdd/ReadVariableOpB^topk_bilstm_moe/sequential_424/dense_613/Tensordot/ReadVariableOp@^topk_bilstm_moe/sequential_429/dense_618/BiasAdd/ReadVariableOpB^topk_bilstm_moe/sequential_429/dense_618/Tensordot/ReadVariableOp@^topk_bilstm_moe/sequential_434/dense_623/BiasAdd/ReadVariableOpB^topk_bilstm_moe/sequential_434/dense_623/Tensordot/ReadVariableOp@^topk_bilstm_moe/sequential_439/dense_628/BiasAdd/ReadVariableOpB^topk_bilstm_moe/sequential_439/dense_628/Tensordot/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:: : : : : : : : : : : : : : : : : : 2Ј
Rtopk_bilstm_moe/bidirectional_94/backward_lstm_94/lstm_cell/BiasAdd/ReadVariableOpRtopk_bilstm_moe/bidirectional_94/backward_lstm_94/lstm_cell/BiasAdd/ReadVariableOp2І
Qtopk_bilstm_moe/bidirectional_94/backward_lstm_94/lstm_cell/MatMul/ReadVariableOpQtopk_bilstm_moe/bidirectional_94/backward_lstm_94/lstm_cell/MatMul/ReadVariableOp2Њ
Stopk_bilstm_moe/bidirectional_94/backward_lstm_94/lstm_cell/MatMul_1/ReadVariableOpStopk_bilstm_moe/bidirectional_94/backward_lstm_94/lstm_cell/MatMul_1/ReadVariableOp2r
7topk_bilstm_moe/bidirectional_94/backward_lstm_94/while7topk_bilstm_moe/bidirectional_94/backward_lstm_94/while2І
Qtopk_bilstm_moe/bidirectional_94/forward_lstm_94/lstm_cell/BiasAdd/ReadVariableOpQtopk_bilstm_moe/bidirectional_94/forward_lstm_94/lstm_cell/BiasAdd/ReadVariableOp2Є
Ptopk_bilstm_moe/bidirectional_94/forward_lstm_94/lstm_cell/MatMul/ReadVariableOpPtopk_bilstm_moe/bidirectional_94/forward_lstm_94/lstm_cell/MatMul/ReadVariableOp2Ј
Rtopk_bilstm_moe/bidirectional_94/forward_lstm_94/lstm_cell/MatMul_1/ReadVariableOpRtopk_bilstm_moe/bidirectional_94/forward_lstm_94/lstm_cell/MatMul_1/ReadVariableOp2p
6topk_bilstm_moe/bidirectional_94/forward_lstm_94/while6topk_bilstm_moe/bidirectional_94/forward_lstm_94/while2d
0topk_bilstm_moe/dense_612/BiasAdd/ReadVariableOp0topk_bilstm_moe/dense_612/BiasAdd/ReadVariableOp2h
2topk_bilstm_moe/dense_612/Tensordot/ReadVariableOp2topk_bilstm_moe/dense_612/Tensordot/ReadVariableOp2d
0topk_bilstm_moe/dense_629/BiasAdd/ReadVariableOp0topk_bilstm_moe/dense_629/BiasAdd/ReadVariableOp2b
/topk_bilstm_moe/dense_629/MatMul/ReadVariableOp/topk_bilstm_moe/dense_629/MatMul/ReadVariableOp2
?topk_bilstm_moe/sequential_424/dense_613/BiasAdd/ReadVariableOp?topk_bilstm_moe/sequential_424/dense_613/BiasAdd/ReadVariableOp2
Atopk_bilstm_moe/sequential_424/dense_613/Tensordot/ReadVariableOpAtopk_bilstm_moe/sequential_424/dense_613/Tensordot/ReadVariableOp2
?topk_bilstm_moe/sequential_429/dense_618/BiasAdd/ReadVariableOp?topk_bilstm_moe/sequential_429/dense_618/BiasAdd/ReadVariableOp2
Atopk_bilstm_moe/sequential_429/dense_618/Tensordot/ReadVariableOpAtopk_bilstm_moe/sequential_429/dense_618/Tensordot/ReadVariableOp2
?topk_bilstm_moe/sequential_434/dense_623/BiasAdd/ReadVariableOp?topk_bilstm_moe/sequential_434/dense_623/BiasAdd/ReadVariableOp2
Atopk_bilstm_moe/sequential_434/dense_623/Tensordot/ReadVariableOpAtopk_bilstm_moe/sequential_434/dense_623/Tensordot/ReadVariableOp2
?topk_bilstm_moe/sequential_439/dense_628/BiasAdd/ReadVariableOp?topk_bilstm_moe/sequential_439/dense_628/BiasAdd/ReadVariableOp2
Atopk_bilstm_moe/sequential_439/dense_628/Tensordot/ReadVariableOpAtopk_bilstm_moe/sequential_439/dense_628/Tensordot/ReadVariableOp:K G
"
_output_shapes
:
!
_user_specified_name	input_5:($
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
НЙ

N__inference_bidirectional_94_layer_call_and_return_conditional_losses_56045525

inputsJ
8forward_lstm_94_lstm_cell_matmul_readvariableop_resource: L
:forward_lstm_94_lstm_cell_matmul_1_readvariableop_resource: G
9forward_lstm_94_lstm_cell_biasadd_readvariableop_resource: K
9backward_lstm_94_lstm_cell_matmul_readvariableop_resource: M
;backward_lstm_94_lstm_cell_matmul_1_readvariableop_resource: H
:backward_lstm_94_lstm_cell_biasadd_readvariableop_resource: 
identityЂ1backward_lstm_94/lstm_cell/BiasAdd/ReadVariableOpЂ0backward_lstm_94/lstm_cell/MatMul/ReadVariableOpЂ2backward_lstm_94/lstm_cell/MatMul_1/ReadVariableOpЂbackward_lstm_94/whileЂ0forward_lstm_94/lstm_cell/BiasAdd/ReadVariableOpЂ/forward_lstm_94/lstm_cell/MatMul/ReadVariableOpЂ1forward_lstm_94/lstm_cell/MatMul_1/ReadVariableOpЂforward_lstm_94/whilej
forward_lstm_94/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         m
#forward_lstm_94/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%forward_lstm_94/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%forward_lstm_94/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ё
forward_lstm_94/strided_sliceStridedSliceforward_lstm_94/Shape:output:0,forward_lstm_94/strided_slice/stack:output:0.forward_lstm_94/strided_slice/stack_1:output:0.forward_lstm_94/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
forward_lstm_94/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Ѓ
forward_lstm_94/zeros/packedPack&forward_lstm_94/strided_slice:output:0'forward_lstm_94/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:`
forward_lstm_94/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
forward_lstm_94/zerosFill%forward_lstm_94/zeros/packed:output:0$forward_lstm_94/zeros/Const:output:0*
T0*
_output_shapes

:b
 forward_lstm_94/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Ї
forward_lstm_94/zeros_1/packedPack&forward_lstm_94/strided_slice:output:0)forward_lstm_94/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:b
forward_lstm_94/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
forward_lstm_94/zeros_1Fill'forward_lstm_94/zeros_1/packed:output:0&forward_lstm_94/zeros_1/Const:output:0*
T0*
_output_shapes

:s
forward_lstm_94/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
forward_lstm_94/transpose	Transposeinputs'forward_lstm_94/transpose/perm:output:0*
T0*"
_output_shapes
:l
forward_lstm_94/Shape_1Const*
_output_shapes
:*
dtype0*!
valueB"         o
%forward_lstm_94/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_94/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'forward_lstm_94/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ћ
forward_lstm_94/strided_slice_1StridedSlice forward_lstm_94/Shape_1:output:0.forward_lstm_94/strided_slice_1/stack:output:00forward_lstm_94/strided_slice_1/stack_1:output:00forward_lstm_94/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
+forward_lstm_94/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџф
forward_lstm_94/TensorArrayV2TensorListReserve4forward_lstm_94/TensorArrayV2/element_shape:output:0(forward_lstm_94/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
Eforward_lstm_94/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      
7forward_lstm_94/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorforward_lstm_94/transpose:y:0Nforward_lstm_94/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвo
%forward_lstm_94/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_94/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'forward_lstm_94/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:А
forward_lstm_94/strided_slice_2StridedSliceforward_lstm_94/transpose:y:0.forward_lstm_94/strided_slice_2/stack:output:00forward_lstm_94/strided_slice_2/stack_1:output:00forward_lstm_94/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_maskЈ
/forward_lstm_94/lstm_cell/MatMul/ReadVariableOpReadVariableOp8forward_lstm_94_lstm_cell_matmul_readvariableop_resource*
_output_shapes

: *
dtype0Ж
 forward_lstm_94/lstm_cell/MatMulMatMul(forward_lstm_94/strided_slice_2:output:07forward_lstm_94/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

: Ќ
1forward_lstm_94/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp:forward_lstm_94_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0А
"forward_lstm_94/lstm_cell/MatMul_1MatMulforward_lstm_94/zeros:output:09forward_lstm_94/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes

: Љ
forward_lstm_94/lstm_cell/addAddV2*forward_lstm_94/lstm_cell/MatMul:product:0,forward_lstm_94/lstm_cell/MatMul_1:product:0*
T0*
_output_shapes

: І
0forward_lstm_94/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp9forward_lstm_94_lstm_cell_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0В
!forward_lstm_94/lstm_cell/BiasAddBiasAdd!forward_lstm_94/lstm_cell/add:z:08forward_lstm_94/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

: k
)forward_lstm_94/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :р
forward_lstm_94/lstm_cell/splitSplit2forward_lstm_94/lstm_cell/split/split_dim:output:0*forward_lstm_94/lstm_cell/BiasAdd:output:0*
T0*<
_output_shapes*
(::::*
	num_split
!forward_lstm_94/lstm_cell/SigmoidSigmoid(forward_lstm_94/lstm_cell/split:output:0*
T0*
_output_shapes

:
#forward_lstm_94/lstm_cell/Sigmoid_1Sigmoid(forward_lstm_94/lstm_cell/split:output:1*
T0*
_output_shapes

:
forward_lstm_94/lstm_cell/mulMul'forward_lstm_94/lstm_cell/Sigmoid_1:y:0 forward_lstm_94/zeros_1:output:0*
T0*
_output_shapes

:y
forward_lstm_94/lstm_cell/ReluRelu(forward_lstm_94/lstm_cell/split:output:2*
T0*
_output_shapes

:Є
forward_lstm_94/lstm_cell/mul_1Mul%forward_lstm_94/lstm_cell/Sigmoid:y:0,forward_lstm_94/lstm_cell/Relu:activations:0*
T0*
_output_shapes

:
forward_lstm_94/lstm_cell/add_1AddV2!forward_lstm_94/lstm_cell/mul:z:0#forward_lstm_94/lstm_cell/mul_1:z:0*
T0*
_output_shapes

:
#forward_lstm_94/lstm_cell/Sigmoid_2Sigmoid(forward_lstm_94/lstm_cell/split:output:3*
T0*
_output_shapes

:v
 forward_lstm_94/lstm_cell/Relu_1Relu#forward_lstm_94/lstm_cell/add_1:z:0*
T0*
_output_shapes

:Ј
forward_lstm_94/lstm_cell/mul_2Mul'forward_lstm_94/lstm_cell/Sigmoid_2:y:0.forward_lstm_94/lstm_cell/Relu_1:activations:0*
T0*
_output_shapes

:~
-forward_lstm_94/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      ш
forward_lstm_94/TensorArrayV2_1TensorListReserve6forward_lstm_94/TensorArrayV2_1/element_shape:output:0(forward_lstm_94/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвV
forward_lstm_94/timeConst*
_output_shapes
: *
dtype0*
value	B : s
(forward_lstm_94/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџd
"forward_lstm_94/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
forward_lstm_94/whileWhile+forward_lstm_94/while/loop_counter:output:01forward_lstm_94/while/maximum_iterations:output:0forward_lstm_94/time:output:0(forward_lstm_94/TensorArrayV2_1:handle:0forward_lstm_94/zeros:output:0 forward_lstm_94/zeros_1:output:0(forward_lstm_94/strided_slice_1:output:0Gforward_lstm_94/TensorArrayUnstack/TensorListFromTensor:output_handle:08forward_lstm_94_lstm_cell_matmul_readvariableop_resource:forward_lstm_94_lstm_cell_matmul_1_readvariableop_resource9forward_lstm_94_lstm_cell_biasadd_readvariableop_resource*
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
#forward_lstm_94_while_body_56045296*/
cond'R%
#forward_lstm_94_while_cond_56045295*9
output_shapes(
&: : : : ::: : : : : *
parallel_iterations 
@forward_lstm_94/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      щ
2forward_lstm_94/TensorArrayV2Stack/TensorListStackTensorListStackforward_lstm_94/while:output:3Iforward_lstm_94/TensorArrayV2Stack/TensorListStack/element_shape:output:0*"
_output_shapes
:*
element_dtype0x
%forward_lstm_94/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџq
'forward_lstm_94/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_94/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ю
forward_lstm_94/strided_slice_3StridedSlice;forward_lstm_94/TensorArrayV2Stack/TensorListStack:tensor:0.forward_lstm_94/strided_slice_3/stack:output:00forward_lstm_94/strided_slice_3/stack_1:output:00forward_lstm_94/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_masku
 forward_lstm_94/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Н
forward_lstm_94/transpose_1	Transpose;forward_lstm_94/TensorArrayV2Stack/TensorListStack:tensor:0)forward_lstm_94/transpose_1/perm:output:0*
T0*"
_output_shapes
:k
forward_lstm_94/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
backward_lstm_94/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         n
$backward_lstm_94/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&backward_lstm_94/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&backward_lstm_94/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:І
backward_lstm_94/strided_sliceStridedSlicebackward_lstm_94/Shape:output:0-backward_lstm_94/strided_slice/stack:output:0/backward_lstm_94/strided_slice/stack_1:output:0/backward_lstm_94/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
backward_lstm_94/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :І
backward_lstm_94/zeros/packedPack'backward_lstm_94/strided_slice:output:0(backward_lstm_94/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:a
backward_lstm_94/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
backward_lstm_94/zerosFill&backward_lstm_94/zeros/packed:output:0%backward_lstm_94/zeros/Const:output:0*
T0*
_output_shapes

:c
!backward_lstm_94/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Њ
backward_lstm_94/zeros_1/packedPack'backward_lstm_94/strided_slice:output:0*backward_lstm_94/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:c
backward_lstm_94/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
backward_lstm_94/zeros_1Fill(backward_lstm_94/zeros_1/packed:output:0'backward_lstm_94/zeros_1/Const:output:0*
T0*
_output_shapes

:t
backward_lstm_94/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
backward_lstm_94/transpose	Transposeinputs(backward_lstm_94/transpose/perm:output:0*
T0*"
_output_shapes
:m
backward_lstm_94/Shape_1Const*
_output_shapes
:*
dtype0*!
valueB"         p
&backward_lstm_94/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_94/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(backward_lstm_94/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:А
 backward_lstm_94/strided_slice_1StridedSlice!backward_lstm_94/Shape_1:output:0/backward_lstm_94/strided_slice_1/stack:output:01backward_lstm_94/strided_slice_1/stack_1:output:01backward_lstm_94/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskw
,backward_lstm_94/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџч
backward_lstm_94/TensorArrayV2TensorListReserve5backward_lstm_94/TensorArrayV2/element_shape:output:0)backward_lstm_94/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвi
backward_lstm_94/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: 
backward_lstm_94/ReverseV2	ReverseV2backward_lstm_94/transpose:y:0(backward_lstm_94/ReverseV2/axis:output:0*
T0*"
_output_shapes
:
Fbackward_lstm_94/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      
8backward_lstm_94/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#backward_lstm_94/ReverseV2:output:0Obackward_lstm_94/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвp
&backward_lstm_94/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_94/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(backward_lstm_94/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Е
 backward_lstm_94/strided_slice_2StridedSlicebackward_lstm_94/transpose:y:0/backward_lstm_94/strided_slice_2/stack:output:01backward_lstm_94/strided_slice_2/stack_1:output:01backward_lstm_94/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_maskЊ
0backward_lstm_94/lstm_cell/MatMul/ReadVariableOpReadVariableOp9backward_lstm_94_lstm_cell_matmul_readvariableop_resource*
_output_shapes

: *
dtype0Й
!backward_lstm_94/lstm_cell/MatMulMatMul)backward_lstm_94/strided_slice_2:output:08backward_lstm_94/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

: Ў
2backward_lstm_94/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp;backward_lstm_94_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0Г
#backward_lstm_94/lstm_cell/MatMul_1MatMulbackward_lstm_94/zeros:output:0:backward_lstm_94/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes

: Ќ
backward_lstm_94/lstm_cell/addAddV2+backward_lstm_94/lstm_cell/MatMul:product:0-backward_lstm_94/lstm_cell/MatMul_1:product:0*
T0*
_output_shapes

: Ј
1backward_lstm_94/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp:backward_lstm_94_lstm_cell_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Е
"backward_lstm_94/lstm_cell/BiasAddBiasAdd"backward_lstm_94/lstm_cell/add:z:09backward_lstm_94/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

: l
*backward_lstm_94/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :у
 backward_lstm_94/lstm_cell/splitSplit3backward_lstm_94/lstm_cell/split/split_dim:output:0+backward_lstm_94/lstm_cell/BiasAdd:output:0*
T0*<
_output_shapes*
(::::*
	num_split
"backward_lstm_94/lstm_cell/SigmoidSigmoid)backward_lstm_94/lstm_cell/split:output:0*
T0*
_output_shapes

:
$backward_lstm_94/lstm_cell/Sigmoid_1Sigmoid)backward_lstm_94/lstm_cell/split:output:1*
T0*
_output_shapes

:
backward_lstm_94/lstm_cell/mulMul(backward_lstm_94/lstm_cell/Sigmoid_1:y:0!backward_lstm_94/zeros_1:output:0*
T0*
_output_shapes

:{
backward_lstm_94/lstm_cell/ReluRelu)backward_lstm_94/lstm_cell/split:output:2*
T0*
_output_shapes

:Ї
 backward_lstm_94/lstm_cell/mul_1Mul&backward_lstm_94/lstm_cell/Sigmoid:y:0-backward_lstm_94/lstm_cell/Relu:activations:0*
T0*
_output_shapes

:
 backward_lstm_94/lstm_cell/add_1AddV2"backward_lstm_94/lstm_cell/mul:z:0$backward_lstm_94/lstm_cell/mul_1:z:0*
T0*
_output_shapes

:
$backward_lstm_94/lstm_cell/Sigmoid_2Sigmoid)backward_lstm_94/lstm_cell/split:output:3*
T0*
_output_shapes

:x
!backward_lstm_94/lstm_cell/Relu_1Relu$backward_lstm_94/lstm_cell/add_1:z:0*
T0*
_output_shapes

:Ћ
 backward_lstm_94/lstm_cell/mul_2Mul(backward_lstm_94/lstm_cell/Sigmoid_2:y:0/backward_lstm_94/lstm_cell/Relu_1:activations:0*
T0*
_output_shapes

:
.backward_lstm_94/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      ы
 backward_lstm_94/TensorArrayV2_1TensorListReserve7backward_lstm_94/TensorArrayV2_1/element_shape:output:0)backward_lstm_94/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвW
backward_lstm_94/timeConst*
_output_shapes
: *
dtype0*
value	B : t
)backward_lstm_94/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџe
#backward_lstm_94/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Њ
backward_lstm_94/whileWhile,backward_lstm_94/while/loop_counter:output:02backward_lstm_94/while/maximum_iterations:output:0backward_lstm_94/time:output:0)backward_lstm_94/TensorArrayV2_1:handle:0backward_lstm_94/zeros:output:0!backward_lstm_94/zeros_1:output:0)backward_lstm_94/strided_slice_1:output:0Hbackward_lstm_94/TensorArrayUnstack/TensorListFromTensor:output_handle:09backward_lstm_94_lstm_cell_matmul_readvariableop_resource;backward_lstm_94_lstm_cell_matmul_1_readvariableop_resource:backward_lstm_94_lstm_cell_biasadd_readvariableop_resource*
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
$backward_lstm_94_while_body_56045437*0
cond(R&
$backward_lstm_94_while_cond_56045436*9
output_shapes(
&: : : : ::: : : : : *
parallel_iterations 
Abackward_lstm_94/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      ь
3backward_lstm_94/TensorArrayV2Stack/TensorListStackTensorListStackbackward_lstm_94/while:output:3Jbackward_lstm_94/TensorArrayV2Stack/TensorListStack/element_shape:output:0*"
_output_shapes
:*
element_dtype0y
&backward_lstm_94/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџr
(backward_lstm_94/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_94/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:г
 backward_lstm_94/strided_slice_3StridedSlice<backward_lstm_94/TensorArrayV2Stack/TensorListStack:tensor:0/backward_lstm_94/strided_slice_3/stack:output:01backward_lstm_94/strided_slice_3/stack_1:output:01backward_lstm_94/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_maskv
!backward_lstm_94/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Р
backward_lstm_94/transpose_1	Transpose<backward_lstm_94/TensorArrayV2Stack/TensorListStack:tensor:0*backward_lstm_94/transpose_1/perm:output:0*
T0*"
_output_shapes
:l
backward_lstm_94/runtimeConst"/device:CPU:0*
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
	ReverseV2	ReverseV2 backward_lstm_94/transpose_1:y:0ReverseV2/axis:output:0*
T0*"
_output_shapes
:M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :
concatConcatV2forward_lstm_94/transpose_1:y:0ReverseV2:output:0concat/axis:output:0*
N*
T0*"
_output_shapes
:Y
IdentityIdentityconcat:output:0^NoOp*
T0*"
_output_shapes
:
NoOpNoOp2^backward_lstm_94/lstm_cell/BiasAdd/ReadVariableOp1^backward_lstm_94/lstm_cell/MatMul/ReadVariableOp3^backward_lstm_94/lstm_cell/MatMul_1/ReadVariableOp^backward_lstm_94/while1^forward_lstm_94/lstm_cell/BiasAdd/ReadVariableOp0^forward_lstm_94/lstm_cell/MatMul/ReadVariableOp2^forward_lstm_94/lstm_cell/MatMul_1/ReadVariableOp^forward_lstm_94/while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*-
_input_shapes
:: : : : : : 2f
1backward_lstm_94/lstm_cell/BiasAdd/ReadVariableOp1backward_lstm_94/lstm_cell/BiasAdd/ReadVariableOp2d
0backward_lstm_94/lstm_cell/MatMul/ReadVariableOp0backward_lstm_94/lstm_cell/MatMul/ReadVariableOp2h
2backward_lstm_94/lstm_cell/MatMul_1/ReadVariableOp2backward_lstm_94/lstm_cell/MatMul_1/ReadVariableOp20
backward_lstm_94/whilebackward_lstm_94/while2d
0forward_lstm_94/lstm_cell/BiasAdd/ReadVariableOp0forward_lstm_94/lstm_cell/BiasAdd/ReadVariableOp2b
/forward_lstm_94/lstm_cell/MatMul/ReadVariableOp/forward_lstm_94/lstm_cell/MatMul/ReadVariableOp2f
1forward_lstm_94/lstm_cell/MatMul_1/ReadVariableOp1forward_lstm_94/lstm_cell/MatMul_1/ReadVariableOp2.
forward_lstm_94/whileforward_lstm_94/while:J F
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
Р
ђ
,__inference_lstm_cell_layer_call_fn_56048667

inputs
states_0
states_1
unknown: 
	unknown_0: 
	unknown_1: 
identity

identity_1

identity_2ЂStatefulPartitionedCallЇ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_lstm_cell_layer_call_and_return_conditional_losses_56043780o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:џџџџџџџџџq

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
states_0:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
states_1:($
"
_user_specified_name
56048655:($
"
_user_specified_name
56048657:($
"
_user_specified_name
56048659
п8
Б
while_body_56047558
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
/while_lstm_cell_biasadd_readvariableop_resource: Ђ&while/lstm_cell/BiasAdd/ReadVariableOpЂ%while/lstm_cell/MatMul/ReadVariableOpЂ'while/lstm_cell/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0Г
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ 
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ц
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_splitt
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџv
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџn
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџv
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџk
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџТ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџv
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџЃ

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
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : 2P
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
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:GC
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

а
&__inference_signature_wrapper_56045779
input_5
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

unknown_15:	

unknown_16:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_5unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
GPU 2J 8 *,
f'R%
#__inference__wrapped_model_56043066f
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
_user_specified_name	input_5:($
"
_user_specified_name
56045741:($
"
_user_specified_name
56045743:($
"
_user_specified_name
56045745:($
"
_user_specified_name
56045747:($
"
_user_specified_name
56045749:($
"
_user_specified_name
56045751:($
"
_user_specified_name
56045753:($
"
_user_specified_name
56045755:(	$
"
_user_specified_name
56045757:(
$
"
_user_specified_name
56045759:($
"
_user_specified_name
56045761:($
"
_user_specified_name
56045763:($
"
_user_specified_name
56045765:($
"
_user_specified_name
56045767:($
"
_user_specified_name
56045769:($
"
_user_specified_name
56045771:($
"
_user_specified_name
56045773:($
"
_user_specified_name
56045775
Ї	
р
L__inference_sequential_429_layer_call_and_return_conditional_losses_56043182
dense_618_input$
dense_618_56043176: 
dense_618_56043178:
identityЂ!dense_618/StatefulPartitionedCall
!dense_618/StatefulPartitionedCallStatefulPartitionedCalldense_618_inputdense_618_56043176dense_618_56043178*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dense_618_layer_call_and_return_conditional_losses_56043175}
IdentityIdentity*dense_618/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџF
NoOpNoOp"^dense_618/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ: : 2F
!dense_618/StatefulPartitionedCall!dense_618/StatefulPartitionedCall:\ X
+
_output_shapes
:џџџџџџџџџ
)
_user_specified_namedense_618_input:($
"
_user_specified_name
56043176:($
"
_user_specified_name
56043178
	
П
3__inference_backward_lstm_94_layer_call_fn_56047939
inputs_0
unknown: 
	unknown_0: 
	unknown_1: 
identityЂStatefulPartitionedCallџ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_backward_lstm_94_layer_call_and_return_conditional_losses_56043863|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs_0:($
"
_user_specified_name
56047931:($
"
_user_specified_name
56047933:($
"
_user_specified_name
56047935
ф
ў
G__inference_dense_618_layer_call_and_return_conditional_losses_56047232

inputs3
!tensordot_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂTensordot/ReadVariableOpz
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
::эЯY
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : Л
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
value	B : П
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
value	B : 
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
:џџџџџџџџџ
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ї
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџT
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:џџџџџџџџџe
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџV
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
е
Х
N__inference_bidirectional_94_layer_call_and_return_conditional_losses_56044686

inputs*
forward_lstm_94_56044522: *
forward_lstm_94_56044524: &
forward_lstm_94_56044526: +
backward_lstm_94_56044674: +
backward_lstm_94_56044676: '
backward_lstm_94_56044678: 
identityЂ(backward_lstm_94/StatefulPartitionedCallЂ'forward_lstm_94/StatefulPartitionedCallЛ
'forward_lstm_94/StatefulPartitionedCallStatefulPartitionedCallinputsforward_lstm_94_56044522forward_lstm_94_56044524forward_lstm_94_56044526*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_forward_lstm_94_layer_call_and_return_conditional_losses_56044521Р
(backward_lstm_94/StatefulPartitionedCallStatefulPartitionedCallinputsbackward_lstm_94_56044674backward_lstm_94_56044676backward_lstm_94_56044678*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_backward_lstm_94_layer_call_and_return_conditional_losses_56044673X
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:Ё
	ReverseV2	ReverseV21backward_lstm_94/StatefulPartitionedCall:output:0ReverseV2/axis:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Ж
concatConcatV20forward_lstm_94/StatefulPartitionedCall:output:0ReverseV2:output:0concat/axis:output:0*
N*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџk
IdentityIdentityconcat:output:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџw
NoOpNoOp)^backward_lstm_94/StatefulPartitionedCall(^forward_lstm_94/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:'џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : : : 2T
(backward_lstm_94/StatefulPartitionedCall(backward_lstm_94/StatefulPartitionedCall2R
'forward_lstm_94/StatefulPartitionedCall'forward_lstm_94/StatefulPartitionedCall:e a
=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs:($
"
_user_specified_name
56044522:($
"
_user_specified_name
56044524:($
"
_user_specified_name
56044526:($
"
_user_specified_name
56044674:($
"
_user_specified_name
56044676:($
"
_user_specified_name
56044678
Ь	
Э
while_cond_56047700
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_16
2while_while_cond_56047700___redundant_placeholder06
2while_while_cond_56047700___redundant_placeholder16
2while_while_cond_56047700___redundant_placeholder26
2while_while_cond_56047700___redundant_placeholder3
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
@: : : : :џџџџџџџџџ:џџџџџџџџџ: :::::J F
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
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
ф
ў
G__inference_dense_628_layer_call_and_return_conditional_losses_56047312

inputs3
!tensordot_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂTensordot/ReadVariableOpz
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
::эЯY
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : Л
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
value	B : П
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
value	B : 
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
:џџџџџџџџџ
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ї
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџT
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:џџџџџџџџџe
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџV
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Ь	
Э
while_cond_56043445
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_16
2while_while_cond_56043445___redundant_placeholder06
2while_while_cond_56043445___redundant_placeholder16
2while_while_cond_56043445___redundant_placeholder26
2while_while_cond_56043445___redundant_placeholder3
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
@: : : : :џџџџџџџџџ:џџџџџџџџџ: :::::J F
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
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
Р
ђ
,__inference_lstm_cell_layer_call_fn_56048569

inputs
states_0
states_1
unknown: 
	unknown_0: 
	unknown_1: 
identity

identity_1

identity_2ЂStatefulPartitionedCallЇ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_lstm_cell_layer_call_and_return_conditional_losses_56043432o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:џџџџџџџџџq

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
states_0:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
states_1:($
"
_user_specified_name
56048557:($
"
_user_specified_name
56048559:($
"
_user_specified_name
56048561
L

N__inference_backward_lstm_94_layer_call_and_return_conditional_losses_56044673

inputs:
(lstm_cell_matmul_readvariableop_resource: <
*lstm_cell_matmul_1_readvariableop_resource: 7
)lstm_cell_biasadd_readvariableop_resource: 
identityЂ lstm_cell/BiasAdd/ReadVariableOpЂlstm_cell/MatMul/ReadVariableOpЂ!lstm_cell/MatMul_1/ReadVariableOpЂwhileI
ShapeShapeinputs*
T0*
_output_shapes
::эЯ]
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
valueB:б
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
:џџџџџџџџџR
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
:џџџџџџџџџc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
	transpose	Transposeinputstranspose/perm:output:0*
T0*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџR
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::эЯ_
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвX
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: 
	ReverseV2	ReverseV2transpose:y:0ReverseV2/axis:output:0*
T0*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџџџџџх
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensorReverseV2:output:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
valueB:ђ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
shrink_axis_mask
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes

: *
dtype0
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ 
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ [
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :д
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџj
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџq
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџb
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ}
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџr
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџj
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ_
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : р
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_56044589*
condR
while_cond_56044588*K
output_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:e a
=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
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
м
Ё
$backward_lstm_94_while_cond_56046430>
:backward_lstm_94_while_backward_lstm_94_while_loop_counterD
@backward_lstm_94_while_backward_lstm_94_while_maximum_iterations&
"backward_lstm_94_while_placeholder(
$backward_lstm_94_while_placeholder_1(
$backward_lstm_94_while_placeholder_2(
$backward_lstm_94_while_placeholder_3@
<backward_lstm_94_while_less_backward_lstm_94_strided_slice_1X
Tbackward_lstm_94_while_backward_lstm_94_while_cond_56046430___redundant_placeholder0X
Tbackward_lstm_94_while_backward_lstm_94_while_cond_56046430___redundant_placeholder1X
Tbackward_lstm_94_while_backward_lstm_94_while_cond_56046430___redundant_placeholder2X
Tbackward_lstm_94_while_backward_lstm_94_while_cond_56046430___redundant_placeholder3#
backward_lstm_94_while_identity
І
backward_lstm_94/while/LessLess"backward_lstm_94_while_placeholder<backward_lstm_94_while_less_backward_lstm_94_strided_slice_1*
T0*
_output_shapes
: m
backward_lstm_94/while/IdentityIdentitybackward_lstm_94/while/Less:z:0*
T0
*
_output_shapes
: "K
backward_lstm_94_while_identity(backward_lstm_94/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :џџџџџџџџџ:џџџџџџџџџ: :::::[ W

_output_shapes
: 
=
_user_specified_name%#backward_lstm_94/while/loop_counter:a]

_output_shapes
: 
C
_user_specified_name+)backward_lstm_94/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:XT

_output_shapes
: 
:
_user_specified_name" backward_lstm_94/strided_slice_1:

_output_shapes
:
БM
б
$backward_lstm_94_while_body_56046143>
:backward_lstm_94_while_backward_lstm_94_while_loop_counterD
@backward_lstm_94_while_backward_lstm_94_while_maximum_iterations&
"backward_lstm_94_while_placeholder(
$backward_lstm_94_while_placeholder_1(
$backward_lstm_94_while_placeholder_2(
$backward_lstm_94_while_placeholder_3=
9backward_lstm_94_while_backward_lstm_94_strided_slice_1_0y
ubackward_lstm_94_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_94_tensorarrayunstack_tensorlistfromtensor_0S
Abackward_lstm_94_while_lstm_cell_matmul_readvariableop_resource_0: U
Cbackward_lstm_94_while_lstm_cell_matmul_1_readvariableop_resource_0: P
Bbackward_lstm_94_while_lstm_cell_biasadd_readvariableop_resource_0: #
backward_lstm_94_while_identity%
!backward_lstm_94_while_identity_1%
!backward_lstm_94_while_identity_2%
!backward_lstm_94_while_identity_3%
!backward_lstm_94_while_identity_4%
!backward_lstm_94_while_identity_5;
7backward_lstm_94_while_backward_lstm_94_strided_slice_1w
sbackward_lstm_94_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_94_tensorarrayunstack_tensorlistfromtensorQ
?backward_lstm_94_while_lstm_cell_matmul_readvariableop_resource: S
Abackward_lstm_94_while_lstm_cell_matmul_1_readvariableop_resource: N
@backward_lstm_94_while_lstm_cell_biasadd_readvariableop_resource: Ђ7backward_lstm_94/while/lstm_cell/BiasAdd/ReadVariableOpЂ6backward_lstm_94/while/lstm_cell/MatMul/ReadVariableOpЂ8backward_lstm_94/while/lstm_cell/MatMul_1/ReadVariableOp
Hbackward_lstm_94/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџџџџџ
:backward_lstm_94/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemubackward_lstm_94_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_94_tensorarrayunstack_tensorlistfromtensor_0"backward_lstm_94_while_placeholderQbackward_lstm_94/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
element_dtype0И
6backward_lstm_94/while/lstm_cell/MatMul/ReadVariableOpReadVariableOpAbackward_lstm_94_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0ц
'backward_lstm_94/while/lstm_cell/MatMulMatMulAbackward_lstm_94/while/TensorArrayV2Read/TensorListGetItem:item:0>backward_lstm_94/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ М
8backward_lstm_94/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpCbackward_lstm_94_while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0Э
)backward_lstm_94/while/lstm_cell/MatMul_1MatMul$backward_lstm_94_while_placeholder_2@backward_lstm_94/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ Ч
$backward_lstm_94/while/lstm_cell/addAddV21backward_lstm_94/while/lstm_cell/MatMul:product:03backward_lstm_94/while/lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ Ж
7backward_lstm_94/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOpBbackward_lstm_94_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0а
(backward_lstm_94/while/lstm_cell/BiasAddBiasAdd(backward_lstm_94/while/lstm_cell/add:z:0?backward_lstm_94/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ r
0backward_lstm_94/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
&backward_lstm_94/while/lstm_cell/splitSplit9backward_lstm_94/while/lstm_cell/split/split_dim:output:01backward_lstm_94/while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_split
(backward_lstm_94/while/lstm_cell/SigmoidSigmoid/backward_lstm_94/while/lstm_cell/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
*backward_lstm_94/while/lstm_cell/Sigmoid_1Sigmoid/backward_lstm_94/while/lstm_cell/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџГ
$backward_lstm_94/while/lstm_cell/mulMul.backward_lstm_94/while/lstm_cell/Sigmoid_1:y:0$backward_lstm_94_while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ
%backward_lstm_94/while/lstm_cell/ReluRelu/backward_lstm_94/while/lstm_cell/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџТ
&backward_lstm_94/while/lstm_cell/mul_1Mul,backward_lstm_94/while/lstm_cell/Sigmoid:y:03backward_lstm_94/while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџЗ
&backward_lstm_94/while/lstm_cell/add_1AddV2(backward_lstm_94/while/lstm_cell/mul:z:0*backward_lstm_94/while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
*backward_lstm_94/while/lstm_cell/Sigmoid_2Sigmoid/backward_lstm_94/while/lstm_cell/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ
'backward_lstm_94/while/lstm_cell/Relu_1Relu*backward_lstm_94/while/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџЦ
&backward_lstm_94/while/lstm_cell/mul_2Mul.backward_lstm_94/while/lstm_cell/Sigmoid_2:y:05backward_lstm_94/while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
;backward_lstm_94/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem$backward_lstm_94_while_placeholder_1"backward_lstm_94_while_placeholder*backward_lstm_94/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшв^
backward_lstm_94/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
backward_lstm_94/while/addAddV2"backward_lstm_94_while_placeholder%backward_lstm_94/while/add/y:output:0*
T0*
_output_shapes
: `
backward_lstm_94/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Ћ
backward_lstm_94/while/add_1AddV2:backward_lstm_94_while_backward_lstm_94_while_loop_counter'backward_lstm_94/while/add_1/y:output:0*
T0*
_output_shapes
: 
backward_lstm_94/while/IdentityIdentity backward_lstm_94/while/add_1:z:0^backward_lstm_94/while/NoOp*
T0*
_output_shapes
: Ў
!backward_lstm_94/while/Identity_1Identity@backward_lstm_94_while_backward_lstm_94_while_maximum_iterations^backward_lstm_94/while/NoOp*
T0*
_output_shapes
: 
!backward_lstm_94/while/Identity_2Identitybackward_lstm_94/while/add:z:0^backward_lstm_94/while/NoOp*
T0*
_output_shapes
: Й
!backward_lstm_94/while/Identity_3IdentityKbackward_lstm_94/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^backward_lstm_94/while/NoOp*
T0*
_output_shapes
: Љ
!backward_lstm_94/while/Identity_4Identity*backward_lstm_94/while/lstm_cell/mul_2:z:0^backward_lstm_94/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџЉ
!backward_lstm_94/while/Identity_5Identity*backward_lstm_94/while/lstm_cell/add_1:z:0^backward_lstm_94/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџч
backward_lstm_94/while/NoOpNoOp8^backward_lstm_94/while/lstm_cell/BiasAdd/ReadVariableOp7^backward_lstm_94/while/lstm_cell/MatMul/ReadVariableOp9^backward_lstm_94/while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "t
7backward_lstm_94_while_backward_lstm_94_strided_slice_19backward_lstm_94_while_backward_lstm_94_strided_slice_1_0"K
backward_lstm_94_while_identity(backward_lstm_94/while/Identity:output:0"O
!backward_lstm_94_while_identity_1*backward_lstm_94/while/Identity_1:output:0"O
!backward_lstm_94_while_identity_2*backward_lstm_94/while/Identity_2:output:0"O
!backward_lstm_94_while_identity_3*backward_lstm_94/while/Identity_3:output:0"O
!backward_lstm_94_while_identity_4*backward_lstm_94/while/Identity_4:output:0"O
!backward_lstm_94_while_identity_5*backward_lstm_94/while/Identity_5:output:0"
@backward_lstm_94_while_lstm_cell_biasadd_readvariableop_resourceBbackward_lstm_94_while_lstm_cell_biasadd_readvariableop_resource_0"
Abackward_lstm_94_while_lstm_cell_matmul_1_readvariableop_resourceCbackward_lstm_94_while_lstm_cell_matmul_1_readvariableop_resource_0"
?backward_lstm_94_while_lstm_cell_matmul_readvariableop_resourceAbackward_lstm_94_while_lstm_cell_matmul_readvariableop_resource_0"ь
sbackward_lstm_94_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_94_tensorarrayunstack_tensorlistfromtensorubackward_lstm_94_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_94_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : 2r
7backward_lstm_94/while/lstm_cell/BiasAdd/ReadVariableOp7backward_lstm_94/while/lstm_cell/BiasAdd/ReadVariableOp2p
6backward_lstm_94/while/lstm_cell/MatMul/ReadVariableOp6backward_lstm_94/while/lstm_cell/MatMul/ReadVariableOp2t
8backward_lstm_94/while/lstm_cell/MatMul_1/ReadVariableOp8backward_lstm_94/while/lstm_cell/MatMul_1/ReadVariableOp:[ W

_output_shapes
: 
=
_user_specified_name%#backward_lstm_94/while/loop_counter:a]

_output_shapes
: 
C
_user_specified_name+)backward_lstm_94/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:XT

_output_shapes
: 
:
_user_specified_name" backward_lstm_94/strided_slice_1:pl

_output_shapes
: 
R
_user_specified_name:8backward_lstm_94/TensorArrayUnstack/TensorListFromTensor:($
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
І

3__inference_bidirectional_94_layer_call_fn_56045892
inputs_0
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: 
identityЂStatefulPartitionedCallІ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_bidirectional_94_layer_call_and_return_conditional_losses_56044376|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:'џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:g c
=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs_0:($
"
_user_specified_name
56045878:($
"
_user_specified_name
56045880:($
"
_user_specified_name
56045882:($
"
_user_specified_name
56045884:($
"
_user_specified_name
56045886:($
"
_user_specified_name
56045888
	
О
2__inference_forward_lstm_94_layer_call_fn_56047334
inputs_0
unknown: 
	unknown_0: 
	unknown_1: 
identityЂStatefulPartitionedCallў
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_forward_lstm_94_layer_call_and_return_conditional_losses_56043660|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs_0:($
"
_user_specified_name
56047326:($
"
_user_specified_name
56047328:($
"
_user_specified_name
56047330
­
Ї
1__inference_sequential_429_layer_call_fn_56043200
dense_618_input
unknown:
	unknown_0:
identityЂStatefulPartitionedCallю
StatefulPartitionedCallStatefulPartitionedCalldense_618_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_sequential_429_layer_call_and_return_conditional_losses_56043182s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
+
_output_shapes
:џџџџџџџџџ
)
_user_specified_namedense_618_input:($
"
_user_specified_name
56043194:($
"
_user_specified_name
56043196
ш8
Б
while_body_56044279
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
/while_lstm_cell_biasadd_readvariableop_resource: Ђ&while/lstm_cell/BiasAdd/ReadVariableOpЂ%while/lstm_cell/MatMul/ReadVariableOpЂ'while/lstm_cell/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџџџџџЏ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
element_dtype0
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0Г
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ 
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ц
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_splitt
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџv
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџn
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџv
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџk
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџТ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџv
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџЃ

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
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : 2P
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
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:GC
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
Фs
ј
Etopk_bilstm_moe_bidirectional_94_backward_lstm_94_while_body_56042969
|topk_bilstm_moe_bidirectional_94_backward_lstm_94_while_topk_bilstm_moe_bidirectional_94_backward_lstm_94_while_loop_counter
topk_bilstm_moe_bidirectional_94_backward_lstm_94_while_topk_bilstm_moe_bidirectional_94_backward_lstm_94_while_maximum_iterationsG
Ctopk_bilstm_moe_bidirectional_94_backward_lstm_94_while_placeholderI
Etopk_bilstm_moe_bidirectional_94_backward_lstm_94_while_placeholder_1I
Etopk_bilstm_moe_bidirectional_94_backward_lstm_94_while_placeholder_2I
Etopk_bilstm_moe_bidirectional_94_backward_lstm_94_while_placeholder_3
{topk_bilstm_moe_bidirectional_94_backward_lstm_94_while_topk_bilstm_moe_bidirectional_94_backward_lstm_94_strided_slice_1_0М
Зtopk_bilstm_moe_bidirectional_94_backward_lstm_94_while_tensorarrayv2read_tensorlistgetitem_topk_bilstm_moe_bidirectional_94_backward_lstm_94_tensorarrayunstack_tensorlistfromtensor_0t
btopk_bilstm_moe_bidirectional_94_backward_lstm_94_while_lstm_cell_matmul_readvariableop_resource_0: v
dtopk_bilstm_moe_bidirectional_94_backward_lstm_94_while_lstm_cell_matmul_1_readvariableop_resource_0: q
ctopk_bilstm_moe_bidirectional_94_backward_lstm_94_while_lstm_cell_biasadd_readvariableop_resource_0: D
@topk_bilstm_moe_bidirectional_94_backward_lstm_94_while_identityF
Btopk_bilstm_moe_bidirectional_94_backward_lstm_94_while_identity_1F
Btopk_bilstm_moe_bidirectional_94_backward_lstm_94_while_identity_2F
Btopk_bilstm_moe_bidirectional_94_backward_lstm_94_while_identity_3F
Btopk_bilstm_moe_bidirectional_94_backward_lstm_94_while_identity_4F
Btopk_bilstm_moe_bidirectional_94_backward_lstm_94_while_identity_5}
ytopk_bilstm_moe_bidirectional_94_backward_lstm_94_while_topk_bilstm_moe_bidirectional_94_backward_lstm_94_strided_slice_1К
Еtopk_bilstm_moe_bidirectional_94_backward_lstm_94_while_tensorarrayv2read_tensorlistgetitem_topk_bilstm_moe_bidirectional_94_backward_lstm_94_tensorarrayunstack_tensorlistfromtensorr
`topk_bilstm_moe_bidirectional_94_backward_lstm_94_while_lstm_cell_matmul_readvariableop_resource: t
btopk_bilstm_moe_bidirectional_94_backward_lstm_94_while_lstm_cell_matmul_1_readvariableop_resource: o
atopk_bilstm_moe_bidirectional_94_backward_lstm_94_while_lstm_cell_biasadd_readvariableop_resource: ЂXtopk_bilstm_moe/bidirectional_94/backward_lstm_94/while/lstm_cell/BiasAdd/ReadVariableOpЂWtopk_bilstm_moe/bidirectional_94/backward_lstm_94/while/lstm_cell/MatMul/ReadVariableOpЂYtopk_bilstm_moe/bidirectional_94/backward_lstm_94/while/lstm_cell/MatMul_1/ReadVariableOpК
itopk_bilstm_moe/bidirectional_94/backward_lstm_94/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      
[topk_bilstm_moe/bidirectional_94/backward_lstm_94/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemЗtopk_bilstm_moe_bidirectional_94_backward_lstm_94_while_tensorarrayv2read_tensorlistgetitem_topk_bilstm_moe_bidirectional_94_backward_lstm_94_tensorarrayunstack_tensorlistfromtensor_0Ctopk_bilstm_moe_bidirectional_94_backward_lstm_94_while_placeholderrtopk_bilstm_moe/bidirectional_94/backward_lstm_94/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

:*
element_dtype0њ
Wtopk_bilstm_moe/bidirectional_94/backward_lstm_94/while/lstm_cell/MatMul/ReadVariableOpReadVariableOpbtopk_bilstm_moe_bidirectional_94_backward_lstm_94_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0Р
Htopk_bilstm_moe/bidirectional_94/backward_lstm_94/while/lstm_cell/MatMulMatMulbtopk_bilstm_moe/bidirectional_94/backward_lstm_94/while/TensorArrayV2Read/TensorListGetItem:item:0_topk_bilstm_moe/bidirectional_94/backward_lstm_94/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

: ў
Ytopk_bilstm_moe/bidirectional_94/backward_lstm_94/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpdtopk_bilstm_moe_bidirectional_94_backward_lstm_94_while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0Ї
Jtopk_bilstm_moe/bidirectional_94/backward_lstm_94/while/lstm_cell/MatMul_1MatMulEtopk_bilstm_moe_bidirectional_94_backward_lstm_94_while_placeholder_2atopk_bilstm_moe/bidirectional_94/backward_lstm_94/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes

: Ё
Etopk_bilstm_moe/bidirectional_94/backward_lstm_94/while/lstm_cell/addAddV2Rtopk_bilstm_moe/bidirectional_94/backward_lstm_94/while/lstm_cell/MatMul:product:0Ttopk_bilstm_moe/bidirectional_94/backward_lstm_94/while/lstm_cell/MatMul_1:product:0*
T0*
_output_shapes

: ј
Xtopk_bilstm_moe/bidirectional_94/backward_lstm_94/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOpctopk_bilstm_moe_bidirectional_94_backward_lstm_94_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0Њ
Itopk_bilstm_moe/bidirectional_94/backward_lstm_94/while/lstm_cell/BiasAddBiasAddItopk_bilstm_moe/bidirectional_94/backward_lstm_94/while/lstm_cell/add:z:0`topk_bilstm_moe/bidirectional_94/backward_lstm_94/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

: 
Qtopk_bilstm_moe/bidirectional_94/backward_lstm_94/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :и
Gtopk_bilstm_moe/bidirectional_94/backward_lstm_94/while/lstm_cell/splitSplitZtopk_bilstm_moe/bidirectional_94/backward_lstm_94/while/lstm_cell/split/split_dim:output:0Rtopk_bilstm_moe/bidirectional_94/backward_lstm_94/while/lstm_cell/BiasAdd:output:0*
T0*<
_output_shapes*
(::::*
	num_splitЯ
Itopk_bilstm_moe/bidirectional_94/backward_lstm_94/while/lstm_cell/SigmoidSigmoidPtopk_bilstm_moe/bidirectional_94/backward_lstm_94/while/lstm_cell/split:output:0*
T0*
_output_shapes

:б
Ktopk_bilstm_moe/bidirectional_94/backward_lstm_94/while/lstm_cell/Sigmoid_1SigmoidPtopk_bilstm_moe/bidirectional_94/backward_lstm_94/while/lstm_cell/split:output:1*
T0*
_output_shapes

:
Etopk_bilstm_moe/bidirectional_94/backward_lstm_94/while/lstm_cell/mulMulOtopk_bilstm_moe/bidirectional_94/backward_lstm_94/while/lstm_cell/Sigmoid_1:y:0Etopk_bilstm_moe_bidirectional_94_backward_lstm_94_while_placeholder_3*
T0*
_output_shapes

:Щ
Ftopk_bilstm_moe/bidirectional_94/backward_lstm_94/while/lstm_cell/ReluReluPtopk_bilstm_moe/bidirectional_94/backward_lstm_94/while/lstm_cell/split:output:2*
T0*
_output_shapes

:
Gtopk_bilstm_moe/bidirectional_94/backward_lstm_94/while/lstm_cell/mul_1MulMtopk_bilstm_moe/bidirectional_94/backward_lstm_94/while/lstm_cell/Sigmoid:y:0Ttopk_bilstm_moe/bidirectional_94/backward_lstm_94/while/lstm_cell/Relu:activations:0*
T0*
_output_shapes

:
Gtopk_bilstm_moe/bidirectional_94/backward_lstm_94/while/lstm_cell/add_1AddV2Itopk_bilstm_moe/bidirectional_94/backward_lstm_94/while/lstm_cell/mul:z:0Ktopk_bilstm_moe/bidirectional_94/backward_lstm_94/while/lstm_cell/mul_1:z:0*
T0*
_output_shapes

:б
Ktopk_bilstm_moe/bidirectional_94/backward_lstm_94/while/lstm_cell/Sigmoid_2SigmoidPtopk_bilstm_moe/bidirectional_94/backward_lstm_94/while/lstm_cell/split:output:3*
T0*
_output_shapes

:Ц
Htopk_bilstm_moe/bidirectional_94/backward_lstm_94/while/lstm_cell/Relu_1ReluKtopk_bilstm_moe/bidirectional_94/backward_lstm_94/while/lstm_cell/add_1:z:0*
T0*
_output_shapes

: 
Gtopk_bilstm_moe/bidirectional_94/backward_lstm_94/while/lstm_cell/mul_2MulOtopk_bilstm_moe/bidirectional_94/backward_lstm_94/while/lstm_cell/Sigmoid_2:y:0Vtopk_bilstm_moe/bidirectional_94/backward_lstm_94/while/lstm_cell/Relu_1:activations:0*
T0*
_output_shapes

:
\topk_bilstm_moe/bidirectional_94/backward_lstm_94/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemEtopk_bilstm_moe_bidirectional_94_backward_lstm_94_while_placeholder_1Ctopk_bilstm_moe_bidirectional_94_backward_lstm_94_while_placeholderKtopk_bilstm_moe/bidirectional_94/backward_lstm_94/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшв
=topk_bilstm_moe/bidirectional_94/backward_lstm_94/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :ђ
;topk_bilstm_moe/bidirectional_94/backward_lstm_94/while/addAddV2Ctopk_bilstm_moe_bidirectional_94_backward_lstm_94_while_placeholderFtopk_bilstm_moe/bidirectional_94/backward_lstm_94/while/add/y:output:0*
T0*
_output_shapes
: 
?topk_bilstm_moe/bidirectional_94/backward_lstm_94/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Џ
=topk_bilstm_moe/bidirectional_94/backward_lstm_94/while/add_1AddV2|topk_bilstm_moe_bidirectional_94_backward_lstm_94_while_topk_bilstm_moe_bidirectional_94_backward_lstm_94_while_loop_counterHtopk_bilstm_moe/bidirectional_94/backward_lstm_94/while/add_1/y:output:0*
T0*
_output_shapes
: я
@topk_bilstm_moe/bidirectional_94/backward_lstm_94/while/IdentityIdentityAtopk_bilstm_moe/bidirectional_94/backward_lstm_94/while/add_1:z:0=^topk_bilstm_moe/bidirectional_94/backward_lstm_94/while/NoOp*
T0*
_output_shapes
: Г
Btopk_bilstm_moe/bidirectional_94/backward_lstm_94/while/Identity_1Identitytopk_bilstm_moe_bidirectional_94_backward_lstm_94_while_topk_bilstm_moe_bidirectional_94_backward_lstm_94_while_maximum_iterations=^topk_bilstm_moe/bidirectional_94/backward_lstm_94/while/NoOp*
T0*
_output_shapes
: я
Btopk_bilstm_moe/bidirectional_94/backward_lstm_94/while/Identity_2Identity?topk_bilstm_moe/bidirectional_94/backward_lstm_94/while/add:z:0=^topk_bilstm_moe/bidirectional_94/backward_lstm_94/while/NoOp*
T0*
_output_shapes
: 
Btopk_bilstm_moe/bidirectional_94/backward_lstm_94/while/Identity_3Identityltopk_bilstm_moe/bidirectional_94/backward_lstm_94/while/TensorArrayV2Write/TensorListSetItem:output_handle:0=^topk_bilstm_moe/bidirectional_94/backward_lstm_94/while/NoOp*
T0*
_output_shapes
: 
Btopk_bilstm_moe/bidirectional_94/backward_lstm_94/while/Identity_4IdentityKtopk_bilstm_moe/bidirectional_94/backward_lstm_94/while/lstm_cell/mul_2:z:0=^topk_bilstm_moe/bidirectional_94/backward_lstm_94/while/NoOp*
T0*
_output_shapes

:
Btopk_bilstm_moe/bidirectional_94/backward_lstm_94/while/Identity_5IdentityKtopk_bilstm_moe/bidirectional_94/backward_lstm_94/while/lstm_cell/add_1:z:0=^topk_bilstm_moe/bidirectional_94/backward_lstm_94/while/NoOp*
T0*
_output_shapes

:ы
<topk_bilstm_moe/bidirectional_94/backward_lstm_94/while/NoOpNoOpY^topk_bilstm_moe/bidirectional_94/backward_lstm_94/while/lstm_cell/BiasAdd/ReadVariableOpX^topk_bilstm_moe/bidirectional_94/backward_lstm_94/while/lstm_cell/MatMul/ReadVariableOpZ^topk_bilstm_moe/bidirectional_94/backward_lstm_94/while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "
@topk_bilstm_moe_bidirectional_94_backward_lstm_94_while_identityItopk_bilstm_moe/bidirectional_94/backward_lstm_94/while/Identity:output:0"
Btopk_bilstm_moe_bidirectional_94_backward_lstm_94_while_identity_1Ktopk_bilstm_moe/bidirectional_94/backward_lstm_94/while/Identity_1:output:0"
Btopk_bilstm_moe_bidirectional_94_backward_lstm_94_while_identity_2Ktopk_bilstm_moe/bidirectional_94/backward_lstm_94/while/Identity_2:output:0"
Btopk_bilstm_moe_bidirectional_94_backward_lstm_94_while_identity_3Ktopk_bilstm_moe/bidirectional_94/backward_lstm_94/while/Identity_3:output:0"
Btopk_bilstm_moe_bidirectional_94_backward_lstm_94_while_identity_4Ktopk_bilstm_moe/bidirectional_94/backward_lstm_94/while/Identity_4:output:0"
Btopk_bilstm_moe_bidirectional_94_backward_lstm_94_while_identity_5Ktopk_bilstm_moe/bidirectional_94/backward_lstm_94/while/Identity_5:output:0"Ш
atopk_bilstm_moe_bidirectional_94_backward_lstm_94_while_lstm_cell_biasadd_readvariableop_resourcectopk_bilstm_moe_bidirectional_94_backward_lstm_94_while_lstm_cell_biasadd_readvariableop_resource_0"Ъ
btopk_bilstm_moe_bidirectional_94_backward_lstm_94_while_lstm_cell_matmul_1_readvariableop_resourcedtopk_bilstm_moe_bidirectional_94_backward_lstm_94_while_lstm_cell_matmul_1_readvariableop_resource_0"Ц
`topk_bilstm_moe_bidirectional_94_backward_lstm_94_while_lstm_cell_matmul_readvariableop_resourcebtopk_bilstm_moe_bidirectional_94_backward_lstm_94_while_lstm_cell_matmul_readvariableop_resource_0"ђ
Еtopk_bilstm_moe_bidirectional_94_backward_lstm_94_while_tensorarrayv2read_tensorlistgetitem_topk_bilstm_moe_bidirectional_94_backward_lstm_94_tensorarrayunstack_tensorlistfromtensorЗtopk_bilstm_moe_bidirectional_94_backward_lstm_94_while_tensorarrayv2read_tensorlistgetitem_topk_bilstm_moe_bidirectional_94_backward_lstm_94_tensorarrayunstack_tensorlistfromtensor_0"ј
ytopk_bilstm_moe_bidirectional_94_backward_lstm_94_while_topk_bilstm_moe_bidirectional_94_backward_lstm_94_strided_slice_1{topk_bilstm_moe_bidirectional_94_backward_lstm_94_while_topk_bilstm_moe_bidirectional_94_backward_lstm_94_strided_slice_1_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : ::: : : : : 2Д
Xtopk_bilstm_moe/bidirectional_94/backward_lstm_94/while/lstm_cell/BiasAdd/ReadVariableOpXtopk_bilstm_moe/bidirectional_94/backward_lstm_94/while/lstm_cell/BiasAdd/ReadVariableOp2В
Wtopk_bilstm_moe/bidirectional_94/backward_lstm_94/while/lstm_cell/MatMul/ReadVariableOpWtopk_bilstm_moe/bidirectional_94/backward_lstm_94/while/lstm_cell/MatMul/ReadVariableOp2Ж
Ytopk_bilstm_moe/bidirectional_94/backward_lstm_94/while/lstm_cell/MatMul_1/ReadVariableOpYtopk_bilstm_moe/bidirectional_94/backward_lstm_94/while/lstm_cell/MatMul_1/ReadVariableOp:| x

_output_shapes
: 
^
_user_specified_nameFDtopk_bilstm_moe/bidirectional_94/backward_lstm_94/while/loop_counter:~

_output_shapes
: 
d
_user_specified_nameLJtopk_bilstm_moe/bidirectional_94/backward_lstm_94/while/maximum_iterations:
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
_user_specified_nameCAtopk_bilstm_moe/bidirectional_94/backward_lstm_94/strided_slice_1:

_output_shapes
: 
s
_user_specified_name[Ytopk_bilstm_moe/bidirectional_94/backward_lstm_94/TensorArrayUnstack/TensorListFromTensor:($
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
ф
ў
G__inference_dense_618_layer_call_and_return_conditional_losses_56043175

inputs3
!tensordot_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂTensordot/ReadVariableOpz
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
::эЯY
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : Л
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
value	B : П
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
value	B : 
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
:џџџџџџџџџ
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ї
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџT
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:џџџџџџџџџe
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџV
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
L

N__inference_backward_lstm_94_layer_call_and_return_conditional_losses_56048552

inputs:
(lstm_cell_matmul_readvariableop_resource: <
*lstm_cell_matmul_1_readvariableop_resource: 7
)lstm_cell_biasadd_readvariableop_resource: 
identityЂ lstm_cell/BiasAdd/ReadVariableOpЂlstm_cell/MatMul/ReadVariableOpЂ!lstm_cell/MatMul_1/ReadVariableOpЂwhileI
ShapeShapeinputs*
T0*
_output_shapes
::эЯ]
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
valueB:б
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
:џџџџџџџџџR
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
:џџџџџџџџџc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
	transpose	Transposeinputstranspose/perm:output:0*
T0*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџR
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::эЯ_
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвX
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: 
	ReverseV2	ReverseV2transpose:y:0ReverseV2/axis:output:0*
T0*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџџџџџх
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensorReverseV2:output:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
valueB:ђ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
shrink_axis_mask
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes

: *
dtype0
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ 
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ [
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :д
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџj
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџq
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџb
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ}
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџr
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџj
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ_
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : р
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_56048468*
condR
while_cond_56048467*K
output_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:e a
=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
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
ЖJ
Б
#forward_lstm_94_while_body_56044898<
8forward_lstm_94_while_forward_lstm_94_while_loop_counterB
>forward_lstm_94_while_forward_lstm_94_while_maximum_iterations%
!forward_lstm_94_while_placeholder'
#forward_lstm_94_while_placeholder_1'
#forward_lstm_94_while_placeholder_2'
#forward_lstm_94_while_placeholder_3;
7forward_lstm_94_while_forward_lstm_94_strided_slice_1_0w
sforward_lstm_94_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_94_tensorarrayunstack_tensorlistfromtensor_0R
@forward_lstm_94_while_lstm_cell_matmul_readvariableop_resource_0: T
Bforward_lstm_94_while_lstm_cell_matmul_1_readvariableop_resource_0: O
Aforward_lstm_94_while_lstm_cell_biasadd_readvariableop_resource_0: "
forward_lstm_94_while_identity$
 forward_lstm_94_while_identity_1$
 forward_lstm_94_while_identity_2$
 forward_lstm_94_while_identity_3$
 forward_lstm_94_while_identity_4$
 forward_lstm_94_while_identity_59
5forward_lstm_94_while_forward_lstm_94_strided_slice_1u
qforward_lstm_94_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_94_tensorarrayunstack_tensorlistfromtensorP
>forward_lstm_94_while_lstm_cell_matmul_readvariableop_resource: R
@forward_lstm_94_while_lstm_cell_matmul_1_readvariableop_resource: M
?forward_lstm_94_while_lstm_cell_biasadd_readvariableop_resource: Ђ6forward_lstm_94/while/lstm_cell/BiasAdd/ReadVariableOpЂ5forward_lstm_94/while/lstm_cell/MatMul/ReadVariableOpЂ7forward_lstm_94/while/lstm_cell/MatMul_1/ReadVariableOp
Gforward_lstm_94/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      э
9forward_lstm_94/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsforward_lstm_94_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_94_tensorarrayunstack_tensorlistfromtensor_0!forward_lstm_94_while_placeholderPforward_lstm_94/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

:*
element_dtype0Ж
5forward_lstm_94/while/lstm_cell/MatMul/ReadVariableOpReadVariableOp@forward_lstm_94_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0к
&forward_lstm_94/while/lstm_cell/MatMulMatMul@forward_lstm_94/while/TensorArrayV2Read/TensorListGetItem:item:0=forward_lstm_94/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

: К
7forward_lstm_94/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpBforward_lstm_94_while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0С
(forward_lstm_94/while/lstm_cell/MatMul_1MatMul#forward_lstm_94_while_placeholder_2?forward_lstm_94/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes

: Л
#forward_lstm_94/while/lstm_cell/addAddV20forward_lstm_94/while/lstm_cell/MatMul:product:02forward_lstm_94/while/lstm_cell/MatMul_1:product:0*
T0*
_output_shapes

: Д
6forward_lstm_94/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOpAforward_lstm_94_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0Ф
'forward_lstm_94/while/lstm_cell/BiasAddBiasAdd'forward_lstm_94/while/lstm_cell/add:z:0>forward_lstm_94/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

: q
/forward_lstm_94/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ђ
%forward_lstm_94/while/lstm_cell/splitSplit8forward_lstm_94/while/lstm_cell/split/split_dim:output:00forward_lstm_94/while/lstm_cell/BiasAdd:output:0*
T0*<
_output_shapes*
(::::*
	num_split
'forward_lstm_94/while/lstm_cell/SigmoidSigmoid.forward_lstm_94/while/lstm_cell/split:output:0*
T0*
_output_shapes

:
)forward_lstm_94/while/lstm_cell/Sigmoid_1Sigmoid.forward_lstm_94/while/lstm_cell/split:output:1*
T0*
_output_shapes

:Ї
#forward_lstm_94/while/lstm_cell/mulMul-forward_lstm_94/while/lstm_cell/Sigmoid_1:y:0#forward_lstm_94_while_placeholder_3*
T0*
_output_shapes

:
$forward_lstm_94/while/lstm_cell/ReluRelu.forward_lstm_94/while/lstm_cell/split:output:2*
T0*
_output_shapes

:Ж
%forward_lstm_94/while/lstm_cell/mul_1Mul+forward_lstm_94/while/lstm_cell/Sigmoid:y:02forward_lstm_94/while/lstm_cell/Relu:activations:0*
T0*
_output_shapes

:Ћ
%forward_lstm_94/while/lstm_cell/add_1AddV2'forward_lstm_94/while/lstm_cell/mul:z:0)forward_lstm_94/while/lstm_cell/mul_1:z:0*
T0*
_output_shapes

:
)forward_lstm_94/while/lstm_cell/Sigmoid_2Sigmoid.forward_lstm_94/while/lstm_cell/split:output:3*
T0*
_output_shapes

:
&forward_lstm_94/while/lstm_cell/Relu_1Relu)forward_lstm_94/while/lstm_cell/add_1:z:0*
T0*
_output_shapes

:К
%forward_lstm_94/while/lstm_cell/mul_2Mul-forward_lstm_94/while/lstm_cell/Sigmoid_2:y:04forward_lstm_94/while/lstm_cell/Relu_1:activations:0*
T0*
_output_shapes

:
:forward_lstm_94/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem#forward_lstm_94_while_placeholder_1!forward_lstm_94_while_placeholder)forward_lstm_94/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшв]
forward_lstm_94/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
forward_lstm_94/while/addAddV2!forward_lstm_94_while_placeholder$forward_lstm_94/while/add/y:output:0*
T0*
_output_shapes
: _
forward_lstm_94/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Ї
forward_lstm_94/while/add_1AddV28forward_lstm_94_while_forward_lstm_94_while_loop_counter&forward_lstm_94/while/add_1/y:output:0*
T0*
_output_shapes
: 
forward_lstm_94/while/IdentityIdentityforward_lstm_94/while/add_1:z:0^forward_lstm_94/while/NoOp*
T0*
_output_shapes
: Њ
 forward_lstm_94/while/Identity_1Identity>forward_lstm_94_while_forward_lstm_94_while_maximum_iterations^forward_lstm_94/while/NoOp*
T0*
_output_shapes
: 
 forward_lstm_94/while/Identity_2Identityforward_lstm_94/while/add:z:0^forward_lstm_94/while/NoOp*
T0*
_output_shapes
: Ж
 forward_lstm_94/while/Identity_3IdentityJforward_lstm_94/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^forward_lstm_94/while/NoOp*
T0*
_output_shapes
: 
 forward_lstm_94/while/Identity_4Identity)forward_lstm_94/while/lstm_cell/mul_2:z:0^forward_lstm_94/while/NoOp*
T0*
_output_shapes

:
 forward_lstm_94/while/Identity_5Identity)forward_lstm_94/while/lstm_cell/add_1:z:0^forward_lstm_94/while/NoOp*
T0*
_output_shapes

:у
forward_lstm_94/while/NoOpNoOp7^forward_lstm_94/while/lstm_cell/BiasAdd/ReadVariableOp6^forward_lstm_94/while/lstm_cell/MatMul/ReadVariableOp8^forward_lstm_94/while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "p
5forward_lstm_94_while_forward_lstm_94_strided_slice_17forward_lstm_94_while_forward_lstm_94_strided_slice_1_0"I
forward_lstm_94_while_identity'forward_lstm_94/while/Identity:output:0"M
 forward_lstm_94_while_identity_1)forward_lstm_94/while/Identity_1:output:0"M
 forward_lstm_94_while_identity_2)forward_lstm_94/while/Identity_2:output:0"M
 forward_lstm_94_while_identity_3)forward_lstm_94/while/Identity_3:output:0"M
 forward_lstm_94_while_identity_4)forward_lstm_94/while/Identity_4:output:0"M
 forward_lstm_94_while_identity_5)forward_lstm_94/while/Identity_5:output:0"
?forward_lstm_94_while_lstm_cell_biasadd_readvariableop_resourceAforward_lstm_94_while_lstm_cell_biasadd_readvariableop_resource_0"
@forward_lstm_94_while_lstm_cell_matmul_1_readvariableop_resourceBforward_lstm_94_while_lstm_cell_matmul_1_readvariableop_resource_0"
>forward_lstm_94_while_lstm_cell_matmul_readvariableop_resource@forward_lstm_94_while_lstm_cell_matmul_readvariableop_resource_0"ш
qforward_lstm_94_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_94_tensorarrayunstack_tensorlistfromtensorsforward_lstm_94_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_94_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : ::: : : : : 2p
6forward_lstm_94/while/lstm_cell/BiasAdd/ReadVariableOp6forward_lstm_94/while/lstm_cell/BiasAdd/ReadVariableOp2n
5forward_lstm_94/while/lstm_cell/MatMul/ReadVariableOp5forward_lstm_94/while/lstm_cell/MatMul/ReadVariableOp2r
7forward_lstm_94/while/lstm_cell/MatMul_1/ReadVariableOp7forward_lstm_94/while/lstm_cell/MatMul_1/ReadVariableOp:Z V

_output_shapes
: 
<
_user_specified_name$"forward_lstm_94/while/loop_counter:`\

_output_shapes
: 
B
_user_specified_name*(forward_lstm_94/while/maximum_iterations:
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
_user_specified_name!forward_lstm_94/strided_slice_1:ok

_output_shapes
: 
Q
_user_specified_name97forward_lstm_94/TensorArrayUnstack/TensorListFromTensor:($
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
№
t
H__inference_lambda_103_layer_call_and_return_conditional_losses_56045851
inputs_0
inputs_1
identity
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
	
О
2__inference_forward_lstm_94_layer_call_fn_56047323
inputs_0
unknown: 
	unknown_0: 
	unknown_1: 
identityЂStatefulPartitionedCallў
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_forward_lstm_94_layer_call_and_return_conditional_losses_56043515|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs_0:($
"
_user_specified_name
56047315:($
"
_user_specified_name
56047317:($
"
_user_specified_name
56047319
Ь	
Э
while_cond_56044588
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_16
2while_while_cond_56044588___redundant_placeholder06
2while_while_cond_56044588___redundant_placeholder16
2while_while_cond_56044588___redundant_placeholder26
2while_while_cond_56044588___redundant_placeholder3
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
@: : : : :џџџџџџџџџ:џџџџџџџџџ: :::::J F
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
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
ч
r
H__inference_lambda_104_layer_call_and_return_conditional_losses_56045236

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
я
t
H__inference_lambda_102_layer_call_and_return_conditional_losses_56045821
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
ЯG
у
M__inference_topk_bilstm_moe_layer_call_and_return_conditional_losses_56045552
input_5$
dense_612_56045180: 
dense_612_56045182:)
sequential_424_56045210:%
sequential_424_56045212:)
sequential_429_56045215:%
sequential_429_56045217:)
sequential_434_56045220:%
sequential_434_56045222:)
sequential_439_56045225:%
sequential_439_56045227:+
bidirectional_94_56045526: +
bidirectional_94_56045528: '
bidirectional_94_56045530: +
bidirectional_94_56045532: +
bidirectional_94_56045534: '
bidirectional_94_56045536: %
dense_629_56045546:	 
dense_629_56045548:
identityЂ(bidirectional_94/StatefulPartitionedCallЂ!dense_612/StatefulPartitionedCallЂ!dense_629/StatefulPartitionedCallЂ&sequential_424/StatefulPartitionedCallЂ&sequential_429/StatefulPartitionedCallЂ&sequential_434/StatefulPartitionedCallЂ&sequential_439/StatefulPartitionedCallі
!dense_612/StatefulPartitionedCallStatefulPartitionedCallinput_5dense_612_56045180dense_612_56045182*
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
GPU 2J 8 *P
fKRI
G__inference_dense_612_layer_call_and_return_conditional_losses_56044781Z
tf.math.top_k_4/TopKV2/kConst*
_output_shapes
: *
dtype0*
value	B :Њ
tf.math.top_k_4/TopKV2TopKV2*dense_612/StatefulPartitionedCall:output:0!tf.math.top_k_4/TopKV2/k:output:0*
T0*0
_output_shapes
::b
tf.one_hot_4/one_hot/on_valueConst*
_output_shapes
: *
dtype0*
valueB
 *  ?c
tf.one_hot_4/one_hot/off_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    \
tf.one_hot_4/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :ё
tf.one_hot_4/one_hotOneHot tf.math.top_k_4/TopKV2:indices:0#tf.one_hot_4/one_hot/depth:output:0&tf.one_hot_4/one_hot/on_value:output:0'tf.one_hot_4/one_hot/off_value:output:0*
T0*
TI0*&
_output_shapes
:ђ
lambda_102/PartitionedCallPartitionedCalltf.math.top_k_4/TopKV2:values:0tf.one_hot_4/one_hot:output:0*
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
GPU 2J 8 *Q
fLRJ
H__inference_lambda_102_layer_call_and_return_conditional_losses_56045197ф
lambda_103/PartitionedCallPartitionedCallinput_5#lambda_102/PartitionedCall:output:0*
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
GPU 2J 8 *Q
fLRJ
H__inference_lambda_103_layer_call_and_return_conditional_losses_56045204Ѕ
tf.unstack_4/unstackUnpack#lambda_103/PartitionedCall:output:0*
T0*L
_output_shapes:
8::::*	
num 
&sequential_424/StatefulPartitionedCallStatefulPartitionedCalltf.unstack_4/unstack:output:0sequential_424_56045210sequential_424_56045212*
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
GPU 2J 8 *U
fPRN
L__inference_sequential_424_layer_call_and_return_conditional_losses_56043115 
&sequential_429/StatefulPartitionedCallStatefulPartitionedCalltf.unstack_4/unstack:output:1sequential_429_56045215sequential_429_56045217*
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
GPU 2J 8 *U
fPRN
L__inference_sequential_429_layer_call_and_return_conditional_losses_56043191 
&sequential_434/StatefulPartitionedCallStatefulPartitionedCalltf.unstack_4/unstack:output:2sequential_434_56045220sequential_434_56045222*
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
GPU 2J 8 *U
fPRN
L__inference_sequential_434_layer_call_and_return_conditional_losses_56043267 
&sequential_439/StatefulPartitionedCallStatefulPartitionedCalltf.unstack_4/unstack:output:3sequential_439_56045225sequential_439_56045227*
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
GPU 2J 8 *U
fPRN
L__inference_sequential_439_layer_call_and_return_conditional_losses_56043343Ѓ
tf.stack_95/stackPack/sequential_424/StatefulPartitionedCall:output:0/sequential_429/StatefulPartitionedCall:output:0/sequential_434/StatefulPartitionedCall:output:0/sequential_439/StatefulPartitionedCall:output:0*
N*
T0*&
_output_shapes
:*

axisѓ
lambda_104/PartitionedCallPartitionedCalltf.stack_95/stack:output:0#lambda_102/PartitionedCall:output:0*
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
GPU 2J 8 *Q
fLRJ
H__inference_lambda_104_layer_call_and_return_conditional_losses_56045236Ђ
(bidirectional_94/StatefulPartitionedCallStatefulPartitionedCall#lambda_104/PartitionedCall:output:0bidirectional_94_56045526bidirectional_94_56045528bidirectional_94_56045530bidirectional_94_56045532bidirectional_94_56045534bidirectional_94_56045536*
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
GPU 2J 8 *W
fRRP
N__inference_bidirectional_94_layer_call_and_return_conditional_losses_56045525ф
dropout_94/PartitionedCallPartitionedCall1bidirectional_94/StatefulPartitionedCall:output:0*
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
GPU 2J 8 *Q
fLRJ
H__inference_dropout_94_layer_call_and_return_conditional_losses_56045543г
flatten_94/PartitionedCallPartitionedCall#dropout_94/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_flatten_94_layer_call_and_return_conditional_losses_56045159
!dense_629/StatefulPartitionedCallStatefulPartitionedCall#flatten_94/PartitionedCall:output:0dense_629_56045546dense_629_56045548*
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
GPU 2J 8 *P
fKRI
G__inference_dense_629_layer_call_and_return_conditional_losses_56045170p
IdentityIdentity*dense_629/StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:Й
NoOpNoOp)^bidirectional_94/StatefulPartitionedCall"^dense_612/StatefulPartitionedCall"^dense_629/StatefulPartitionedCall'^sequential_424/StatefulPartitionedCall'^sequential_429/StatefulPartitionedCall'^sequential_434/StatefulPartitionedCall'^sequential_439/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:: : : : : : : : : : : : : : : : : : 2T
(bidirectional_94/StatefulPartitionedCall(bidirectional_94/StatefulPartitionedCall2F
!dense_612/StatefulPartitionedCall!dense_612/StatefulPartitionedCall2F
!dense_629/StatefulPartitionedCall!dense_629/StatefulPartitionedCall2P
&sequential_424/StatefulPartitionedCall&sequential_424/StatefulPartitionedCall2P
&sequential_429/StatefulPartitionedCall&sequential_429/StatefulPartitionedCall2P
&sequential_434/StatefulPartitionedCall&sequential_434/StatefulPartitionedCall2P
&sequential_439/StatefulPartitionedCall&sequential_439/StatefulPartitionedCall:K G
"
_output_shapes
:
!
_user_specified_name	input_5:($
"
_user_specified_name
56045180:($
"
_user_specified_name
56045182:($
"
_user_specified_name
56045210:($
"
_user_specified_name
56045212:($
"
_user_specified_name
56045215:($
"
_user_specified_name
56045217:($
"
_user_specified_name
56045220:($
"
_user_specified_name
56045222:(	$
"
_user_specified_name
56045225:(
$
"
_user_specified_name
56045227:($
"
_user_specified_name
56045526:($
"
_user_specified_name
56045528:($
"
_user_specified_name
56045530:($
"
_user_specified_name
56045532:($
"
_user_specified_name
56045534:($
"
_user_specified_name
56045536:($
"
_user_specified_name
56045546:($
"
_user_specified_name
56045548
Р
ђ
,__inference_lstm_cell_layer_call_fn_56048684

inputs
states_0
states_1
unknown: 
	unknown_0: 
	unknown_1: 
identity

identity_1

identity_2ЂStatefulPartitionedCallЇ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_lstm_cell_layer_call_and_return_conditional_losses_56043927o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:џџџџџџџџџq

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
states_0:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
states_1:($
"
_user_specified_name
56048672:($
"
_user_specified_name
56048674:($
"
_user_specified_name
56048676
Ї	
р
L__inference_sequential_424_layer_call_and_return_conditional_losses_56043106
dense_613_input$
dense_613_56043100: 
dense_613_56043102:
identityЂ!dense_613/StatefulPartitionedCall
!dense_613/StatefulPartitionedCallStatefulPartitionedCalldense_613_inputdense_613_56043100dense_613_56043102*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dense_613_layer_call_and_return_conditional_losses_56043099}
IdentityIdentity*dense_613/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџF
NoOpNoOp"^dense_613/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ: : 2F
!dense_613/StatefulPartitionedCall!dense_613/StatefulPartitionedCall:\ X
+
_output_shapes
:џџџџџџџџџ
)
_user_specified_namedense_613_input:($
"
_user_specified_name
56043100:($
"
_user_specified_name
56043102
ш
r
H__inference_lambda_103_layer_call_and_return_conditional_losses_56044806

inputs
inputs_1
identity
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
№
t
H__inference_lambda_103_layer_call_and_return_conditional_losses_56045845
inputs_0
inputs_1
identity
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
НЙ

N__inference_bidirectional_94_layer_call_and_return_conditional_losses_56046807

inputsJ
8forward_lstm_94_lstm_cell_matmul_readvariableop_resource: L
:forward_lstm_94_lstm_cell_matmul_1_readvariableop_resource: G
9forward_lstm_94_lstm_cell_biasadd_readvariableop_resource: K
9backward_lstm_94_lstm_cell_matmul_readvariableop_resource: M
;backward_lstm_94_lstm_cell_matmul_1_readvariableop_resource: H
:backward_lstm_94_lstm_cell_biasadd_readvariableop_resource: 
identityЂ1backward_lstm_94/lstm_cell/BiasAdd/ReadVariableOpЂ0backward_lstm_94/lstm_cell/MatMul/ReadVariableOpЂ2backward_lstm_94/lstm_cell/MatMul_1/ReadVariableOpЂbackward_lstm_94/whileЂ0forward_lstm_94/lstm_cell/BiasAdd/ReadVariableOpЂ/forward_lstm_94/lstm_cell/MatMul/ReadVariableOpЂ1forward_lstm_94/lstm_cell/MatMul_1/ReadVariableOpЂforward_lstm_94/whilej
forward_lstm_94/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         m
#forward_lstm_94/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%forward_lstm_94/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%forward_lstm_94/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ё
forward_lstm_94/strided_sliceStridedSliceforward_lstm_94/Shape:output:0,forward_lstm_94/strided_slice/stack:output:0.forward_lstm_94/strided_slice/stack_1:output:0.forward_lstm_94/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
forward_lstm_94/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Ѓ
forward_lstm_94/zeros/packedPack&forward_lstm_94/strided_slice:output:0'forward_lstm_94/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:`
forward_lstm_94/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
forward_lstm_94/zerosFill%forward_lstm_94/zeros/packed:output:0$forward_lstm_94/zeros/Const:output:0*
T0*
_output_shapes

:b
 forward_lstm_94/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Ї
forward_lstm_94/zeros_1/packedPack&forward_lstm_94/strided_slice:output:0)forward_lstm_94/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:b
forward_lstm_94/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
forward_lstm_94/zeros_1Fill'forward_lstm_94/zeros_1/packed:output:0&forward_lstm_94/zeros_1/Const:output:0*
T0*
_output_shapes

:s
forward_lstm_94/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
forward_lstm_94/transpose	Transposeinputs'forward_lstm_94/transpose/perm:output:0*
T0*"
_output_shapes
:l
forward_lstm_94/Shape_1Const*
_output_shapes
:*
dtype0*!
valueB"         o
%forward_lstm_94/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_94/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'forward_lstm_94/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ћ
forward_lstm_94/strided_slice_1StridedSlice forward_lstm_94/Shape_1:output:0.forward_lstm_94/strided_slice_1/stack:output:00forward_lstm_94/strided_slice_1/stack_1:output:00forward_lstm_94/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
+forward_lstm_94/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџф
forward_lstm_94/TensorArrayV2TensorListReserve4forward_lstm_94/TensorArrayV2/element_shape:output:0(forward_lstm_94/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
Eforward_lstm_94/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      
7forward_lstm_94/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorforward_lstm_94/transpose:y:0Nforward_lstm_94/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвo
%forward_lstm_94/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_94/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'forward_lstm_94/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:А
forward_lstm_94/strided_slice_2StridedSliceforward_lstm_94/transpose:y:0.forward_lstm_94/strided_slice_2/stack:output:00forward_lstm_94/strided_slice_2/stack_1:output:00forward_lstm_94/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_maskЈ
/forward_lstm_94/lstm_cell/MatMul/ReadVariableOpReadVariableOp8forward_lstm_94_lstm_cell_matmul_readvariableop_resource*
_output_shapes

: *
dtype0Ж
 forward_lstm_94/lstm_cell/MatMulMatMul(forward_lstm_94/strided_slice_2:output:07forward_lstm_94/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

: Ќ
1forward_lstm_94/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp:forward_lstm_94_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0А
"forward_lstm_94/lstm_cell/MatMul_1MatMulforward_lstm_94/zeros:output:09forward_lstm_94/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes

: Љ
forward_lstm_94/lstm_cell/addAddV2*forward_lstm_94/lstm_cell/MatMul:product:0,forward_lstm_94/lstm_cell/MatMul_1:product:0*
T0*
_output_shapes

: І
0forward_lstm_94/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp9forward_lstm_94_lstm_cell_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0В
!forward_lstm_94/lstm_cell/BiasAddBiasAdd!forward_lstm_94/lstm_cell/add:z:08forward_lstm_94/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

: k
)forward_lstm_94/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :р
forward_lstm_94/lstm_cell/splitSplit2forward_lstm_94/lstm_cell/split/split_dim:output:0*forward_lstm_94/lstm_cell/BiasAdd:output:0*
T0*<
_output_shapes*
(::::*
	num_split
!forward_lstm_94/lstm_cell/SigmoidSigmoid(forward_lstm_94/lstm_cell/split:output:0*
T0*
_output_shapes

:
#forward_lstm_94/lstm_cell/Sigmoid_1Sigmoid(forward_lstm_94/lstm_cell/split:output:1*
T0*
_output_shapes

:
forward_lstm_94/lstm_cell/mulMul'forward_lstm_94/lstm_cell/Sigmoid_1:y:0 forward_lstm_94/zeros_1:output:0*
T0*
_output_shapes

:y
forward_lstm_94/lstm_cell/ReluRelu(forward_lstm_94/lstm_cell/split:output:2*
T0*
_output_shapes

:Є
forward_lstm_94/lstm_cell/mul_1Mul%forward_lstm_94/lstm_cell/Sigmoid:y:0,forward_lstm_94/lstm_cell/Relu:activations:0*
T0*
_output_shapes

:
forward_lstm_94/lstm_cell/add_1AddV2!forward_lstm_94/lstm_cell/mul:z:0#forward_lstm_94/lstm_cell/mul_1:z:0*
T0*
_output_shapes

:
#forward_lstm_94/lstm_cell/Sigmoid_2Sigmoid(forward_lstm_94/lstm_cell/split:output:3*
T0*
_output_shapes

:v
 forward_lstm_94/lstm_cell/Relu_1Relu#forward_lstm_94/lstm_cell/add_1:z:0*
T0*
_output_shapes

:Ј
forward_lstm_94/lstm_cell/mul_2Mul'forward_lstm_94/lstm_cell/Sigmoid_2:y:0.forward_lstm_94/lstm_cell/Relu_1:activations:0*
T0*
_output_shapes

:~
-forward_lstm_94/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      ш
forward_lstm_94/TensorArrayV2_1TensorListReserve6forward_lstm_94/TensorArrayV2_1/element_shape:output:0(forward_lstm_94/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвV
forward_lstm_94/timeConst*
_output_shapes
: *
dtype0*
value	B : s
(forward_lstm_94/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџd
"forward_lstm_94/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
forward_lstm_94/whileWhile+forward_lstm_94/while/loop_counter:output:01forward_lstm_94/while/maximum_iterations:output:0forward_lstm_94/time:output:0(forward_lstm_94/TensorArrayV2_1:handle:0forward_lstm_94/zeros:output:0 forward_lstm_94/zeros_1:output:0(forward_lstm_94/strided_slice_1:output:0Gforward_lstm_94/TensorArrayUnstack/TensorListFromTensor:output_handle:08forward_lstm_94_lstm_cell_matmul_readvariableop_resource:forward_lstm_94_lstm_cell_matmul_1_readvariableop_resource9forward_lstm_94_lstm_cell_biasadd_readvariableop_resource*
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
#forward_lstm_94_while_body_56046578*/
cond'R%
#forward_lstm_94_while_cond_56046577*9
output_shapes(
&: : : : ::: : : : : *
parallel_iterations 
@forward_lstm_94/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      щ
2forward_lstm_94/TensorArrayV2Stack/TensorListStackTensorListStackforward_lstm_94/while:output:3Iforward_lstm_94/TensorArrayV2Stack/TensorListStack/element_shape:output:0*"
_output_shapes
:*
element_dtype0x
%forward_lstm_94/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџq
'forward_lstm_94/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_94/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ю
forward_lstm_94/strided_slice_3StridedSlice;forward_lstm_94/TensorArrayV2Stack/TensorListStack:tensor:0.forward_lstm_94/strided_slice_3/stack:output:00forward_lstm_94/strided_slice_3/stack_1:output:00forward_lstm_94/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_masku
 forward_lstm_94/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Н
forward_lstm_94/transpose_1	Transpose;forward_lstm_94/TensorArrayV2Stack/TensorListStack:tensor:0)forward_lstm_94/transpose_1/perm:output:0*
T0*"
_output_shapes
:k
forward_lstm_94/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
backward_lstm_94/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         n
$backward_lstm_94/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&backward_lstm_94/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&backward_lstm_94/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:І
backward_lstm_94/strided_sliceStridedSlicebackward_lstm_94/Shape:output:0-backward_lstm_94/strided_slice/stack:output:0/backward_lstm_94/strided_slice/stack_1:output:0/backward_lstm_94/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
backward_lstm_94/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :І
backward_lstm_94/zeros/packedPack'backward_lstm_94/strided_slice:output:0(backward_lstm_94/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:a
backward_lstm_94/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
backward_lstm_94/zerosFill&backward_lstm_94/zeros/packed:output:0%backward_lstm_94/zeros/Const:output:0*
T0*
_output_shapes

:c
!backward_lstm_94/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Њ
backward_lstm_94/zeros_1/packedPack'backward_lstm_94/strided_slice:output:0*backward_lstm_94/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:c
backward_lstm_94/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
backward_lstm_94/zeros_1Fill(backward_lstm_94/zeros_1/packed:output:0'backward_lstm_94/zeros_1/Const:output:0*
T0*
_output_shapes

:t
backward_lstm_94/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
backward_lstm_94/transpose	Transposeinputs(backward_lstm_94/transpose/perm:output:0*
T0*"
_output_shapes
:m
backward_lstm_94/Shape_1Const*
_output_shapes
:*
dtype0*!
valueB"         p
&backward_lstm_94/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_94/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(backward_lstm_94/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:А
 backward_lstm_94/strided_slice_1StridedSlice!backward_lstm_94/Shape_1:output:0/backward_lstm_94/strided_slice_1/stack:output:01backward_lstm_94/strided_slice_1/stack_1:output:01backward_lstm_94/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskw
,backward_lstm_94/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџч
backward_lstm_94/TensorArrayV2TensorListReserve5backward_lstm_94/TensorArrayV2/element_shape:output:0)backward_lstm_94/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвi
backward_lstm_94/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: 
backward_lstm_94/ReverseV2	ReverseV2backward_lstm_94/transpose:y:0(backward_lstm_94/ReverseV2/axis:output:0*
T0*"
_output_shapes
:
Fbackward_lstm_94/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      
8backward_lstm_94/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#backward_lstm_94/ReverseV2:output:0Obackward_lstm_94/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвp
&backward_lstm_94/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_94/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(backward_lstm_94/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Е
 backward_lstm_94/strided_slice_2StridedSlicebackward_lstm_94/transpose:y:0/backward_lstm_94/strided_slice_2/stack:output:01backward_lstm_94/strided_slice_2/stack_1:output:01backward_lstm_94/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_maskЊ
0backward_lstm_94/lstm_cell/MatMul/ReadVariableOpReadVariableOp9backward_lstm_94_lstm_cell_matmul_readvariableop_resource*
_output_shapes

: *
dtype0Й
!backward_lstm_94/lstm_cell/MatMulMatMul)backward_lstm_94/strided_slice_2:output:08backward_lstm_94/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

: Ў
2backward_lstm_94/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp;backward_lstm_94_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0Г
#backward_lstm_94/lstm_cell/MatMul_1MatMulbackward_lstm_94/zeros:output:0:backward_lstm_94/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes

: Ќ
backward_lstm_94/lstm_cell/addAddV2+backward_lstm_94/lstm_cell/MatMul:product:0-backward_lstm_94/lstm_cell/MatMul_1:product:0*
T0*
_output_shapes

: Ј
1backward_lstm_94/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp:backward_lstm_94_lstm_cell_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Е
"backward_lstm_94/lstm_cell/BiasAddBiasAdd"backward_lstm_94/lstm_cell/add:z:09backward_lstm_94/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

: l
*backward_lstm_94/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :у
 backward_lstm_94/lstm_cell/splitSplit3backward_lstm_94/lstm_cell/split/split_dim:output:0+backward_lstm_94/lstm_cell/BiasAdd:output:0*
T0*<
_output_shapes*
(::::*
	num_split
"backward_lstm_94/lstm_cell/SigmoidSigmoid)backward_lstm_94/lstm_cell/split:output:0*
T0*
_output_shapes

:
$backward_lstm_94/lstm_cell/Sigmoid_1Sigmoid)backward_lstm_94/lstm_cell/split:output:1*
T0*
_output_shapes

:
backward_lstm_94/lstm_cell/mulMul(backward_lstm_94/lstm_cell/Sigmoid_1:y:0!backward_lstm_94/zeros_1:output:0*
T0*
_output_shapes

:{
backward_lstm_94/lstm_cell/ReluRelu)backward_lstm_94/lstm_cell/split:output:2*
T0*
_output_shapes

:Ї
 backward_lstm_94/lstm_cell/mul_1Mul&backward_lstm_94/lstm_cell/Sigmoid:y:0-backward_lstm_94/lstm_cell/Relu:activations:0*
T0*
_output_shapes

:
 backward_lstm_94/lstm_cell/add_1AddV2"backward_lstm_94/lstm_cell/mul:z:0$backward_lstm_94/lstm_cell/mul_1:z:0*
T0*
_output_shapes

:
$backward_lstm_94/lstm_cell/Sigmoid_2Sigmoid)backward_lstm_94/lstm_cell/split:output:3*
T0*
_output_shapes

:x
!backward_lstm_94/lstm_cell/Relu_1Relu$backward_lstm_94/lstm_cell/add_1:z:0*
T0*
_output_shapes

:Ћ
 backward_lstm_94/lstm_cell/mul_2Mul(backward_lstm_94/lstm_cell/Sigmoid_2:y:0/backward_lstm_94/lstm_cell/Relu_1:activations:0*
T0*
_output_shapes

:
.backward_lstm_94/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      ы
 backward_lstm_94/TensorArrayV2_1TensorListReserve7backward_lstm_94/TensorArrayV2_1/element_shape:output:0)backward_lstm_94/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвW
backward_lstm_94/timeConst*
_output_shapes
: *
dtype0*
value	B : t
)backward_lstm_94/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџe
#backward_lstm_94/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Њ
backward_lstm_94/whileWhile,backward_lstm_94/while/loop_counter:output:02backward_lstm_94/while/maximum_iterations:output:0backward_lstm_94/time:output:0)backward_lstm_94/TensorArrayV2_1:handle:0backward_lstm_94/zeros:output:0!backward_lstm_94/zeros_1:output:0)backward_lstm_94/strided_slice_1:output:0Hbackward_lstm_94/TensorArrayUnstack/TensorListFromTensor:output_handle:09backward_lstm_94_lstm_cell_matmul_readvariableop_resource;backward_lstm_94_lstm_cell_matmul_1_readvariableop_resource:backward_lstm_94_lstm_cell_biasadd_readvariableop_resource*
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
$backward_lstm_94_while_body_56046719*0
cond(R&
$backward_lstm_94_while_cond_56046718*9
output_shapes(
&: : : : ::: : : : : *
parallel_iterations 
Abackward_lstm_94/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      ь
3backward_lstm_94/TensorArrayV2Stack/TensorListStackTensorListStackbackward_lstm_94/while:output:3Jbackward_lstm_94/TensorArrayV2Stack/TensorListStack/element_shape:output:0*"
_output_shapes
:*
element_dtype0y
&backward_lstm_94/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџr
(backward_lstm_94/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_94/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:г
 backward_lstm_94/strided_slice_3StridedSlice<backward_lstm_94/TensorArrayV2Stack/TensorListStack:tensor:0/backward_lstm_94/strided_slice_3/stack:output:01backward_lstm_94/strided_slice_3/stack_1:output:01backward_lstm_94/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_maskv
!backward_lstm_94/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Р
backward_lstm_94/transpose_1	Transpose<backward_lstm_94/TensorArrayV2Stack/TensorListStack:tensor:0*backward_lstm_94/transpose_1/perm:output:0*
T0*"
_output_shapes
:l
backward_lstm_94/runtimeConst"/device:CPU:0*
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
	ReverseV2	ReverseV2 backward_lstm_94/transpose_1:y:0ReverseV2/axis:output:0*
T0*"
_output_shapes
:M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :
concatConcatV2forward_lstm_94/transpose_1:y:0ReverseV2:output:0concat/axis:output:0*
N*
T0*"
_output_shapes
:Y
IdentityIdentityconcat:output:0^NoOp*
T0*"
_output_shapes
:
NoOpNoOp2^backward_lstm_94/lstm_cell/BiasAdd/ReadVariableOp1^backward_lstm_94/lstm_cell/MatMul/ReadVariableOp3^backward_lstm_94/lstm_cell/MatMul_1/ReadVariableOp^backward_lstm_94/while1^forward_lstm_94/lstm_cell/BiasAdd/ReadVariableOp0^forward_lstm_94/lstm_cell/MatMul/ReadVariableOp2^forward_lstm_94/lstm_cell/MatMul_1/ReadVariableOp^forward_lstm_94/while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*-
_input_shapes
:: : : : : : 2f
1backward_lstm_94/lstm_cell/BiasAdd/ReadVariableOp1backward_lstm_94/lstm_cell/BiasAdd/ReadVariableOp2d
0backward_lstm_94/lstm_cell/MatMul/ReadVariableOp0backward_lstm_94/lstm_cell/MatMul/ReadVariableOp2h
2backward_lstm_94/lstm_cell/MatMul_1/ReadVariableOp2backward_lstm_94/lstm_cell/MatMul_1/ReadVariableOp20
backward_lstm_94/whilebackward_lstm_94/while2d
0forward_lstm_94/lstm_cell/BiasAdd/ReadVariableOp0forward_lstm_94/lstm_cell/BiasAdd/ReadVariableOp2b
/forward_lstm_94/lstm_cell/MatMul/ReadVariableOp/forward_lstm_94/lstm_cell/MatMul/ReadVariableOp2f
1forward_lstm_94/lstm_cell/MatMul_1/ReadVariableOp1forward_lstm_94/lstm_cell/MatMul_1/ReadVariableOp2.
forward_lstm_94/whileforward_lstm_94/while:J F
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

Y
-__inference_lambda_103_layer_call_fn_56045833
inputs_0
inputs_1
identityП
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
GPU 2J 8 *Q
fLRJ
H__inference_lambda_103_layer_call_and_return_conditional_losses_56044806_
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
ш8
Б
while_body_56048323
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
/while_lstm_cell_biasadd_readvariableop_resource: Ђ&while/lstm_cell/BiasAdd/ReadVariableOpЂ%while/lstm_cell/MatMul/ReadVariableOpЂ'while/lstm_cell/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџџџџџЏ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
element_dtype0
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0Г
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ 
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ц
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_splitt
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџv
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџn
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџv
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџk
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџТ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџv
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџЃ

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
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : 2P
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
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:GC
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
L

N__inference_backward_lstm_94_layer_call_and_return_conditional_losses_56048407

inputs:
(lstm_cell_matmul_readvariableop_resource: <
*lstm_cell_matmul_1_readvariableop_resource: 7
)lstm_cell_biasadd_readvariableop_resource: 
identityЂ lstm_cell/BiasAdd/ReadVariableOpЂlstm_cell/MatMul/ReadVariableOpЂ!lstm_cell/MatMul_1/ReadVariableOpЂwhileI
ShapeShapeinputs*
T0*
_output_shapes
::эЯ]
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
valueB:б
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
:џџџџџџџџџR
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
:џџџџџџџџџc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
	transpose	Transposeinputstranspose/perm:output:0*
T0*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџR
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::эЯ_
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвX
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: 
	ReverseV2	ReverseV2transpose:y:0ReverseV2/axis:output:0*
T0*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџџџџџх
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensorReverseV2:output:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
valueB:ђ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
shrink_axis_mask
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes

: *
dtype0
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ 
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ [
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :д
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџj
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџq
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџb
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ}
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџr
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџj
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ_
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : р
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_56048323*
condR
while_cond_56048322*K
output_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:e a
=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
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
ЈJ

M__inference_forward_lstm_94_layer_call_and_return_conditional_losses_56044211

inputs:
(lstm_cell_matmul_readvariableop_resource: <
*lstm_cell_matmul_1_readvariableop_resource: 7
)lstm_cell_biasadd_readvariableop_resource: 
identityЂ lstm_cell/BiasAdd/ReadVariableOpЂlstm_cell/MatMul/ReadVariableOpЂ!lstm_cell/MatMul_1/ReadVariableOpЂwhileI
ShapeShapeinputs*
T0*
_output_shapes
::эЯ]
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
valueB:б
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
:џџџџџџџџџR
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
:џџџџџџџџџc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
	transpose	Transposeinputstranspose/perm:output:0*
T0*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџR
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::эЯ_
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџџџџџр
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
valueB:ђ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
shrink_axis_mask
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes

: *
dtype0
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ 
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ [
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :д
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџj
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџq
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџb
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ}
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџr
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџj
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ_
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : р
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_56044127*
condR
while_cond_56044126*K
output_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:e a
=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
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
ш8
Б
while_body_56048468
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
/while_lstm_cell_biasadd_readvariableop_resource: Ђ&while/lstm_cell/BiasAdd/ReadVariableOpЂ%while/lstm_cell/MatMul/ReadVariableOpЂ'while/lstm_cell/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџџџџџЏ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
element_dtype0
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0Г
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ 
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ц
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_splitt
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџv
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџn
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџv
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџk
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџТ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџv
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџЃ

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
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : 2P
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
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:GC
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
L
Б
#forward_lstm_94_while_body_56046002<
8forward_lstm_94_while_forward_lstm_94_while_loop_counterB
>forward_lstm_94_while_forward_lstm_94_while_maximum_iterations%
!forward_lstm_94_while_placeholder'
#forward_lstm_94_while_placeholder_1'
#forward_lstm_94_while_placeholder_2'
#forward_lstm_94_while_placeholder_3;
7forward_lstm_94_while_forward_lstm_94_strided_slice_1_0w
sforward_lstm_94_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_94_tensorarrayunstack_tensorlistfromtensor_0R
@forward_lstm_94_while_lstm_cell_matmul_readvariableop_resource_0: T
Bforward_lstm_94_while_lstm_cell_matmul_1_readvariableop_resource_0: O
Aforward_lstm_94_while_lstm_cell_biasadd_readvariableop_resource_0: "
forward_lstm_94_while_identity$
 forward_lstm_94_while_identity_1$
 forward_lstm_94_while_identity_2$
 forward_lstm_94_while_identity_3$
 forward_lstm_94_while_identity_4$
 forward_lstm_94_while_identity_59
5forward_lstm_94_while_forward_lstm_94_strided_slice_1u
qforward_lstm_94_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_94_tensorarrayunstack_tensorlistfromtensorP
>forward_lstm_94_while_lstm_cell_matmul_readvariableop_resource: R
@forward_lstm_94_while_lstm_cell_matmul_1_readvariableop_resource: M
?forward_lstm_94_while_lstm_cell_biasadd_readvariableop_resource: Ђ6forward_lstm_94/while/lstm_cell/BiasAdd/ReadVariableOpЂ5forward_lstm_94/while/lstm_cell/MatMul/ReadVariableOpЂ7forward_lstm_94/while/lstm_cell/MatMul_1/ReadVariableOp
Gforward_lstm_94/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџџџџџџ
9forward_lstm_94/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsforward_lstm_94_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_94_tensorarrayunstack_tensorlistfromtensor_0!forward_lstm_94_while_placeholderPforward_lstm_94/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
element_dtype0Ж
5forward_lstm_94/while/lstm_cell/MatMul/ReadVariableOpReadVariableOp@forward_lstm_94_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0у
&forward_lstm_94/while/lstm_cell/MatMulMatMul@forward_lstm_94/while/TensorArrayV2Read/TensorListGetItem:item:0=forward_lstm_94/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ К
7forward_lstm_94/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpBforward_lstm_94_while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0Ъ
(forward_lstm_94/while/lstm_cell/MatMul_1MatMul#forward_lstm_94_while_placeholder_2?forward_lstm_94/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ Ф
#forward_lstm_94/while/lstm_cell/addAddV20forward_lstm_94/while/lstm_cell/MatMul:product:02forward_lstm_94/while/lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ Д
6forward_lstm_94/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOpAforward_lstm_94_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0Э
'forward_lstm_94/while/lstm_cell/BiasAddBiasAdd'forward_lstm_94/while/lstm_cell/add:z:0>forward_lstm_94/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ q
/forward_lstm_94/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
%forward_lstm_94/while/lstm_cell/splitSplit8forward_lstm_94/while/lstm_cell/split/split_dim:output:00forward_lstm_94/while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_split
'forward_lstm_94/while/lstm_cell/SigmoidSigmoid.forward_lstm_94/while/lstm_cell/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
)forward_lstm_94/while/lstm_cell/Sigmoid_1Sigmoid.forward_lstm_94/while/lstm_cell/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџА
#forward_lstm_94/while/lstm_cell/mulMul-forward_lstm_94/while/lstm_cell/Sigmoid_1:y:0#forward_lstm_94_while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ
$forward_lstm_94/while/lstm_cell/ReluRelu.forward_lstm_94/while/lstm_cell/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџП
%forward_lstm_94/while/lstm_cell/mul_1Mul+forward_lstm_94/while/lstm_cell/Sigmoid:y:02forward_lstm_94/while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџД
%forward_lstm_94/while/lstm_cell/add_1AddV2'forward_lstm_94/while/lstm_cell/mul:z:0)forward_lstm_94/while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
)forward_lstm_94/while/lstm_cell/Sigmoid_2Sigmoid.forward_lstm_94/while/lstm_cell/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ
&forward_lstm_94/while/lstm_cell/Relu_1Relu)forward_lstm_94/while/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџУ
%forward_lstm_94/while/lstm_cell/mul_2Mul-forward_lstm_94/while/lstm_cell/Sigmoid_2:y:04forward_lstm_94/while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
:forward_lstm_94/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem#forward_lstm_94_while_placeholder_1!forward_lstm_94_while_placeholder)forward_lstm_94/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшв]
forward_lstm_94/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
forward_lstm_94/while/addAddV2!forward_lstm_94_while_placeholder$forward_lstm_94/while/add/y:output:0*
T0*
_output_shapes
: _
forward_lstm_94/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Ї
forward_lstm_94/while/add_1AddV28forward_lstm_94_while_forward_lstm_94_while_loop_counter&forward_lstm_94/while/add_1/y:output:0*
T0*
_output_shapes
: 
forward_lstm_94/while/IdentityIdentityforward_lstm_94/while/add_1:z:0^forward_lstm_94/while/NoOp*
T0*
_output_shapes
: Њ
 forward_lstm_94/while/Identity_1Identity>forward_lstm_94_while_forward_lstm_94_while_maximum_iterations^forward_lstm_94/while/NoOp*
T0*
_output_shapes
: 
 forward_lstm_94/while/Identity_2Identityforward_lstm_94/while/add:z:0^forward_lstm_94/while/NoOp*
T0*
_output_shapes
: Ж
 forward_lstm_94/while/Identity_3IdentityJforward_lstm_94/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^forward_lstm_94/while/NoOp*
T0*
_output_shapes
: І
 forward_lstm_94/while/Identity_4Identity)forward_lstm_94/while/lstm_cell/mul_2:z:0^forward_lstm_94/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџІ
 forward_lstm_94/while/Identity_5Identity)forward_lstm_94/while/lstm_cell/add_1:z:0^forward_lstm_94/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџу
forward_lstm_94/while/NoOpNoOp7^forward_lstm_94/while/lstm_cell/BiasAdd/ReadVariableOp6^forward_lstm_94/while/lstm_cell/MatMul/ReadVariableOp8^forward_lstm_94/while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "p
5forward_lstm_94_while_forward_lstm_94_strided_slice_17forward_lstm_94_while_forward_lstm_94_strided_slice_1_0"I
forward_lstm_94_while_identity'forward_lstm_94/while/Identity:output:0"M
 forward_lstm_94_while_identity_1)forward_lstm_94/while/Identity_1:output:0"M
 forward_lstm_94_while_identity_2)forward_lstm_94/while/Identity_2:output:0"M
 forward_lstm_94_while_identity_3)forward_lstm_94/while/Identity_3:output:0"M
 forward_lstm_94_while_identity_4)forward_lstm_94/while/Identity_4:output:0"M
 forward_lstm_94_while_identity_5)forward_lstm_94/while/Identity_5:output:0"
?forward_lstm_94_while_lstm_cell_biasadd_readvariableop_resourceAforward_lstm_94_while_lstm_cell_biasadd_readvariableop_resource_0"
@forward_lstm_94_while_lstm_cell_matmul_1_readvariableop_resourceBforward_lstm_94_while_lstm_cell_matmul_1_readvariableop_resource_0"
>forward_lstm_94_while_lstm_cell_matmul_readvariableop_resource@forward_lstm_94_while_lstm_cell_matmul_readvariableop_resource_0"ш
qforward_lstm_94_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_94_tensorarrayunstack_tensorlistfromtensorsforward_lstm_94_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_94_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : 2p
6forward_lstm_94/while/lstm_cell/BiasAdd/ReadVariableOp6forward_lstm_94/while/lstm_cell/BiasAdd/ReadVariableOp2n
5forward_lstm_94/while/lstm_cell/MatMul/ReadVariableOp5forward_lstm_94/while/lstm_cell/MatMul/ReadVariableOp2r
7forward_lstm_94/while/lstm_cell/MatMul_1/ReadVariableOp7forward_lstm_94/while/lstm_cell/MatMul_1/ReadVariableOp:Z V

_output_shapes
: 
<
_user_specified_name$"forward_lstm_94/while/loop_counter:`\

_output_shapes
: 
B
_user_specified_name*(forward_lstm_94/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:WS

_output_shapes
: 
9
_user_specified_name!forward_lstm_94/strided_slice_1:ok

_output_shapes
: 
Q
_user_specified_name97forward_lstm_94/TensorArrayUnstack/TensorListFromTensor:($
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

Y
-__inference_lambda_102_layer_call_fn_56045809
inputs_0
inputs_1
identityЛ
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
GPU 2J 8 *Q
fLRJ
H__inference_lambda_102_layer_call_and_return_conditional_losses_56044799[
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
L
Б
#forward_lstm_94_while_body_56046290<
8forward_lstm_94_while_forward_lstm_94_while_loop_counterB
>forward_lstm_94_while_forward_lstm_94_while_maximum_iterations%
!forward_lstm_94_while_placeholder'
#forward_lstm_94_while_placeholder_1'
#forward_lstm_94_while_placeholder_2'
#forward_lstm_94_while_placeholder_3;
7forward_lstm_94_while_forward_lstm_94_strided_slice_1_0w
sforward_lstm_94_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_94_tensorarrayunstack_tensorlistfromtensor_0R
@forward_lstm_94_while_lstm_cell_matmul_readvariableop_resource_0: T
Bforward_lstm_94_while_lstm_cell_matmul_1_readvariableop_resource_0: O
Aforward_lstm_94_while_lstm_cell_biasadd_readvariableop_resource_0: "
forward_lstm_94_while_identity$
 forward_lstm_94_while_identity_1$
 forward_lstm_94_while_identity_2$
 forward_lstm_94_while_identity_3$
 forward_lstm_94_while_identity_4$
 forward_lstm_94_while_identity_59
5forward_lstm_94_while_forward_lstm_94_strided_slice_1u
qforward_lstm_94_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_94_tensorarrayunstack_tensorlistfromtensorP
>forward_lstm_94_while_lstm_cell_matmul_readvariableop_resource: R
@forward_lstm_94_while_lstm_cell_matmul_1_readvariableop_resource: M
?forward_lstm_94_while_lstm_cell_biasadd_readvariableop_resource: Ђ6forward_lstm_94/while/lstm_cell/BiasAdd/ReadVariableOpЂ5forward_lstm_94/while/lstm_cell/MatMul/ReadVariableOpЂ7forward_lstm_94/while/lstm_cell/MatMul_1/ReadVariableOp
Gforward_lstm_94/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџџџџџџ
9forward_lstm_94/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsforward_lstm_94_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_94_tensorarrayunstack_tensorlistfromtensor_0!forward_lstm_94_while_placeholderPforward_lstm_94/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
element_dtype0Ж
5forward_lstm_94/while/lstm_cell/MatMul/ReadVariableOpReadVariableOp@forward_lstm_94_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0у
&forward_lstm_94/while/lstm_cell/MatMulMatMul@forward_lstm_94/while/TensorArrayV2Read/TensorListGetItem:item:0=forward_lstm_94/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ К
7forward_lstm_94/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpBforward_lstm_94_while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0Ъ
(forward_lstm_94/while/lstm_cell/MatMul_1MatMul#forward_lstm_94_while_placeholder_2?forward_lstm_94/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ Ф
#forward_lstm_94/while/lstm_cell/addAddV20forward_lstm_94/while/lstm_cell/MatMul:product:02forward_lstm_94/while/lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ Д
6forward_lstm_94/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOpAforward_lstm_94_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0Э
'forward_lstm_94/while/lstm_cell/BiasAddBiasAdd'forward_lstm_94/while/lstm_cell/add:z:0>forward_lstm_94/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ q
/forward_lstm_94/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
%forward_lstm_94/while/lstm_cell/splitSplit8forward_lstm_94/while/lstm_cell/split/split_dim:output:00forward_lstm_94/while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_split
'forward_lstm_94/while/lstm_cell/SigmoidSigmoid.forward_lstm_94/while/lstm_cell/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
)forward_lstm_94/while/lstm_cell/Sigmoid_1Sigmoid.forward_lstm_94/while/lstm_cell/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџА
#forward_lstm_94/while/lstm_cell/mulMul-forward_lstm_94/while/lstm_cell/Sigmoid_1:y:0#forward_lstm_94_while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ
$forward_lstm_94/while/lstm_cell/ReluRelu.forward_lstm_94/while/lstm_cell/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџП
%forward_lstm_94/while/lstm_cell/mul_1Mul+forward_lstm_94/while/lstm_cell/Sigmoid:y:02forward_lstm_94/while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџД
%forward_lstm_94/while/lstm_cell/add_1AddV2'forward_lstm_94/while/lstm_cell/mul:z:0)forward_lstm_94/while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
)forward_lstm_94/while/lstm_cell/Sigmoid_2Sigmoid.forward_lstm_94/while/lstm_cell/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ
&forward_lstm_94/while/lstm_cell/Relu_1Relu)forward_lstm_94/while/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџУ
%forward_lstm_94/while/lstm_cell/mul_2Mul-forward_lstm_94/while/lstm_cell/Sigmoid_2:y:04forward_lstm_94/while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
:forward_lstm_94/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem#forward_lstm_94_while_placeholder_1!forward_lstm_94_while_placeholder)forward_lstm_94/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшв]
forward_lstm_94/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
forward_lstm_94/while/addAddV2!forward_lstm_94_while_placeholder$forward_lstm_94/while/add/y:output:0*
T0*
_output_shapes
: _
forward_lstm_94/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Ї
forward_lstm_94/while/add_1AddV28forward_lstm_94_while_forward_lstm_94_while_loop_counter&forward_lstm_94/while/add_1/y:output:0*
T0*
_output_shapes
: 
forward_lstm_94/while/IdentityIdentityforward_lstm_94/while/add_1:z:0^forward_lstm_94/while/NoOp*
T0*
_output_shapes
: Њ
 forward_lstm_94/while/Identity_1Identity>forward_lstm_94_while_forward_lstm_94_while_maximum_iterations^forward_lstm_94/while/NoOp*
T0*
_output_shapes
: 
 forward_lstm_94/while/Identity_2Identityforward_lstm_94/while/add:z:0^forward_lstm_94/while/NoOp*
T0*
_output_shapes
: Ж
 forward_lstm_94/while/Identity_3IdentityJforward_lstm_94/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^forward_lstm_94/while/NoOp*
T0*
_output_shapes
: І
 forward_lstm_94/while/Identity_4Identity)forward_lstm_94/while/lstm_cell/mul_2:z:0^forward_lstm_94/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџІ
 forward_lstm_94/while/Identity_5Identity)forward_lstm_94/while/lstm_cell/add_1:z:0^forward_lstm_94/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџу
forward_lstm_94/while/NoOpNoOp7^forward_lstm_94/while/lstm_cell/BiasAdd/ReadVariableOp6^forward_lstm_94/while/lstm_cell/MatMul/ReadVariableOp8^forward_lstm_94/while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "p
5forward_lstm_94_while_forward_lstm_94_strided_slice_17forward_lstm_94_while_forward_lstm_94_strided_slice_1_0"I
forward_lstm_94_while_identity'forward_lstm_94/while/Identity:output:0"M
 forward_lstm_94_while_identity_1)forward_lstm_94/while/Identity_1:output:0"M
 forward_lstm_94_while_identity_2)forward_lstm_94/while/Identity_2:output:0"M
 forward_lstm_94_while_identity_3)forward_lstm_94/while/Identity_3:output:0"M
 forward_lstm_94_while_identity_4)forward_lstm_94/while/Identity_4:output:0"M
 forward_lstm_94_while_identity_5)forward_lstm_94/while/Identity_5:output:0"
?forward_lstm_94_while_lstm_cell_biasadd_readvariableop_resourceAforward_lstm_94_while_lstm_cell_biasadd_readvariableop_resource_0"
@forward_lstm_94_while_lstm_cell_matmul_1_readvariableop_resourceBforward_lstm_94_while_lstm_cell_matmul_1_readvariableop_resource_0"
>forward_lstm_94_while_lstm_cell_matmul_readvariableop_resource@forward_lstm_94_while_lstm_cell_matmul_readvariableop_resource_0"ш
qforward_lstm_94_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_94_tensorarrayunstack_tensorlistfromtensorsforward_lstm_94_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_94_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : 2p
6forward_lstm_94/while/lstm_cell/BiasAdd/ReadVariableOp6forward_lstm_94/while/lstm_cell/BiasAdd/ReadVariableOp2n
5forward_lstm_94/while/lstm_cell/MatMul/ReadVariableOp5forward_lstm_94/while/lstm_cell/MatMul/ReadVariableOp2r
7forward_lstm_94/while/lstm_cell/MatMul_1/ReadVariableOp7forward_lstm_94/while/lstm_cell/MatMul_1/ReadVariableOp:Z V

_output_shapes
: 
<
_user_specified_name$"forward_lstm_94/while/loop_counter:`\

_output_shapes
: 
B
_user_specified_name*(forward_lstm_94/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:WS

_output_shapes
: 
9
_user_specified_name!forward_lstm_94/strided_slice_1:ok

_output_shapes
: 
Q
_user_specified_name97forward_lstm_94/TensorArrayUnstack/TensorListFromTensor:($
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
И
Ё
$backward_lstm_94_while_cond_56046718>
:backward_lstm_94_while_backward_lstm_94_while_loop_counterD
@backward_lstm_94_while_backward_lstm_94_while_maximum_iterations&
"backward_lstm_94_while_placeholder(
$backward_lstm_94_while_placeholder_1(
$backward_lstm_94_while_placeholder_2(
$backward_lstm_94_while_placeholder_3@
<backward_lstm_94_while_less_backward_lstm_94_strided_slice_1X
Tbackward_lstm_94_while_backward_lstm_94_while_cond_56046718___redundant_placeholder0X
Tbackward_lstm_94_while_backward_lstm_94_while_cond_56046718___redundant_placeholder1X
Tbackward_lstm_94_while_backward_lstm_94_while_cond_56046718___redundant_placeholder2X
Tbackward_lstm_94_while_backward_lstm_94_while_cond_56046718___redundant_placeholder3#
backward_lstm_94_while_identity
І
backward_lstm_94/while/LessLess"backward_lstm_94_while_placeholder<backward_lstm_94_while_less_backward_lstm_94_strided_slice_1*
T0*
_output_shapes
: m
backward_lstm_94/while/IdentityIdentitybackward_lstm_94/while/Less:z:0*
T0
*
_output_shapes
: "K
backward_lstm_94_while_identity(backward_lstm_94/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : ::: :::::[ W

_output_shapes
: 
=
_user_specified_name%#backward_lstm_94/while/loop_counter:a]

_output_shapes
: 
C
_user_specified_name+)backward_lstm_94/while/maximum_iterations:
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
_user_specified_name" backward_lstm_94/strided_slice_1:

_output_shapes
:
­
Ї
1__inference_sequential_439_layer_call_fn_56043361
dense_628_input
unknown:
	unknown_0:
identityЂStatefulPartitionedCallю
StatefulPartitionedCallStatefulPartitionedCalldense_628_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_sequential_439_layer_call_and_return_conditional_losses_56043343s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
+
_output_shapes
:џџџџџџџџџ
)
_user_specified_namedense_628_input:($
"
_user_specified_name
56043355:($
"
_user_specified_name
56043357
НЙ

N__inference_bidirectional_94_layer_call_and_return_conditional_losses_56047095

inputsJ
8forward_lstm_94_lstm_cell_matmul_readvariableop_resource: L
:forward_lstm_94_lstm_cell_matmul_1_readvariableop_resource: G
9forward_lstm_94_lstm_cell_biasadd_readvariableop_resource: K
9backward_lstm_94_lstm_cell_matmul_readvariableop_resource: M
;backward_lstm_94_lstm_cell_matmul_1_readvariableop_resource: H
:backward_lstm_94_lstm_cell_biasadd_readvariableop_resource: 
identityЂ1backward_lstm_94/lstm_cell/BiasAdd/ReadVariableOpЂ0backward_lstm_94/lstm_cell/MatMul/ReadVariableOpЂ2backward_lstm_94/lstm_cell/MatMul_1/ReadVariableOpЂbackward_lstm_94/whileЂ0forward_lstm_94/lstm_cell/BiasAdd/ReadVariableOpЂ/forward_lstm_94/lstm_cell/MatMul/ReadVariableOpЂ1forward_lstm_94/lstm_cell/MatMul_1/ReadVariableOpЂforward_lstm_94/whilej
forward_lstm_94/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         m
#forward_lstm_94/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%forward_lstm_94/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%forward_lstm_94/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ё
forward_lstm_94/strided_sliceStridedSliceforward_lstm_94/Shape:output:0,forward_lstm_94/strided_slice/stack:output:0.forward_lstm_94/strided_slice/stack_1:output:0.forward_lstm_94/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
forward_lstm_94/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Ѓ
forward_lstm_94/zeros/packedPack&forward_lstm_94/strided_slice:output:0'forward_lstm_94/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:`
forward_lstm_94/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
forward_lstm_94/zerosFill%forward_lstm_94/zeros/packed:output:0$forward_lstm_94/zeros/Const:output:0*
T0*
_output_shapes

:b
 forward_lstm_94/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Ї
forward_lstm_94/zeros_1/packedPack&forward_lstm_94/strided_slice:output:0)forward_lstm_94/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:b
forward_lstm_94/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
forward_lstm_94/zeros_1Fill'forward_lstm_94/zeros_1/packed:output:0&forward_lstm_94/zeros_1/Const:output:0*
T0*
_output_shapes

:s
forward_lstm_94/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
forward_lstm_94/transpose	Transposeinputs'forward_lstm_94/transpose/perm:output:0*
T0*"
_output_shapes
:l
forward_lstm_94/Shape_1Const*
_output_shapes
:*
dtype0*!
valueB"         o
%forward_lstm_94/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_94/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'forward_lstm_94/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ћ
forward_lstm_94/strided_slice_1StridedSlice forward_lstm_94/Shape_1:output:0.forward_lstm_94/strided_slice_1/stack:output:00forward_lstm_94/strided_slice_1/stack_1:output:00forward_lstm_94/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
+forward_lstm_94/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџф
forward_lstm_94/TensorArrayV2TensorListReserve4forward_lstm_94/TensorArrayV2/element_shape:output:0(forward_lstm_94/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
Eforward_lstm_94/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      
7forward_lstm_94/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorforward_lstm_94/transpose:y:0Nforward_lstm_94/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвo
%forward_lstm_94/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_94/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'forward_lstm_94/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:А
forward_lstm_94/strided_slice_2StridedSliceforward_lstm_94/transpose:y:0.forward_lstm_94/strided_slice_2/stack:output:00forward_lstm_94/strided_slice_2/stack_1:output:00forward_lstm_94/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_maskЈ
/forward_lstm_94/lstm_cell/MatMul/ReadVariableOpReadVariableOp8forward_lstm_94_lstm_cell_matmul_readvariableop_resource*
_output_shapes

: *
dtype0Ж
 forward_lstm_94/lstm_cell/MatMulMatMul(forward_lstm_94/strided_slice_2:output:07forward_lstm_94/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

: Ќ
1forward_lstm_94/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp:forward_lstm_94_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0А
"forward_lstm_94/lstm_cell/MatMul_1MatMulforward_lstm_94/zeros:output:09forward_lstm_94/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes

: Љ
forward_lstm_94/lstm_cell/addAddV2*forward_lstm_94/lstm_cell/MatMul:product:0,forward_lstm_94/lstm_cell/MatMul_1:product:0*
T0*
_output_shapes

: І
0forward_lstm_94/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp9forward_lstm_94_lstm_cell_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0В
!forward_lstm_94/lstm_cell/BiasAddBiasAdd!forward_lstm_94/lstm_cell/add:z:08forward_lstm_94/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

: k
)forward_lstm_94/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :р
forward_lstm_94/lstm_cell/splitSplit2forward_lstm_94/lstm_cell/split/split_dim:output:0*forward_lstm_94/lstm_cell/BiasAdd:output:0*
T0*<
_output_shapes*
(::::*
	num_split
!forward_lstm_94/lstm_cell/SigmoidSigmoid(forward_lstm_94/lstm_cell/split:output:0*
T0*
_output_shapes

:
#forward_lstm_94/lstm_cell/Sigmoid_1Sigmoid(forward_lstm_94/lstm_cell/split:output:1*
T0*
_output_shapes

:
forward_lstm_94/lstm_cell/mulMul'forward_lstm_94/lstm_cell/Sigmoid_1:y:0 forward_lstm_94/zeros_1:output:0*
T0*
_output_shapes

:y
forward_lstm_94/lstm_cell/ReluRelu(forward_lstm_94/lstm_cell/split:output:2*
T0*
_output_shapes

:Є
forward_lstm_94/lstm_cell/mul_1Mul%forward_lstm_94/lstm_cell/Sigmoid:y:0,forward_lstm_94/lstm_cell/Relu:activations:0*
T0*
_output_shapes

:
forward_lstm_94/lstm_cell/add_1AddV2!forward_lstm_94/lstm_cell/mul:z:0#forward_lstm_94/lstm_cell/mul_1:z:0*
T0*
_output_shapes

:
#forward_lstm_94/lstm_cell/Sigmoid_2Sigmoid(forward_lstm_94/lstm_cell/split:output:3*
T0*
_output_shapes

:v
 forward_lstm_94/lstm_cell/Relu_1Relu#forward_lstm_94/lstm_cell/add_1:z:0*
T0*
_output_shapes

:Ј
forward_lstm_94/lstm_cell/mul_2Mul'forward_lstm_94/lstm_cell/Sigmoid_2:y:0.forward_lstm_94/lstm_cell/Relu_1:activations:0*
T0*
_output_shapes

:~
-forward_lstm_94/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      ш
forward_lstm_94/TensorArrayV2_1TensorListReserve6forward_lstm_94/TensorArrayV2_1/element_shape:output:0(forward_lstm_94/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвV
forward_lstm_94/timeConst*
_output_shapes
: *
dtype0*
value	B : s
(forward_lstm_94/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџd
"forward_lstm_94/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
forward_lstm_94/whileWhile+forward_lstm_94/while/loop_counter:output:01forward_lstm_94/while/maximum_iterations:output:0forward_lstm_94/time:output:0(forward_lstm_94/TensorArrayV2_1:handle:0forward_lstm_94/zeros:output:0 forward_lstm_94/zeros_1:output:0(forward_lstm_94/strided_slice_1:output:0Gforward_lstm_94/TensorArrayUnstack/TensorListFromTensor:output_handle:08forward_lstm_94_lstm_cell_matmul_readvariableop_resource:forward_lstm_94_lstm_cell_matmul_1_readvariableop_resource9forward_lstm_94_lstm_cell_biasadd_readvariableop_resource*
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
#forward_lstm_94_while_body_56046866*/
cond'R%
#forward_lstm_94_while_cond_56046865*9
output_shapes(
&: : : : ::: : : : : *
parallel_iterations 
@forward_lstm_94/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      щ
2forward_lstm_94/TensorArrayV2Stack/TensorListStackTensorListStackforward_lstm_94/while:output:3Iforward_lstm_94/TensorArrayV2Stack/TensorListStack/element_shape:output:0*"
_output_shapes
:*
element_dtype0x
%forward_lstm_94/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџq
'forward_lstm_94/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_94/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ю
forward_lstm_94/strided_slice_3StridedSlice;forward_lstm_94/TensorArrayV2Stack/TensorListStack:tensor:0.forward_lstm_94/strided_slice_3/stack:output:00forward_lstm_94/strided_slice_3/stack_1:output:00forward_lstm_94/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_masku
 forward_lstm_94/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Н
forward_lstm_94/transpose_1	Transpose;forward_lstm_94/TensorArrayV2Stack/TensorListStack:tensor:0)forward_lstm_94/transpose_1/perm:output:0*
T0*"
_output_shapes
:k
forward_lstm_94/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
backward_lstm_94/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         n
$backward_lstm_94/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&backward_lstm_94/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&backward_lstm_94/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:І
backward_lstm_94/strided_sliceStridedSlicebackward_lstm_94/Shape:output:0-backward_lstm_94/strided_slice/stack:output:0/backward_lstm_94/strided_slice/stack_1:output:0/backward_lstm_94/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
backward_lstm_94/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :І
backward_lstm_94/zeros/packedPack'backward_lstm_94/strided_slice:output:0(backward_lstm_94/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:a
backward_lstm_94/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
backward_lstm_94/zerosFill&backward_lstm_94/zeros/packed:output:0%backward_lstm_94/zeros/Const:output:0*
T0*
_output_shapes

:c
!backward_lstm_94/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Њ
backward_lstm_94/zeros_1/packedPack'backward_lstm_94/strided_slice:output:0*backward_lstm_94/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:c
backward_lstm_94/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
backward_lstm_94/zeros_1Fill(backward_lstm_94/zeros_1/packed:output:0'backward_lstm_94/zeros_1/Const:output:0*
T0*
_output_shapes

:t
backward_lstm_94/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
backward_lstm_94/transpose	Transposeinputs(backward_lstm_94/transpose/perm:output:0*
T0*"
_output_shapes
:m
backward_lstm_94/Shape_1Const*
_output_shapes
:*
dtype0*!
valueB"         p
&backward_lstm_94/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_94/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(backward_lstm_94/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:А
 backward_lstm_94/strided_slice_1StridedSlice!backward_lstm_94/Shape_1:output:0/backward_lstm_94/strided_slice_1/stack:output:01backward_lstm_94/strided_slice_1/stack_1:output:01backward_lstm_94/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskw
,backward_lstm_94/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџч
backward_lstm_94/TensorArrayV2TensorListReserve5backward_lstm_94/TensorArrayV2/element_shape:output:0)backward_lstm_94/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвi
backward_lstm_94/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: 
backward_lstm_94/ReverseV2	ReverseV2backward_lstm_94/transpose:y:0(backward_lstm_94/ReverseV2/axis:output:0*
T0*"
_output_shapes
:
Fbackward_lstm_94/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      
8backward_lstm_94/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#backward_lstm_94/ReverseV2:output:0Obackward_lstm_94/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвp
&backward_lstm_94/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_94/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(backward_lstm_94/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Е
 backward_lstm_94/strided_slice_2StridedSlicebackward_lstm_94/transpose:y:0/backward_lstm_94/strided_slice_2/stack:output:01backward_lstm_94/strided_slice_2/stack_1:output:01backward_lstm_94/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_maskЊ
0backward_lstm_94/lstm_cell/MatMul/ReadVariableOpReadVariableOp9backward_lstm_94_lstm_cell_matmul_readvariableop_resource*
_output_shapes

: *
dtype0Й
!backward_lstm_94/lstm_cell/MatMulMatMul)backward_lstm_94/strided_slice_2:output:08backward_lstm_94/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

: Ў
2backward_lstm_94/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp;backward_lstm_94_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0Г
#backward_lstm_94/lstm_cell/MatMul_1MatMulbackward_lstm_94/zeros:output:0:backward_lstm_94/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes

: Ќ
backward_lstm_94/lstm_cell/addAddV2+backward_lstm_94/lstm_cell/MatMul:product:0-backward_lstm_94/lstm_cell/MatMul_1:product:0*
T0*
_output_shapes

: Ј
1backward_lstm_94/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp:backward_lstm_94_lstm_cell_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Е
"backward_lstm_94/lstm_cell/BiasAddBiasAdd"backward_lstm_94/lstm_cell/add:z:09backward_lstm_94/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

: l
*backward_lstm_94/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :у
 backward_lstm_94/lstm_cell/splitSplit3backward_lstm_94/lstm_cell/split/split_dim:output:0+backward_lstm_94/lstm_cell/BiasAdd:output:0*
T0*<
_output_shapes*
(::::*
	num_split
"backward_lstm_94/lstm_cell/SigmoidSigmoid)backward_lstm_94/lstm_cell/split:output:0*
T0*
_output_shapes

:
$backward_lstm_94/lstm_cell/Sigmoid_1Sigmoid)backward_lstm_94/lstm_cell/split:output:1*
T0*
_output_shapes

:
backward_lstm_94/lstm_cell/mulMul(backward_lstm_94/lstm_cell/Sigmoid_1:y:0!backward_lstm_94/zeros_1:output:0*
T0*
_output_shapes

:{
backward_lstm_94/lstm_cell/ReluRelu)backward_lstm_94/lstm_cell/split:output:2*
T0*
_output_shapes

:Ї
 backward_lstm_94/lstm_cell/mul_1Mul&backward_lstm_94/lstm_cell/Sigmoid:y:0-backward_lstm_94/lstm_cell/Relu:activations:0*
T0*
_output_shapes

:
 backward_lstm_94/lstm_cell/add_1AddV2"backward_lstm_94/lstm_cell/mul:z:0$backward_lstm_94/lstm_cell/mul_1:z:0*
T0*
_output_shapes

:
$backward_lstm_94/lstm_cell/Sigmoid_2Sigmoid)backward_lstm_94/lstm_cell/split:output:3*
T0*
_output_shapes

:x
!backward_lstm_94/lstm_cell/Relu_1Relu$backward_lstm_94/lstm_cell/add_1:z:0*
T0*
_output_shapes

:Ћ
 backward_lstm_94/lstm_cell/mul_2Mul(backward_lstm_94/lstm_cell/Sigmoid_2:y:0/backward_lstm_94/lstm_cell/Relu_1:activations:0*
T0*
_output_shapes

:
.backward_lstm_94/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      ы
 backward_lstm_94/TensorArrayV2_1TensorListReserve7backward_lstm_94/TensorArrayV2_1/element_shape:output:0)backward_lstm_94/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвW
backward_lstm_94/timeConst*
_output_shapes
: *
dtype0*
value	B : t
)backward_lstm_94/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџe
#backward_lstm_94/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Њ
backward_lstm_94/whileWhile,backward_lstm_94/while/loop_counter:output:02backward_lstm_94/while/maximum_iterations:output:0backward_lstm_94/time:output:0)backward_lstm_94/TensorArrayV2_1:handle:0backward_lstm_94/zeros:output:0!backward_lstm_94/zeros_1:output:0)backward_lstm_94/strided_slice_1:output:0Hbackward_lstm_94/TensorArrayUnstack/TensorListFromTensor:output_handle:09backward_lstm_94_lstm_cell_matmul_readvariableop_resource;backward_lstm_94_lstm_cell_matmul_1_readvariableop_resource:backward_lstm_94_lstm_cell_biasadd_readvariableop_resource*
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
$backward_lstm_94_while_body_56047007*0
cond(R&
$backward_lstm_94_while_cond_56047006*9
output_shapes(
&: : : : ::: : : : : *
parallel_iterations 
Abackward_lstm_94/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      ь
3backward_lstm_94/TensorArrayV2Stack/TensorListStackTensorListStackbackward_lstm_94/while:output:3Jbackward_lstm_94/TensorArrayV2Stack/TensorListStack/element_shape:output:0*"
_output_shapes
:*
element_dtype0y
&backward_lstm_94/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџr
(backward_lstm_94/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_94/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:г
 backward_lstm_94/strided_slice_3StridedSlice<backward_lstm_94/TensorArrayV2Stack/TensorListStack:tensor:0/backward_lstm_94/strided_slice_3/stack:output:01backward_lstm_94/strided_slice_3/stack_1:output:01backward_lstm_94/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_maskv
!backward_lstm_94/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Р
backward_lstm_94/transpose_1	Transpose<backward_lstm_94/TensorArrayV2Stack/TensorListStack:tensor:0*backward_lstm_94/transpose_1/perm:output:0*
T0*"
_output_shapes
:l
backward_lstm_94/runtimeConst"/device:CPU:0*
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
	ReverseV2	ReverseV2 backward_lstm_94/transpose_1:y:0ReverseV2/axis:output:0*
T0*"
_output_shapes
:M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :
concatConcatV2forward_lstm_94/transpose_1:y:0ReverseV2:output:0concat/axis:output:0*
N*
T0*"
_output_shapes
:Y
IdentityIdentityconcat:output:0^NoOp*
T0*"
_output_shapes
:
NoOpNoOp2^backward_lstm_94/lstm_cell/BiasAdd/ReadVariableOp1^backward_lstm_94/lstm_cell/MatMul/ReadVariableOp3^backward_lstm_94/lstm_cell/MatMul_1/ReadVariableOp^backward_lstm_94/while1^forward_lstm_94/lstm_cell/BiasAdd/ReadVariableOp0^forward_lstm_94/lstm_cell/MatMul/ReadVariableOp2^forward_lstm_94/lstm_cell/MatMul_1/ReadVariableOp^forward_lstm_94/while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*-
_input_shapes
:: : : : : : 2f
1backward_lstm_94/lstm_cell/BiasAdd/ReadVariableOp1backward_lstm_94/lstm_cell/BiasAdd/ReadVariableOp2d
0backward_lstm_94/lstm_cell/MatMul/ReadVariableOp0backward_lstm_94/lstm_cell/MatMul/ReadVariableOp2h
2backward_lstm_94/lstm_cell/MatMul_1/ReadVariableOp2backward_lstm_94/lstm_cell/MatMul_1/ReadVariableOp20
backward_lstm_94/whilebackward_lstm_94/while2d
0forward_lstm_94/lstm_cell/BiasAdd/ReadVariableOp0forward_lstm_94/lstm_cell/BiasAdd/ReadVariableOp2b
/forward_lstm_94/lstm_cell/MatMul/ReadVariableOp/forward_lstm_94/lstm_cell/MatMul/ReadVariableOp2f
1forward_lstm_94/lstm_cell/MatMul_1/ReadVariableOp1forward_lstm_94/lstm_cell/MatMul_1/ReadVariableOp2.
forward_lstm_94/whileforward_lstm_94/while:J F
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
ч
r
H__inference_lambda_102_layer_call_and_return_conditional_losses_56044799

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
L

N__inference_backward_lstm_94_layer_call_and_return_conditional_losses_56044363

inputs:
(lstm_cell_matmul_readvariableop_resource: <
*lstm_cell_matmul_1_readvariableop_resource: 7
)lstm_cell_biasadd_readvariableop_resource: 
identityЂ lstm_cell/BiasAdd/ReadVariableOpЂlstm_cell/MatMul/ReadVariableOpЂ!lstm_cell/MatMul_1/ReadVariableOpЂwhileI
ShapeShapeinputs*
T0*
_output_shapes
::эЯ]
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
valueB:б
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
:џџџџџџџџџR
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
:џџџџџџџџџc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
	transpose	Transposeinputstranspose/perm:output:0*
T0*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџR
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::эЯ_
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвX
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: 
	ReverseV2	ReverseV2transpose:y:0ReverseV2/axis:output:0*
T0*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџџџџџх
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensorReverseV2:output:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
valueB:ђ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
shrink_axis_mask
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes

: *
dtype0
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ 
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ [
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :д
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџj
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџq
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџb
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ}
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџr
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџj
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ_
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : р
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_56044279*
condR
while_cond_56044278*K
output_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:e a
=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
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
ш8
Б
while_body_56047701
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
/while_lstm_cell_biasadd_readvariableop_resource: Ђ&while/lstm_cell/BiasAdd/ReadVariableOpЂ%while/lstm_cell/MatMul/ReadVariableOpЂ'while/lstm_cell/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџџџџџЏ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
element_dtype0
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0Г
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ 
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ц
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_splitt
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџv
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџn
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџv
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџk
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџТ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџv
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџЃ

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
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : 2P
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
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:GC
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
аK
б
$backward_lstm_94_while_body_56045039>
:backward_lstm_94_while_backward_lstm_94_while_loop_counterD
@backward_lstm_94_while_backward_lstm_94_while_maximum_iterations&
"backward_lstm_94_while_placeholder(
$backward_lstm_94_while_placeholder_1(
$backward_lstm_94_while_placeholder_2(
$backward_lstm_94_while_placeholder_3=
9backward_lstm_94_while_backward_lstm_94_strided_slice_1_0y
ubackward_lstm_94_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_94_tensorarrayunstack_tensorlistfromtensor_0S
Abackward_lstm_94_while_lstm_cell_matmul_readvariableop_resource_0: U
Cbackward_lstm_94_while_lstm_cell_matmul_1_readvariableop_resource_0: P
Bbackward_lstm_94_while_lstm_cell_biasadd_readvariableop_resource_0: #
backward_lstm_94_while_identity%
!backward_lstm_94_while_identity_1%
!backward_lstm_94_while_identity_2%
!backward_lstm_94_while_identity_3%
!backward_lstm_94_while_identity_4%
!backward_lstm_94_while_identity_5;
7backward_lstm_94_while_backward_lstm_94_strided_slice_1w
sbackward_lstm_94_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_94_tensorarrayunstack_tensorlistfromtensorQ
?backward_lstm_94_while_lstm_cell_matmul_readvariableop_resource: S
Abackward_lstm_94_while_lstm_cell_matmul_1_readvariableop_resource: N
@backward_lstm_94_while_lstm_cell_biasadd_readvariableop_resource: Ђ7backward_lstm_94/while/lstm_cell/BiasAdd/ReadVariableOpЂ6backward_lstm_94/while/lstm_cell/MatMul/ReadVariableOpЂ8backward_lstm_94/while/lstm_cell/MatMul_1/ReadVariableOp
Hbackward_lstm_94/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      ђ
:backward_lstm_94/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemubackward_lstm_94_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_94_tensorarrayunstack_tensorlistfromtensor_0"backward_lstm_94_while_placeholderQbackward_lstm_94/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

:*
element_dtype0И
6backward_lstm_94/while/lstm_cell/MatMul/ReadVariableOpReadVariableOpAbackward_lstm_94_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0н
'backward_lstm_94/while/lstm_cell/MatMulMatMulAbackward_lstm_94/while/TensorArrayV2Read/TensorListGetItem:item:0>backward_lstm_94/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

: М
8backward_lstm_94/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpCbackward_lstm_94_while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0Ф
)backward_lstm_94/while/lstm_cell/MatMul_1MatMul$backward_lstm_94_while_placeholder_2@backward_lstm_94/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes

: О
$backward_lstm_94/while/lstm_cell/addAddV21backward_lstm_94/while/lstm_cell/MatMul:product:03backward_lstm_94/while/lstm_cell/MatMul_1:product:0*
T0*
_output_shapes

: Ж
7backward_lstm_94/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOpBbackward_lstm_94_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0Ч
(backward_lstm_94/while/lstm_cell/BiasAddBiasAdd(backward_lstm_94/while/lstm_cell/add:z:0?backward_lstm_94/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

: r
0backward_lstm_94/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ѕ
&backward_lstm_94/while/lstm_cell/splitSplit9backward_lstm_94/while/lstm_cell/split/split_dim:output:01backward_lstm_94/while/lstm_cell/BiasAdd:output:0*
T0*<
_output_shapes*
(::::*
	num_split
(backward_lstm_94/while/lstm_cell/SigmoidSigmoid/backward_lstm_94/while/lstm_cell/split:output:0*
T0*
_output_shapes

:
*backward_lstm_94/while/lstm_cell/Sigmoid_1Sigmoid/backward_lstm_94/while/lstm_cell/split:output:1*
T0*
_output_shapes

:Њ
$backward_lstm_94/while/lstm_cell/mulMul.backward_lstm_94/while/lstm_cell/Sigmoid_1:y:0$backward_lstm_94_while_placeholder_3*
T0*
_output_shapes

:
%backward_lstm_94/while/lstm_cell/ReluRelu/backward_lstm_94/while/lstm_cell/split:output:2*
T0*
_output_shapes

:Й
&backward_lstm_94/while/lstm_cell/mul_1Mul,backward_lstm_94/while/lstm_cell/Sigmoid:y:03backward_lstm_94/while/lstm_cell/Relu:activations:0*
T0*
_output_shapes

:Ў
&backward_lstm_94/while/lstm_cell/add_1AddV2(backward_lstm_94/while/lstm_cell/mul:z:0*backward_lstm_94/while/lstm_cell/mul_1:z:0*
T0*
_output_shapes

:
*backward_lstm_94/while/lstm_cell/Sigmoid_2Sigmoid/backward_lstm_94/while/lstm_cell/split:output:3*
T0*
_output_shapes

:
'backward_lstm_94/while/lstm_cell/Relu_1Relu*backward_lstm_94/while/lstm_cell/add_1:z:0*
T0*
_output_shapes

:Н
&backward_lstm_94/while/lstm_cell/mul_2Mul.backward_lstm_94/while/lstm_cell/Sigmoid_2:y:05backward_lstm_94/while/lstm_cell/Relu_1:activations:0*
T0*
_output_shapes

:
;backward_lstm_94/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem$backward_lstm_94_while_placeholder_1"backward_lstm_94_while_placeholder*backward_lstm_94/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшв^
backward_lstm_94/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
backward_lstm_94/while/addAddV2"backward_lstm_94_while_placeholder%backward_lstm_94/while/add/y:output:0*
T0*
_output_shapes
: `
backward_lstm_94/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Ћ
backward_lstm_94/while/add_1AddV2:backward_lstm_94_while_backward_lstm_94_while_loop_counter'backward_lstm_94/while/add_1/y:output:0*
T0*
_output_shapes
: 
backward_lstm_94/while/IdentityIdentity backward_lstm_94/while/add_1:z:0^backward_lstm_94/while/NoOp*
T0*
_output_shapes
: Ў
!backward_lstm_94/while/Identity_1Identity@backward_lstm_94_while_backward_lstm_94_while_maximum_iterations^backward_lstm_94/while/NoOp*
T0*
_output_shapes
: 
!backward_lstm_94/while/Identity_2Identitybackward_lstm_94/while/add:z:0^backward_lstm_94/while/NoOp*
T0*
_output_shapes
: Й
!backward_lstm_94/while/Identity_3IdentityKbackward_lstm_94/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^backward_lstm_94/while/NoOp*
T0*
_output_shapes
:  
!backward_lstm_94/while/Identity_4Identity*backward_lstm_94/while/lstm_cell/mul_2:z:0^backward_lstm_94/while/NoOp*
T0*
_output_shapes

: 
!backward_lstm_94/while/Identity_5Identity*backward_lstm_94/while/lstm_cell/add_1:z:0^backward_lstm_94/while/NoOp*
T0*
_output_shapes

:ч
backward_lstm_94/while/NoOpNoOp8^backward_lstm_94/while/lstm_cell/BiasAdd/ReadVariableOp7^backward_lstm_94/while/lstm_cell/MatMul/ReadVariableOp9^backward_lstm_94/while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "t
7backward_lstm_94_while_backward_lstm_94_strided_slice_19backward_lstm_94_while_backward_lstm_94_strided_slice_1_0"K
backward_lstm_94_while_identity(backward_lstm_94/while/Identity:output:0"O
!backward_lstm_94_while_identity_1*backward_lstm_94/while/Identity_1:output:0"O
!backward_lstm_94_while_identity_2*backward_lstm_94/while/Identity_2:output:0"O
!backward_lstm_94_while_identity_3*backward_lstm_94/while/Identity_3:output:0"O
!backward_lstm_94_while_identity_4*backward_lstm_94/while/Identity_4:output:0"O
!backward_lstm_94_while_identity_5*backward_lstm_94/while/Identity_5:output:0"
@backward_lstm_94_while_lstm_cell_biasadd_readvariableop_resourceBbackward_lstm_94_while_lstm_cell_biasadd_readvariableop_resource_0"
Abackward_lstm_94_while_lstm_cell_matmul_1_readvariableop_resourceCbackward_lstm_94_while_lstm_cell_matmul_1_readvariableop_resource_0"
?backward_lstm_94_while_lstm_cell_matmul_readvariableop_resourceAbackward_lstm_94_while_lstm_cell_matmul_readvariableop_resource_0"ь
sbackward_lstm_94_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_94_tensorarrayunstack_tensorlistfromtensorubackward_lstm_94_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_94_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : ::: : : : : 2r
7backward_lstm_94/while/lstm_cell/BiasAdd/ReadVariableOp7backward_lstm_94/while/lstm_cell/BiasAdd/ReadVariableOp2p
6backward_lstm_94/while/lstm_cell/MatMul/ReadVariableOp6backward_lstm_94/while/lstm_cell/MatMul/ReadVariableOp2t
8backward_lstm_94/while/lstm_cell/MatMul_1/ReadVariableOp8backward_lstm_94/while/lstm_cell/MatMul_1/ReadVariableOp:[ W

_output_shapes
: 
=
_user_specified_name%#backward_lstm_94/while/loop_counter:a]

_output_shapes
: 
C
_user_specified_name+)backward_lstm_94/while/maximum_iterations:
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
_user_specified_name" backward_lstm_94/strided_slice_1:pl

_output_shapes
: 
R
_user_specified_name:8backward_lstm_94/TensorArrayUnstack/TensorListFromTensor:($
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

Y
-__inference_lambda_104_layer_call_fn_56045857
inputs_0
inputs_1
identityЛ
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
GPU 2J 8 *Q
fLRJ
H__inference_lambda_104_layer_call_and_return_conditional_losses_56044838[
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
п8
Б
while_body_56048033
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
/while_lstm_cell_biasadd_readvariableop_resource: Ђ&while/lstm_cell/BiasAdd/ReadVariableOpЂ%while/lstm_cell/MatMul/ReadVariableOpЂ'while/lstm_cell/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0Г
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ 
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ц
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_splitt
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџv
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџn
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџv
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџk
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџТ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџv
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџЃ

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
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : 2P
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
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:GC
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
б	
љ
G__inference_dense_629_layer_call_and_return_conditional_losses_56047152

inputs1
matmul_readvariableop_resource:	-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
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
:	: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:G C

_output_shapes
:	
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Ѓ

G__inference_lstm_cell_layer_call_and_return_conditional_losses_56043780

inputs

states
states_10
matmul_readvariableop_resource: 2
 matmul_1_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity

identity_1

identity_2ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ж
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:џџџџџџџџџV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:џџџџџџџџџU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:џџџџџџџџџN
ReluRelusplit:output:2*
T0*'
_output_shapes
:џџџџџџџџџ_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:џџџџџџџџџK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџm
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_namestates:OK
'
_output_shapes
:џџџџџџџџџ
 
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
ш8
Б
while_body_56044437
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
/while_lstm_cell_biasadd_readvariableop_resource: Ђ&while/lstm_cell/BiasAdd/ReadVariableOpЂ%while/lstm_cell/MatMul/ReadVariableOpЂ'while/lstm_cell/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџџџџџЏ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
element_dtype0
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0Г
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ 
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ц
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_splitt
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџv
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџn
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџv
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџk
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџТ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџv
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџЃ

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
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : 2P
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
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:GC
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


#forward_lstm_94_while_cond_56044897<
8forward_lstm_94_while_forward_lstm_94_while_loop_counterB
>forward_lstm_94_while_forward_lstm_94_while_maximum_iterations%
!forward_lstm_94_while_placeholder'
#forward_lstm_94_while_placeholder_1'
#forward_lstm_94_while_placeholder_2'
#forward_lstm_94_while_placeholder_3>
:forward_lstm_94_while_less_forward_lstm_94_strided_slice_1V
Rforward_lstm_94_while_forward_lstm_94_while_cond_56044897___redundant_placeholder0V
Rforward_lstm_94_while_forward_lstm_94_while_cond_56044897___redundant_placeholder1V
Rforward_lstm_94_while_forward_lstm_94_while_cond_56044897___redundant_placeholder2V
Rforward_lstm_94_while_forward_lstm_94_while_cond_56044897___redundant_placeholder3"
forward_lstm_94_while_identity
Ђ
forward_lstm_94/while/LessLess!forward_lstm_94_while_placeholder:forward_lstm_94_while_less_forward_lstm_94_strided_slice_1*
T0*
_output_shapes
: k
forward_lstm_94/while/IdentityIdentityforward_lstm_94/while/Less:z:0*
T0
*
_output_shapes
: "I
forward_lstm_94_while_identity'forward_lstm_94/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : ::: :::::Z V

_output_shapes
: 
<
_user_specified_name$"forward_lstm_94/while/loop_counter:`\

_output_shapes
: 
B
_user_specified_name*(forward_lstm_94/while/maximum_iterations:
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
_user_specified_name!forward_lstm_94/strided_slice_1:

_output_shapes
:
Ь	
Э
while_cond_56047843
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_16
2while_while_cond_56047843___redundant_placeholder06
2while_while_cond_56047843___redundant_placeholder16
2while_while_cond_56047843___redundant_placeholder26
2while_while_cond_56047843___redundant_placeholder3
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
@: : : : :џџџџџџџџџ:џџџџџџџџџ: :::::J F
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
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
Н

#forward_lstm_94_while_cond_56046001<
8forward_lstm_94_while_forward_lstm_94_while_loop_counterB
>forward_lstm_94_while_forward_lstm_94_while_maximum_iterations%
!forward_lstm_94_while_placeholder'
#forward_lstm_94_while_placeholder_1'
#forward_lstm_94_while_placeholder_2'
#forward_lstm_94_while_placeholder_3>
:forward_lstm_94_while_less_forward_lstm_94_strided_slice_1V
Rforward_lstm_94_while_forward_lstm_94_while_cond_56046001___redundant_placeholder0V
Rforward_lstm_94_while_forward_lstm_94_while_cond_56046001___redundant_placeholder1V
Rforward_lstm_94_while_forward_lstm_94_while_cond_56046001___redundant_placeholder2V
Rforward_lstm_94_while_forward_lstm_94_while_cond_56046001___redundant_placeholder3"
forward_lstm_94_while_identity
Ђ
forward_lstm_94/while/LessLess!forward_lstm_94_while_placeholder:forward_lstm_94_while_less_forward_lstm_94_strided_slice_1*
T0*
_output_shapes
: k
forward_lstm_94/while/IdentityIdentityforward_lstm_94/while/Less:z:0*
T0
*
_output_shapes
: "I
forward_lstm_94_while_identity'forward_lstm_94/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :џџџџџџџџџ:џџџџџџџџџ: :::::Z V

_output_shapes
: 
<
_user_specified_name$"forward_lstm_94/while/loop_counter:`\

_output_shapes
: 
B
_user_specified_name*(forward_lstm_94/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:WS

_output_shapes
: 
9
_user_specified_name!forward_lstm_94/strided_slice_1:

_output_shapes
:
Ь	
Э
while_cond_56044278
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_16
2while_while_cond_56044278___redundant_placeholder06
2while_while_cond_56044278___redundant_placeholder16
2while_while_cond_56044278___redundant_placeholder26
2while_while_cond_56044278___redundant_placeholder3
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
@: : : : :џџџџџџџџџ:џџџџџџџџџ: :::::J F
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
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
н8

M__inference_forward_lstm_94_layer_call_and_return_conditional_losses_56043515

inputs$
lstm_cell_56043433: $
lstm_cell_56043435:  
lstm_cell_56043437: 
identityЂ!lstm_cell/StatefulPartitionedCallЂwhileI
ShapeShapeinputs*
T0*
_output_shapes
::эЯ]
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
valueB:б
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
:џџџџџџџџџR
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
:џџџџџџџџџc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџR
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::эЯ_
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_maskю
!lstm_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_56043433lstm_cell_56043435lstm_cell_56043437*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_lstm_cell_layer_call_and_return_conditional_losses_56043432n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_56043433lstm_cell_56043435lstm_cell_56043437*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_56043446*
condR
while_cond_56043445*K
output_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџN
NoOpNoOp"^lstm_cell/StatefulPartitionedCall^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ: : : 2F
!lstm_cell/StatefulPartitionedCall!lstm_cell/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs:($
"
_user_specified_name
56043433:($
"
_user_specified_name
56043435:($
"
_user_specified_name
56043437
Ѓ

G__inference_lstm_cell_layer_call_and_return_conditional_losses_56043577

inputs

states
states_10
matmul_readvariableop_resource: 2
 matmul_1_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity

identity_1

identity_2ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ж
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:џџџџџџџџџV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:џџџџџџџџџU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:џџџџџџџџџN
ReluRelusplit:output:2*
T0*'
_output_shapes
:џџџџџџџџџ_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:џџџџџџџџџK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџm
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_namestates:OK
'
_output_shapes
:џџџџџџџџџ
 
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
ЖJ
Б
#forward_lstm_94_while_body_56046866<
8forward_lstm_94_while_forward_lstm_94_while_loop_counterB
>forward_lstm_94_while_forward_lstm_94_while_maximum_iterations%
!forward_lstm_94_while_placeholder'
#forward_lstm_94_while_placeholder_1'
#forward_lstm_94_while_placeholder_2'
#forward_lstm_94_while_placeholder_3;
7forward_lstm_94_while_forward_lstm_94_strided_slice_1_0w
sforward_lstm_94_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_94_tensorarrayunstack_tensorlistfromtensor_0R
@forward_lstm_94_while_lstm_cell_matmul_readvariableop_resource_0: T
Bforward_lstm_94_while_lstm_cell_matmul_1_readvariableop_resource_0: O
Aforward_lstm_94_while_lstm_cell_biasadd_readvariableop_resource_0: "
forward_lstm_94_while_identity$
 forward_lstm_94_while_identity_1$
 forward_lstm_94_while_identity_2$
 forward_lstm_94_while_identity_3$
 forward_lstm_94_while_identity_4$
 forward_lstm_94_while_identity_59
5forward_lstm_94_while_forward_lstm_94_strided_slice_1u
qforward_lstm_94_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_94_tensorarrayunstack_tensorlistfromtensorP
>forward_lstm_94_while_lstm_cell_matmul_readvariableop_resource: R
@forward_lstm_94_while_lstm_cell_matmul_1_readvariableop_resource: M
?forward_lstm_94_while_lstm_cell_biasadd_readvariableop_resource: Ђ6forward_lstm_94/while/lstm_cell/BiasAdd/ReadVariableOpЂ5forward_lstm_94/while/lstm_cell/MatMul/ReadVariableOpЂ7forward_lstm_94/while/lstm_cell/MatMul_1/ReadVariableOp
Gforward_lstm_94/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      э
9forward_lstm_94/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsforward_lstm_94_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_94_tensorarrayunstack_tensorlistfromtensor_0!forward_lstm_94_while_placeholderPforward_lstm_94/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

:*
element_dtype0Ж
5forward_lstm_94/while/lstm_cell/MatMul/ReadVariableOpReadVariableOp@forward_lstm_94_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0к
&forward_lstm_94/while/lstm_cell/MatMulMatMul@forward_lstm_94/while/TensorArrayV2Read/TensorListGetItem:item:0=forward_lstm_94/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

: К
7forward_lstm_94/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpBforward_lstm_94_while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0С
(forward_lstm_94/while/lstm_cell/MatMul_1MatMul#forward_lstm_94_while_placeholder_2?forward_lstm_94/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes

: Л
#forward_lstm_94/while/lstm_cell/addAddV20forward_lstm_94/while/lstm_cell/MatMul:product:02forward_lstm_94/while/lstm_cell/MatMul_1:product:0*
T0*
_output_shapes

: Д
6forward_lstm_94/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOpAforward_lstm_94_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0Ф
'forward_lstm_94/while/lstm_cell/BiasAddBiasAdd'forward_lstm_94/while/lstm_cell/add:z:0>forward_lstm_94/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

: q
/forward_lstm_94/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ђ
%forward_lstm_94/while/lstm_cell/splitSplit8forward_lstm_94/while/lstm_cell/split/split_dim:output:00forward_lstm_94/while/lstm_cell/BiasAdd:output:0*
T0*<
_output_shapes*
(::::*
	num_split
'forward_lstm_94/while/lstm_cell/SigmoidSigmoid.forward_lstm_94/while/lstm_cell/split:output:0*
T0*
_output_shapes

:
)forward_lstm_94/while/lstm_cell/Sigmoid_1Sigmoid.forward_lstm_94/while/lstm_cell/split:output:1*
T0*
_output_shapes

:Ї
#forward_lstm_94/while/lstm_cell/mulMul-forward_lstm_94/while/lstm_cell/Sigmoid_1:y:0#forward_lstm_94_while_placeholder_3*
T0*
_output_shapes

:
$forward_lstm_94/while/lstm_cell/ReluRelu.forward_lstm_94/while/lstm_cell/split:output:2*
T0*
_output_shapes

:Ж
%forward_lstm_94/while/lstm_cell/mul_1Mul+forward_lstm_94/while/lstm_cell/Sigmoid:y:02forward_lstm_94/while/lstm_cell/Relu:activations:0*
T0*
_output_shapes

:Ћ
%forward_lstm_94/while/lstm_cell/add_1AddV2'forward_lstm_94/while/lstm_cell/mul:z:0)forward_lstm_94/while/lstm_cell/mul_1:z:0*
T0*
_output_shapes

:
)forward_lstm_94/while/lstm_cell/Sigmoid_2Sigmoid.forward_lstm_94/while/lstm_cell/split:output:3*
T0*
_output_shapes

:
&forward_lstm_94/while/lstm_cell/Relu_1Relu)forward_lstm_94/while/lstm_cell/add_1:z:0*
T0*
_output_shapes

:К
%forward_lstm_94/while/lstm_cell/mul_2Mul-forward_lstm_94/while/lstm_cell/Sigmoid_2:y:04forward_lstm_94/while/lstm_cell/Relu_1:activations:0*
T0*
_output_shapes

:
:forward_lstm_94/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem#forward_lstm_94_while_placeholder_1!forward_lstm_94_while_placeholder)forward_lstm_94/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшв]
forward_lstm_94/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
forward_lstm_94/while/addAddV2!forward_lstm_94_while_placeholder$forward_lstm_94/while/add/y:output:0*
T0*
_output_shapes
: _
forward_lstm_94/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Ї
forward_lstm_94/while/add_1AddV28forward_lstm_94_while_forward_lstm_94_while_loop_counter&forward_lstm_94/while/add_1/y:output:0*
T0*
_output_shapes
: 
forward_lstm_94/while/IdentityIdentityforward_lstm_94/while/add_1:z:0^forward_lstm_94/while/NoOp*
T0*
_output_shapes
: Њ
 forward_lstm_94/while/Identity_1Identity>forward_lstm_94_while_forward_lstm_94_while_maximum_iterations^forward_lstm_94/while/NoOp*
T0*
_output_shapes
: 
 forward_lstm_94/while/Identity_2Identityforward_lstm_94/while/add:z:0^forward_lstm_94/while/NoOp*
T0*
_output_shapes
: Ж
 forward_lstm_94/while/Identity_3IdentityJforward_lstm_94/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^forward_lstm_94/while/NoOp*
T0*
_output_shapes
: 
 forward_lstm_94/while/Identity_4Identity)forward_lstm_94/while/lstm_cell/mul_2:z:0^forward_lstm_94/while/NoOp*
T0*
_output_shapes

:
 forward_lstm_94/while/Identity_5Identity)forward_lstm_94/while/lstm_cell/add_1:z:0^forward_lstm_94/while/NoOp*
T0*
_output_shapes

:у
forward_lstm_94/while/NoOpNoOp7^forward_lstm_94/while/lstm_cell/BiasAdd/ReadVariableOp6^forward_lstm_94/while/lstm_cell/MatMul/ReadVariableOp8^forward_lstm_94/while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "p
5forward_lstm_94_while_forward_lstm_94_strided_slice_17forward_lstm_94_while_forward_lstm_94_strided_slice_1_0"I
forward_lstm_94_while_identity'forward_lstm_94/while/Identity:output:0"M
 forward_lstm_94_while_identity_1)forward_lstm_94/while/Identity_1:output:0"M
 forward_lstm_94_while_identity_2)forward_lstm_94/while/Identity_2:output:0"M
 forward_lstm_94_while_identity_3)forward_lstm_94/while/Identity_3:output:0"M
 forward_lstm_94_while_identity_4)forward_lstm_94/while/Identity_4:output:0"M
 forward_lstm_94_while_identity_5)forward_lstm_94/while/Identity_5:output:0"
?forward_lstm_94_while_lstm_cell_biasadd_readvariableop_resourceAforward_lstm_94_while_lstm_cell_biasadd_readvariableop_resource_0"
@forward_lstm_94_while_lstm_cell_matmul_1_readvariableop_resourceBforward_lstm_94_while_lstm_cell_matmul_1_readvariableop_resource_0"
>forward_lstm_94_while_lstm_cell_matmul_readvariableop_resource@forward_lstm_94_while_lstm_cell_matmul_readvariableop_resource_0"ш
qforward_lstm_94_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_94_tensorarrayunstack_tensorlistfromtensorsforward_lstm_94_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_94_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : ::: : : : : 2p
6forward_lstm_94/while/lstm_cell/BiasAdd/ReadVariableOp6forward_lstm_94/while/lstm_cell/BiasAdd/ReadVariableOp2n
5forward_lstm_94/while/lstm_cell/MatMul/ReadVariableOp5forward_lstm_94/while/lstm_cell/MatMul/ReadVariableOp2r
7forward_lstm_94/while/lstm_cell/MatMul_1/ReadVariableOp7forward_lstm_94/while/lstm_cell/MatMul_1/ReadVariableOp:Z V

_output_shapes
: 
<
_user_specified_name$"forward_lstm_94/while/loop_counter:`\

_output_shapes
: 
B
_user_specified_name*(forward_lstm_94/while/maximum_iterations:
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
_user_specified_name!forward_lstm_94/strided_slice_1:ok

_output_shapes
: 
Q
_user_specified_name97forward_lstm_94/TensorArrayUnstack/TensorListFromTensor:($
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
ч
r
H__inference_lambda_102_layer_call_and_return_conditional_losses_56045197

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


#forward_lstm_94_while_cond_56046577<
8forward_lstm_94_while_forward_lstm_94_while_loop_counterB
>forward_lstm_94_while_forward_lstm_94_while_maximum_iterations%
!forward_lstm_94_while_placeholder'
#forward_lstm_94_while_placeholder_1'
#forward_lstm_94_while_placeholder_2'
#forward_lstm_94_while_placeholder_3>
:forward_lstm_94_while_less_forward_lstm_94_strided_slice_1V
Rforward_lstm_94_while_forward_lstm_94_while_cond_56046577___redundant_placeholder0V
Rforward_lstm_94_while_forward_lstm_94_while_cond_56046577___redundant_placeholder1V
Rforward_lstm_94_while_forward_lstm_94_while_cond_56046577___redundant_placeholder2V
Rforward_lstm_94_while_forward_lstm_94_while_cond_56046577___redundant_placeholder3"
forward_lstm_94_while_identity
Ђ
forward_lstm_94/while/LessLess!forward_lstm_94_while_placeholder:forward_lstm_94_while_less_forward_lstm_94_strided_slice_1*
T0*
_output_shapes
: k
forward_lstm_94/while/IdentityIdentityforward_lstm_94/while/Less:z:0*
T0
*
_output_shapes
: "I
forward_lstm_94_while_identity'forward_lstm_94/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : ::: :::::Z V

_output_shapes
: 
<
_user_specified_name$"forward_lstm_94/while/loop_counter:`\

_output_shapes
: 
B
_user_specified_name*(forward_lstm_94/while/maximum_iterations:
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
_user_specified_name!forward_lstm_94/strided_slice_1:

_output_shapes
:
Ц


3__inference_bidirectional_94_layer_call_fn_56045943

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: 
identityЂStatefulPartitionedCall
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
GPU 2J 8 *W
fRRP
N__inference_bidirectional_94_layer_call_and_return_conditional_losses_56045525j
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
56045929:($
"
_user_specified_name
56045931:($
"
_user_specified_name
56045933:($
"
_user_specified_name
56045935:($
"
_user_specified_name
56045937:($
"
_user_specified_name
56045939
Ь	
Э
while_cond_56043590
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_16
2while_while_cond_56043590___redundant_placeholder06
2while_while_cond_56043590___redundant_placeholder16
2while_while_cond_56043590___redundant_placeholder26
2while_while_cond_56043590___redundant_placeholder3
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
@: : : : :џџџџџџџџџ:џџџџџџџџџ: :::::J F
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
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
Ї	
р
L__inference_sequential_424_layer_call_and_return_conditional_losses_56043115
dense_613_input$
dense_613_56043109: 
dense_613_56043111:
identityЂ!dense_613/StatefulPartitionedCall
!dense_613/StatefulPartitionedCallStatefulPartitionedCalldense_613_inputdense_613_56043109dense_613_56043111*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dense_613_layer_call_and_return_conditional_losses_56043099}
IdentityIdentity*dense_613/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџF
NoOpNoOp"^dense_613/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ: : 2F
!dense_613/StatefulPartitionedCall!dense_613/StatefulPartitionedCall:\ X
+
_output_shapes
:џџџџџџџџџ
)
_user_specified_namedense_613_input:($
"
_user_specified_name
56043109:($
"
_user_specified_name
56043111
ф
ў
G__inference_dense_623_layer_call_and_return_conditional_losses_56043251

inputs3
!tensordot_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂTensordot/ReadVariableOpz
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
::эЯY
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : Л
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
value	B : П
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
value	B : 
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
:џџџџџџџџџ
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ї
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџT
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:џџџџџџџџџe
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџV
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
з

,__inference_dense_629_layer_call_fn_56047142

inputs
unknown:	
	unknown_0:
identityЂStatefulPartitionedCallг
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
GPU 2J 8 *P
fKRI
G__inference_dense_629_layer_call_and_return_conditional_losses_56045170f
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
:	: : 22
StatefulPartitionedCallStatefulPartitionedCall:G C

_output_shapes
:	
 
_user_specified_nameinputs:($
"
_user_specified_name
56047136:($
"
_user_specified_name
56047138

d
H__inference_flatten_94_layer_call_and_return_conditional_losses_56045159

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ  T
ReshapeReshapeinputsConst:output:0*
T0*
_output_shapes
:	P
IdentityIdentityReshape:output:0*
T0*
_output_shapes
:	"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
::J F
"
_output_shapes
:
 
_user_specified_nameinputs
ф
ў
G__inference_dense_623_layer_call_and_return_conditional_losses_56047272

inputs3
!tensordot_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂTensordot/ReadVariableOpz
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
::эЯY
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : Л
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
value	B : П
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
value	B : 
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
:џџџџџџџџџ
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ї
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџT
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:џџџџџџџџџe
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџV
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Ь	
Э
while_cond_56043940
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_16
2while_while_cond_56043940___redundant_placeholder06
2while_while_cond_56043940___redundant_placeholder16
2while_while_cond_56043940___redundant_placeholder26
2while_while_cond_56043940___redundant_placeholder3
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
@: : : : :џџџџџџџџџ:џџџџџџџџџ: :::::J F
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
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
 	
М
2__inference_forward_lstm_94_layer_call_fn_56047356

inputs
unknown: 
	unknown_0: 
	unknown_1: 
identityЂStatefulPartitionedCallќ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_forward_lstm_94_layer_call_and_return_conditional_losses_56044521|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:e a
=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs:($
"
_user_specified_name
56047348:($
"
_user_specified_name
56047350:($
"
_user_specified_name
56047352


#forward_lstm_94_while_cond_56045295<
8forward_lstm_94_while_forward_lstm_94_while_loop_counterB
>forward_lstm_94_while_forward_lstm_94_while_maximum_iterations%
!forward_lstm_94_while_placeholder'
#forward_lstm_94_while_placeholder_1'
#forward_lstm_94_while_placeholder_2'
#forward_lstm_94_while_placeholder_3>
:forward_lstm_94_while_less_forward_lstm_94_strided_slice_1V
Rforward_lstm_94_while_forward_lstm_94_while_cond_56045295___redundant_placeholder0V
Rforward_lstm_94_while_forward_lstm_94_while_cond_56045295___redundant_placeholder1V
Rforward_lstm_94_while_forward_lstm_94_while_cond_56045295___redundant_placeholder2V
Rforward_lstm_94_while_forward_lstm_94_while_cond_56045295___redundant_placeholder3"
forward_lstm_94_while_identity
Ђ
forward_lstm_94/while/LessLess!forward_lstm_94_while_placeholder:forward_lstm_94_while_less_forward_lstm_94_strided_slice_1*
T0*
_output_shapes
: k
forward_lstm_94/while/IdentityIdentityforward_lstm_94/while/Less:z:0*
T0
*
_output_shapes
: "I
forward_lstm_94_while_identity'forward_lstm_94/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : ::: :::::Z V

_output_shapes
: 
<
_user_specified_name$"forward_lstm_94/while/loop_counter:`\

_output_shapes
: 
B
_user_specified_name*(forward_lstm_94/while/maximum_iterations:
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
_user_specified_name!forward_lstm_94/strided_slice_1:

_output_shapes
:
Н

#forward_lstm_94_while_cond_56046289<
8forward_lstm_94_while_forward_lstm_94_while_loop_counterB
>forward_lstm_94_while_forward_lstm_94_while_maximum_iterations%
!forward_lstm_94_while_placeholder'
#forward_lstm_94_while_placeholder_1'
#forward_lstm_94_while_placeholder_2'
#forward_lstm_94_while_placeholder_3>
:forward_lstm_94_while_less_forward_lstm_94_strided_slice_1V
Rforward_lstm_94_while_forward_lstm_94_while_cond_56046289___redundant_placeholder0V
Rforward_lstm_94_while_forward_lstm_94_while_cond_56046289___redundant_placeholder1V
Rforward_lstm_94_while_forward_lstm_94_while_cond_56046289___redundant_placeholder2V
Rforward_lstm_94_while_forward_lstm_94_while_cond_56046289___redundant_placeholder3"
forward_lstm_94_while_identity
Ђ
forward_lstm_94/while/LessLess!forward_lstm_94_while_placeholder:forward_lstm_94_while_less_forward_lstm_94_strided_slice_1*
T0*
_output_shapes
: k
forward_lstm_94/while/IdentityIdentityforward_lstm_94/while/Less:z:0*
T0
*
_output_shapes
: "I
forward_lstm_94_while_identity'forward_lstm_94/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :џџџџџџџџџ:џџџџџџџџџ: :::::Z V

_output_shapes
: 
<
_user_specified_name$"forward_lstm_94/while/loop_counter:`\

_output_shapes
: 
B
_user_specified_name*(forward_lstm_94/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:WS

_output_shapes
: 
9
_user_specified_name!forward_lstm_94/strided_slice_1:

_output_shapes
:
Ї	
р
L__inference_sequential_429_layer_call_and_return_conditional_losses_56043191
dense_618_input$
dense_618_56043185: 
dense_618_56043187:
identityЂ!dense_618/StatefulPartitionedCall
!dense_618/StatefulPartitionedCallStatefulPartitionedCalldense_618_inputdense_618_56043185dense_618_56043187*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dense_618_layer_call_and_return_conditional_losses_56043175}
IdentityIdentity*dense_618/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџF
NoOpNoOp"^dense_618/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ: : 2F
!dense_618/StatefulPartitionedCall!dense_618/StatefulPartitionedCall:\ X
+
_output_shapes
:џџџџџџџџџ
)
_user_specified_namedense_618_input:($
"
_user_specified_name
56043185:($
"
_user_specified_name
56043187

d
H__inference_flatten_94_layer_call_and_return_conditional_losses_56047133

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ  T
ReshapeReshapeinputsConst:output:0*
T0*
_output_shapes
:	P
IdentityIdentityReshape:output:0*
T0*
_output_shapes
:	"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
::J F
"
_output_shapes
:
 
_user_specified_nameinputs
йY
н
$__inference__traced_restore_56048941
file_prefix3
!assignvariableop_dense_612_kernel:/
!assignvariableop_1_dense_612_bias:6
#assignvariableop_2_dense_629_kernel:	/
!assignvariableop_3_dense_629_bias:5
#assignvariableop_4_dense_613_kernel:/
!assignvariableop_5_dense_613_bias:5
#assignvariableop_6_dense_618_kernel:/
!assignvariableop_7_dense_618_bias:5
#assignvariableop_8_dense_623_kernel:/
!assignvariableop_9_dense_623_bias:6
$assignvariableop_10_dense_628_kernel:0
"assignvariableop_11_dense_628_bias:W
Eassignvariableop_12_bidirectional_94_forward_lstm_94_lstm_cell_kernel: a
Oassignvariableop_13_bidirectional_94_forward_lstm_94_lstm_cell_recurrent_kernel: Q
Cassignvariableop_14_bidirectional_94_forward_lstm_94_lstm_cell_bias: X
Fassignvariableop_15_bidirectional_94_backward_lstm_94_lstm_cell_kernel: b
Passignvariableop_16_bidirectional_94_backward_lstm_94_lstm_cell_recurrent_kernel: R
Dassignvariableop_17_bidirectional_94_backward_lstm_94_lstm_cell_bias: 
identity_19ЂAssignVariableOpЂAssignVariableOp_1ЂAssignVariableOp_10ЂAssignVariableOp_11ЂAssignVariableOp_12ЂAssignVariableOp_13ЂAssignVariableOp_14ЂAssignVariableOp_15ЂAssignVariableOp_16ЂAssignVariableOp_17ЂAssignVariableOp_2ЂAssignVariableOp_3ЂAssignVariableOp_4ЂAssignVariableOp_5ЂAssignVariableOp_6ЂAssignVariableOp_7ЂAssignVariableOp_8ЂAssignVariableOp_9
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Х
valueЛBИB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
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
:Д
AssignVariableOpAssignVariableOp!assignvariableop_dense_612_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:И
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_612_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_2AssignVariableOp#assignvariableop_2_dense_629_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:И
AssignVariableOp_3AssignVariableOp!assignvariableop_3_dense_629_biasIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_4AssignVariableOp#assignvariableop_4_dense_613_kernelIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:И
AssignVariableOp_5AssignVariableOp!assignvariableop_5_dense_613_biasIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_6AssignVariableOp#assignvariableop_6_dense_618_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:И
AssignVariableOp_7AssignVariableOp!assignvariableop_7_dense_618_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_8AssignVariableOp#assignvariableop_8_dense_623_kernelIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:И
AssignVariableOp_9AssignVariableOp!assignvariableop_9_dense_623_biasIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:Н
AssignVariableOp_10AssignVariableOp$assignvariableop_10_dense_628_kernelIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:Л
AssignVariableOp_11AssignVariableOp"assignvariableop_11_dense_628_biasIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:о
AssignVariableOp_12AssignVariableOpEassignvariableop_12_bidirectional_94_forward_lstm_94_lstm_cell_kernelIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:ш
AssignVariableOp_13AssignVariableOpOassignvariableop_13_bidirectional_94_forward_lstm_94_lstm_cell_recurrent_kernelIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:м
AssignVariableOp_14AssignVariableOpCassignvariableop_14_bidirectional_94_forward_lstm_94_lstm_cell_biasIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:п
AssignVariableOp_15AssignVariableOpFassignvariableop_15_bidirectional_94_backward_lstm_94_lstm_cell_kernelIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:щ
AssignVariableOp_16AssignVariableOpPassignvariableop_16_bidirectional_94_backward_lstm_94_lstm_cell_recurrent_kernelIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:н
AssignVariableOp_17AssignVariableOpDassignvariableop_17_bidirectional_94_backward_lstm_94_lstm_cell_biasIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 л
Identity_18Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_19IdentityIdentity_18:output:0^NoOp_1*
T0*
_output_shapes
: Є
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
_user_specified_namedense_612/kernel:.*
(
_user_specified_namedense_612/bias:0,
*
_user_specified_namedense_629/kernel:.*
(
_user_specified_namedense_629/bias:0,
*
_user_specified_namedense_613/kernel:.*
(
_user_specified_namedense_613/bias:0,
*
_user_specified_namedense_618/kernel:.*
(
_user_specified_namedense_618/bias:0	,
*
_user_specified_namedense_623/kernel:.
*
(
_user_specified_namedense_623/bias:0,
*
_user_specified_namedense_628/kernel:.*
(
_user_specified_namedense_628/bias:QM
K
_user_specified_name31bidirectional_94/forward_lstm_94/lstm_cell/kernel:[W
U
_user_specified_name=;bidirectional_94/forward_lstm_94/lstm_cell/recurrent_kernel:OK
I
_user_specified_name1/bidirectional_94/forward_lstm_94/lstm_cell/bias:RN
L
_user_specified_name42bidirectional_94/backward_lstm_94/lstm_cell/kernel:\X
V
_user_specified_name><bidirectional_94/backward_lstm_94/lstm_cell/recurrent_kernel:PL
J
_user_specified_name20bidirectional_94/backward_lstm_94/lstm_cell/bias

Y
-__inference_lambda_103_layer_call_fn_56045839
inputs_0
inputs_1
identityП
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
GPU 2J 8 *Q
fLRJ
H__inference_lambda_103_layer_call_and_return_conditional_losses_56045204_
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


,__inference_dense_613_layer_call_fn_56047161

inputs
unknown:
	unknown_0:
identityЂStatefulPartitionedCallр
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dense_613_layer_call_and_return_conditional_losses_56043099s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:($
"
_user_specified_name
56047155:($
"
_user_specified_name
56047157


g
H__inference_dropout_94_layer_call_and_return_conditional_losses_56045152

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?_
dropout/MulMulinputsdropout/Const:output:0*
T0*"
_output_shapes
:b
dropout/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         
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
 *ЭЬL>Ё
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*"
_output_shapes
:T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    
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
п8
Б
while_body_56048178
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
/while_lstm_cell_biasadd_readvariableop_resource: Ђ&while/lstm_cell/BiasAdd/ReadVariableOpЂ%while/lstm_cell/MatMul/ReadVariableOpЂ'while/lstm_cell/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0Г
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ 
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ц
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_splitt
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџv
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџn
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџv
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџk
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџТ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџv
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџЃ

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
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : 2P
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
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:GC
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
П
f
-__inference_dropout_94_layer_call_fn_56047100

inputs
identityЂStatefulPartitionedCallО
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
GPU 2J 8 *Q
fLRJ
H__inference_dropout_94_layer_call_and_return_conditional_losses_56045152j
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

Y
-__inference_lambda_102_layer_call_fn_56045815
inputs_0
inputs_1
identityЛ
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
GPU 2J 8 *Q
fLRJ
H__inference_lambda_102_layer_call_and_return_conditional_losses_56045197[
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
Ч
f
H__inference_dropout_94_layer_call_and_return_conditional_losses_56047122

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
ЖJ
Б
#forward_lstm_94_while_body_56045296<
8forward_lstm_94_while_forward_lstm_94_while_loop_counterB
>forward_lstm_94_while_forward_lstm_94_while_maximum_iterations%
!forward_lstm_94_while_placeholder'
#forward_lstm_94_while_placeholder_1'
#forward_lstm_94_while_placeholder_2'
#forward_lstm_94_while_placeholder_3;
7forward_lstm_94_while_forward_lstm_94_strided_slice_1_0w
sforward_lstm_94_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_94_tensorarrayunstack_tensorlistfromtensor_0R
@forward_lstm_94_while_lstm_cell_matmul_readvariableop_resource_0: T
Bforward_lstm_94_while_lstm_cell_matmul_1_readvariableop_resource_0: O
Aforward_lstm_94_while_lstm_cell_biasadd_readvariableop_resource_0: "
forward_lstm_94_while_identity$
 forward_lstm_94_while_identity_1$
 forward_lstm_94_while_identity_2$
 forward_lstm_94_while_identity_3$
 forward_lstm_94_while_identity_4$
 forward_lstm_94_while_identity_59
5forward_lstm_94_while_forward_lstm_94_strided_slice_1u
qforward_lstm_94_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_94_tensorarrayunstack_tensorlistfromtensorP
>forward_lstm_94_while_lstm_cell_matmul_readvariableop_resource: R
@forward_lstm_94_while_lstm_cell_matmul_1_readvariableop_resource: M
?forward_lstm_94_while_lstm_cell_biasadd_readvariableop_resource: Ђ6forward_lstm_94/while/lstm_cell/BiasAdd/ReadVariableOpЂ5forward_lstm_94/while/lstm_cell/MatMul/ReadVariableOpЂ7forward_lstm_94/while/lstm_cell/MatMul_1/ReadVariableOp
Gforward_lstm_94/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      э
9forward_lstm_94/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsforward_lstm_94_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_94_tensorarrayunstack_tensorlistfromtensor_0!forward_lstm_94_while_placeholderPforward_lstm_94/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

:*
element_dtype0Ж
5forward_lstm_94/while/lstm_cell/MatMul/ReadVariableOpReadVariableOp@forward_lstm_94_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0к
&forward_lstm_94/while/lstm_cell/MatMulMatMul@forward_lstm_94/while/TensorArrayV2Read/TensorListGetItem:item:0=forward_lstm_94/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

: К
7forward_lstm_94/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpBforward_lstm_94_while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0С
(forward_lstm_94/while/lstm_cell/MatMul_1MatMul#forward_lstm_94_while_placeholder_2?forward_lstm_94/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes

: Л
#forward_lstm_94/while/lstm_cell/addAddV20forward_lstm_94/while/lstm_cell/MatMul:product:02forward_lstm_94/while/lstm_cell/MatMul_1:product:0*
T0*
_output_shapes

: Д
6forward_lstm_94/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOpAforward_lstm_94_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0Ф
'forward_lstm_94/while/lstm_cell/BiasAddBiasAdd'forward_lstm_94/while/lstm_cell/add:z:0>forward_lstm_94/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

: q
/forward_lstm_94/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ђ
%forward_lstm_94/while/lstm_cell/splitSplit8forward_lstm_94/while/lstm_cell/split/split_dim:output:00forward_lstm_94/while/lstm_cell/BiasAdd:output:0*
T0*<
_output_shapes*
(::::*
	num_split
'forward_lstm_94/while/lstm_cell/SigmoidSigmoid.forward_lstm_94/while/lstm_cell/split:output:0*
T0*
_output_shapes

:
)forward_lstm_94/while/lstm_cell/Sigmoid_1Sigmoid.forward_lstm_94/while/lstm_cell/split:output:1*
T0*
_output_shapes

:Ї
#forward_lstm_94/while/lstm_cell/mulMul-forward_lstm_94/while/lstm_cell/Sigmoid_1:y:0#forward_lstm_94_while_placeholder_3*
T0*
_output_shapes

:
$forward_lstm_94/while/lstm_cell/ReluRelu.forward_lstm_94/while/lstm_cell/split:output:2*
T0*
_output_shapes

:Ж
%forward_lstm_94/while/lstm_cell/mul_1Mul+forward_lstm_94/while/lstm_cell/Sigmoid:y:02forward_lstm_94/while/lstm_cell/Relu:activations:0*
T0*
_output_shapes

:Ћ
%forward_lstm_94/while/lstm_cell/add_1AddV2'forward_lstm_94/while/lstm_cell/mul:z:0)forward_lstm_94/while/lstm_cell/mul_1:z:0*
T0*
_output_shapes

:
)forward_lstm_94/while/lstm_cell/Sigmoid_2Sigmoid.forward_lstm_94/while/lstm_cell/split:output:3*
T0*
_output_shapes

:
&forward_lstm_94/while/lstm_cell/Relu_1Relu)forward_lstm_94/while/lstm_cell/add_1:z:0*
T0*
_output_shapes

:К
%forward_lstm_94/while/lstm_cell/mul_2Mul-forward_lstm_94/while/lstm_cell/Sigmoid_2:y:04forward_lstm_94/while/lstm_cell/Relu_1:activations:0*
T0*
_output_shapes

:
:forward_lstm_94/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem#forward_lstm_94_while_placeholder_1!forward_lstm_94_while_placeholder)forward_lstm_94/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшв]
forward_lstm_94/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
forward_lstm_94/while/addAddV2!forward_lstm_94_while_placeholder$forward_lstm_94/while/add/y:output:0*
T0*
_output_shapes
: _
forward_lstm_94/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Ї
forward_lstm_94/while/add_1AddV28forward_lstm_94_while_forward_lstm_94_while_loop_counter&forward_lstm_94/while/add_1/y:output:0*
T0*
_output_shapes
: 
forward_lstm_94/while/IdentityIdentityforward_lstm_94/while/add_1:z:0^forward_lstm_94/while/NoOp*
T0*
_output_shapes
: Њ
 forward_lstm_94/while/Identity_1Identity>forward_lstm_94_while_forward_lstm_94_while_maximum_iterations^forward_lstm_94/while/NoOp*
T0*
_output_shapes
: 
 forward_lstm_94/while/Identity_2Identityforward_lstm_94/while/add:z:0^forward_lstm_94/while/NoOp*
T0*
_output_shapes
: Ж
 forward_lstm_94/while/Identity_3IdentityJforward_lstm_94/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^forward_lstm_94/while/NoOp*
T0*
_output_shapes
: 
 forward_lstm_94/while/Identity_4Identity)forward_lstm_94/while/lstm_cell/mul_2:z:0^forward_lstm_94/while/NoOp*
T0*
_output_shapes

:
 forward_lstm_94/while/Identity_5Identity)forward_lstm_94/while/lstm_cell/add_1:z:0^forward_lstm_94/while/NoOp*
T0*
_output_shapes

:у
forward_lstm_94/while/NoOpNoOp7^forward_lstm_94/while/lstm_cell/BiasAdd/ReadVariableOp6^forward_lstm_94/while/lstm_cell/MatMul/ReadVariableOp8^forward_lstm_94/while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "p
5forward_lstm_94_while_forward_lstm_94_strided_slice_17forward_lstm_94_while_forward_lstm_94_strided_slice_1_0"I
forward_lstm_94_while_identity'forward_lstm_94/while/Identity:output:0"M
 forward_lstm_94_while_identity_1)forward_lstm_94/while/Identity_1:output:0"M
 forward_lstm_94_while_identity_2)forward_lstm_94/while/Identity_2:output:0"M
 forward_lstm_94_while_identity_3)forward_lstm_94/while/Identity_3:output:0"M
 forward_lstm_94_while_identity_4)forward_lstm_94/while/Identity_4:output:0"M
 forward_lstm_94_while_identity_5)forward_lstm_94/while/Identity_5:output:0"
?forward_lstm_94_while_lstm_cell_biasadd_readvariableop_resourceAforward_lstm_94_while_lstm_cell_biasadd_readvariableop_resource_0"
@forward_lstm_94_while_lstm_cell_matmul_1_readvariableop_resourceBforward_lstm_94_while_lstm_cell_matmul_1_readvariableop_resource_0"
>forward_lstm_94_while_lstm_cell_matmul_readvariableop_resource@forward_lstm_94_while_lstm_cell_matmul_readvariableop_resource_0"ш
qforward_lstm_94_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_94_tensorarrayunstack_tensorlistfromtensorsforward_lstm_94_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_94_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : ::: : : : : 2p
6forward_lstm_94/while/lstm_cell/BiasAdd/ReadVariableOp6forward_lstm_94/while/lstm_cell/BiasAdd/ReadVariableOp2n
5forward_lstm_94/while/lstm_cell/MatMul/ReadVariableOp5forward_lstm_94/while/lstm_cell/MatMul/ReadVariableOp2r
7forward_lstm_94/while/lstm_cell/MatMul_1/ReadVariableOp7forward_lstm_94/while/lstm_cell/MatMul_1/ReadVariableOp:Z V

_output_shapes
: 
<
_user_specified_name$"forward_lstm_94/while/loop_counter:`\

_output_shapes
: 
B
_user_specified_name*(forward_lstm_94/while/maximum_iterations:
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
_user_specified_name!forward_lstm_94/strided_slice_1:ok

_output_shapes
: 
Q
_user_specified_name97forward_lstm_94/TensorArrayUnstack/TensorListFromTensor:($
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
Ћ

G__inference_lstm_cell_layer_call_and_return_conditional_losses_56048618

inputs
states_0
states_10
matmul_readvariableop_resource: 2
 matmul_1_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity

identity_1

identity_2ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ж
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:џџџџџџџџџV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:џџџџџџџџџU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:џџџџџџџџџN
ReluRelusplit:output:2*
T0*'
_output_shapes
:џџџџџџџџџ_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:џџџџџџџџџK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџm
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
states_0:QM
'
_output_shapes
:џџџџџџџџџ
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
Ѓ

G__inference_lstm_cell_layer_call_and_return_conditional_losses_56043432

inputs

states
states_10
matmul_readvariableop_resource: 2
 matmul_1_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity

identity_1

identity_2ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ж
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:џџџџџџџџџV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:џџџџџџџџџU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:џџџџџџџџџN
ReluRelusplit:output:2*
T0*'
_output_shapes
:џџџџџџџџџ_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:џџџџџџџџџK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџm
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_namestates:OK
'
_output_shapes
:џџџџџџџџџ
 
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
Ь	
Э
while_cond_56048032
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_16
2while_while_cond_56048032___redundant_placeholder06
2while_while_cond_56048032___redundant_placeholder16
2while_while_cond_56048032___redundant_placeholder26
2while_while_cond_56048032___redundant_placeholder3
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
@: : : : :џџџџџџџџџ:џџџџџџџџџ: :::::J F
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
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
ш8
Б
while_body_56044589
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
/while_lstm_cell_biasadd_readvariableop_resource: Ђ&while/lstm_cell/BiasAdd/ReadVariableOpЂ%while/lstm_cell/MatMul/ReadVariableOpЂ'while/lstm_cell/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџџџџџЏ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
element_dtype0
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0Г
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ 
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ц
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_splitt
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџv
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџn
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџv
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџk
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџТ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџv
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџЃ

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
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : 2P
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
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:GC
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
Ћ

G__inference_lstm_cell_layer_call_and_return_conditional_losses_56048716

inputs
states_0
states_10
matmul_readvariableop_resource: 2
 matmul_1_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity

identity_1

identity_2ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ж
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:џџџџџџџџџV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:џџџџџџџџџU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:џџџџџџџџџN
ReluRelusplit:output:2*
T0*'
_output_shapes
:џџџџџџџџџ_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:џџџџџџџџџK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџm
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
states_0:QM
'
_output_shapes
:џџџџџџџџџ
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
ш
r
H__inference_lambda_103_layer_call_and_return_conditional_losses_56045204

inputs
inputs_1
identity
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
П

N__inference_bidirectional_94_layer_call_and_return_conditional_losses_56046519
inputs_0J
8forward_lstm_94_lstm_cell_matmul_readvariableop_resource: L
:forward_lstm_94_lstm_cell_matmul_1_readvariableop_resource: G
9forward_lstm_94_lstm_cell_biasadd_readvariableop_resource: K
9backward_lstm_94_lstm_cell_matmul_readvariableop_resource: M
;backward_lstm_94_lstm_cell_matmul_1_readvariableop_resource: H
:backward_lstm_94_lstm_cell_biasadd_readvariableop_resource: 
identityЂ1backward_lstm_94/lstm_cell/BiasAdd/ReadVariableOpЂ0backward_lstm_94/lstm_cell/MatMul/ReadVariableOpЂ2backward_lstm_94/lstm_cell/MatMul_1/ReadVariableOpЂbackward_lstm_94/whileЂ0forward_lstm_94/lstm_cell/BiasAdd/ReadVariableOpЂ/forward_lstm_94/lstm_cell/MatMul/ReadVariableOpЂ1forward_lstm_94/lstm_cell/MatMul_1/ReadVariableOpЂforward_lstm_94/while[
forward_lstm_94/ShapeShapeinputs_0*
T0*
_output_shapes
::эЯm
#forward_lstm_94/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%forward_lstm_94/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%forward_lstm_94/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ё
forward_lstm_94/strided_sliceStridedSliceforward_lstm_94/Shape:output:0,forward_lstm_94/strided_slice/stack:output:0.forward_lstm_94/strided_slice/stack_1:output:0.forward_lstm_94/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
forward_lstm_94/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Ѓ
forward_lstm_94/zeros/packedPack&forward_lstm_94/strided_slice:output:0'forward_lstm_94/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:`
forward_lstm_94/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
forward_lstm_94/zerosFill%forward_lstm_94/zeros/packed:output:0$forward_lstm_94/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџb
 forward_lstm_94/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Ї
forward_lstm_94/zeros_1/packedPack&forward_lstm_94/strided_slice:output:0)forward_lstm_94/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:b
forward_lstm_94/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ђ
forward_lstm_94/zeros_1Fill'forward_lstm_94/zeros_1/packed:output:0&forward_lstm_94/zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџs
forward_lstm_94/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ё
forward_lstm_94/transpose	Transposeinputs_0'forward_lstm_94/transpose/perm:output:0*
T0*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџr
forward_lstm_94/Shape_1Shapeforward_lstm_94/transpose:y:0*
T0*
_output_shapes
::эЯo
%forward_lstm_94/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_94/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'forward_lstm_94/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ћ
forward_lstm_94/strided_slice_1StridedSlice forward_lstm_94/Shape_1:output:0.forward_lstm_94/strided_slice_1/stack:output:00forward_lstm_94/strided_slice_1/stack_1:output:00forward_lstm_94/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
+forward_lstm_94/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџф
forward_lstm_94/TensorArrayV2TensorListReserve4forward_lstm_94/TensorArrayV2/element_shape:output:0(forward_lstm_94/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
Eforward_lstm_94/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџџџџџ
7forward_lstm_94/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorforward_lstm_94/transpose:y:0Nforward_lstm_94/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвo
%forward_lstm_94/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_94/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'forward_lstm_94/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Т
forward_lstm_94/strided_slice_2StridedSliceforward_lstm_94/transpose:y:0.forward_lstm_94/strided_slice_2/stack:output:00forward_lstm_94/strided_slice_2/stack_1:output:00forward_lstm_94/strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
shrink_axis_maskЈ
/forward_lstm_94/lstm_cell/MatMul/ReadVariableOpReadVariableOp8forward_lstm_94_lstm_cell_matmul_readvariableop_resource*
_output_shapes

: *
dtype0П
 forward_lstm_94/lstm_cell/MatMulMatMul(forward_lstm_94/strided_slice_2:output:07forward_lstm_94/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ Ќ
1forward_lstm_94/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp:forward_lstm_94_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0Й
"forward_lstm_94/lstm_cell/MatMul_1MatMulforward_lstm_94/zeros:output:09forward_lstm_94/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ В
forward_lstm_94/lstm_cell/addAddV2*forward_lstm_94/lstm_cell/MatMul:product:0,forward_lstm_94/lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ І
0forward_lstm_94/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp9forward_lstm_94_lstm_cell_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Л
!forward_lstm_94/lstm_cell/BiasAddBiasAdd!forward_lstm_94/lstm_cell/add:z:08forward_lstm_94/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ k
)forward_lstm_94/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
forward_lstm_94/lstm_cell/splitSplit2forward_lstm_94/lstm_cell/split/split_dim:output:0*forward_lstm_94/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_split
!forward_lstm_94/lstm_cell/SigmoidSigmoid(forward_lstm_94/lstm_cell/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
#forward_lstm_94/lstm_cell/Sigmoid_1Sigmoid(forward_lstm_94/lstm_cell/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџЁ
forward_lstm_94/lstm_cell/mulMul'forward_lstm_94/lstm_cell/Sigmoid_1:y:0 forward_lstm_94/zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
forward_lstm_94/lstm_cell/ReluRelu(forward_lstm_94/lstm_cell/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ­
forward_lstm_94/lstm_cell/mul_1Mul%forward_lstm_94/lstm_cell/Sigmoid:y:0,forward_lstm_94/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџЂ
forward_lstm_94/lstm_cell/add_1AddV2!forward_lstm_94/lstm_cell/mul:z:0#forward_lstm_94/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
#forward_lstm_94/lstm_cell/Sigmoid_2Sigmoid(forward_lstm_94/lstm_cell/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ
 forward_lstm_94/lstm_cell/Relu_1Relu#forward_lstm_94/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџБ
forward_lstm_94/lstm_cell/mul_2Mul'forward_lstm_94/lstm_cell/Sigmoid_2:y:0.forward_lstm_94/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ~
-forward_lstm_94/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   ш
forward_lstm_94/TensorArrayV2_1TensorListReserve6forward_lstm_94/TensorArrayV2_1/element_shape:output:0(forward_lstm_94/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвV
forward_lstm_94/timeConst*
_output_shapes
: *
dtype0*
value	B : s
(forward_lstm_94/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџd
"forward_lstm_94/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Р
forward_lstm_94/whileWhile+forward_lstm_94/while/loop_counter:output:01forward_lstm_94/while/maximum_iterations:output:0forward_lstm_94/time:output:0(forward_lstm_94/TensorArrayV2_1:handle:0forward_lstm_94/zeros:output:0 forward_lstm_94/zeros_1:output:0(forward_lstm_94/strided_slice_1:output:0Gforward_lstm_94/TensorArrayUnstack/TensorListFromTensor:output_handle:08forward_lstm_94_lstm_cell_matmul_readvariableop_resource:forward_lstm_94_lstm_cell_matmul_1_readvariableop_resource9forward_lstm_94_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *%
_read_only_resource_inputs
	
*/
body'R%
#forward_lstm_94_while_body_56046290*/
cond'R%
#forward_lstm_94_while_cond_56046289*K
output_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *
parallel_iterations 
@forward_lstm_94/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   ћ
2forward_lstm_94/TensorArrayV2Stack/TensorListStackTensorListStackforward_lstm_94/while:output:3Iforward_lstm_94/TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*
element_dtype0x
%forward_lstm_94/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџq
'forward_lstm_94/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_94/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:з
forward_lstm_94/strided_slice_3StridedSlice;forward_lstm_94/TensorArrayV2Stack/TensorListStack:tensor:0.forward_lstm_94/strided_slice_3/stack:output:00forward_lstm_94/strided_slice_3/stack_1:output:00forward_lstm_94/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_masku
 forward_lstm_94/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Я
forward_lstm_94/transpose_1	Transpose;forward_lstm_94/TensorArrayV2Stack/TensorListStack:tensor:0)forward_lstm_94/transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџk
forward_lstm_94/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    \
backward_lstm_94/ShapeShapeinputs_0*
T0*
_output_shapes
::эЯn
$backward_lstm_94/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&backward_lstm_94/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&backward_lstm_94/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:І
backward_lstm_94/strided_sliceStridedSlicebackward_lstm_94/Shape:output:0-backward_lstm_94/strided_slice/stack:output:0/backward_lstm_94/strided_slice/stack_1:output:0/backward_lstm_94/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
backward_lstm_94/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :І
backward_lstm_94/zeros/packedPack'backward_lstm_94/strided_slice:output:0(backward_lstm_94/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:a
backward_lstm_94/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
backward_lstm_94/zerosFill&backward_lstm_94/zeros/packed:output:0%backward_lstm_94/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџc
!backward_lstm_94/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Њ
backward_lstm_94/zeros_1/packedPack'backward_lstm_94/strided_slice:output:0*backward_lstm_94/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:c
backward_lstm_94/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ѕ
backward_lstm_94/zeros_1Fill(backward_lstm_94/zeros_1/packed:output:0'backward_lstm_94/zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџt
backward_lstm_94/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ѓ
backward_lstm_94/transpose	Transposeinputs_0(backward_lstm_94/transpose/perm:output:0*
T0*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџt
backward_lstm_94/Shape_1Shapebackward_lstm_94/transpose:y:0*
T0*
_output_shapes
::эЯp
&backward_lstm_94/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_94/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(backward_lstm_94/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:А
 backward_lstm_94/strided_slice_1StridedSlice!backward_lstm_94/Shape_1:output:0/backward_lstm_94/strided_slice_1/stack:output:01backward_lstm_94/strided_slice_1/stack_1:output:01backward_lstm_94/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskw
,backward_lstm_94/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџч
backward_lstm_94/TensorArrayV2TensorListReserve5backward_lstm_94/TensorArrayV2/element_shape:output:0)backward_lstm_94/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвi
backward_lstm_94/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: Й
backward_lstm_94/ReverseV2	ReverseV2backward_lstm_94/transpose:y:0(backward_lstm_94/ReverseV2/axis:output:0*
T0*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
Fbackward_lstm_94/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџџџџџ
8backward_lstm_94/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#backward_lstm_94/ReverseV2:output:0Obackward_lstm_94/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвp
&backward_lstm_94/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_94/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(backward_lstm_94/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ч
 backward_lstm_94/strided_slice_2StridedSlicebackward_lstm_94/transpose:y:0/backward_lstm_94/strided_slice_2/stack:output:01backward_lstm_94/strided_slice_2/stack_1:output:01backward_lstm_94/strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
shrink_axis_maskЊ
0backward_lstm_94/lstm_cell/MatMul/ReadVariableOpReadVariableOp9backward_lstm_94_lstm_cell_matmul_readvariableop_resource*
_output_shapes

: *
dtype0Т
!backward_lstm_94/lstm_cell/MatMulMatMul)backward_lstm_94/strided_slice_2:output:08backward_lstm_94/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ Ў
2backward_lstm_94/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp;backward_lstm_94_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0М
#backward_lstm_94/lstm_cell/MatMul_1MatMulbackward_lstm_94/zeros:output:0:backward_lstm_94/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ Е
backward_lstm_94/lstm_cell/addAddV2+backward_lstm_94/lstm_cell/MatMul:product:0-backward_lstm_94/lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ Ј
1backward_lstm_94/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp:backward_lstm_94_lstm_cell_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0О
"backward_lstm_94/lstm_cell/BiasAddBiasAdd"backward_lstm_94/lstm_cell/add:z:09backward_lstm_94/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ l
*backward_lstm_94/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
 backward_lstm_94/lstm_cell/splitSplit3backward_lstm_94/lstm_cell/split/split_dim:output:0+backward_lstm_94/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_split
"backward_lstm_94/lstm_cell/SigmoidSigmoid)backward_lstm_94/lstm_cell/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
$backward_lstm_94/lstm_cell/Sigmoid_1Sigmoid)backward_lstm_94/lstm_cell/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџЄ
backward_lstm_94/lstm_cell/mulMul(backward_lstm_94/lstm_cell/Sigmoid_1:y:0!backward_lstm_94/zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
backward_lstm_94/lstm_cell/ReluRelu)backward_lstm_94/lstm_cell/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџА
 backward_lstm_94/lstm_cell/mul_1Mul&backward_lstm_94/lstm_cell/Sigmoid:y:0-backward_lstm_94/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџЅ
 backward_lstm_94/lstm_cell/add_1AddV2"backward_lstm_94/lstm_cell/mul:z:0$backward_lstm_94/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
$backward_lstm_94/lstm_cell/Sigmoid_2Sigmoid)backward_lstm_94/lstm_cell/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ
!backward_lstm_94/lstm_cell/Relu_1Relu$backward_lstm_94/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџД
 backward_lstm_94/lstm_cell/mul_2Mul(backward_lstm_94/lstm_cell/Sigmoid_2:y:0/backward_lstm_94/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
.backward_lstm_94/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   ы
 backward_lstm_94/TensorArrayV2_1TensorListReserve7backward_lstm_94/TensorArrayV2_1/element_shape:output:0)backward_lstm_94/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвW
backward_lstm_94/timeConst*
_output_shapes
: *
dtype0*
value	B : t
)backward_lstm_94/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџe
#backward_lstm_94/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ю
backward_lstm_94/whileWhile,backward_lstm_94/while/loop_counter:output:02backward_lstm_94/while/maximum_iterations:output:0backward_lstm_94/time:output:0)backward_lstm_94/TensorArrayV2_1:handle:0backward_lstm_94/zeros:output:0!backward_lstm_94/zeros_1:output:0)backward_lstm_94/strided_slice_1:output:0Hbackward_lstm_94/TensorArrayUnstack/TensorListFromTensor:output_handle:09backward_lstm_94_lstm_cell_matmul_readvariableop_resource;backward_lstm_94_lstm_cell_matmul_1_readvariableop_resource:backward_lstm_94_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *%
_read_only_resource_inputs
	
*0
body(R&
$backward_lstm_94_while_body_56046431*0
cond(R&
$backward_lstm_94_while_cond_56046430*K
output_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *
parallel_iterations 
Abackward_lstm_94/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   ў
3backward_lstm_94/TensorArrayV2Stack/TensorListStackTensorListStackbackward_lstm_94/while:output:3Jbackward_lstm_94/TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*
element_dtype0y
&backward_lstm_94/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџr
(backward_lstm_94/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_94/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:м
 backward_lstm_94/strided_slice_3StridedSlice<backward_lstm_94/TensorArrayV2Stack/TensorListStack:tensor:0/backward_lstm_94/strided_slice_3/stack:output:01backward_lstm_94/strided_slice_3/stack_1:output:01backward_lstm_94/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_maskv
!backward_lstm_94/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          в
backward_lstm_94/transpose_1	Transpose<backward_lstm_94/TensorArrayV2Stack/TensorListStack:tensor:0*backward_lstm_94/transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџl
backward_lstm_94/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    X
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:
	ReverseV2	ReverseV2 backward_lstm_94/transpose_1:y:0ReverseV2/axis:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Ѕ
concatConcatV2forward_lstm_94/transpose_1:y:0ReverseV2:output:0concat/axis:output:0*
N*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџk
IdentityIdentityconcat:output:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
NoOpNoOp2^backward_lstm_94/lstm_cell/BiasAdd/ReadVariableOp1^backward_lstm_94/lstm_cell/MatMul/ReadVariableOp3^backward_lstm_94/lstm_cell/MatMul_1/ReadVariableOp^backward_lstm_94/while1^forward_lstm_94/lstm_cell/BiasAdd/ReadVariableOp0^forward_lstm_94/lstm_cell/MatMul/ReadVariableOp2^forward_lstm_94/lstm_cell/MatMul_1/ReadVariableOp^forward_lstm_94/while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:'џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : : : 2f
1backward_lstm_94/lstm_cell/BiasAdd/ReadVariableOp1backward_lstm_94/lstm_cell/BiasAdd/ReadVariableOp2d
0backward_lstm_94/lstm_cell/MatMul/ReadVariableOp0backward_lstm_94/lstm_cell/MatMul/ReadVariableOp2h
2backward_lstm_94/lstm_cell/MatMul_1/ReadVariableOp2backward_lstm_94/lstm_cell/MatMul_1/ReadVariableOp20
backward_lstm_94/whilebackward_lstm_94/while2d
0forward_lstm_94/lstm_cell/BiasAdd/ReadVariableOp0forward_lstm_94/lstm_cell/BiasAdd/ReadVariableOp2b
/forward_lstm_94/lstm_cell/MatMul/ReadVariableOp/forward_lstm_94/lstm_cell/MatMul/ReadVariableOp2f
1forward_lstm_94/lstm_cell/MatMul_1/ReadVariableOp1forward_lstm_94/lstm_cell/MatMul_1/ReadVariableOp2.
forward_lstm_94/whileforward_lstm_94/while:g c
=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
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
Љr
з
Dtopk_bilstm_moe_bidirectional_94_forward_lstm_94_while_body_56042828~
ztopk_bilstm_moe_bidirectional_94_forward_lstm_94_while_topk_bilstm_moe_bidirectional_94_forward_lstm_94_while_loop_counter
topk_bilstm_moe_bidirectional_94_forward_lstm_94_while_topk_bilstm_moe_bidirectional_94_forward_lstm_94_while_maximum_iterationsF
Btopk_bilstm_moe_bidirectional_94_forward_lstm_94_while_placeholderH
Dtopk_bilstm_moe_bidirectional_94_forward_lstm_94_while_placeholder_1H
Dtopk_bilstm_moe_bidirectional_94_forward_lstm_94_while_placeholder_2H
Dtopk_bilstm_moe_bidirectional_94_forward_lstm_94_while_placeholder_3}
ytopk_bilstm_moe_bidirectional_94_forward_lstm_94_while_topk_bilstm_moe_bidirectional_94_forward_lstm_94_strided_slice_1_0К
Еtopk_bilstm_moe_bidirectional_94_forward_lstm_94_while_tensorarrayv2read_tensorlistgetitem_topk_bilstm_moe_bidirectional_94_forward_lstm_94_tensorarrayunstack_tensorlistfromtensor_0s
atopk_bilstm_moe_bidirectional_94_forward_lstm_94_while_lstm_cell_matmul_readvariableop_resource_0: u
ctopk_bilstm_moe_bidirectional_94_forward_lstm_94_while_lstm_cell_matmul_1_readvariableop_resource_0: p
btopk_bilstm_moe_bidirectional_94_forward_lstm_94_while_lstm_cell_biasadd_readvariableop_resource_0: C
?topk_bilstm_moe_bidirectional_94_forward_lstm_94_while_identityE
Atopk_bilstm_moe_bidirectional_94_forward_lstm_94_while_identity_1E
Atopk_bilstm_moe_bidirectional_94_forward_lstm_94_while_identity_2E
Atopk_bilstm_moe_bidirectional_94_forward_lstm_94_while_identity_3E
Atopk_bilstm_moe_bidirectional_94_forward_lstm_94_while_identity_4E
Atopk_bilstm_moe_bidirectional_94_forward_lstm_94_while_identity_5{
wtopk_bilstm_moe_bidirectional_94_forward_lstm_94_while_topk_bilstm_moe_bidirectional_94_forward_lstm_94_strided_slice_1И
Гtopk_bilstm_moe_bidirectional_94_forward_lstm_94_while_tensorarrayv2read_tensorlistgetitem_topk_bilstm_moe_bidirectional_94_forward_lstm_94_tensorarrayunstack_tensorlistfromtensorq
_topk_bilstm_moe_bidirectional_94_forward_lstm_94_while_lstm_cell_matmul_readvariableop_resource: s
atopk_bilstm_moe_bidirectional_94_forward_lstm_94_while_lstm_cell_matmul_1_readvariableop_resource: n
`topk_bilstm_moe_bidirectional_94_forward_lstm_94_while_lstm_cell_biasadd_readvariableop_resource: ЂWtopk_bilstm_moe/bidirectional_94/forward_lstm_94/while/lstm_cell/BiasAdd/ReadVariableOpЂVtopk_bilstm_moe/bidirectional_94/forward_lstm_94/while/lstm_cell/MatMul/ReadVariableOpЂXtopk_bilstm_moe/bidirectional_94/forward_lstm_94/while/lstm_cell/MatMul_1/ReadVariableOpЙ
htopk_bilstm_moe/bidirectional_94/forward_lstm_94/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      
Ztopk_bilstm_moe/bidirectional_94/forward_lstm_94/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemЕtopk_bilstm_moe_bidirectional_94_forward_lstm_94_while_tensorarrayv2read_tensorlistgetitem_topk_bilstm_moe_bidirectional_94_forward_lstm_94_tensorarrayunstack_tensorlistfromtensor_0Btopk_bilstm_moe_bidirectional_94_forward_lstm_94_while_placeholderqtopk_bilstm_moe/bidirectional_94/forward_lstm_94/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

:*
element_dtype0ј
Vtopk_bilstm_moe/bidirectional_94/forward_lstm_94/while/lstm_cell/MatMul/ReadVariableOpReadVariableOpatopk_bilstm_moe_bidirectional_94_forward_lstm_94_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0Н
Gtopk_bilstm_moe/bidirectional_94/forward_lstm_94/while/lstm_cell/MatMulMatMulatopk_bilstm_moe/bidirectional_94/forward_lstm_94/while/TensorArrayV2Read/TensorListGetItem:item:0^topk_bilstm_moe/bidirectional_94/forward_lstm_94/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

: ќ
Xtopk_bilstm_moe/bidirectional_94/forward_lstm_94/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpctopk_bilstm_moe_bidirectional_94_forward_lstm_94_while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0Є
Itopk_bilstm_moe/bidirectional_94/forward_lstm_94/while/lstm_cell/MatMul_1MatMulDtopk_bilstm_moe_bidirectional_94_forward_lstm_94_while_placeholder_2`topk_bilstm_moe/bidirectional_94/forward_lstm_94/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes

: 
Dtopk_bilstm_moe/bidirectional_94/forward_lstm_94/while/lstm_cell/addAddV2Qtopk_bilstm_moe/bidirectional_94/forward_lstm_94/while/lstm_cell/MatMul:product:0Stopk_bilstm_moe/bidirectional_94/forward_lstm_94/while/lstm_cell/MatMul_1:product:0*
T0*
_output_shapes

: і
Wtopk_bilstm_moe/bidirectional_94/forward_lstm_94/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOpbtopk_bilstm_moe_bidirectional_94_forward_lstm_94_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0Ї
Htopk_bilstm_moe/bidirectional_94/forward_lstm_94/while/lstm_cell/BiasAddBiasAddHtopk_bilstm_moe/bidirectional_94/forward_lstm_94/while/lstm_cell/add:z:0_topk_bilstm_moe/bidirectional_94/forward_lstm_94/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

: 
Ptopk_bilstm_moe/bidirectional_94/forward_lstm_94/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :е
Ftopk_bilstm_moe/bidirectional_94/forward_lstm_94/while/lstm_cell/splitSplitYtopk_bilstm_moe/bidirectional_94/forward_lstm_94/while/lstm_cell/split/split_dim:output:0Qtopk_bilstm_moe/bidirectional_94/forward_lstm_94/while/lstm_cell/BiasAdd:output:0*
T0*<
_output_shapes*
(::::*
	num_splitЭ
Htopk_bilstm_moe/bidirectional_94/forward_lstm_94/while/lstm_cell/SigmoidSigmoidOtopk_bilstm_moe/bidirectional_94/forward_lstm_94/while/lstm_cell/split:output:0*
T0*
_output_shapes

:Я
Jtopk_bilstm_moe/bidirectional_94/forward_lstm_94/while/lstm_cell/Sigmoid_1SigmoidOtopk_bilstm_moe/bidirectional_94/forward_lstm_94/while/lstm_cell/split:output:1*
T0*
_output_shapes

:
Dtopk_bilstm_moe/bidirectional_94/forward_lstm_94/while/lstm_cell/mulMulNtopk_bilstm_moe/bidirectional_94/forward_lstm_94/while/lstm_cell/Sigmoid_1:y:0Dtopk_bilstm_moe_bidirectional_94_forward_lstm_94_while_placeholder_3*
T0*
_output_shapes

:Ч
Etopk_bilstm_moe/bidirectional_94/forward_lstm_94/while/lstm_cell/ReluReluOtopk_bilstm_moe/bidirectional_94/forward_lstm_94/while/lstm_cell/split:output:2*
T0*
_output_shapes

:
Ftopk_bilstm_moe/bidirectional_94/forward_lstm_94/while/lstm_cell/mul_1MulLtopk_bilstm_moe/bidirectional_94/forward_lstm_94/while/lstm_cell/Sigmoid:y:0Stopk_bilstm_moe/bidirectional_94/forward_lstm_94/while/lstm_cell/Relu:activations:0*
T0*
_output_shapes

:
Ftopk_bilstm_moe/bidirectional_94/forward_lstm_94/while/lstm_cell/add_1AddV2Htopk_bilstm_moe/bidirectional_94/forward_lstm_94/while/lstm_cell/mul:z:0Jtopk_bilstm_moe/bidirectional_94/forward_lstm_94/while/lstm_cell/mul_1:z:0*
T0*
_output_shapes

:Я
Jtopk_bilstm_moe/bidirectional_94/forward_lstm_94/while/lstm_cell/Sigmoid_2SigmoidOtopk_bilstm_moe/bidirectional_94/forward_lstm_94/while/lstm_cell/split:output:3*
T0*
_output_shapes

:Ф
Gtopk_bilstm_moe/bidirectional_94/forward_lstm_94/while/lstm_cell/Relu_1ReluJtopk_bilstm_moe/bidirectional_94/forward_lstm_94/while/lstm_cell/add_1:z:0*
T0*
_output_shapes

:
Ftopk_bilstm_moe/bidirectional_94/forward_lstm_94/while/lstm_cell/mul_2MulNtopk_bilstm_moe/bidirectional_94/forward_lstm_94/while/lstm_cell/Sigmoid_2:y:0Utopk_bilstm_moe/bidirectional_94/forward_lstm_94/while/lstm_cell/Relu_1:activations:0*
T0*
_output_shapes

:
[topk_bilstm_moe/bidirectional_94/forward_lstm_94/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemDtopk_bilstm_moe_bidirectional_94_forward_lstm_94_while_placeholder_1Btopk_bilstm_moe_bidirectional_94_forward_lstm_94_while_placeholderJtopk_bilstm_moe/bidirectional_94/forward_lstm_94/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшв~
<topk_bilstm_moe/bidirectional_94/forward_lstm_94/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :я
:topk_bilstm_moe/bidirectional_94/forward_lstm_94/while/addAddV2Btopk_bilstm_moe_bidirectional_94_forward_lstm_94_while_placeholderEtopk_bilstm_moe/bidirectional_94/forward_lstm_94/while/add/y:output:0*
T0*
_output_shapes
: 
>topk_bilstm_moe/bidirectional_94/forward_lstm_94/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Ћ
<topk_bilstm_moe/bidirectional_94/forward_lstm_94/while/add_1AddV2ztopk_bilstm_moe_bidirectional_94_forward_lstm_94_while_topk_bilstm_moe_bidirectional_94_forward_lstm_94_while_loop_counterGtopk_bilstm_moe/bidirectional_94/forward_lstm_94/while/add_1/y:output:0*
T0*
_output_shapes
: ь
?topk_bilstm_moe/bidirectional_94/forward_lstm_94/while/IdentityIdentity@topk_bilstm_moe/bidirectional_94/forward_lstm_94/while/add_1:z:0<^topk_bilstm_moe/bidirectional_94/forward_lstm_94/while/NoOp*
T0*
_output_shapes
: Џ
Atopk_bilstm_moe/bidirectional_94/forward_lstm_94/while/Identity_1Identitytopk_bilstm_moe_bidirectional_94_forward_lstm_94_while_topk_bilstm_moe_bidirectional_94_forward_lstm_94_while_maximum_iterations<^topk_bilstm_moe/bidirectional_94/forward_lstm_94/while/NoOp*
T0*
_output_shapes
: ь
Atopk_bilstm_moe/bidirectional_94/forward_lstm_94/while/Identity_2Identity>topk_bilstm_moe/bidirectional_94/forward_lstm_94/while/add:z:0<^topk_bilstm_moe/bidirectional_94/forward_lstm_94/while/NoOp*
T0*
_output_shapes
: 
Atopk_bilstm_moe/bidirectional_94/forward_lstm_94/while/Identity_3Identityktopk_bilstm_moe/bidirectional_94/forward_lstm_94/while/TensorArrayV2Write/TensorListSetItem:output_handle:0<^topk_bilstm_moe/bidirectional_94/forward_lstm_94/while/NoOp*
T0*
_output_shapes
: 
Atopk_bilstm_moe/bidirectional_94/forward_lstm_94/while/Identity_4IdentityJtopk_bilstm_moe/bidirectional_94/forward_lstm_94/while/lstm_cell/mul_2:z:0<^topk_bilstm_moe/bidirectional_94/forward_lstm_94/while/NoOp*
T0*
_output_shapes

:
Atopk_bilstm_moe/bidirectional_94/forward_lstm_94/while/Identity_5IdentityJtopk_bilstm_moe/bidirectional_94/forward_lstm_94/while/lstm_cell/add_1:z:0<^topk_bilstm_moe/bidirectional_94/forward_lstm_94/while/NoOp*
T0*
_output_shapes

:ч
;topk_bilstm_moe/bidirectional_94/forward_lstm_94/while/NoOpNoOpX^topk_bilstm_moe/bidirectional_94/forward_lstm_94/while/lstm_cell/BiasAdd/ReadVariableOpW^topk_bilstm_moe/bidirectional_94/forward_lstm_94/while/lstm_cell/MatMul/ReadVariableOpY^topk_bilstm_moe/bidirectional_94/forward_lstm_94/while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "
?topk_bilstm_moe_bidirectional_94_forward_lstm_94_while_identityHtopk_bilstm_moe/bidirectional_94/forward_lstm_94/while/Identity:output:0"
Atopk_bilstm_moe_bidirectional_94_forward_lstm_94_while_identity_1Jtopk_bilstm_moe/bidirectional_94/forward_lstm_94/while/Identity_1:output:0"
Atopk_bilstm_moe_bidirectional_94_forward_lstm_94_while_identity_2Jtopk_bilstm_moe/bidirectional_94/forward_lstm_94/while/Identity_2:output:0"
Atopk_bilstm_moe_bidirectional_94_forward_lstm_94_while_identity_3Jtopk_bilstm_moe/bidirectional_94/forward_lstm_94/while/Identity_3:output:0"
Atopk_bilstm_moe_bidirectional_94_forward_lstm_94_while_identity_4Jtopk_bilstm_moe/bidirectional_94/forward_lstm_94/while/Identity_4:output:0"
Atopk_bilstm_moe_bidirectional_94_forward_lstm_94_while_identity_5Jtopk_bilstm_moe/bidirectional_94/forward_lstm_94/while/Identity_5:output:0"Ц
`topk_bilstm_moe_bidirectional_94_forward_lstm_94_while_lstm_cell_biasadd_readvariableop_resourcebtopk_bilstm_moe_bidirectional_94_forward_lstm_94_while_lstm_cell_biasadd_readvariableop_resource_0"Ш
atopk_bilstm_moe_bidirectional_94_forward_lstm_94_while_lstm_cell_matmul_1_readvariableop_resourcectopk_bilstm_moe_bidirectional_94_forward_lstm_94_while_lstm_cell_matmul_1_readvariableop_resource_0"Ф
_topk_bilstm_moe_bidirectional_94_forward_lstm_94_while_lstm_cell_matmul_readvariableop_resourceatopk_bilstm_moe_bidirectional_94_forward_lstm_94_while_lstm_cell_matmul_readvariableop_resource_0"ю
Гtopk_bilstm_moe_bidirectional_94_forward_lstm_94_while_tensorarrayv2read_tensorlistgetitem_topk_bilstm_moe_bidirectional_94_forward_lstm_94_tensorarrayunstack_tensorlistfromtensorЕtopk_bilstm_moe_bidirectional_94_forward_lstm_94_while_tensorarrayv2read_tensorlistgetitem_topk_bilstm_moe_bidirectional_94_forward_lstm_94_tensorarrayunstack_tensorlistfromtensor_0"є
wtopk_bilstm_moe_bidirectional_94_forward_lstm_94_while_topk_bilstm_moe_bidirectional_94_forward_lstm_94_strided_slice_1ytopk_bilstm_moe_bidirectional_94_forward_lstm_94_while_topk_bilstm_moe_bidirectional_94_forward_lstm_94_strided_slice_1_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : ::: : : : : 2В
Wtopk_bilstm_moe/bidirectional_94/forward_lstm_94/while/lstm_cell/BiasAdd/ReadVariableOpWtopk_bilstm_moe/bidirectional_94/forward_lstm_94/while/lstm_cell/BiasAdd/ReadVariableOp2А
Vtopk_bilstm_moe/bidirectional_94/forward_lstm_94/while/lstm_cell/MatMul/ReadVariableOpVtopk_bilstm_moe/bidirectional_94/forward_lstm_94/while/lstm_cell/MatMul/ReadVariableOp2Д
Xtopk_bilstm_moe/bidirectional_94/forward_lstm_94/while/lstm_cell/MatMul_1/ReadVariableOpXtopk_bilstm_moe/bidirectional_94/forward_lstm_94/while/lstm_cell/MatMul_1/ReadVariableOp:{ w

_output_shapes
: 
]
_user_specified_nameECtopk_bilstm_moe/bidirectional_94/forward_lstm_94/while/loop_counter:}

_output_shapes
: 
c
_user_specified_nameKItopk_bilstm_moe/bidirectional_94/forward_lstm_94/while/maximum_iterations:
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
_user_specified_nameB@topk_bilstm_moe/bidirectional_94/forward_lstm_94/strided_slice_1:

_output_shapes
: 
r
_user_specified_nameZXtopk_bilstm_moe/bidirectional_94/forward_lstm_94/TensorArrayUnstack/TensorListFromTensor:($
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
Ѓ

G__inference_lstm_cell_layer_call_and_return_conditional_losses_56043927

inputs

states
states_10
matmul_readvariableop_resource: 2
 matmul_1_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity

identity_1

identity_2ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ж
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:џџџџџџџџџV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:џџџџџџџџџU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:џџџџџџџџџN
ReluRelusplit:output:2*
T0*'
_output_shapes
:џџџџџџџџџ_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:џџџџџџџџџK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџm
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_namestates:OK
'
_output_shapes
:џџџџџџџџџ
 
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
Ь	
Э
while_cond_56048467
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_16
2while_while_cond_56048467___redundant_placeholder06
2while_while_cond_56048467___redundant_placeholder16
2while_while_cond_56048467___redundant_placeholder26
2while_while_cond_56048467___redundant_placeholder3
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
@: : : : :џџџџџџџџџ:џџџџџџџџџ: :::::J F
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
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
Ь	
Э
while_cond_56047414
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_16
2while_while_cond_56047414___redundant_placeholder06
2while_while_cond_56047414___redundant_placeholder16
2while_while_cond_56047414___redundant_placeholder26
2while_while_cond_56047414___redundant_placeholder3
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
@: : : : :џџџџџџџџџ:џџџџџџџџџ: :::::J F
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
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
П

N__inference_bidirectional_94_layer_call_and_return_conditional_losses_56046231
inputs_0J
8forward_lstm_94_lstm_cell_matmul_readvariableop_resource: L
:forward_lstm_94_lstm_cell_matmul_1_readvariableop_resource: G
9forward_lstm_94_lstm_cell_biasadd_readvariableop_resource: K
9backward_lstm_94_lstm_cell_matmul_readvariableop_resource: M
;backward_lstm_94_lstm_cell_matmul_1_readvariableop_resource: H
:backward_lstm_94_lstm_cell_biasadd_readvariableop_resource: 
identityЂ1backward_lstm_94/lstm_cell/BiasAdd/ReadVariableOpЂ0backward_lstm_94/lstm_cell/MatMul/ReadVariableOpЂ2backward_lstm_94/lstm_cell/MatMul_1/ReadVariableOpЂbackward_lstm_94/whileЂ0forward_lstm_94/lstm_cell/BiasAdd/ReadVariableOpЂ/forward_lstm_94/lstm_cell/MatMul/ReadVariableOpЂ1forward_lstm_94/lstm_cell/MatMul_1/ReadVariableOpЂforward_lstm_94/while[
forward_lstm_94/ShapeShapeinputs_0*
T0*
_output_shapes
::эЯm
#forward_lstm_94/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%forward_lstm_94/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%forward_lstm_94/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ё
forward_lstm_94/strided_sliceStridedSliceforward_lstm_94/Shape:output:0,forward_lstm_94/strided_slice/stack:output:0.forward_lstm_94/strided_slice/stack_1:output:0.forward_lstm_94/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
forward_lstm_94/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Ѓ
forward_lstm_94/zeros/packedPack&forward_lstm_94/strided_slice:output:0'forward_lstm_94/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:`
forward_lstm_94/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
forward_lstm_94/zerosFill%forward_lstm_94/zeros/packed:output:0$forward_lstm_94/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџb
 forward_lstm_94/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Ї
forward_lstm_94/zeros_1/packedPack&forward_lstm_94/strided_slice:output:0)forward_lstm_94/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:b
forward_lstm_94/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ђ
forward_lstm_94/zeros_1Fill'forward_lstm_94/zeros_1/packed:output:0&forward_lstm_94/zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџs
forward_lstm_94/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ё
forward_lstm_94/transpose	Transposeinputs_0'forward_lstm_94/transpose/perm:output:0*
T0*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџr
forward_lstm_94/Shape_1Shapeforward_lstm_94/transpose:y:0*
T0*
_output_shapes
::эЯo
%forward_lstm_94/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_94/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'forward_lstm_94/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ћ
forward_lstm_94/strided_slice_1StridedSlice forward_lstm_94/Shape_1:output:0.forward_lstm_94/strided_slice_1/stack:output:00forward_lstm_94/strided_slice_1/stack_1:output:00forward_lstm_94/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
+forward_lstm_94/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџф
forward_lstm_94/TensorArrayV2TensorListReserve4forward_lstm_94/TensorArrayV2/element_shape:output:0(forward_lstm_94/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
Eforward_lstm_94/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџџџџџ
7forward_lstm_94/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorforward_lstm_94/transpose:y:0Nforward_lstm_94/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвo
%forward_lstm_94/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_94/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'forward_lstm_94/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Т
forward_lstm_94/strided_slice_2StridedSliceforward_lstm_94/transpose:y:0.forward_lstm_94/strided_slice_2/stack:output:00forward_lstm_94/strided_slice_2/stack_1:output:00forward_lstm_94/strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
shrink_axis_maskЈ
/forward_lstm_94/lstm_cell/MatMul/ReadVariableOpReadVariableOp8forward_lstm_94_lstm_cell_matmul_readvariableop_resource*
_output_shapes

: *
dtype0П
 forward_lstm_94/lstm_cell/MatMulMatMul(forward_lstm_94/strided_slice_2:output:07forward_lstm_94/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ Ќ
1forward_lstm_94/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp:forward_lstm_94_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0Й
"forward_lstm_94/lstm_cell/MatMul_1MatMulforward_lstm_94/zeros:output:09forward_lstm_94/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ В
forward_lstm_94/lstm_cell/addAddV2*forward_lstm_94/lstm_cell/MatMul:product:0,forward_lstm_94/lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ І
0forward_lstm_94/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp9forward_lstm_94_lstm_cell_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Л
!forward_lstm_94/lstm_cell/BiasAddBiasAdd!forward_lstm_94/lstm_cell/add:z:08forward_lstm_94/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ k
)forward_lstm_94/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
forward_lstm_94/lstm_cell/splitSplit2forward_lstm_94/lstm_cell/split/split_dim:output:0*forward_lstm_94/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_split
!forward_lstm_94/lstm_cell/SigmoidSigmoid(forward_lstm_94/lstm_cell/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
#forward_lstm_94/lstm_cell/Sigmoid_1Sigmoid(forward_lstm_94/lstm_cell/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџЁ
forward_lstm_94/lstm_cell/mulMul'forward_lstm_94/lstm_cell/Sigmoid_1:y:0 forward_lstm_94/zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
forward_lstm_94/lstm_cell/ReluRelu(forward_lstm_94/lstm_cell/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ­
forward_lstm_94/lstm_cell/mul_1Mul%forward_lstm_94/lstm_cell/Sigmoid:y:0,forward_lstm_94/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџЂ
forward_lstm_94/lstm_cell/add_1AddV2!forward_lstm_94/lstm_cell/mul:z:0#forward_lstm_94/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
#forward_lstm_94/lstm_cell/Sigmoid_2Sigmoid(forward_lstm_94/lstm_cell/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ
 forward_lstm_94/lstm_cell/Relu_1Relu#forward_lstm_94/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџБ
forward_lstm_94/lstm_cell/mul_2Mul'forward_lstm_94/lstm_cell/Sigmoid_2:y:0.forward_lstm_94/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ~
-forward_lstm_94/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   ш
forward_lstm_94/TensorArrayV2_1TensorListReserve6forward_lstm_94/TensorArrayV2_1/element_shape:output:0(forward_lstm_94/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвV
forward_lstm_94/timeConst*
_output_shapes
: *
dtype0*
value	B : s
(forward_lstm_94/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџd
"forward_lstm_94/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Р
forward_lstm_94/whileWhile+forward_lstm_94/while/loop_counter:output:01forward_lstm_94/while/maximum_iterations:output:0forward_lstm_94/time:output:0(forward_lstm_94/TensorArrayV2_1:handle:0forward_lstm_94/zeros:output:0 forward_lstm_94/zeros_1:output:0(forward_lstm_94/strided_slice_1:output:0Gforward_lstm_94/TensorArrayUnstack/TensorListFromTensor:output_handle:08forward_lstm_94_lstm_cell_matmul_readvariableop_resource:forward_lstm_94_lstm_cell_matmul_1_readvariableop_resource9forward_lstm_94_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *%
_read_only_resource_inputs
	
*/
body'R%
#forward_lstm_94_while_body_56046002*/
cond'R%
#forward_lstm_94_while_cond_56046001*K
output_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *
parallel_iterations 
@forward_lstm_94/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   ћ
2forward_lstm_94/TensorArrayV2Stack/TensorListStackTensorListStackforward_lstm_94/while:output:3Iforward_lstm_94/TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*
element_dtype0x
%forward_lstm_94/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџq
'forward_lstm_94/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_94/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:з
forward_lstm_94/strided_slice_3StridedSlice;forward_lstm_94/TensorArrayV2Stack/TensorListStack:tensor:0.forward_lstm_94/strided_slice_3/stack:output:00forward_lstm_94/strided_slice_3/stack_1:output:00forward_lstm_94/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_masku
 forward_lstm_94/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Я
forward_lstm_94/transpose_1	Transpose;forward_lstm_94/TensorArrayV2Stack/TensorListStack:tensor:0)forward_lstm_94/transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџk
forward_lstm_94/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    \
backward_lstm_94/ShapeShapeinputs_0*
T0*
_output_shapes
::эЯn
$backward_lstm_94/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&backward_lstm_94/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&backward_lstm_94/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:І
backward_lstm_94/strided_sliceStridedSlicebackward_lstm_94/Shape:output:0-backward_lstm_94/strided_slice/stack:output:0/backward_lstm_94/strided_slice/stack_1:output:0/backward_lstm_94/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
backward_lstm_94/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :І
backward_lstm_94/zeros/packedPack'backward_lstm_94/strided_slice:output:0(backward_lstm_94/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:a
backward_lstm_94/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
backward_lstm_94/zerosFill&backward_lstm_94/zeros/packed:output:0%backward_lstm_94/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџc
!backward_lstm_94/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Њ
backward_lstm_94/zeros_1/packedPack'backward_lstm_94/strided_slice:output:0*backward_lstm_94/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:c
backward_lstm_94/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ѕ
backward_lstm_94/zeros_1Fill(backward_lstm_94/zeros_1/packed:output:0'backward_lstm_94/zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџt
backward_lstm_94/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ѓ
backward_lstm_94/transpose	Transposeinputs_0(backward_lstm_94/transpose/perm:output:0*
T0*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџt
backward_lstm_94/Shape_1Shapebackward_lstm_94/transpose:y:0*
T0*
_output_shapes
::эЯp
&backward_lstm_94/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_94/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(backward_lstm_94/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:А
 backward_lstm_94/strided_slice_1StridedSlice!backward_lstm_94/Shape_1:output:0/backward_lstm_94/strided_slice_1/stack:output:01backward_lstm_94/strided_slice_1/stack_1:output:01backward_lstm_94/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskw
,backward_lstm_94/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџч
backward_lstm_94/TensorArrayV2TensorListReserve5backward_lstm_94/TensorArrayV2/element_shape:output:0)backward_lstm_94/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвi
backward_lstm_94/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: Й
backward_lstm_94/ReverseV2	ReverseV2backward_lstm_94/transpose:y:0(backward_lstm_94/ReverseV2/axis:output:0*
T0*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
Fbackward_lstm_94/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџџџџџ
8backward_lstm_94/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#backward_lstm_94/ReverseV2:output:0Obackward_lstm_94/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвp
&backward_lstm_94/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_94/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(backward_lstm_94/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ч
 backward_lstm_94/strided_slice_2StridedSlicebackward_lstm_94/transpose:y:0/backward_lstm_94/strided_slice_2/stack:output:01backward_lstm_94/strided_slice_2/stack_1:output:01backward_lstm_94/strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
shrink_axis_maskЊ
0backward_lstm_94/lstm_cell/MatMul/ReadVariableOpReadVariableOp9backward_lstm_94_lstm_cell_matmul_readvariableop_resource*
_output_shapes

: *
dtype0Т
!backward_lstm_94/lstm_cell/MatMulMatMul)backward_lstm_94/strided_slice_2:output:08backward_lstm_94/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ Ў
2backward_lstm_94/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp;backward_lstm_94_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0М
#backward_lstm_94/lstm_cell/MatMul_1MatMulbackward_lstm_94/zeros:output:0:backward_lstm_94/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ Е
backward_lstm_94/lstm_cell/addAddV2+backward_lstm_94/lstm_cell/MatMul:product:0-backward_lstm_94/lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ Ј
1backward_lstm_94/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp:backward_lstm_94_lstm_cell_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0О
"backward_lstm_94/lstm_cell/BiasAddBiasAdd"backward_lstm_94/lstm_cell/add:z:09backward_lstm_94/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ l
*backward_lstm_94/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
 backward_lstm_94/lstm_cell/splitSplit3backward_lstm_94/lstm_cell/split/split_dim:output:0+backward_lstm_94/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_split
"backward_lstm_94/lstm_cell/SigmoidSigmoid)backward_lstm_94/lstm_cell/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
$backward_lstm_94/lstm_cell/Sigmoid_1Sigmoid)backward_lstm_94/lstm_cell/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџЄ
backward_lstm_94/lstm_cell/mulMul(backward_lstm_94/lstm_cell/Sigmoid_1:y:0!backward_lstm_94/zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
backward_lstm_94/lstm_cell/ReluRelu)backward_lstm_94/lstm_cell/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџА
 backward_lstm_94/lstm_cell/mul_1Mul&backward_lstm_94/lstm_cell/Sigmoid:y:0-backward_lstm_94/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџЅ
 backward_lstm_94/lstm_cell/add_1AddV2"backward_lstm_94/lstm_cell/mul:z:0$backward_lstm_94/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
$backward_lstm_94/lstm_cell/Sigmoid_2Sigmoid)backward_lstm_94/lstm_cell/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ
!backward_lstm_94/lstm_cell/Relu_1Relu$backward_lstm_94/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџД
 backward_lstm_94/lstm_cell/mul_2Mul(backward_lstm_94/lstm_cell/Sigmoid_2:y:0/backward_lstm_94/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
.backward_lstm_94/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   ы
 backward_lstm_94/TensorArrayV2_1TensorListReserve7backward_lstm_94/TensorArrayV2_1/element_shape:output:0)backward_lstm_94/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвW
backward_lstm_94/timeConst*
_output_shapes
: *
dtype0*
value	B : t
)backward_lstm_94/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџe
#backward_lstm_94/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ю
backward_lstm_94/whileWhile,backward_lstm_94/while/loop_counter:output:02backward_lstm_94/while/maximum_iterations:output:0backward_lstm_94/time:output:0)backward_lstm_94/TensorArrayV2_1:handle:0backward_lstm_94/zeros:output:0!backward_lstm_94/zeros_1:output:0)backward_lstm_94/strided_slice_1:output:0Hbackward_lstm_94/TensorArrayUnstack/TensorListFromTensor:output_handle:09backward_lstm_94_lstm_cell_matmul_readvariableop_resource;backward_lstm_94_lstm_cell_matmul_1_readvariableop_resource:backward_lstm_94_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *%
_read_only_resource_inputs
	
*0
body(R&
$backward_lstm_94_while_body_56046143*0
cond(R&
$backward_lstm_94_while_cond_56046142*K
output_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *
parallel_iterations 
Abackward_lstm_94/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   ў
3backward_lstm_94/TensorArrayV2Stack/TensorListStackTensorListStackbackward_lstm_94/while:output:3Jbackward_lstm_94/TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*
element_dtype0y
&backward_lstm_94/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџr
(backward_lstm_94/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_94/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:м
 backward_lstm_94/strided_slice_3StridedSlice<backward_lstm_94/TensorArrayV2Stack/TensorListStack:tensor:0/backward_lstm_94/strided_slice_3/stack:output:01backward_lstm_94/strided_slice_3/stack_1:output:01backward_lstm_94/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_maskv
!backward_lstm_94/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          в
backward_lstm_94/transpose_1	Transpose<backward_lstm_94/TensorArrayV2Stack/TensorListStack:tensor:0*backward_lstm_94/transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџl
backward_lstm_94/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    X
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:
	ReverseV2	ReverseV2 backward_lstm_94/transpose_1:y:0ReverseV2/axis:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Ѕ
concatConcatV2forward_lstm_94/transpose_1:y:0ReverseV2:output:0concat/axis:output:0*
N*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџk
IdentityIdentityconcat:output:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
NoOpNoOp2^backward_lstm_94/lstm_cell/BiasAdd/ReadVariableOp1^backward_lstm_94/lstm_cell/MatMul/ReadVariableOp3^backward_lstm_94/lstm_cell/MatMul_1/ReadVariableOp^backward_lstm_94/while1^forward_lstm_94/lstm_cell/BiasAdd/ReadVariableOp0^forward_lstm_94/lstm_cell/MatMul/ReadVariableOp2^forward_lstm_94/lstm_cell/MatMul_1/ReadVariableOp^forward_lstm_94/while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:'џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : : : 2f
1backward_lstm_94/lstm_cell/BiasAdd/ReadVariableOp1backward_lstm_94/lstm_cell/BiasAdd/ReadVariableOp2d
0backward_lstm_94/lstm_cell/MatMul/ReadVariableOp0backward_lstm_94/lstm_cell/MatMul/ReadVariableOp2h
2backward_lstm_94/lstm_cell/MatMul_1/ReadVariableOp2backward_lstm_94/lstm_cell/MatMul_1/ReadVariableOp20
backward_lstm_94/whilebackward_lstm_94/while2d
0forward_lstm_94/lstm_cell/BiasAdd/ReadVariableOp0forward_lstm_94/lstm_cell/BiasAdd/ReadVariableOp2b
/forward_lstm_94/lstm_cell/MatMul/ReadVariableOp/forward_lstm_94/lstm_cell/MatMul/ReadVariableOp2f
1forward_lstm_94/lstm_cell/MatMul_1/ReadVariableOp1forward_lstm_94/lstm_cell/MatMul_1/ReadVariableOp2.
forward_lstm_94/whileforward_lstm_94/while:g c
=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
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
ЈJ

M__inference_forward_lstm_94_layer_call_and_return_conditional_losses_56047785

inputs:
(lstm_cell_matmul_readvariableop_resource: <
*lstm_cell_matmul_1_readvariableop_resource: 7
)lstm_cell_biasadd_readvariableop_resource: 
identityЂ lstm_cell/BiasAdd/ReadVariableOpЂlstm_cell/MatMul/ReadVariableOpЂ!lstm_cell/MatMul_1/ReadVariableOpЂwhileI
ShapeShapeinputs*
T0*
_output_shapes
::эЯ]
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
valueB:б
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
:џџџџџџџџџR
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
:џџџџџџџџџc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
	transpose	Transposeinputstranspose/perm:output:0*
T0*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџR
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::эЯ_
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџџџџџр
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
valueB:ђ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
shrink_axis_mask
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes

: *
dtype0
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ 
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ [
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :д
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџj
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџq
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџb
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ}
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџr
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџj
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ_
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : р
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_56047701*
condR
while_cond_56047700*K
output_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:e a
=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
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
Ђ	
Н
3__inference_backward_lstm_94_layer_call_fn_56047961

inputs
unknown: 
	unknown_0: 
	unknown_1: 
identityЂStatefulPartitionedCall§
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_backward_lstm_94_layer_call_and_return_conditional_losses_56044363|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:e a
=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs:($
"
_user_specified_name
56047953:($
"
_user_specified_name
56047955:($
"
_user_specified_name
56047957
ф
ў
G__inference_dense_613_layer_call_and_return_conditional_losses_56043099

inputs3
!tensordot_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂTensordot/ReadVariableOpz
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
::эЯY
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : Л
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
value	B : П
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
value	B : 
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
:џџџџџџџџџ
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ї
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџT
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:џџџџџџџџџe
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџV
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
я
t
H__inference_lambda_104_layer_call_and_return_conditional_losses_56045875
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
е
Х
N__inference_bidirectional_94_layer_call_and_return_conditional_losses_56044376

inputs*
forward_lstm_94_56044212: *
forward_lstm_94_56044214: &
forward_lstm_94_56044216: +
backward_lstm_94_56044364: +
backward_lstm_94_56044366: '
backward_lstm_94_56044368: 
identityЂ(backward_lstm_94/StatefulPartitionedCallЂ'forward_lstm_94/StatefulPartitionedCallЛ
'forward_lstm_94/StatefulPartitionedCallStatefulPartitionedCallinputsforward_lstm_94_56044212forward_lstm_94_56044214forward_lstm_94_56044216*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_forward_lstm_94_layer_call_and_return_conditional_losses_56044211Р
(backward_lstm_94/StatefulPartitionedCallStatefulPartitionedCallinputsbackward_lstm_94_56044364backward_lstm_94_56044366backward_lstm_94_56044368*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_backward_lstm_94_layer_call_and_return_conditional_losses_56044363X
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:Ё
	ReverseV2	ReverseV21backward_lstm_94/StatefulPartitionedCall:output:0ReverseV2/axis:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Ж
concatConcatV20forward_lstm_94/StatefulPartitionedCall:output:0ReverseV2:output:0concat/axis:output:0*
N*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџk
IdentityIdentityconcat:output:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџw
NoOpNoOp)^backward_lstm_94/StatefulPartitionedCall(^forward_lstm_94/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:'џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : : : 2T
(backward_lstm_94/StatefulPartitionedCall(backward_lstm_94/StatefulPartitionedCall2R
'forward_lstm_94/StatefulPartitionedCall'forward_lstm_94/StatefulPartitionedCall:e a
=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs:($
"
_user_specified_name
56044212:($
"
_user_specified_name
56044214:($
"
_user_specified_name
56044216:($
"
_user_specified_name
56044364:($
"
_user_specified_name
56044366:($
"
_user_specified_name
56044368
­
Ї
1__inference_sequential_424_layer_call_fn_56043124
dense_613_input
unknown:
	unknown_0:
identityЂStatefulPartitionedCallю
StatefulPartitionedCallStatefulPartitionedCalldense_613_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_sequential_424_layer_call_and_return_conditional_losses_56043106s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
+
_output_shapes
:џџџџџџџџџ
)
_user_specified_namedense_613_input:($
"
_user_specified_name
56043118:($
"
_user_specified_name
56043120
Ћ

G__inference_lstm_cell_layer_call_and_return_conditional_losses_56048748

inputs
states_0
states_10
matmul_readvariableop_resource: 2
 matmul_1_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity

identity_1

identity_2ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ж
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:џџџџџџџџџV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:џџџџџџџџџU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:џџџџџџџџџN
ReluRelusplit:output:2*
T0*'
_output_shapes
:џџџџџџџџџ_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:џџџџџџџџџK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџm
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
states_0:QM
'
_output_shapes
:џџџџџџџџџ
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


g
H__inference_dropout_94_layer_call_and_return_conditional_losses_56047117

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?_
dropout/MulMulinputsdropout/Const:output:0*
T0*"
_output_shapes
:b
dropout/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         
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
 *ЭЬL>Ё
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*"
_output_shapes
:T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    
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


,__inference_dense_623_layer_call_fn_56047241

inputs
unknown:
	unknown_0:
identityЂStatefulPartitionedCallр
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dense_623_layer_call_and_return_conditional_losses_56043251s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:($
"
_user_specified_name
56047235:($
"
_user_specified_name
56047237
ф$
ж
while_body_56043794
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0,
while_lstm_cell_56043818_0: ,
while_lstm_cell_56043820_0: (
while_lstm_cell_56043822_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor*
while_lstm_cell_56043818: *
while_lstm_cell_56043820: &
while_lstm_cell_56043822: Ђ'while/lstm_cell/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0Ќ
'while/lstm_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_56043818_0while_lstm_cell_56043820_0while_lstm_cell_56043822_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_lstm_cell_layer_call_and_return_conditional_losses_56043780й
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder0while/lstm_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:щшвM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity0while/lstm_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
while/Identity_5Identity0while/lstm_cell/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџR

while/NoOpNoOp(^while/lstm_cell/StatefulPartitionedCall*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"6
while_lstm_cell_56043818while_lstm_cell_56043818_0"6
while_lstm_cell_56043820while_lstm_cell_56043820_0"6
while_lstm_cell_56043822while_lstm_cell_56043822_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : 2R
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
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:GC
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
56043818:(	$
"
_user_specified_name
56043820:(
$
"
_user_specified_name
56043822
­
Ї
1__inference_sequential_434_layer_call_fn_56043285
dense_623_input
unknown:
	unknown_0:
identityЂStatefulPartitionedCallю
StatefulPartitionedCallStatefulPartitionedCalldense_623_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_sequential_434_layer_call_and_return_conditional_losses_56043267s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
+
_output_shapes
:џџџџџџџџџ
)
_user_specified_namedense_623_input:($
"
_user_specified_name
56043279:($
"
_user_specified_name
56043281
І
ў
G__inference_dense_612_layer_call_and_return_conditional_losses_56045803

inputs3
!tensordot_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂTensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:*
dtype0h
Tensordot/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"     p
Tensordot/ReshapeReshapeinputs Tensordot/Reshape/shape:output:0*
T0*
_output_shapes
:	
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*
_output_shapes
:	d
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
Р
ђ
,__inference_lstm_cell_layer_call_fn_56048586

inputs
states_0
states_1
unknown: 
	unknown_0: 
	unknown_1: 
identity

identity_1

identity_2ЂStatefulPartitionedCallЇ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_lstm_cell_layer_call_and_return_conditional_losses_56043577o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:џџџџџџџџџq

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
states_0:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
states_1:($
"
_user_specified_name
56048574:($
"
_user_specified_name
56048576:($
"
_user_specified_name
56048578
Ц
С
Etopk_bilstm_moe_bidirectional_94_backward_lstm_94_while_cond_56042968
|topk_bilstm_moe_bidirectional_94_backward_lstm_94_while_topk_bilstm_moe_bidirectional_94_backward_lstm_94_while_loop_counter
topk_bilstm_moe_bidirectional_94_backward_lstm_94_while_topk_bilstm_moe_bidirectional_94_backward_lstm_94_while_maximum_iterationsG
Ctopk_bilstm_moe_bidirectional_94_backward_lstm_94_while_placeholderI
Etopk_bilstm_moe_bidirectional_94_backward_lstm_94_while_placeholder_1I
Etopk_bilstm_moe_bidirectional_94_backward_lstm_94_while_placeholder_2I
Etopk_bilstm_moe_bidirectional_94_backward_lstm_94_while_placeholder_3
~topk_bilstm_moe_bidirectional_94_backward_lstm_94_while_less_topk_bilstm_moe_bidirectional_94_backward_lstm_94_strided_slice_1
topk_bilstm_moe_bidirectional_94_backward_lstm_94_while_topk_bilstm_moe_bidirectional_94_backward_lstm_94_while_cond_56042968___redundant_placeholder0
topk_bilstm_moe_bidirectional_94_backward_lstm_94_while_topk_bilstm_moe_bidirectional_94_backward_lstm_94_while_cond_56042968___redundant_placeholder1
topk_bilstm_moe_bidirectional_94_backward_lstm_94_while_topk_bilstm_moe_bidirectional_94_backward_lstm_94_while_cond_56042968___redundant_placeholder2
topk_bilstm_moe_bidirectional_94_backward_lstm_94_while_topk_bilstm_moe_bidirectional_94_backward_lstm_94_while_cond_56042968___redundant_placeholder3D
@topk_bilstm_moe_bidirectional_94_backward_lstm_94_while_identity
Њ
<topk_bilstm_moe/bidirectional_94/backward_lstm_94/while/LessLessCtopk_bilstm_moe_bidirectional_94_backward_lstm_94_while_placeholder~topk_bilstm_moe_bidirectional_94_backward_lstm_94_while_less_topk_bilstm_moe_bidirectional_94_backward_lstm_94_strided_slice_1*
T0*
_output_shapes
: Џ
@topk_bilstm_moe/bidirectional_94/backward_lstm_94/while/IdentityIdentity@topk_bilstm_moe/bidirectional_94/backward_lstm_94/while/Less:z:0*
T0
*
_output_shapes
: "
@topk_bilstm_moe_bidirectional_94_backward_lstm_94_while_identityItopk_bilstm_moe/bidirectional_94/backward_lstm_94/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : ::: :::::| x

_output_shapes
: 
^
_user_specified_nameFDtopk_bilstm_moe/bidirectional_94/backward_lstm_94/while/loop_counter:~

_output_shapes
: 
d
_user_specified_nameLJtopk_bilstm_moe/bidirectional_94/backward_lstm_94/while/maximum_iterations:
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
_user_specified_nameCAtopk_bilstm_moe/bidirectional_94/backward_lstm_94/strided_slice_1:

_output_shapes
:
М:

N__inference_backward_lstm_94_layer_call_and_return_conditional_losses_56044010

inputs$
lstm_cell_56043928: $
lstm_cell_56043930:  
lstm_cell_56043932: 
identityЂ!lstm_cell/StatefulPartitionedCallЂwhileI
ShapeShapeinputs*
T0*
_output_shapes
::эЯ]
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
valueB:б
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
:џџџџџџџџџR
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
:џџџџџџџџџc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџR
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::эЯ_
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвX
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: }
	ReverseV2	ReverseV2transpose:y:0ReverseV2/axis:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   х
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensorReverseV2:output:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_maskю
!lstm_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_56043928lstm_cell_56043930lstm_cell_56043932*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_lstm_cell_layer_call_and_return_conditional_losses_56043927n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_56043928lstm_cell_56043930lstm_cell_56043932*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_56043941*
condR
while_cond_56043940*K
output_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџN
NoOpNoOp"^lstm_cell/StatefulPartitionedCall^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ: : : 2F
!lstm_cell/StatefulPartitionedCall!lstm_cell/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs:($
"
_user_specified_name
56043928:($
"
_user_specified_name
56043930:($
"
_user_specified_name
56043932
Ь	
Э
while_cond_56047557
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_16
2while_while_cond_56047557___redundant_placeholder06
2while_while_cond_56047557___redundant_placeholder16
2while_while_cond_56047557___redundant_placeholder26
2while_while_cond_56047557___redundant_placeholder3
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
@: : : : :џџџџџџџџџ:џџџџџџџџџ: :::::J F
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
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
Ї	
р
L__inference_sequential_434_layer_call_and_return_conditional_losses_56043267
dense_623_input$
dense_623_56043261: 
dense_623_56043263:
identityЂ!dense_623/StatefulPartitionedCall
!dense_623/StatefulPartitionedCallStatefulPartitionedCalldense_623_inputdense_623_56043261dense_623_56043263*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dense_623_layer_call_and_return_conditional_losses_56043251}
IdentityIdentity*dense_623/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџF
NoOpNoOp"^dense_623/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ: : 2F
!dense_623/StatefulPartitionedCall!dense_623/StatefulPartitionedCall:\ X
+
_output_shapes
:џџџџџџџџџ
)
_user_specified_namedense_623_input:($
"
_user_specified_name
56043261:($
"
_user_specified_name
56043263
ш8
Б
while_body_56047844
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
/while_lstm_cell_biasadd_readvariableop_resource: Ђ&while/lstm_cell/BiasAdd/ReadVariableOpЂ%while/lstm_cell/MatMul/ReadVariableOpЂ'while/lstm_cell/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџџџџџЏ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
element_dtype0
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0Г
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ 
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ц
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_splitt
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџv
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџn
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџv
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџk
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџТ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџv
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџЃ

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
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : 2P
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
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:GC
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
ш8
Б
while_body_56044127
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
/while_lstm_cell_biasadd_readvariableop_resource: Ђ&while/lstm_cell/BiasAdd/ReadVariableOpЂ%while/lstm_cell/MatMul/ReadVariableOpЂ'while/lstm_cell/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџџџџџЏ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
element_dtype0
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0Г
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ 
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ц
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_splitt
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџv
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџn
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџv
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџk
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџТ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџv
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџЃ

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
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : 2P
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
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:GC
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
Ь	
Э
while_cond_56048322
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_16
2while_while_cond_56048322___redundant_placeholder06
2while_while_cond_56048322___redundant_placeholder16
2while_while_cond_56048322___redundant_placeholder26
2while_while_cond_56048322___redundant_placeholder3
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
@: : : : :џџџџџџџџџ:џџџџџџџџџ: :::::J F
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
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
І

3__inference_bidirectional_94_layer_call_fn_56045909
inputs_0
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: 
identityЂStatefulPartitionedCallІ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_bidirectional_94_layer_call_and_return_conditional_losses_56044686|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:'џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:g c
=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs_0:($
"
_user_specified_name
56045895:($
"
_user_specified_name
56045897:($
"
_user_specified_name
56045899:($
"
_user_specified_name
56045901:($
"
_user_specified_name
56045903:($
"
_user_specified_name
56045905
н8

M__inference_forward_lstm_94_layer_call_and_return_conditional_losses_56043660

inputs$
lstm_cell_56043578: $
lstm_cell_56043580:  
lstm_cell_56043582: 
identityЂ!lstm_cell/StatefulPartitionedCallЂwhileI
ShapeShapeinputs*
T0*
_output_shapes
::эЯ]
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
valueB:б
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
:џџџџџџџџџR
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
:џџџџџџџџџc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџR
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::эЯ_
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_maskю
!lstm_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_56043578lstm_cell_56043580lstm_cell_56043582*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_lstm_cell_layer_call_and_return_conditional_losses_56043577n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_56043578lstm_cell_56043580lstm_cell_56043582*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_56043591*
condR
while_cond_56043590*K
output_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџN
NoOpNoOp"^lstm_cell/StatefulPartitionedCall^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ: : : 2F
!lstm_cell/StatefulPartitionedCall!lstm_cell/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs:($
"
_user_specified_name
56043578:($
"
_user_specified_name
56043580:($
"
_user_specified_name
56043582
J

M__inference_forward_lstm_94_layer_call_and_return_conditional_losses_56047642
inputs_0:
(lstm_cell_matmul_readvariableop_resource: <
*lstm_cell_matmul_1_readvariableop_resource: 7
)lstm_cell_biasadd_readvariableop_resource: 
identityЂ lstm_cell/BiasAdd/ReadVariableOpЂlstm_cell/MatMul/ReadVariableOpЂ!lstm_cell/MatMul_1/ReadVariableOpЂwhileK
ShapeShapeinputs_0*
T0*
_output_shapes
::эЯ]
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
valueB:б
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
:џџџџџџџџџR
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
:џџџџџџџџџc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџR
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::эЯ_
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes

: *
dtype0
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ 
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ [
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :д
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџj
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџq
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџb
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ}
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџr
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџj
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ_
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : р
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_56047558*
condR
while_cond_56047557*K
output_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
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
я
t
H__inference_lambda_102_layer_call_and_return_conditional_losses_56045827
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
И
Ё
$backward_lstm_94_while_cond_56045038>
:backward_lstm_94_while_backward_lstm_94_while_loop_counterD
@backward_lstm_94_while_backward_lstm_94_while_maximum_iterations&
"backward_lstm_94_while_placeholder(
$backward_lstm_94_while_placeholder_1(
$backward_lstm_94_while_placeholder_2(
$backward_lstm_94_while_placeholder_3@
<backward_lstm_94_while_less_backward_lstm_94_strided_slice_1X
Tbackward_lstm_94_while_backward_lstm_94_while_cond_56045038___redundant_placeholder0X
Tbackward_lstm_94_while_backward_lstm_94_while_cond_56045038___redundant_placeholder1X
Tbackward_lstm_94_while_backward_lstm_94_while_cond_56045038___redundant_placeholder2X
Tbackward_lstm_94_while_backward_lstm_94_while_cond_56045038___redundant_placeholder3#
backward_lstm_94_while_identity
І
backward_lstm_94/while/LessLess"backward_lstm_94_while_placeholder<backward_lstm_94_while_less_backward_lstm_94_strided_slice_1*
T0*
_output_shapes
: m
backward_lstm_94/while/IdentityIdentitybackward_lstm_94/while/Less:z:0*
T0
*
_output_shapes
: "K
backward_lstm_94_while_identity(backward_lstm_94/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : ::: :::::[ W

_output_shapes
: 
=
_user_specified_name%#backward_lstm_94/while/loop_counter:a]

_output_shapes
: 
C
_user_specified_name+)backward_lstm_94/while/maximum_iterations:
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
_user_specified_name" backward_lstm_94/strided_slice_1:

_output_shapes
:
ЈJ

M__inference_forward_lstm_94_layer_call_and_return_conditional_losses_56044521

inputs:
(lstm_cell_matmul_readvariableop_resource: <
*lstm_cell_matmul_1_readvariableop_resource: 7
)lstm_cell_biasadd_readvariableop_resource: 
identityЂ lstm_cell/BiasAdd/ReadVariableOpЂlstm_cell/MatMul/ReadVariableOpЂ!lstm_cell/MatMul_1/ReadVariableOpЂwhileI
ShapeShapeinputs*
T0*
_output_shapes
::эЯ]
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
valueB:б
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
:џџџџџџџџџR
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
:џџџџџџџџџc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
	transpose	Transposeinputstranspose/perm:output:0*
T0*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџR
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::эЯ_
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџџџџџр
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
valueB:ђ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
shrink_axis_mask
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes

: *
dtype0
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ 
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ [
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :д
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџj
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџq
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџb
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ}
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџr
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџj
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ_
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : р
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_56044437*
condR
while_cond_56044436*K
output_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:e a
=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
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
J

M__inference_forward_lstm_94_layer_call_and_return_conditional_losses_56047499
inputs_0:
(lstm_cell_matmul_readvariableop_resource: <
*lstm_cell_matmul_1_readvariableop_resource: 7
)lstm_cell_biasadd_readvariableop_resource: 
identityЂ lstm_cell/BiasAdd/ReadVariableOpЂlstm_cell/MatMul/ReadVariableOpЂ!lstm_cell/MatMul_1/ReadVariableOpЂwhileK
ShapeShapeinputs_0*
T0*
_output_shapes
::эЯ]
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
valueB:б
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
:џџџџџџџџџR
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
:џџџџџџџџџc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџR
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::эЯ_
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes

: *
dtype0
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ 
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ [
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :д
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџj
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџq
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџb
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ}
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџr
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџj
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ_
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : р
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_56047415*
condR
while_cond_56047414*K
output_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
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

Y
-__inference_lambda_104_layer_call_fn_56045863
inputs_0
inputs_1
identityЛ
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
GPU 2J 8 *Q
fLRJ
H__inference_lambda_104_layer_call_and_return_conditional_losses_56045236[
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
ф
ў
G__inference_dense_628_layer_call_and_return_conditional_losses_56043327

inputs3
!tensordot_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂTensordot/ReadVariableOpz
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
::эЯY
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : Л
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
value	B : П
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
value	B : 
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
:џџџџџџџџџ
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ї
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџT
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:џџџџџџџџџe
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџV
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
ЈJ

M__inference_forward_lstm_94_layer_call_and_return_conditional_losses_56047928

inputs:
(lstm_cell_matmul_readvariableop_resource: <
*lstm_cell_matmul_1_readvariableop_resource: 7
)lstm_cell_biasadd_readvariableop_resource: 
identityЂ lstm_cell/BiasAdd/ReadVariableOpЂlstm_cell/MatMul/ReadVariableOpЂ!lstm_cell/MatMul_1/ReadVariableOpЂwhileI
ShapeShapeinputs*
T0*
_output_shapes
::эЯ]
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
valueB:б
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
:џџџџџџџџџR
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
:џџџџџџџџџc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
	transpose	Transposeinputstranspose/perm:output:0*
T0*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџR
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::эЯ_
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџџџџџр
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
valueB:ђ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
shrink_axis_mask
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes

: *
dtype0
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ 
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ [
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :д
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџj
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџq
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџb
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ}
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџr
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџj
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ_
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : р
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_56047844*
condR
while_cond_56047843*K
output_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:e a
=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
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
ыK

N__inference_backward_lstm_94_layer_call_and_return_conditional_losses_56048262
inputs_0:
(lstm_cell_matmul_readvariableop_resource: <
*lstm_cell_matmul_1_readvariableop_resource: 7
)lstm_cell_biasadd_readvariableop_resource: 
identityЂ lstm_cell/BiasAdd/ReadVariableOpЂlstm_cell/MatMul/ReadVariableOpЂ!lstm_cell/MatMul_1/ReadVariableOpЂwhileK
ShapeShapeinputs_0*
T0*
_output_shapes
::эЯ]
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
valueB:б
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
:џџџџџџџџџR
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
:џџџџџџџџџc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџR
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::эЯ_
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвX
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: }
	ReverseV2	ReverseV2transpose:y:0ReverseV2/axis:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   х
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensorReverseV2:output:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes

: *
dtype0
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ 
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ [
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :д
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџj
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџq
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџb
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ}
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџr
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџj
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ_
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : р
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_56048178*
condR
while_cond_56048177*K
output_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
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
ЖJ
Б
#forward_lstm_94_while_body_56046578<
8forward_lstm_94_while_forward_lstm_94_while_loop_counterB
>forward_lstm_94_while_forward_lstm_94_while_maximum_iterations%
!forward_lstm_94_while_placeholder'
#forward_lstm_94_while_placeholder_1'
#forward_lstm_94_while_placeholder_2'
#forward_lstm_94_while_placeholder_3;
7forward_lstm_94_while_forward_lstm_94_strided_slice_1_0w
sforward_lstm_94_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_94_tensorarrayunstack_tensorlistfromtensor_0R
@forward_lstm_94_while_lstm_cell_matmul_readvariableop_resource_0: T
Bforward_lstm_94_while_lstm_cell_matmul_1_readvariableop_resource_0: O
Aforward_lstm_94_while_lstm_cell_biasadd_readvariableop_resource_0: "
forward_lstm_94_while_identity$
 forward_lstm_94_while_identity_1$
 forward_lstm_94_while_identity_2$
 forward_lstm_94_while_identity_3$
 forward_lstm_94_while_identity_4$
 forward_lstm_94_while_identity_59
5forward_lstm_94_while_forward_lstm_94_strided_slice_1u
qforward_lstm_94_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_94_tensorarrayunstack_tensorlistfromtensorP
>forward_lstm_94_while_lstm_cell_matmul_readvariableop_resource: R
@forward_lstm_94_while_lstm_cell_matmul_1_readvariableop_resource: M
?forward_lstm_94_while_lstm_cell_biasadd_readvariableop_resource: Ђ6forward_lstm_94/while/lstm_cell/BiasAdd/ReadVariableOpЂ5forward_lstm_94/while/lstm_cell/MatMul/ReadVariableOpЂ7forward_lstm_94/while/lstm_cell/MatMul_1/ReadVariableOp
Gforward_lstm_94/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      э
9forward_lstm_94/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsforward_lstm_94_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_94_tensorarrayunstack_tensorlistfromtensor_0!forward_lstm_94_while_placeholderPforward_lstm_94/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

:*
element_dtype0Ж
5forward_lstm_94/while/lstm_cell/MatMul/ReadVariableOpReadVariableOp@forward_lstm_94_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0к
&forward_lstm_94/while/lstm_cell/MatMulMatMul@forward_lstm_94/while/TensorArrayV2Read/TensorListGetItem:item:0=forward_lstm_94/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

: К
7forward_lstm_94/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpBforward_lstm_94_while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0С
(forward_lstm_94/while/lstm_cell/MatMul_1MatMul#forward_lstm_94_while_placeholder_2?forward_lstm_94/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes

: Л
#forward_lstm_94/while/lstm_cell/addAddV20forward_lstm_94/while/lstm_cell/MatMul:product:02forward_lstm_94/while/lstm_cell/MatMul_1:product:0*
T0*
_output_shapes

: Д
6forward_lstm_94/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOpAforward_lstm_94_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0Ф
'forward_lstm_94/while/lstm_cell/BiasAddBiasAdd'forward_lstm_94/while/lstm_cell/add:z:0>forward_lstm_94/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

: q
/forward_lstm_94/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ђ
%forward_lstm_94/while/lstm_cell/splitSplit8forward_lstm_94/while/lstm_cell/split/split_dim:output:00forward_lstm_94/while/lstm_cell/BiasAdd:output:0*
T0*<
_output_shapes*
(::::*
	num_split
'forward_lstm_94/while/lstm_cell/SigmoidSigmoid.forward_lstm_94/while/lstm_cell/split:output:0*
T0*
_output_shapes

:
)forward_lstm_94/while/lstm_cell/Sigmoid_1Sigmoid.forward_lstm_94/while/lstm_cell/split:output:1*
T0*
_output_shapes

:Ї
#forward_lstm_94/while/lstm_cell/mulMul-forward_lstm_94/while/lstm_cell/Sigmoid_1:y:0#forward_lstm_94_while_placeholder_3*
T0*
_output_shapes

:
$forward_lstm_94/while/lstm_cell/ReluRelu.forward_lstm_94/while/lstm_cell/split:output:2*
T0*
_output_shapes

:Ж
%forward_lstm_94/while/lstm_cell/mul_1Mul+forward_lstm_94/while/lstm_cell/Sigmoid:y:02forward_lstm_94/while/lstm_cell/Relu:activations:0*
T0*
_output_shapes

:Ћ
%forward_lstm_94/while/lstm_cell/add_1AddV2'forward_lstm_94/while/lstm_cell/mul:z:0)forward_lstm_94/while/lstm_cell/mul_1:z:0*
T0*
_output_shapes

:
)forward_lstm_94/while/lstm_cell/Sigmoid_2Sigmoid.forward_lstm_94/while/lstm_cell/split:output:3*
T0*
_output_shapes

:
&forward_lstm_94/while/lstm_cell/Relu_1Relu)forward_lstm_94/while/lstm_cell/add_1:z:0*
T0*
_output_shapes

:К
%forward_lstm_94/while/lstm_cell/mul_2Mul-forward_lstm_94/while/lstm_cell/Sigmoid_2:y:04forward_lstm_94/while/lstm_cell/Relu_1:activations:0*
T0*
_output_shapes

:
:forward_lstm_94/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem#forward_lstm_94_while_placeholder_1!forward_lstm_94_while_placeholder)forward_lstm_94/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшв]
forward_lstm_94/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
forward_lstm_94/while/addAddV2!forward_lstm_94_while_placeholder$forward_lstm_94/while/add/y:output:0*
T0*
_output_shapes
: _
forward_lstm_94/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Ї
forward_lstm_94/while/add_1AddV28forward_lstm_94_while_forward_lstm_94_while_loop_counter&forward_lstm_94/while/add_1/y:output:0*
T0*
_output_shapes
: 
forward_lstm_94/while/IdentityIdentityforward_lstm_94/while/add_1:z:0^forward_lstm_94/while/NoOp*
T0*
_output_shapes
: Њ
 forward_lstm_94/while/Identity_1Identity>forward_lstm_94_while_forward_lstm_94_while_maximum_iterations^forward_lstm_94/while/NoOp*
T0*
_output_shapes
: 
 forward_lstm_94/while/Identity_2Identityforward_lstm_94/while/add:z:0^forward_lstm_94/while/NoOp*
T0*
_output_shapes
: Ж
 forward_lstm_94/while/Identity_3IdentityJforward_lstm_94/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^forward_lstm_94/while/NoOp*
T0*
_output_shapes
: 
 forward_lstm_94/while/Identity_4Identity)forward_lstm_94/while/lstm_cell/mul_2:z:0^forward_lstm_94/while/NoOp*
T0*
_output_shapes

:
 forward_lstm_94/while/Identity_5Identity)forward_lstm_94/while/lstm_cell/add_1:z:0^forward_lstm_94/while/NoOp*
T0*
_output_shapes

:у
forward_lstm_94/while/NoOpNoOp7^forward_lstm_94/while/lstm_cell/BiasAdd/ReadVariableOp6^forward_lstm_94/while/lstm_cell/MatMul/ReadVariableOp8^forward_lstm_94/while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "p
5forward_lstm_94_while_forward_lstm_94_strided_slice_17forward_lstm_94_while_forward_lstm_94_strided_slice_1_0"I
forward_lstm_94_while_identity'forward_lstm_94/while/Identity:output:0"M
 forward_lstm_94_while_identity_1)forward_lstm_94/while/Identity_1:output:0"M
 forward_lstm_94_while_identity_2)forward_lstm_94/while/Identity_2:output:0"M
 forward_lstm_94_while_identity_3)forward_lstm_94/while/Identity_3:output:0"M
 forward_lstm_94_while_identity_4)forward_lstm_94/while/Identity_4:output:0"M
 forward_lstm_94_while_identity_5)forward_lstm_94/while/Identity_5:output:0"
?forward_lstm_94_while_lstm_cell_biasadd_readvariableop_resourceAforward_lstm_94_while_lstm_cell_biasadd_readvariableop_resource_0"
@forward_lstm_94_while_lstm_cell_matmul_1_readvariableop_resourceBforward_lstm_94_while_lstm_cell_matmul_1_readvariableop_resource_0"
>forward_lstm_94_while_lstm_cell_matmul_readvariableop_resource@forward_lstm_94_while_lstm_cell_matmul_readvariableop_resource_0"ш
qforward_lstm_94_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_94_tensorarrayunstack_tensorlistfromtensorsforward_lstm_94_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_94_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : ::: : : : : 2p
6forward_lstm_94/while/lstm_cell/BiasAdd/ReadVariableOp6forward_lstm_94/while/lstm_cell/BiasAdd/ReadVariableOp2n
5forward_lstm_94/while/lstm_cell/MatMul/ReadVariableOp5forward_lstm_94/while/lstm_cell/MatMul/ReadVariableOp2r
7forward_lstm_94/while/lstm_cell/MatMul_1/ReadVariableOp7forward_lstm_94/while/lstm_cell/MatMul_1/ReadVariableOp:Z V

_output_shapes
: 
<
_user_specified_name$"forward_lstm_94/while/loop_counter:`\

_output_shapes
: 
B
_user_specified_name*(forward_lstm_94/while/maximum_iterations:
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
_user_specified_name!forward_lstm_94/strided_slice_1:ok

_output_shapes
: 
Q
_user_specified_name97forward_lstm_94/TensorArrayUnstack/TensorListFromTensor:($
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
И
Ё
$backward_lstm_94_while_cond_56047006>
:backward_lstm_94_while_backward_lstm_94_while_loop_counterD
@backward_lstm_94_while_backward_lstm_94_while_maximum_iterations&
"backward_lstm_94_while_placeholder(
$backward_lstm_94_while_placeholder_1(
$backward_lstm_94_while_placeholder_2(
$backward_lstm_94_while_placeholder_3@
<backward_lstm_94_while_less_backward_lstm_94_strided_slice_1X
Tbackward_lstm_94_while_backward_lstm_94_while_cond_56047006___redundant_placeholder0X
Tbackward_lstm_94_while_backward_lstm_94_while_cond_56047006___redundant_placeholder1X
Tbackward_lstm_94_while_backward_lstm_94_while_cond_56047006___redundant_placeholder2X
Tbackward_lstm_94_while_backward_lstm_94_while_cond_56047006___redundant_placeholder3#
backward_lstm_94_while_identity
І
backward_lstm_94/while/LessLess"backward_lstm_94_while_placeholder<backward_lstm_94_while_less_backward_lstm_94_strided_slice_1*
T0*
_output_shapes
: m
backward_lstm_94/while/IdentityIdentitybackward_lstm_94/while/Less:z:0*
T0
*
_output_shapes
: "K
backward_lstm_94_while_identity(backward_lstm_94/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : ::: :::::[ W

_output_shapes
: 
=
_user_specified_name%#backward_lstm_94/while/loop_counter:a]

_output_shapes
: 
C
_user_specified_name+)backward_lstm_94/while/maximum_iterations:
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
_user_specified_name" backward_lstm_94/strided_slice_1:

_output_shapes
:
Ї	
р
L__inference_sequential_434_layer_call_and_return_conditional_losses_56043258
dense_623_input$
dense_623_56043252: 
dense_623_56043254:
identityЂ!dense_623/StatefulPartitionedCall
!dense_623/StatefulPartitionedCallStatefulPartitionedCalldense_623_inputdense_623_56043252dense_623_56043254*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dense_623_layer_call_and_return_conditional_losses_56043251}
IdentityIdentity*dense_623/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџF
NoOpNoOp"^dense_623/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ: : 2F
!dense_623/StatefulPartitionedCall!dense_623/StatefulPartitionedCall:\ X
+
_output_shapes
:џџџџџџџџџ
)
_user_specified_namedense_623_input:($
"
_user_specified_name
56043252:($
"
_user_specified_name
56043254
БM
б
$backward_lstm_94_while_body_56046431>
:backward_lstm_94_while_backward_lstm_94_while_loop_counterD
@backward_lstm_94_while_backward_lstm_94_while_maximum_iterations&
"backward_lstm_94_while_placeholder(
$backward_lstm_94_while_placeholder_1(
$backward_lstm_94_while_placeholder_2(
$backward_lstm_94_while_placeholder_3=
9backward_lstm_94_while_backward_lstm_94_strided_slice_1_0y
ubackward_lstm_94_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_94_tensorarrayunstack_tensorlistfromtensor_0S
Abackward_lstm_94_while_lstm_cell_matmul_readvariableop_resource_0: U
Cbackward_lstm_94_while_lstm_cell_matmul_1_readvariableop_resource_0: P
Bbackward_lstm_94_while_lstm_cell_biasadd_readvariableop_resource_0: #
backward_lstm_94_while_identity%
!backward_lstm_94_while_identity_1%
!backward_lstm_94_while_identity_2%
!backward_lstm_94_while_identity_3%
!backward_lstm_94_while_identity_4%
!backward_lstm_94_while_identity_5;
7backward_lstm_94_while_backward_lstm_94_strided_slice_1w
sbackward_lstm_94_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_94_tensorarrayunstack_tensorlistfromtensorQ
?backward_lstm_94_while_lstm_cell_matmul_readvariableop_resource: S
Abackward_lstm_94_while_lstm_cell_matmul_1_readvariableop_resource: N
@backward_lstm_94_while_lstm_cell_biasadd_readvariableop_resource: Ђ7backward_lstm_94/while/lstm_cell/BiasAdd/ReadVariableOpЂ6backward_lstm_94/while/lstm_cell/MatMul/ReadVariableOpЂ8backward_lstm_94/while/lstm_cell/MatMul_1/ReadVariableOp
Hbackward_lstm_94/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџџџџџ
:backward_lstm_94/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemubackward_lstm_94_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_94_tensorarrayunstack_tensorlistfromtensor_0"backward_lstm_94_while_placeholderQbackward_lstm_94/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
element_dtype0И
6backward_lstm_94/while/lstm_cell/MatMul/ReadVariableOpReadVariableOpAbackward_lstm_94_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0ц
'backward_lstm_94/while/lstm_cell/MatMulMatMulAbackward_lstm_94/while/TensorArrayV2Read/TensorListGetItem:item:0>backward_lstm_94/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ М
8backward_lstm_94/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpCbackward_lstm_94_while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0Э
)backward_lstm_94/while/lstm_cell/MatMul_1MatMul$backward_lstm_94_while_placeholder_2@backward_lstm_94/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ Ч
$backward_lstm_94/while/lstm_cell/addAddV21backward_lstm_94/while/lstm_cell/MatMul:product:03backward_lstm_94/while/lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ Ж
7backward_lstm_94/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOpBbackward_lstm_94_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0а
(backward_lstm_94/while/lstm_cell/BiasAddBiasAdd(backward_lstm_94/while/lstm_cell/add:z:0?backward_lstm_94/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ r
0backward_lstm_94/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
&backward_lstm_94/while/lstm_cell/splitSplit9backward_lstm_94/while/lstm_cell/split/split_dim:output:01backward_lstm_94/while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_split
(backward_lstm_94/while/lstm_cell/SigmoidSigmoid/backward_lstm_94/while/lstm_cell/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
*backward_lstm_94/while/lstm_cell/Sigmoid_1Sigmoid/backward_lstm_94/while/lstm_cell/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџГ
$backward_lstm_94/while/lstm_cell/mulMul.backward_lstm_94/while/lstm_cell/Sigmoid_1:y:0$backward_lstm_94_while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ
%backward_lstm_94/while/lstm_cell/ReluRelu/backward_lstm_94/while/lstm_cell/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџТ
&backward_lstm_94/while/lstm_cell/mul_1Mul,backward_lstm_94/while/lstm_cell/Sigmoid:y:03backward_lstm_94/while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџЗ
&backward_lstm_94/while/lstm_cell/add_1AddV2(backward_lstm_94/while/lstm_cell/mul:z:0*backward_lstm_94/while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
*backward_lstm_94/while/lstm_cell/Sigmoid_2Sigmoid/backward_lstm_94/while/lstm_cell/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ
'backward_lstm_94/while/lstm_cell/Relu_1Relu*backward_lstm_94/while/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџЦ
&backward_lstm_94/while/lstm_cell/mul_2Mul.backward_lstm_94/while/lstm_cell/Sigmoid_2:y:05backward_lstm_94/while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
;backward_lstm_94/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem$backward_lstm_94_while_placeholder_1"backward_lstm_94_while_placeholder*backward_lstm_94/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшв^
backward_lstm_94/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
backward_lstm_94/while/addAddV2"backward_lstm_94_while_placeholder%backward_lstm_94/while/add/y:output:0*
T0*
_output_shapes
: `
backward_lstm_94/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Ћ
backward_lstm_94/while/add_1AddV2:backward_lstm_94_while_backward_lstm_94_while_loop_counter'backward_lstm_94/while/add_1/y:output:0*
T0*
_output_shapes
: 
backward_lstm_94/while/IdentityIdentity backward_lstm_94/while/add_1:z:0^backward_lstm_94/while/NoOp*
T0*
_output_shapes
: Ў
!backward_lstm_94/while/Identity_1Identity@backward_lstm_94_while_backward_lstm_94_while_maximum_iterations^backward_lstm_94/while/NoOp*
T0*
_output_shapes
: 
!backward_lstm_94/while/Identity_2Identitybackward_lstm_94/while/add:z:0^backward_lstm_94/while/NoOp*
T0*
_output_shapes
: Й
!backward_lstm_94/while/Identity_3IdentityKbackward_lstm_94/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^backward_lstm_94/while/NoOp*
T0*
_output_shapes
: Љ
!backward_lstm_94/while/Identity_4Identity*backward_lstm_94/while/lstm_cell/mul_2:z:0^backward_lstm_94/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџЉ
!backward_lstm_94/while/Identity_5Identity*backward_lstm_94/while/lstm_cell/add_1:z:0^backward_lstm_94/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџч
backward_lstm_94/while/NoOpNoOp8^backward_lstm_94/while/lstm_cell/BiasAdd/ReadVariableOp7^backward_lstm_94/while/lstm_cell/MatMul/ReadVariableOp9^backward_lstm_94/while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "t
7backward_lstm_94_while_backward_lstm_94_strided_slice_19backward_lstm_94_while_backward_lstm_94_strided_slice_1_0"K
backward_lstm_94_while_identity(backward_lstm_94/while/Identity:output:0"O
!backward_lstm_94_while_identity_1*backward_lstm_94/while/Identity_1:output:0"O
!backward_lstm_94_while_identity_2*backward_lstm_94/while/Identity_2:output:0"O
!backward_lstm_94_while_identity_3*backward_lstm_94/while/Identity_3:output:0"O
!backward_lstm_94_while_identity_4*backward_lstm_94/while/Identity_4:output:0"O
!backward_lstm_94_while_identity_5*backward_lstm_94/while/Identity_5:output:0"
@backward_lstm_94_while_lstm_cell_biasadd_readvariableop_resourceBbackward_lstm_94_while_lstm_cell_biasadd_readvariableop_resource_0"
Abackward_lstm_94_while_lstm_cell_matmul_1_readvariableop_resourceCbackward_lstm_94_while_lstm_cell_matmul_1_readvariableop_resource_0"
?backward_lstm_94_while_lstm_cell_matmul_readvariableop_resourceAbackward_lstm_94_while_lstm_cell_matmul_readvariableop_resource_0"ь
sbackward_lstm_94_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_94_tensorarrayunstack_tensorlistfromtensorubackward_lstm_94_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_94_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : 2r
7backward_lstm_94/while/lstm_cell/BiasAdd/ReadVariableOp7backward_lstm_94/while/lstm_cell/BiasAdd/ReadVariableOp2p
6backward_lstm_94/while/lstm_cell/MatMul/ReadVariableOp6backward_lstm_94/while/lstm_cell/MatMul/ReadVariableOp2t
8backward_lstm_94/while/lstm_cell/MatMul_1/ReadVariableOp8backward_lstm_94/while/lstm_cell/MatMul_1/ReadVariableOp:[ W

_output_shapes
: 
=
_user_specified_name%#backward_lstm_94/while/loop_counter:a]

_output_shapes
: 
C
_user_specified_name+)backward_lstm_94/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:XT

_output_shapes
: 
:
_user_specified_name" backward_lstm_94/strided_slice_1:pl

_output_shapes
: 
R
_user_specified_name:8backward_lstm_94/TensorArrayUnstack/TensorListFromTensor:($
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


#forward_lstm_94_while_cond_56046865<
8forward_lstm_94_while_forward_lstm_94_while_loop_counterB
>forward_lstm_94_while_forward_lstm_94_while_maximum_iterations%
!forward_lstm_94_while_placeholder'
#forward_lstm_94_while_placeholder_1'
#forward_lstm_94_while_placeholder_2'
#forward_lstm_94_while_placeholder_3>
:forward_lstm_94_while_less_forward_lstm_94_strided_slice_1V
Rforward_lstm_94_while_forward_lstm_94_while_cond_56046865___redundant_placeholder0V
Rforward_lstm_94_while_forward_lstm_94_while_cond_56046865___redundant_placeholder1V
Rforward_lstm_94_while_forward_lstm_94_while_cond_56046865___redundant_placeholder2V
Rforward_lstm_94_while_forward_lstm_94_while_cond_56046865___redundant_placeholder3"
forward_lstm_94_while_identity
Ђ
forward_lstm_94/while/LessLess!forward_lstm_94_while_placeholder:forward_lstm_94_while_less_forward_lstm_94_strided_slice_1*
T0*
_output_shapes
: k
forward_lstm_94/while/IdentityIdentityforward_lstm_94/while/Less:z:0*
T0
*
_output_shapes
: "I
forward_lstm_94_while_identity'forward_lstm_94/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : ::: :::::Z V

_output_shapes
: 
<
_user_specified_name$"forward_lstm_94/while/loop_counter:`\

_output_shapes
: 
B
_user_specified_name*(forward_lstm_94/while/maximum_iterations:
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
_user_specified_name!forward_lstm_94/strided_slice_1:

_output_shapes
:
Ї	
р
L__inference_sequential_439_layer_call_and_return_conditional_losses_56043343
dense_628_input$
dense_628_56043337: 
dense_628_56043339:
identityЂ!dense_628/StatefulPartitionedCall
!dense_628/StatefulPartitionedCallStatefulPartitionedCalldense_628_inputdense_628_56043337dense_628_56043339*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dense_628_layer_call_and_return_conditional_losses_56043327}
IdentityIdentity*dense_628/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџF
NoOpNoOp"^dense_628/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ: : 2F
!dense_628/StatefulPartitionedCall!dense_628/StatefulPartitionedCall:\ X
+
_output_shapes
:џџџџџџџџџ
)
_user_specified_namedense_628_input:($
"
_user_specified_name
56043337:($
"
_user_specified_name
56043339
О
м
2__inference_topk_bilstm_moe_layer_call_fn_56045634
input_5
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

unknown_15:	

unknown_16:
identityЂStatefulPartitionedCallБ
StatefulPartitionedCallStatefulPartitionedCallinput_5unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
GPU 2J 8 *V
fQRO
M__inference_topk_bilstm_moe_layer_call_and_return_conditional_losses_56045552f
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
_user_specified_name	input_5:($
"
_user_specified_name
56045596:($
"
_user_specified_name
56045598:($
"
_user_specified_name
56045600:($
"
_user_specified_name
56045602:($
"
_user_specified_name
56045604:($
"
_user_specified_name
56045606:($
"
_user_specified_name
56045608:($
"
_user_specified_name
56045610:(	$
"
_user_specified_name
56045612:(
$
"
_user_specified_name
56045614:($
"
_user_specified_name
56045616:($
"
_user_specified_name
56045618:($
"
_user_specified_name
56045620:($
"
_user_specified_name
56045622:($
"
_user_specified_name
56045624:($
"
_user_specified_name
56045626:($
"
_user_specified_name
56045628:($
"
_user_specified_name
56045630
­
Ї
1__inference_sequential_434_layer_call_fn_56043276
dense_623_input
unknown:
	unknown_0:
identityЂStatefulPartitionedCallю
StatefulPartitionedCallStatefulPartitionedCalldense_623_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_sequential_434_layer_call_and_return_conditional_losses_56043258s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
+
_output_shapes
:џџџџџџџџџ
)
_user_specified_namedense_623_input:($
"
_user_specified_name
56043270:($
"
_user_specified_name
56043272
Ь	
Э
while_cond_56044126
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_16
2while_while_cond_56044126___redundant_placeholder06
2while_while_cond_56044126___redundant_placeholder16
2while_while_cond_56044126___redundant_placeholder26
2while_while_cond_56044126___redundant_placeholder3
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
@: : : : :џџџџџџџџџ:џџџџџџџџџ: :::::J F
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
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
 	
М
2__inference_forward_lstm_94_layer_call_fn_56047345

inputs
unknown: 
	unknown_0: 
	unknown_1: 
identityЂStatefulPartitionedCallќ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_forward_lstm_94_layer_call_and_return_conditional_losses_56044211|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:e a
=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs:($
"
_user_specified_name
56047337:($
"
_user_specified_name
56047339:($
"
_user_specified_name
56047341
ћH
	
M__inference_topk_bilstm_moe_layer_call_and_return_conditional_losses_56045177
input_5$
dense_612_56044782: 
dense_612_56044784:)
sequential_424_56044812:%
sequential_424_56044814:)
sequential_429_56044817:%
sequential_429_56044819:)
sequential_434_56044822:%
sequential_434_56044824:)
sequential_439_56044827:%
sequential_439_56044829:+
bidirectional_94_56045128: +
bidirectional_94_56045130: '
bidirectional_94_56045132: +
bidirectional_94_56045134: +
bidirectional_94_56045136: '
bidirectional_94_56045138: %
dense_629_56045171:	 
dense_629_56045173:
identityЂ(bidirectional_94/StatefulPartitionedCallЂ!dense_612/StatefulPartitionedCallЂ!dense_629/StatefulPartitionedCallЂ"dropout_94/StatefulPartitionedCallЂ&sequential_424/StatefulPartitionedCallЂ&sequential_429/StatefulPartitionedCallЂ&sequential_434/StatefulPartitionedCallЂ&sequential_439/StatefulPartitionedCallі
!dense_612/StatefulPartitionedCallStatefulPartitionedCallinput_5dense_612_56044782dense_612_56044784*
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
GPU 2J 8 *P
fKRI
G__inference_dense_612_layer_call_and_return_conditional_losses_56044781Z
tf.math.top_k_4/TopKV2/kConst*
_output_shapes
: *
dtype0*
value	B :Њ
tf.math.top_k_4/TopKV2TopKV2*dense_612/StatefulPartitionedCall:output:0!tf.math.top_k_4/TopKV2/k:output:0*
T0*0
_output_shapes
::b
tf.one_hot_4/one_hot/on_valueConst*
_output_shapes
: *
dtype0*
valueB
 *  ?c
tf.one_hot_4/one_hot/off_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    \
tf.one_hot_4/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :ё
tf.one_hot_4/one_hotOneHot tf.math.top_k_4/TopKV2:indices:0#tf.one_hot_4/one_hot/depth:output:0&tf.one_hot_4/one_hot/on_value:output:0'tf.one_hot_4/one_hot/off_value:output:0*
T0*
TI0*&
_output_shapes
:ђ
lambda_102/PartitionedCallPartitionedCalltf.math.top_k_4/TopKV2:values:0tf.one_hot_4/one_hot:output:0*
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
GPU 2J 8 *Q
fLRJ
H__inference_lambda_102_layer_call_and_return_conditional_losses_56044799ф
lambda_103/PartitionedCallPartitionedCallinput_5#lambda_102/PartitionedCall:output:0*
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
GPU 2J 8 *Q
fLRJ
H__inference_lambda_103_layer_call_and_return_conditional_losses_56044806Ѕ
tf.unstack_4/unstackUnpack#lambda_103/PartitionedCall:output:0*
T0*L
_output_shapes:
8::::*	
num 
&sequential_424/StatefulPartitionedCallStatefulPartitionedCalltf.unstack_4/unstack:output:0sequential_424_56044812sequential_424_56044814*
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
GPU 2J 8 *U
fPRN
L__inference_sequential_424_layer_call_and_return_conditional_losses_56043106 
&sequential_429/StatefulPartitionedCallStatefulPartitionedCalltf.unstack_4/unstack:output:1sequential_429_56044817sequential_429_56044819*
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
GPU 2J 8 *U
fPRN
L__inference_sequential_429_layer_call_and_return_conditional_losses_56043182 
&sequential_434/StatefulPartitionedCallStatefulPartitionedCalltf.unstack_4/unstack:output:2sequential_434_56044822sequential_434_56044824*
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
GPU 2J 8 *U
fPRN
L__inference_sequential_434_layer_call_and_return_conditional_losses_56043258 
&sequential_439/StatefulPartitionedCallStatefulPartitionedCalltf.unstack_4/unstack:output:3sequential_439_56044827sequential_439_56044829*
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
GPU 2J 8 *U
fPRN
L__inference_sequential_439_layer_call_and_return_conditional_losses_56043334Ѓ
tf.stack_95/stackPack/sequential_424/StatefulPartitionedCall:output:0/sequential_429/StatefulPartitionedCall:output:0/sequential_434/StatefulPartitionedCall:output:0/sequential_439/StatefulPartitionedCall:output:0*
N*
T0*&
_output_shapes
:*

axisѓ
lambda_104/PartitionedCallPartitionedCalltf.stack_95/stack:output:0#lambda_102/PartitionedCall:output:0*
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
GPU 2J 8 *Q
fLRJ
H__inference_lambda_104_layer_call_and_return_conditional_losses_56044838Ђ
(bidirectional_94/StatefulPartitionedCallStatefulPartitionedCall#lambda_104/PartitionedCall:output:0bidirectional_94_56045128bidirectional_94_56045130bidirectional_94_56045132bidirectional_94_56045134bidirectional_94_56045136bidirectional_94_56045138*
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
GPU 2J 8 *W
fRRP
N__inference_bidirectional_94_layer_call_and_return_conditional_losses_56045127є
"dropout_94/StatefulPartitionedCallStatefulPartitionedCall1bidirectional_94/StatefulPartitionedCall:output:0*
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
GPU 2J 8 *Q
fLRJ
H__inference_dropout_94_layer_call_and_return_conditional_losses_56045152л
flatten_94/PartitionedCallPartitionedCall+dropout_94/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_flatten_94_layer_call_and_return_conditional_losses_56045159
!dense_629/StatefulPartitionedCallStatefulPartitionedCall#flatten_94/PartitionedCall:output:0dense_629_56045171dense_629_56045173*
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
GPU 2J 8 *P
fKRI
G__inference_dense_629_layer_call_and_return_conditional_losses_56045170p
IdentityIdentity*dense_629/StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:о
NoOpNoOp)^bidirectional_94/StatefulPartitionedCall"^dense_612/StatefulPartitionedCall"^dense_629/StatefulPartitionedCall#^dropout_94/StatefulPartitionedCall'^sequential_424/StatefulPartitionedCall'^sequential_429/StatefulPartitionedCall'^sequential_434/StatefulPartitionedCall'^sequential_439/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:: : : : : : : : : : : : : : : : : : 2T
(bidirectional_94/StatefulPartitionedCall(bidirectional_94/StatefulPartitionedCall2F
!dense_612/StatefulPartitionedCall!dense_612/StatefulPartitionedCall2F
!dense_629/StatefulPartitionedCall!dense_629/StatefulPartitionedCall2H
"dropout_94/StatefulPartitionedCall"dropout_94/StatefulPartitionedCall2P
&sequential_424/StatefulPartitionedCall&sequential_424/StatefulPartitionedCall2P
&sequential_429/StatefulPartitionedCall&sequential_429/StatefulPartitionedCall2P
&sequential_434/StatefulPartitionedCall&sequential_434/StatefulPartitionedCall2P
&sequential_439/StatefulPartitionedCall&sequential_439/StatefulPartitionedCall:K G
"
_output_shapes
:
!
_user_specified_name	input_5:($
"
_user_specified_name
56044782:($
"
_user_specified_name
56044784:($
"
_user_specified_name
56044812:($
"
_user_specified_name
56044814:($
"
_user_specified_name
56044817:($
"
_user_specified_name
56044819:($
"
_user_specified_name
56044822:($
"
_user_specified_name
56044824:(	$
"
_user_specified_name
56044827:(
$
"
_user_specified_name
56044829:($
"
_user_specified_name
56045128:($
"
_user_specified_name
56045130:($
"
_user_specified_name
56045132:($
"
_user_specified_name
56045134:($
"
_user_specified_name
56045136:($
"
_user_specified_name
56045138:($
"
_user_specified_name
56045171:($
"
_user_specified_name
56045173
НЙ

N__inference_bidirectional_94_layer_call_and_return_conditional_losses_56045127

inputsJ
8forward_lstm_94_lstm_cell_matmul_readvariableop_resource: L
:forward_lstm_94_lstm_cell_matmul_1_readvariableop_resource: G
9forward_lstm_94_lstm_cell_biasadd_readvariableop_resource: K
9backward_lstm_94_lstm_cell_matmul_readvariableop_resource: M
;backward_lstm_94_lstm_cell_matmul_1_readvariableop_resource: H
:backward_lstm_94_lstm_cell_biasadd_readvariableop_resource: 
identityЂ1backward_lstm_94/lstm_cell/BiasAdd/ReadVariableOpЂ0backward_lstm_94/lstm_cell/MatMul/ReadVariableOpЂ2backward_lstm_94/lstm_cell/MatMul_1/ReadVariableOpЂbackward_lstm_94/whileЂ0forward_lstm_94/lstm_cell/BiasAdd/ReadVariableOpЂ/forward_lstm_94/lstm_cell/MatMul/ReadVariableOpЂ1forward_lstm_94/lstm_cell/MatMul_1/ReadVariableOpЂforward_lstm_94/whilej
forward_lstm_94/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         m
#forward_lstm_94/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%forward_lstm_94/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%forward_lstm_94/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ё
forward_lstm_94/strided_sliceStridedSliceforward_lstm_94/Shape:output:0,forward_lstm_94/strided_slice/stack:output:0.forward_lstm_94/strided_slice/stack_1:output:0.forward_lstm_94/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
forward_lstm_94/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Ѓ
forward_lstm_94/zeros/packedPack&forward_lstm_94/strided_slice:output:0'forward_lstm_94/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:`
forward_lstm_94/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
forward_lstm_94/zerosFill%forward_lstm_94/zeros/packed:output:0$forward_lstm_94/zeros/Const:output:0*
T0*
_output_shapes

:b
 forward_lstm_94/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Ї
forward_lstm_94/zeros_1/packedPack&forward_lstm_94/strided_slice:output:0)forward_lstm_94/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:b
forward_lstm_94/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
forward_lstm_94/zeros_1Fill'forward_lstm_94/zeros_1/packed:output:0&forward_lstm_94/zeros_1/Const:output:0*
T0*
_output_shapes

:s
forward_lstm_94/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
forward_lstm_94/transpose	Transposeinputs'forward_lstm_94/transpose/perm:output:0*
T0*"
_output_shapes
:l
forward_lstm_94/Shape_1Const*
_output_shapes
:*
dtype0*!
valueB"         o
%forward_lstm_94/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_94/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'forward_lstm_94/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ћ
forward_lstm_94/strided_slice_1StridedSlice forward_lstm_94/Shape_1:output:0.forward_lstm_94/strided_slice_1/stack:output:00forward_lstm_94/strided_slice_1/stack_1:output:00forward_lstm_94/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
+forward_lstm_94/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџф
forward_lstm_94/TensorArrayV2TensorListReserve4forward_lstm_94/TensorArrayV2/element_shape:output:0(forward_lstm_94/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
Eforward_lstm_94/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      
7forward_lstm_94/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorforward_lstm_94/transpose:y:0Nforward_lstm_94/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвo
%forward_lstm_94/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_94/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'forward_lstm_94/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:А
forward_lstm_94/strided_slice_2StridedSliceforward_lstm_94/transpose:y:0.forward_lstm_94/strided_slice_2/stack:output:00forward_lstm_94/strided_slice_2/stack_1:output:00forward_lstm_94/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_maskЈ
/forward_lstm_94/lstm_cell/MatMul/ReadVariableOpReadVariableOp8forward_lstm_94_lstm_cell_matmul_readvariableop_resource*
_output_shapes

: *
dtype0Ж
 forward_lstm_94/lstm_cell/MatMulMatMul(forward_lstm_94/strided_slice_2:output:07forward_lstm_94/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

: Ќ
1forward_lstm_94/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp:forward_lstm_94_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0А
"forward_lstm_94/lstm_cell/MatMul_1MatMulforward_lstm_94/zeros:output:09forward_lstm_94/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes

: Љ
forward_lstm_94/lstm_cell/addAddV2*forward_lstm_94/lstm_cell/MatMul:product:0,forward_lstm_94/lstm_cell/MatMul_1:product:0*
T0*
_output_shapes

: І
0forward_lstm_94/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp9forward_lstm_94_lstm_cell_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0В
!forward_lstm_94/lstm_cell/BiasAddBiasAdd!forward_lstm_94/lstm_cell/add:z:08forward_lstm_94/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

: k
)forward_lstm_94/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :р
forward_lstm_94/lstm_cell/splitSplit2forward_lstm_94/lstm_cell/split/split_dim:output:0*forward_lstm_94/lstm_cell/BiasAdd:output:0*
T0*<
_output_shapes*
(::::*
	num_split
!forward_lstm_94/lstm_cell/SigmoidSigmoid(forward_lstm_94/lstm_cell/split:output:0*
T0*
_output_shapes

:
#forward_lstm_94/lstm_cell/Sigmoid_1Sigmoid(forward_lstm_94/lstm_cell/split:output:1*
T0*
_output_shapes

:
forward_lstm_94/lstm_cell/mulMul'forward_lstm_94/lstm_cell/Sigmoid_1:y:0 forward_lstm_94/zeros_1:output:0*
T0*
_output_shapes

:y
forward_lstm_94/lstm_cell/ReluRelu(forward_lstm_94/lstm_cell/split:output:2*
T0*
_output_shapes

:Є
forward_lstm_94/lstm_cell/mul_1Mul%forward_lstm_94/lstm_cell/Sigmoid:y:0,forward_lstm_94/lstm_cell/Relu:activations:0*
T0*
_output_shapes

:
forward_lstm_94/lstm_cell/add_1AddV2!forward_lstm_94/lstm_cell/mul:z:0#forward_lstm_94/lstm_cell/mul_1:z:0*
T0*
_output_shapes

:
#forward_lstm_94/lstm_cell/Sigmoid_2Sigmoid(forward_lstm_94/lstm_cell/split:output:3*
T0*
_output_shapes

:v
 forward_lstm_94/lstm_cell/Relu_1Relu#forward_lstm_94/lstm_cell/add_1:z:0*
T0*
_output_shapes

:Ј
forward_lstm_94/lstm_cell/mul_2Mul'forward_lstm_94/lstm_cell/Sigmoid_2:y:0.forward_lstm_94/lstm_cell/Relu_1:activations:0*
T0*
_output_shapes

:~
-forward_lstm_94/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      ш
forward_lstm_94/TensorArrayV2_1TensorListReserve6forward_lstm_94/TensorArrayV2_1/element_shape:output:0(forward_lstm_94/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвV
forward_lstm_94/timeConst*
_output_shapes
: *
dtype0*
value	B : s
(forward_lstm_94/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџd
"forward_lstm_94/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
forward_lstm_94/whileWhile+forward_lstm_94/while/loop_counter:output:01forward_lstm_94/while/maximum_iterations:output:0forward_lstm_94/time:output:0(forward_lstm_94/TensorArrayV2_1:handle:0forward_lstm_94/zeros:output:0 forward_lstm_94/zeros_1:output:0(forward_lstm_94/strided_slice_1:output:0Gforward_lstm_94/TensorArrayUnstack/TensorListFromTensor:output_handle:08forward_lstm_94_lstm_cell_matmul_readvariableop_resource:forward_lstm_94_lstm_cell_matmul_1_readvariableop_resource9forward_lstm_94_lstm_cell_biasadd_readvariableop_resource*
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
#forward_lstm_94_while_body_56044898*/
cond'R%
#forward_lstm_94_while_cond_56044897*9
output_shapes(
&: : : : ::: : : : : *
parallel_iterations 
@forward_lstm_94/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      щ
2forward_lstm_94/TensorArrayV2Stack/TensorListStackTensorListStackforward_lstm_94/while:output:3Iforward_lstm_94/TensorArrayV2Stack/TensorListStack/element_shape:output:0*"
_output_shapes
:*
element_dtype0x
%forward_lstm_94/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџq
'forward_lstm_94/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_94/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ю
forward_lstm_94/strided_slice_3StridedSlice;forward_lstm_94/TensorArrayV2Stack/TensorListStack:tensor:0.forward_lstm_94/strided_slice_3/stack:output:00forward_lstm_94/strided_slice_3/stack_1:output:00forward_lstm_94/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_masku
 forward_lstm_94/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Н
forward_lstm_94/transpose_1	Transpose;forward_lstm_94/TensorArrayV2Stack/TensorListStack:tensor:0)forward_lstm_94/transpose_1/perm:output:0*
T0*"
_output_shapes
:k
forward_lstm_94/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
backward_lstm_94/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         n
$backward_lstm_94/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&backward_lstm_94/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&backward_lstm_94/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:І
backward_lstm_94/strided_sliceStridedSlicebackward_lstm_94/Shape:output:0-backward_lstm_94/strided_slice/stack:output:0/backward_lstm_94/strided_slice/stack_1:output:0/backward_lstm_94/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
backward_lstm_94/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :І
backward_lstm_94/zeros/packedPack'backward_lstm_94/strided_slice:output:0(backward_lstm_94/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:a
backward_lstm_94/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
backward_lstm_94/zerosFill&backward_lstm_94/zeros/packed:output:0%backward_lstm_94/zeros/Const:output:0*
T0*
_output_shapes

:c
!backward_lstm_94/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Њ
backward_lstm_94/zeros_1/packedPack'backward_lstm_94/strided_slice:output:0*backward_lstm_94/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:c
backward_lstm_94/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
backward_lstm_94/zeros_1Fill(backward_lstm_94/zeros_1/packed:output:0'backward_lstm_94/zeros_1/Const:output:0*
T0*
_output_shapes

:t
backward_lstm_94/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
backward_lstm_94/transpose	Transposeinputs(backward_lstm_94/transpose/perm:output:0*
T0*"
_output_shapes
:m
backward_lstm_94/Shape_1Const*
_output_shapes
:*
dtype0*!
valueB"         p
&backward_lstm_94/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_94/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(backward_lstm_94/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:А
 backward_lstm_94/strided_slice_1StridedSlice!backward_lstm_94/Shape_1:output:0/backward_lstm_94/strided_slice_1/stack:output:01backward_lstm_94/strided_slice_1/stack_1:output:01backward_lstm_94/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskw
,backward_lstm_94/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџч
backward_lstm_94/TensorArrayV2TensorListReserve5backward_lstm_94/TensorArrayV2/element_shape:output:0)backward_lstm_94/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвi
backward_lstm_94/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: 
backward_lstm_94/ReverseV2	ReverseV2backward_lstm_94/transpose:y:0(backward_lstm_94/ReverseV2/axis:output:0*
T0*"
_output_shapes
:
Fbackward_lstm_94/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      
8backward_lstm_94/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#backward_lstm_94/ReverseV2:output:0Obackward_lstm_94/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвp
&backward_lstm_94/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_94/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(backward_lstm_94/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Е
 backward_lstm_94/strided_slice_2StridedSlicebackward_lstm_94/transpose:y:0/backward_lstm_94/strided_slice_2/stack:output:01backward_lstm_94/strided_slice_2/stack_1:output:01backward_lstm_94/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_maskЊ
0backward_lstm_94/lstm_cell/MatMul/ReadVariableOpReadVariableOp9backward_lstm_94_lstm_cell_matmul_readvariableop_resource*
_output_shapes

: *
dtype0Й
!backward_lstm_94/lstm_cell/MatMulMatMul)backward_lstm_94/strided_slice_2:output:08backward_lstm_94/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

: Ў
2backward_lstm_94/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp;backward_lstm_94_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0Г
#backward_lstm_94/lstm_cell/MatMul_1MatMulbackward_lstm_94/zeros:output:0:backward_lstm_94/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes

: Ќ
backward_lstm_94/lstm_cell/addAddV2+backward_lstm_94/lstm_cell/MatMul:product:0-backward_lstm_94/lstm_cell/MatMul_1:product:0*
T0*
_output_shapes

: Ј
1backward_lstm_94/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp:backward_lstm_94_lstm_cell_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Е
"backward_lstm_94/lstm_cell/BiasAddBiasAdd"backward_lstm_94/lstm_cell/add:z:09backward_lstm_94/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

: l
*backward_lstm_94/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :у
 backward_lstm_94/lstm_cell/splitSplit3backward_lstm_94/lstm_cell/split/split_dim:output:0+backward_lstm_94/lstm_cell/BiasAdd:output:0*
T0*<
_output_shapes*
(::::*
	num_split
"backward_lstm_94/lstm_cell/SigmoidSigmoid)backward_lstm_94/lstm_cell/split:output:0*
T0*
_output_shapes

:
$backward_lstm_94/lstm_cell/Sigmoid_1Sigmoid)backward_lstm_94/lstm_cell/split:output:1*
T0*
_output_shapes

:
backward_lstm_94/lstm_cell/mulMul(backward_lstm_94/lstm_cell/Sigmoid_1:y:0!backward_lstm_94/zeros_1:output:0*
T0*
_output_shapes

:{
backward_lstm_94/lstm_cell/ReluRelu)backward_lstm_94/lstm_cell/split:output:2*
T0*
_output_shapes

:Ї
 backward_lstm_94/lstm_cell/mul_1Mul&backward_lstm_94/lstm_cell/Sigmoid:y:0-backward_lstm_94/lstm_cell/Relu:activations:0*
T0*
_output_shapes

:
 backward_lstm_94/lstm_cell/add_1AddV2"backward_lstm_94/lstm_cell/mul:z:0$backward_lstm_94/lstm_cell/mul_1:z:0*
T0*
_output_shapes

:
$backward_lstm_94/lstm_cell/Sigmoid_2Sigmoid)backward_lstm_94/lstm_cell/split:output:3*
T0*
_output_shapes

:x
!backward_lstm_94/lstm_cell/Relu_1Relu$backward_lstm_94/lstm_cell/add_1:z:0*
T0*
_output_shapes

:Ћ
 backward_lstm_94/lstm_cell/mul_2Mul(backward_lstm_94/lstm_cell/Sigmoid_2:y:0/backward_lstm_94/lstm_cell/Relu_1:activations:0*
T0*
_output_shapes

:
.backward_lstm_94/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      ы
 backward_lstm_94/TensorArrayV2_1TensorListReserve7backward_lstm_94/TensorArrayV2_1/element_shape:output:0)backward_lstm_94/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвW
backward_lstm_94/timeConst*
_output_shapes
: *
dtype0*
value	B : t
)backward_lstm_94/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџe
#backward_lstm_94/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Њ
backward_lstm_94/whileWhile,backward_lstm_94/while/loop_counter:output:02backward_lstm_94/while/maximum_iterations:output:0backward_lstm_94/time:output:0)backward_lstm_94/TensorArrayV2_1:handle:0backward_lstm_94/zeros:output:0!backward_lstm_94/zeros_1:output:0)backward_lstm_94/strided_slice_1:output:0Hbackward_lstm_94/TensorArrayUnstack/TensorListFromTensor:output_handle:09backward_lstm_94_lstm_cell_matmul_readvariableop_resource;backward_lstm_94_lstm_cell_matmul_1_readvariableop_resource:backward_lstm_94_lstm_cell_biasadd_readvariableop_resource*
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
$backward_lstm_94_while_body_56045039*0
cond(R&
$backward_lstm_94_while_cond_56045038*9
output_shapes(
&: : : : ::: : : : : *
parallel_iterations 
Abackward_lstm_94/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      ь
3backward_lstm_94/TensorArrayV2Stack/TensorListStackTensorListStackbackward_lstm_94/while:output:3Jbackward_lstm_94/TensorArrayV2Stack/TensorListStack/element_shape:output:0*"
_output_shapes
:*
element_dtype0y
&backward_lstm_94/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџr
(backward_lstm_94/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_94/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:г
 backward_lstm_94/strided_slice_3StridedSlice<backward_lstm_94/TensorArrayV2Stack/TensorListStack:tensor:0/backward_lstm_94/strided_slice_3/stack:output:01backward_lstm_94/strided_slice_3/stack_1:output:01backward_lstm_94/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_maskv
!backward_lstm_94/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Р
backward_lstm_94/transpose_1	Transpose<backward_lstm_94/TensorArrayV2Stack/TensorListStack:tensor:0*backward_lstm_94/transpose_1/perm:output:0*
T0*"
_output_shapes
:l
backward_lstm_94/runtimeConst"/device:CPU:0*
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
	ReverseV2	ReverseV2 backward_lstm_94/transpose_1:y:0ReverseV2/axis:output:0*
T0*"
_output_shapes
:M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :
concatConcatV2forward_lstm_94/transpose_1:y:0ReverseV2:output:0concat/axis:output:0*
N*
T0*"
_output_shapes
:Y
IdentityIdentityconcat:output:0^NoOp*
T0*"
_output_shapes
:
NoOpNoOp2^backward_lstm_94/lstm_cell/BiasAdd/ReadVariableOp1^backward_lstm_94/lstm_cell/MatMul/ReadVariableOp3^backward_lstm_94/lstm_cell/MatMul_1/ReadVariableOp^backward_lstm_94/while1^forward_lstm_94/lstm_cell/BiasAdd/ReadVariableOp0^forward_lstm_94/lstm_cell/MatMul/ReadVariableOp2^forward_lstm_94/lstm_cell/MatMul_1/ReadVariableOp^forward_lstm_94/while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*-
_input_shapes
:: : : : : : 2f
1backward_lstm_94/lstm_cell/BiasAdd/ReadVariableOp1backward_lstm_94/lstm_cell/BiasAdd/ReadVariableOp2d
0backward_lstm_94/lstm_cell/MatMul/ReadVariableOp0backward_lstm_94/lstm_cell/MatMul/ReadVariableOp2h
2backward_lstm_94/lstm_cell/MatMul_1/ReadVariableOp2backward_lstm_94/lstm_cell/MatMul_1/ReadVariableOp20
backward_lstm_94/whilebackward_lstm_94/while2d
0forward_lstm_94/lstm_cell/BiasAdd/ReadVariableOp0forward_lstm_94/lstm_cell/BiasAdd/ReadVariableOp2b
/forward_lstm_94/lstm_cell/MatMul/ReadVariableOp/forward_lstm_94/lstm_cell/MatMul/ReadVariableOp2f
1forward_lstm_94/lstm_cell/MatMul_1/ReadVariableOp1forward_lstm_94/lstm_cell/MatMul_1/ReadVariableOp2.
forward_lstm_94/whileforward_lstm_94/while:J F
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
И
Ё
$backward_lstm_94_while_cond_56045436>
:backward_lstm_94_while_backward_lstm_94_while_loop_counterD
@backward_lstm_94_while_backward_lstm_94_while_maximum_iterations&
"backward_lstm_94_while_placeholder(
$backward_lstm_94_while_placeholder_1(
$backward_lstm_94_while_placeholder_2(
$backward_lstm_94_while_placeholder_3@
<backward_lstm_94_while_less_backward_lstm_94_strided_slice_1X
Tbackward_lstm_94_while_backward_lstm_94_while_cond_56045436___redundant_placeholder0X
Tbackward_lstm_94_while_backward_lstm_94_while_cond_56045436___redundant_placeholder1X
Tbackward_lstm_94_while_backward_lstm_94_while_cond_56045436___redundant_placeholder2X
Tbackward_lstm_94_while_backward_lstm_94_while_cond_56045436___redundant_placeholder3#
backward_lstm_94_while_identity
І
backward_lstm_94/while/LessLess"backward_lstm_94_while_placeholder<backward_lstm_94_while_less_backward_lstm_94_strided_slice_1*
T0*
_output_shapes
: m
backward_lstm_94/while/IdentityIdentitybackward_lstm_94/while/Less:z:0*
T0
*
_output_shapes
: "K
backward_lstm_94_while_identity(backward_lstm_94/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : ::: :::::[ W

_output_shapes
: 
=
_user_specified_name%#backward_lstm_94/while/loop_counter:a]

_output_shapes
: 
C
_user_specified_name+)backward_lstm_94/while/maximum_iterations:
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
_user_specified_name" backward_lstm_94/strided_slice_1:

_output_shapes
:
­
Ї
1__inference_sequential_439_layer_call_fn_56043352
dense_628_input
unknown:
	unknown_0:
identityЂStatefulPartitionedCallю
StatefulPartitionedCallStatefulPartitionedCalldense_628_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_sequential_439_layer_call_and_return_conditional_losses_56043334s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
+
_output_shapes
:џџџџџџџџџ
)
_user_specified_namedense_628_input:($
"
_user_specified_name
56043346:($
"
_user_specified_name
56043348
ф$
ж
while_body_56043446
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0,
while_lstm_cell_56043470_0: ,
while_lstm_cell_56043472_0: (
while_lstm_cell_56043474_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor*
while_lstm_cell_56043470: *
while_lstm_cell_56043472: &
while_lstm_cell_56043474: Ђ'while/lstm_cell/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0Ќ
'while/lstm_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_56043470_0while_lstm_cell_56043472_0while_lstm_cell_56043474_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_lstm_cell_layer_call_and_return_conditional_losses_56043432й
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder0while/lstm_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:щшвM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity0while/lstm_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
while/Identity_5Identity0while/lstm_cell/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџR

while/NoOpNoOp(^while/lstm_cell/StatefulPartitionedCall*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"6
while_lstm_cell_56043470while_lstm_cell_56043470_0"6
while_lstm_cell_56043472while_lstm_cell_56043472_0"6
while_lstm_cell_56043474while_lstm_cell_56043474_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : 2R
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
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:GC
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
56043470:(	$
"
_user_specified_name
56043472:(
$
"
_user_specified_name
56043474
ыK

N__inference_backward_lstm_94_layer_call_and_return_conditional_losses_56048117
inputs_0:
(lstm_cell_matmul_readvariableop_resource: <
*lstm_cell_matmul_1_readvariableop_resource: 7
)lstm_cell_biasadd_readvariableop_resource: 
identityЂ lstm_cell/BiasAdd/ReadVariableOpЂlstm_cell/MatMul/ReadVariableOpЂ!lstm_cell/MatMul_1/ReadVariableOpЂwhileK
ShapeShapeinputs_0*
T0*
_output_shapes
::эЯ]
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
valueB:б
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
:џџџџџџџџџR
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
:џџџџџџџџџc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџR
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::эЯ_
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвX
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: }
	ReverseV2	ReverseV2transpose:y:0ReverseV2/axis:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   х
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensorReverseV2:output:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes

: *
dtype0
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ 
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ [
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :д
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџj
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџq
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџb
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ}
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџr
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџj
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ_
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : р
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_56048033*
condR
while_cond_56048032*K
output_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
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
І
ў
G__inference_dense_612_layer_call_and_return_conditional_losses_56044781

inputs3
!tensordot_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂTensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:*
dtype0h
Tensordot/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"     p
Tensordot/ReshapeReshapeinputs Tensordot/Reshape/shape:output:0*
T0*
_output_shapes
:	
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*
_output_shapes
:	d
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
м
Ё
$backward_lstm_94_while_cond_56046142>
:backward_lstm_94_while_backward_lstm_94_while_loop_counterD
@backward_lstm_94_while_backward_lstm_94_while_maximum_iterations&
"backward_lstm_94_while_placeholder(
$backward_lstm_94_while_placeholder_1(
$backward_lstm_94_while_placeholder_2(
$backward_lstm_94_while_placeholder_3@
<backward_lstm_94_while_less_backward_lstm_94_strided_slice_1X
Tbackward_lstm_94_while_backward_lstm_94_while_cond_56046142___redundant_placeholder0X
Tbackward_lstm_94_while_backward_lstm_94_while_cond_56046142___redundant_placeholder1X
Tbackward_lstm_94_while_backward_lstm_94_while_cond_56046142___redundant_placeholder2X
Tbackward_lstm_94_while_backward_lstm_94_while_cond_56046142___redundant_placeholder3#
backward_lstm_94_while_identity
І
backward_lstm_94/while/LessLess"backward_lstm_94_while_placeholder<backward_lstm_94_while_less_backward_lstm_94_strided_slice_1*
T0*
_output_shapes
: m
backward_lstm_94/while/IdentityIdentitybackward_lstm_94/while/Less:z:0*
T0
*
_output_shapes
: "K
backward_lstm_94_while_identity(backward_lstm_94/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :џџџџџџџџџ:џџџџџџџџџ: :::::[ W

_output_shapes
: 
=
_user_specified_name%#backward_lstm_94/while/loop_counter:a]

_output_shapes
: 
C
_user_specified_name+)backward_lstm_94/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:XT

_output_shapes
: 
:
_user_specified_name" backward_lstm_94/strided_slice_1:

_output_shapes
:
І
Ќ
Dtopk_bilstm_moe_bidirectional_94_forward_lstm_94_while_cond_56042827~
ztopk_bilstm_moe_bidirectional_94_forward_lstm_94_while_topk_bilstm_moe_bidirectional_94_forward_lstm_94_while_loop_counter
topk_bilstm_moe_bidirectional_94_forward_lstm_94_while_topk_bilstm_moe_bidirectional_94_forward_lstm_94_while_maximum_iterationsF
Btopk_bilstm_moe_bidirectional_94_forward_lstm_94_while_placeholderH
Dtopk_bilstm_moe_bidirectional_94_forward_lstm_94_while_placeholder_1H
Dtopk_bilstm_moe_bidirectional_94_forward_lstm_94_while_placeholder_2H
Dtopk_bilstm_moe_bidirectional_94_forward_lstm_94_while_placeholder_3
|topk_bilstm_moe_bidirectional_94_forward_lstm_94_while_less_topk_bilstm_moe_bidirectional_94_forward_lstm_94_strided_slice_1
topk_bilstm_moe_bidirectional_94_forward_lstm_94_while_topk_bilstm_moe_bidirectional_94_forward_lstm_94_while_cond_56042827___redundant_placeholder0
topk_bilstm_moe_bidirectional_94_forward_lstm_94_while_topk_bilstm_moe_bidirectional_94_forward_lstm_94_while_cond_56042827___redundant_placeholder1
topk_bilstm_moe_bidirectional_94_forward_lstm_94_while_topk_bilstm_moe_bidirectional_94_forward_lstm_94_while_cond_56042827___redundant_placeholder2
topk_bilstm_moe_bidirectional_94_forward_lstm_94_while_topk_bilstm_moe_bidirectional_94_forward_lstm_94_while_cond_56042827___redundant_placeholder3C
?topk_bilstm_moe_bidirectional_94_forward_lstm_94_while_identity
І
;topk_bilstm_moe/bidirectional_94/forward_lstm_94/while/LessLessBtopk_bilstm_moe_bidirectional_94_forward_lstm_94_while_placeholder|topk_bilstm_moe_bidirectional_94_forward_lstm_94_while_less_topk_bilstm_moe_bidirectional_94_forward_lstm_94_strided_slice_1*
T0*
_output_shapes
: ­
?topk_bilstm_moe/bidirectional_94/forward_lstm_94/while/IdentityIdentity?topk_bilstm_moe/bidirectional_94/forward_lstm_94/while/Less:z:0*
T0
*
_output_shapes
: "
?topk_bilstm_moe_bidirectional_94_forward_lstm_94_while_identityHtopk_bilstm_moe/bidirectional_94/forward_lstm_94/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : ::: :::::{ w

_output_shapes
: 
]
_user_specified_nameECtopk_bilstm_moe/bidirectional_94/forward_lstm_94/while/loop_counter:}

_output_shapes
: 
c
_user_specified_nameKItopk_bilstm_moe/bidirectional_94/forward_lstm_94/while/maximum_iterations:
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
_user_specified_nameB@topk_bilstm_moe/bidirectional_94/forward_lstm_94/strided_slice_1:

_output_shapes
:
Ь	
Э
while_cond_56043793
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_16
2while_while_cond_56043793___redundant_placeholder06
2while_while_cond_56043793___redundant_placeholder16
2while_while_cond_56043793___redundant_placeholder26
2while_while_cond_56043793___redundant_placeholder3
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
@: : : : :џџџџџџџџџ:џџџџџџџџџ: :::::J F
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
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
б	
љ
G__inference_dense_629_layer_call_and_return_conditional_losses_56045170

inputs1
matmul_readvariableop_resource:	-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
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
:	: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:G C

_output_shapes
:	
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
М:

N__inference_backward_lstm_94_layer_call_and_return_conditional_losses_56043863

inputs$
lstm_cell_56043781: $
lstm_cell_56043783:  
lstm_cell_56043785: 
identityЂ!lstm_cell/StatefulPartitionedCallЂwhileI
ShapeShapeinputs*
T0*
_output_shapes
::эЯ]
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
valueB:б
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
:џџџџџџџџџR
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
:џџџџџџџџџc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџR
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::эЯ_
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвX
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: }
	ReverseV2	ReverseV2transpose:y:0ReverseV2/axis:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   х
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensorReverseV2:output:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_maskю
!lstm_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_56043781lstm_cell_56043783lstm_cell_56043785*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_lstm_cell_layer_call_and_return_conditional_losses_56043780n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_56043781lstm_cell_56043783lstm_cell_56043785*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_56043794*
condR
while_cond_56043793*K
output_shapes:
8: : : : :џџџџџџџџџ:џџџџџџџџџ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџN
NoOpNoOp"^lstm_cell/StatefulPartitionedCall^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ: : : 2F
!lstm_cell/StatefulPartitionedCall!lstm_cell/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs:($
"
_user_specified_name
56043781:($
"
_user_specified_name
56043783:($
"
_user_specified_name
56043785
ф

,__inference_dense_612_layer_call_fn_56045788

inputs
unknown:
	unknown_0:
identityЂStatefulPartitionedCallз
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
GPU 2J 8 *P
fKRI
G__inference_dense_612_layer_call_and_return_conditional_losses_56044781j
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
56045782:($
"
_user_specified_name
56045784
ч
r
H__inference_lambda_104_layer_call_and_return_conditional_losses_56044838

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
­
Ї
1__inference_sequential_429_layer_call_fn_56043209
dense_618_input
unknown:
	unknown_0:
identityЂStatefulPartitionedCallю
StatefulPartitionedCallStatefulPartitionedCalldense_618_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_sequential_429_layer_call_and_return_conditional_losses_56043191s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
+
_output_shapes
:џџџџџџџџџ
)
_user_specified_namedense_618_input:($
"
_user_specified_name
56043203:($
"
_user_specified_name
56043205"ЪL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*
serving_default
6
input_5+
serving_default_input_5:04
	dense_629'
StatefulPartitionedCall:0tensorflow/serving/predict:аз

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
р
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
Ъ
)	variables
*trainable_variables
+regularization_losses
,	keras_api
-__call__
*.&call_and_return_all_conditional_losses
#/_self_saveable_object_factories"
_tf_keras_layer
Ъ
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
і
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
і
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
і
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
і
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
Ъ
[	variables
\trainable_variables
]regularization_losses
^	keras_api
___call__
*`&call_and_return_all_conditional_losses
#a_self_saveable_object_factories"
_tf_keras_layer
ё
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
с
k	variables
ltrainable_variables
mregularization_losses
n	keras_api
o__call__
*p&call_and_return_all_conditional_losses
q_random_generator
#r_self_saveable_object_factories"
_tf_keras_layer
Ъ
s	variables
ttrainable_variables
uregularization_losses
v	keras_api
w__call__
*x&call_and_return_all_conditional_losses
#y_self_saveable_object_factories"
_tf_keras_layer
у
z	variables
{trainable_variables
|regularization_losses
}	keras_api
~__call__
*&call_and_return_all_conditional_losses
kernel
	bias
$_self_saveable_object_factories"
_tf_keras_layer
Ж
"0
#1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17"
trackable_list_wrapper
Ж
"0
#1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17"
trackable_list_wrapper
 "
trackable_list_wrapper
Я
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
л
trace_0
trace_12 
2__inference_topk_bilstm_moe_layer_call_fn_56045593
2__inference_topk_bilstm_moe_layer_call_fn_56045634Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0ztrace_1

trace_0
trace_12ж
M__inference_topk_bilstm_moe_layer_call_and_return_conditional_losses_56045177
M__inference_topk_bilstm_moe_layer_call_and_return_conditional_losses_56045552Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0ztrace_1
ЮBЫ
#__inference__wrapped_model_56043066input_5"
В
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
-
serving_default"
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
В
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
 __call__
*!&call_and_return_all_conditional_losses
&!"call_and_return_conditional_losses"
_generic_user_object
ш
 trace_02Щ
,__inference_dense_612_layer_call_fn_56045788
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 z trace_0

Ёtrace_02ф
G__inference_dense_612_layer_call_and_return_conditional_losses_56045803
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zЁtrace_0
": 2dense_612/kernel
:2dense_612/bias
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
В
Ђnon_trainable_variables
Ѓlayers
Єmetrics
 Ѕlayer_regularization_losses
Іlayer_metrics
)	variables
*trainable_variables
+regularization_losses
-__call__
*.&call_and_return_all_conditional_losses
&."call_and_return_conditional_losses"
_generic_user_object
б
Їtrace_0
Јtrace_12
-__inference_lambda_102_layer_call_fn_56045809
-__inference_lambda_102_layer_call_fn_56045815Е
ЎВЊ
FullArgSpec)
args!
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsЂ

 
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zЇtrace_0zЈtrace_1

Љtrace_0
Њtrace_12Ь
H__inference_lambda_102_layer_call_and_return_conditional_losses_56045821
H__inference_lambda_102_layer_call_and_return_conditional_losses_56045827Е
ЎВЊ
FullArgSpec)
args!
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsЂ

 
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zЉtrace_0zЊtrace_1
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
В
Ћnon_trainable_variables
Ќlayers
­metrics
 Ўlayer_regularization_losses
Џlayer_metrics
0	variables
1trainable_variables
2regularization_losses
4__call__
*5&call_and_return_all_conditional_losses
&5"call_and_return_conditional_losses"
_generic_user_object
б
Аtrace_0
Бtrace_12
-__inference_lambda_103_layer_call_fn_56045833
-__inference_lambda_103_layer_call_fn_56045839Е
ЎВЊ
FullArgSpec)
args!
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsЂ

 
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zАtrace_0zБtrace_1

Вtrace_0
Гtrace_12Ь
H__inference_lambda_103_layer_call_and_return_conditional_losses_56045845
H__inference_lambda_103_layer_call_and_return_conditional_losses_56045851Е
ЎВЊ
FullArgSpec)
args!
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsЂ

 
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zВtrace_0zГtrace_1
 "
trackable_dict_wrapper
"
_generic_user_object
 "
trackable_dict_wrapper
щ
Д	variables
Еtrainable_variables
Жregularization_losses
З	keras_api
И__call__
+Й&call_and_return_all_conditional_losses
kernel
	bias
$К_self_saveable_object_factories"
_tf_keras_layer
0
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
В
Лnon_trainable_variables
Мlayers
Нmetrics
 Оlayer_regularization_losses
Пlayer_metrics
:	variables
;trainable_variables
<regularization_losses
>__call__
*?&call_and_return_all_conditional_losses
&?"call_and_return_conditional_losses"
_generic_user_object
й
Рtrace_0
Сtrace_12
1__inference_sequential_424_layer_call_fn_56043124
1__inference_sequential_424_layer_call_fn_56043133Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zРtrace_0zСtrace_1

Тtrace_0
Уtrace_12д
L__inference_sequential_424_layer_call_and_return_conditional_losses_56043106
L__inference_sequential_424_layer_call_and_return_conditional_losses_56043115Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zТtrace_0zУtrace_1
 "
trackable_dict_wrapper
щ
Ф	variables
Хtrainable_variables
Цregularization_losses
Ч	keras_api
Ш__call__
+Щ&call_and_return_all_conditional_losses
kernel
	bias
$Ъ_self_saveable_object_factories"
_tf_keras_layer
0
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
В
Ыnon_trainable_variables
Ьlayers
Эmetrics
 Юlayer_regularization_losses
Яlayer_metrics
B	variables
Ctrainable_variables
Dregularization_losses
F__call__
*G&call_and_return_all_conditional_losses
&G"call_and_return_conditional_losses"
_generic_user_object
й
аtrace_0
бtrace_12
1__inference_sequential_429_layer_call_fn_56043200
1__inference_sequential_429_layer_call_fn_56043209Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zаtrace_0zбtrace_1

вtrace_0
гtrace_12д
L__inference_sequential_429_layer_call_and_return_conditional_losses_56043182
L__inference_sequential_429_layer_call_and_return_conditional_losses_56043191Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zвtrace_0zгtrace_1
 "
trackable_dict_wrapper
щ
д	variables
еtrainable_variables
жregularization_losses
з	keras_api
и__call__
+й&call_and_return_all_conditional_losses
kernel
	bias
$к_self_saveable_object_factories"
_tf_keras_layer
0
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
В
лnon_trainable_variables
мlayers
нmetrics
 оlayer_regularization_losses
пlayer_metrics
J	variables
Ktrainable_variables
Lregularization_losses
N__call__
*O&call_and_return_all_conditional_losses
&O"call_and_return_conditional_losses"
_generic_user_object
й
рtrace_0
сtrace_12
1__inference_sequential_434_layer_call_fn_56043276
1__inference_sequential_434_layer_call_fn_56043285Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zрtrace_0zсtrace_1

тtrace_0
уtrace_12д
L__inference_sequential_434_layer_call_and_return_conditional_losses_56043258
L__inference_sequential_434_layer_call_and_return_conditional_losses_56043267Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zтtrace_0zуtrace_1
 "
trackable_dict_wrapper
щ
ф	variables
хtrainable_variables
цregularization_losses
ч	keras_api
ш__call__
+щ&call_and_return_all_conditional_losses
kernel
	bias
$ъ_self_saveable_object_factories"
_tf_keras_layer
0
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
В
ыnon_trainable_variables
ьlayers
эmetrics
 юlayer_regularization_losses
яlayer_metrics
R	variables
Strainable_variables
Tregularization_losses
V__call__
*W&call_and_return_all_conditional_losses
&W"call_and_return_conditional_losses"
_generic_user_object
й
№trace_0
ёtrace_12
1__inference_sequential_439_layer_call_fn_56043352
1__inference_sequential_439_layer_call_fn_56043361Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 z№trace_0zёtrace_1

ђtrace_0
ѓtrace_12д
L__inference_sequential_439_layer_call_and_return_conditional_losses_56043334
L__inference_sequential_439_layer_call_and_return_conditional_losses_56043343Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zђtrace_0zѓtrace_1
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
В
єnon_trainable_variables
ѕlayers
іmetrics
 їlayer_regularization_losses
јlayer_metrics
[	variables
\trainable_variables
]regularization_losses
___call__
*`&call_and_return_all_conditional_losses
&`"call_and_return_conditional_losses"
_generic_user_object
б
љtrace_0
њtrace_12
-__inference_lambda_104_layer_call_fn_56045857
-__inference_lambda_104_layer_call_fn_56045863Е
ЎВЊ
FullArgSpec)
args!
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsЂ

 
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zљtrace_0zњtrace_1

ћtrace_0
ќtrace_12Ь
H__inference_lambda_104_layer_call_and_return_conditional_losses_56045869
H__inference_lambda_104_layer_call_and_return_conditional_losses_56045875Е
ЎВЊ
FullArgSpec)
args!
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsЂ

 
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zћtrace_0zќtrace_1
 "
trackable_dict_wrapper
P
0
1
2
3
4
5"
trackable_list_wrapper
P
0
1
2
3
4
5"
trackable_list_wrapper
 "
trackable_list_wrapper
В
§non_trainable_variables
ўlayers
џmetrics
 layer_regularization_losses
layer_metrics
b	variables
ctrainable_variables
dregularization_losses
f__call__
*g&call_and_return_all_conditional_losses
&g"call_and_return_conditional_losses"
_generic_user_object
Ѕ
trace_0
trace_1
trace_2
trace_32В
3__inference_bidirectional_94_layer_call_fn_56045892
3__inference_bidirectional_94_layer_call_fn_56045909
3__inference_bidirectional_94_layer_call_fn_56045926
3__inference_bidirectional_94_layer_call_fn_56045943л
дВа
FullArgSpecG
args?<
jinputs

jtraining
jmask
jinitial_state
j	constants
varargs
 
varkw
 
defaultsЂ
p 

 

 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0ztrace_1ztrace_2ztrace_3

trace_0
trace_1
trace_2
trace_32
N__inference_bidirectional_94_layer_call_and_return_conditional_losses_56046231
N__inference_bidirectional_94_layer_call_and_return_conditional_losses_56046519
N__inference_bidirectional_94_layer_call_and_return_conditional_losses_56046807
N__inference_bidirectional_94_layer_call_and_return_conditional_losses_56047095л
дВа
FullArgSpecG
args?<
jinputs

jtraining
jmask
jinitial_state
j	constants
varargs
 
varkw
 
defaultsЂ
p 

 

 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0ztrace_1ztrace_2ztrace_3

	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
_random_generator
	cell

state_spec
$_self_saveable_object_factories"
_tf_keras_rnn_layer

	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
_random_generator
	cell

state_spec
$_self_saveable_object_factories"
_tf_keras_rnn_layer
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
В
non_trainable_variables
layers
 metrics
 Ёlayer_regularization_losses
Ђlayer_metrics
k	variables
ltrainable_variables
mregularization_losses
o__call__
*p&call_and_return_all_conditional_losses
&p"call_and_return_conditional_losses"
_generic_user_object
Х
Ѓtrace_0
Єtrace_12
-__inference_dropout_94_layer_call_fn_56047100
-__inference_dropout_94_layer_call_fn_56047105Љ
ЂВ
FullArgSpec!
args
jinputs

jtraining
varargs
 
varkw
 
defaultsЂ
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zЃtrace_0zЄtrace_1
ћ
Ѕtrace_0
Іtrace_12Р
H__inference_dropout_94_layer_call_and_return_conditional_losses_56047117
H__inference_dropout_94_layer_call_and_return_conditional_losses_56047122Љ
ЂВ
FullArgSpec!
args
jinputs

jtraining
varargs
 
varkw
 
defaultsЂ
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zЅtrace_0zІtrace_1
D
$Ї_self_saveable_object_factories"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
В
Јnon_trainable_variables
Љlayers
Њmetrics
 Ћlayer_regularization_losses
Ќlayer_metrics
s	variables
ttrainable_variables
uregularization_losses
w__call__
*x&call_and_return_all_conditional_losses
&x"call_and_return_conditional_losses"
_generic_user_object
щ
­trace_02Ъ
-__inference_flatten_94_layer_call_fn_56047127
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 z­trace_0

Ўtrace_02х
H__inference_flatten_94_layer_call_and_return_conditional_losses_56047133
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zЎtrace_0
 "
trackable_dict_wrapper
0
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
В
Џnon_trainable_variables
Аlayers
Бmetrics
 Вlayer_regularization_losses
Гlayer_metrics
z	variables
{trainable_variables
|regularization_losses
~__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ш
Дtrace_02Щ
,__inference_dense_629_layer_call_fn_56047142
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zДtrace_0

Еtrace_02ф
G__inference_dense_629_layer_call_and_return_conditional_losses_56047152
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zЕtrace_0
#:!	2dense_629/kernel
:2dense_629/bias
 "
trackable_dict_wrapper
": 2dense_613/kernel
:2dense_613/bias
": 2dense_618/kernel
:2dense_618/bias
": 2dense_623/kernel
:2dense_623/bias
": 2dense_628/kernel
:2dense_628/bias
C:A 21bidirectional_94/forward_lstm_94/lstm_cell/kernel
M:K 2;bidirectional_94/forward_lstm_94/lstm_cell/recurrent_kernel
=:; 2/bidirectional_94/forward_lstm_94/lstm_cell/bias
D:B 22bidirectional_94/backward_lstm_94/lstm_cell/kernel
N:L 2<bidirectional_94/backward_lstm_94/lstm_cell/recurrent_kernel
>:< 20bidirectional_94/backward_lstm_94/lstm_cell/bias
 "
trackable_list_wrapper

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
њBї
2__inference_topk_bilstm_moe_layer_call_fn_56045593input_5"Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
њBї
2__inference_topk_bilstm_moe_layer_call_fn_56045634input_5"Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
M__inference_topk_bilstm_moe_layer_call_and_return_conditional_losses_56045177input_5"Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
M__inference_topk_bilstm_moe_layer_call_and_return_conditional_losses_56045552input_5"Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ЭBЪ
&__inference_signature_wrapper_56045779input_5"
В
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
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
жBг
,__inference_dense_612_layer_call_fn_56045788inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ёBю
G__inference_dense_612_layer_call_and_return_conditional_losses_56045803inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
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
B§
-__inference_lambda_102_layer_call_fn_56045809inputs_0inputs_1"Е
ЎВЊ
FullArgSpec)
args!
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsЂ

 
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B§
-__inference_lambda_102_layer_call_fn_56045815inputs_0inputs_1"Е
ЎВЊ
FullArgSpec)
args!
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsЂ

 
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
H__inference_lambda_102_layer_call_and_return_conditional_losses_56045821inputs_0inputs_1"Е
ЎВЊ
FullArgSpec)
args!
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsЂ

 
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
H__inference_lambda_102_layer_call_and_return_conditional_losses_56045827inputs_0inputs_1"Е
ЎВЊ
FullArgSpec)
args!
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsЂ

 
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
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
B§
-__inference_lambda_103_layer_call_fn_56045833inputs_0inputs_1"Е
ЎВЊ
FullArgSpec)
args!
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsЂ

 
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B§
-__inference_lambda_103_layer_call_fn_56045839inputs_0inputs_1"Е
ЎВЊ
FullArgSpec)
args!
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsЂ

 
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
H__inference_lambda_103_layer_call_and_return_conditional_losses_56045845inputs_0inputs_1"Е
ЎВЊ
FullArgSpec)
args!
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsЂ

 
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
H__inference_lambda_103_layer_call_and_return_conditional_losses_56045851inputs_0inputs_1"Е
ЎВЊ
FullArgSpec)
args!
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsЂ

 
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
0
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
Жnon_trainable_variables
Зlayers
Иmetrics
 Йlayer_regularization_losses
Кlayer_metrics
Д	variables
Еtrainable_variables
Жregularization_losses
И__call__
+Й&call_and_return_all_conditional_losses
'Й"call_and_return_conditional_losses"
_generic_user_object
ш
Лtrace_02Щ
,__inference_dense_613_layer_call_fn_56047161
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zЛtrace_0

Мtrace_02ф
G__inference_dense_613_layer_call_and_return_conditional_losses_56047192
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zМtrace_0
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
Bў
1__inference_sequential_424_layer_call_fn_56043124dense_613_input"Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
Bў
1__inference_sequential_424_layer_call_fn_56043133dense_613_input"Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
L__inference_sequential_424_layer_call_and_return_conditional_losses_56043106dense_613_input"Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
L__inference_sequential_424_layer_call_and_return_conditional_losses_56043115dense_613_input"Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
0
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
Нnon_trainable_variables
Оlayers
Пmetrics
 Рlayer_regularization_losses
Сlayer_metrics
Ф	variables
Хtrainable_variables
Цregularization_losses
Ш__call__
+Щ&call_and_return_all_conditional_losses
'Щ"call_and_return_conditional_losses"
_generic_user_object
ш
Тtrace_02Щ
,__inference_dense_618_layer_call_fn_56047201
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zТtrace_0

Уtrace_02ф
G__inference_dense_618_layer_call_and_return_conditional_losses_56047232
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zУtrace_0
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
Bў
1__inference_sequential_429_layer_call_fn_56043200dense_618_input"Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
Bў
1__inference_sequential_429_layer_call_fn_56043209dense_618_input"Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
L__inference_sequential_429_layer_call_and_return_conditional_losses_56043182dense_618_input"Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
L__inference_sequential_429_layer_call_and_return_conditional_losses_56043191dense_618_input"Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
0
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
Фnon_trainable_variables
Хlayers
Цmetrics
 Чlayer_regularization_losses
Шlayer_metrics
д	variables
еtrainable_variables
жregularization_losses
и__call__
+й&call_and_return_all_conditional_losses
'й"call_and_return_conditional_losses"
_generic_user_object
ш
Щtrace_02Щ
,__inference_dense_623_layer_call_fn_56047241
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zЩtrace_0

Ъtrace_02ф
G__inference_dense_623_layer_call_and_return_conditional_losses_56047272
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zЪtrace_0
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
Bў
1__inference_sequential_434_layer_call_fn_56043276dense_623_input"Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
Bў
1__inference_sequential_434_layer_call_fn_56043285dense_623_input"Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
L__inference_sequential_434_layer_call_and_return_conditional_losses_56043258dense_623_input"Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
L__inference_sequential_434_layer_call_and_return_conditional_losses_56043267dense_623_input"Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
0
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
Ыnon_trainable_variables
Ьlayers
Эmetrics
 Юlayer_regularization_losses
Яlayer_metrics
ф	variables
хtrainable_variables
цregularization_losses
ш__call__
+щ&call_and_return_all_conditional_losses
'щ"call_and_return_conditional_losses"
_generic_user_object
ш
аtrace_02Щ
,__inference_dense_628_layer_call_fn_56047281
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zаtrace_0

бtrace_02ф
G__inference_dense_628_layer_call_and_return_conditional_losses_56047312
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zбtrace_0
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
Bў
1__inference_sequential_439_layer_call_fn_56043352dense_628_input"Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
Bў
1__inference_sequential_439_layer_call_fn_56043361dense_628_input"Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
L__inference_sequential_439_layer_call_and_return_conditional_losses_56043334dense_628_input"Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
L__inference_sequential_439_layer_call_and_return_conditional_losses_56043343dense_628_input"Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
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
B§
-__inference_lambda_104_layer_call_fn_56045857inputs_0inputs_1"Е
ЎВЊ
FullArgSpec)
args!
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsЂ

 
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B§
-__inference_lambda_104_layer_call_fn_56045863inputs_0inputs_1"Е
ЎВЊ
FullArgSpec)
args!
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsЂ

 
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
H__inference_lambda_104_layer_call_and_return_conditional_losses_56045869inputs_0inputs_1"Е
ЎВЊ
FullArgSpec)
args!
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsЂ

 
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
H__inference_lambda_104_layer_call_and_return_conditional_losses_56045875inputs_0inputs_1"Е
ЎВЊ
FullArgSpec)
args!
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsЂ

 
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
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
ЂB
3__inference_bidirectional_94_layer_call_fn_56045892inputs_0"л
дВа
FullArgSpecG
args?<
jinputs

jtraining
jmask
jinitial_state
j	constants
varargs
 
varkw
 
defaultsЂ
p 

 

 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ЂB
3__inference_bidirectional_94_layer_call_fn_56045909inputs_0"л
дВа
FullArgSpecG
args?<
jinputs

jtraining
jmask
jinitial_state
j	constants
varargs
 
varkw
 
defaultsЂ
p 

 

 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 B
3__inference_bidirectional_94_layer_call_fn_56045926inputs"л
дВа
FullArgSpecG
args?<
jinputs

jtraining
jmask
jinitial_state
j	constants
varargs
 
varkw
 
defaultsЂ
p 

 

 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 B
3__inference_bidirectional_94_layer_call_fn_56045943inputs"л
дВа
FullArgSpecG
args?<
jinputs

jtraining
jmask
jinitial_state
j	constants
varargs
 
varkw
 
defaultsЂ
p 

 

 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
НBК
N__inference_bidirectional_94_layer_call_and_return_conditional_losses_56046231inputs_0"л
дВа
FullArgSpecG
args?<
jinputs

jtraining
jmask
jinitial_state
j	constants
varargs
 
varkw
 
defaultsЂ
p 

 

 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
НBК
N__inference_bidirectional_94_layer_call_and_return_conditional_losses_56046519inputs_0"л
дВа
FullArgSpecG
args?<
jinputs

jtraining
jmask
jinitial_state
j	constants
varargs
 
varkw
 
defaultsЂ
p 

 

 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ЛBИ
N__inference_bidirectional_94_layer_call_and_return_conditional_losses_56046807inputs"л
дВа
FullArgSpecG
args?<
jinputs

jtraining
jmask
jinitial_state
j	constants
varargs
 
varkw
 
defaultsЂ
p 

 

 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ЛBИ
N__inference_bidirectional_94_layer_call_and_return_conditional_losses_56047095inputs"л
дВа
FullArgSpecG
args?<
jinputs

jtraining
jmask
jinitial_state
j	constants
varargs
 
varkw
 
defaultsЂ
p 

 

 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
8
0
1
2"
trackable_list_wrapper
8
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
Х
вstates
гnon_trainable_variables
дlayers
еmetrics
 жlayer_regularization_losses
зlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object

иtrace_0
йtrace_1
кtrace_2
лtrace_32
2__inference_forward_lstm_94_layer_call_fn_56047323
2__inference_forward_lstm_94_layer_call_fn_56047334
2__inference_forward_lstm_94_layer_call_fn_56047345
2__inference_forward_lstm_94_layer_call_fn_56047356Ъ
УВП
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЂ

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zиtrace_0zйtrace_1zкtrace_2zлtrace_3
ќ
мtrace_0
нtrace_1
оtrace_2
пtrace_32
M__inference_forward_lstm_94_layer_call_and_return_conditional_losses_56047499
M__inference_forward_lstm_94_layer_call_and_return_conditional_losses_56047642
M__inference_forward_lstm_94_layer_call_and_return_conditional_losses_56047785
M__inference_forward_lstm_94_layer_call_and_return_conditional_losses_56047928Ъ
УВП
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЂ

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zмtrace_0zнtrace_1zоtrace_2zпtrace_3
D
$р_self_saveable_object_factories"
_generic_user_object
Љ
с	variables
тtrainable_variables
уregularization_losses
ф	keras_api
х__call__
+ц&call_and_return_all_conditional_losses
ч_random_generator
ш
state_size
kernel
recurrent_kernel
	bias
$щ_self_saveable_object_factories"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
8
0
1
2"
trackable_list_wrapper
8
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
Х
ъstates
ыnon_trainable_variables
ьlayers
эmetrics
 юlayer_regularization_losses
яlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object

№trace_0
ёtrace_1
ђtrace_2
ѓtrace_32Ё
3__inference_backward_lstm_94_layer_call_fn_56047939
3__inference_backward_lstm_94_layer_call_fn_56047950
3__inference_backward_lstm_94_layer_call_fn_56047961
3__inference_backward_lstm_94_layer_call_fn_56047972Ъ
УВП
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЂ

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 z№trace_0zёtrace_1zђtrace_2zѓtrace_3

єtrace_0
ѕtrace_1
іtrace_2
їtrace_32
N__inference_backward_lstm_94_layer_call_and_return_conditional_losses_56048117
N__inference_backward_lstm_94_layer_call_and_return_conditional_losses_56048262
N__inference_backward_lstm_94_layer_call_and_return_conditional_losses_56048407
N__inference_backward_lstm_94_layer_call_and_return_conditional_losses_56048552Ъ
УВП
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЂ

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zєtrace_0zѕtrace_1zіtrace_2zїtrace_3
D
$ј_self_saveable_object_factories"
_generic_user_object
Љ
љ	variables
њtrainable_variables
ћregularization_losses
ќ	keras_api
§__call__
+ў&call_and_return_all_conditional_losses
џ_random_generator

state_size
kernel
recurrent_kernel
	bias
$_self_saveable_object_factories"
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
шBх
-__inference_dropout_94_layer_call_fn_56047100inputs"Љ
ЂВ
FullArgSpec!
args
jinputs

jtraining
varargs
 
varkw
 
defaultsЂ
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
шBх
-__inference_dropout_94_layer_call_fn_56047105inputs"Љ
ЂВ
FullArgSpec!
args
jinputs

jtraining
varargs
 
varkw
 
defaultsЂ
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
H__inference_dropout_94_layer_call_and_return_conditional_losses_56047117inputs"Љ
ЂВ
FullArgSpec!
args
jinputs

jtraining
varargs
 
varkw
 
defaultsЂ
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
H__inference_dropout_94_layer_call_and_return_conditional_losses_56047122inputs"Љ
ЂВ
FullArgSpec!
args
jinputs

jtraining
varargs
 
varkw
 
defaultsЂ
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
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
зBд
-__inference_flatten_94_layer_call_fn_56047127inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ђBя
H__inference_flatten_94_layer_call_and_return_conditional_losses_56047133inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
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
жBг
,__inference_dense_629_layer_call_fn_56047142inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ёBю
G__inference_dense_629_layer_call_and_return_conditional_losses_56047152inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
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
жBг
,__inference_dense_613_layer_call_fn_56047161inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ёBю
G__inference_dense_613_layer_call_and_return_conditional_losses_56047192inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
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
жBг
,__inference_dense_618_layer_call_fn_56047201inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ёBю
G__inference_dense_618_layer_call_and_return_conditional_losses_56047232inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
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
жBг
,__inference_dense_623_layer_call_fn_56047241inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ёBю
G__inference_dense_623_layer_call_and_return_conditional_losses_56047272inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
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
жBг
,__inference_dense_628_layer_call_fn_56047281inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ёBю
G__inference_dense_628_layer_call_and_return_conditional_losses_56047312inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
2__inference_forward_lstm_94_layer_call_fn_56047323inputs_0"Ъ
УВП
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЂ

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
2__inference_forward_lstm_94_layer_call_fn_56047334inputs_0"Ъ
УВП
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЂ

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
2__inference_forward_lstm_94_layer_call_fn_56047345inputs"Ъ
УВП
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЂ

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
2__inference_forward_lstm_94_layer_call_fn_56047356inputs"Ъ
УВП
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЂ

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ЋBЈ
M__inference_forward_lstm_94_layer_call_and_return_conditional_losses_56047499inputs_0"Ъ
УВП
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЂ

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ЋBЈ
M__inference_forward_lstm_94_layer_call_and_return_conditional_losses_56047642inputs_0"Ъ
УВП
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЂ

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ЉBІ
M__inference_forward_lstm_94_layer_call_and_return_conditional_losses_56047785inputs"Ъ
УВП
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЂ

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ЉBІ
M__inference_forward_lstm_94_layer_call_and_return_conditional_losses_56047928inputs"Ъ
УВП
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЂ

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_dict_wrapper
8
0
1
2"
trackable_list_wrapper
8
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
И
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
с	variables
тtrainable_variables
уregularization_losses
х__call__
+ц&call_and_return_all_conditional_losses
'ц"call_and_return_conditional_losses"
_generic_user_object
Э
trace_0
trace_12
,__inference_lstm_cell_layer_call_fn_56048569
,__inference_lstm_cell_layer_call_fn_56048586Г
ЌВЈ
FullArgSpec+
args# 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЂ
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0ztrace_1

trace_0
trace_12Ш
G__inference_lstm_cell_layer_call_and_return_conditional_losses_56048618
G__inference_lstm_cell_layer_call_and_return_conditional_losses_56048650Г
ЌВЈ
FullArgSpec+
args# 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЂ
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0ztrace_1
D
$_self_saveable_object_factories"
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
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
3__inference_backward_lstm_94_layer_call_fn_56047939inputs_0"Ъ
УВП
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЂ

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
3__inference_backward_lstm_94_layer_call_fn_56047950inputs_0"Ъ
УВП
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЂ

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
3__inference_backward_lstm_94_layer_call_fn_56047961inputs"Ъ
УВП
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЂ

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
3__inference_backward_lstm_94_layer_call_fn_56047972inputs"Ъ
УВП
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЂ

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ЌBЉ
N__inference_backward_lstm_94_layer_call_and_return_conditional_losses_56048117inputs_0"Ъ
УВП
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЂ

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ЌBЉ
N__inference_backward_lstm_94_layer_call_and_return_conditional_losses_56048262inputs_0"Ъ
УВП
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЂ

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ЊBЇ
N__inference_backward_lstm_94_layer_call_and_return_conditional_losses_56048407inputs"Ъ
УВП
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЂ

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ЊBЇ
N__inference_backward_lstm_94_layer_call_and_return_conditional_losses_56048552inputs"Ъ
УВП
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЂ

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_dict_wrapper
8
0
1
2"
trackable_list_wrapper
8
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
И
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
љ	variables
њtrainable_variables
ћregularization_losses
§__call__
+ў&call_and_return_all_conditional_losses
'ў"call_and_return_conditional_losses"
_generic_user_object
Э
trace_0
trace_12
,__inference_lstm_cell_layer_call_fn_56048667
,__inference_lstm_cell_layer_call_fn_56048684Г
ЌВЈ
FullArgSpec+
args# 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЂ
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0ztrace_1

trace_0
trace_12Ш
G__inference_lstm_cell_layer_call_and_return_conditional_losses_56048716
G__inference_lstm_cell_layer_call_and_return_conditional_losses_56048748Г
ЌВЈ
FullArgSpec+
args# 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЂ
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0ztrace_1
D
$_self_saveable_object_factories"
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
B
,__inference_lstm_cell_layer_call_fn_56048569inputsstates_0states_1"Г
ЌВЈ
FullArgSpec+
args# 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЂ
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
,__inference_lstm_cell_layer_call_fn_56048586inputsstates_0states_1"Г
ЌВЈ
FullArgSpec+
args# 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЂ
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 B
G__inference_lstm_cell_layer_call_and_return_conditional_losses_56048618inputsstates_0states_1"Г
ЌВЈ
FullArgSpec+
args# 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЂ
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 B
G__inference_lstm_cell_layer_call_and_return_conditional_losses_56048650inputsstates_0states_1"Г
ЌВЈ
FullArgSpec+
args# 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЂ
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
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
B
,__inference_lstm_cell_layer_call_fn_56048667inputsstates_0states_1"Г
ЌВЈ
FullArgSpec+
args# 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЂ
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
,__inference_lstm_cell_layer_call_fn_56048684inputsstates_0states_1"Г
ЌВЈ
FullArgSpec+
args# 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЂ
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 B
G__inference_lstm_cell_layer_call_and_return_conditional_losses_56048716inputsstates_0states_1"Г
ЌВЈ
FullArgSpec+
args# 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЂ
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 B
G__inference_lstm_cell_layer_call_and_return_conditional_losses_56048748inputsstates_0states_1"Г
ЌВЈ
FullArgSpec+
args# 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЂ
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_dict_wrapperІ
#__inference__wrapped_model_56043066""#+Ђ(
!Ђ

input_5
Њ ",Њ)
'
	dense_629
	dense_629ч
N__inference_backward_lstm_94_layer_call_and_return_conditional_losses_56048117OЂL
EЂB
41
/,
inputs_0џџџџџџџџџџџџџџџџџџ

 
p

 
Њ "9Ђ6
/,
tensor_0џџџџџџџџџџџџџџџџџџ
 ч
N__inference_backward_lstm_94_layer_call_and_return_conditional_losses_56048262OЂL
EЂB
41
/,
inputs_0џџџџџџџџџџџџџџџџџџ

 
p 

 
Њ "9Ђ6
/,
tensor_0џџџџџџџџџџџџџџџџџџ
 щ
N__inference_backward_lstm_94_layer_call_and_return_conditional_losses_56048407QЂN
GЂD
63
inputs'џџџџџџџџџџџџџџџџџџџџџџџџџџџ

 
p

 
Њ "9Ђ6
/,
tensor_0џџџџџџџџџџџџџџџџџџ
 щ
N__inference_backward_lstm_94_layer_call_and_return_conditional_losses_56048552QЂN
GЂD
63
inputs'џџџџџџџџџџџџџџџџџџџџџџџџџџџ

 
p 

 
Њ "9Ђ6
/,
tensor_0џџџџџџџџџџџџџџџџџџ
 С
3__inference_backward_lstm_94_layer_call_fn_56047939OЂL
EЂB
41
/,
inputs_0џџџџџџџџџџџџџџџџџџ

 
p

 
Њ ".+
unknownџџџџџџџџџџџџџџџџџџС
3__inference_backward_lstm_94_layer_call_fn_56047950OЂL
EЂB
41
/,
inputs_0џџџџџџџџџџџџџџџџџџ

 
p 

 
Њ ".+
unknownџџџџџџџџџџџџџџџџџџУ
3__inference_backward_lstm_94_layer_call_fn_56047961QЂN
GЂD
63
inputs'џџџџџџџџџџџџџџџџџџџџџџџџџџџ

 
p

 
Њ ".+
unknownџџџџџџџџџџџџџџџџџџУ
3__inference_backward_lstm_94_layer_call_fn_56047972QЂN
GЂD
63
inputs'џџџџџџџџџџџџџџџџџџџџџџџџџџџ

 
p 

 
Њ ".+
unknownџџџџџџџџџџџџџџџџџџњ
N__inference_bidirectional_94_layer_call_and_return_conditional_losses_56046231Ї\ЂY
RЂO
=:
85
inputs_0'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p

 

 

 
Њ "9Ђ6
/,
tensor_0џџџџџџџџџџџџџџџџџџ
 њ
N__inference_bidirectional_94_layer_call_and_return_conditional_losses_56046519Ї\ЂY
RЂO
=:
85
inputs_0'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p 

 

 

 
Њ "9Ђ6
/,
tensor_0џџџџџџџџџџџџџџџџџџ
 Х
N__inference_bidirectional_94_layer_call_and_return_conditional_losses_56046807s:Ђ7
0Ђ-

inputs
p

 

 

 
Њ "'Ђ$

tensor_0
 Х
N__inference_bidirectional_94_layer_call_and_return_conditional_losses_56047095s:Ђ7
0Ђ-

inputs
p 

 

 

 
Њ "'Ђ$

tensor_0
 д
3__inference_bidirectional_94_layer_call_fn_56045892\ЂY
RЂO
=:
85
inputs_0'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p

 

 

 
Њ ".+
unknownџџџџџџџџџџџџџџџџџџд
3__inference_bidirectional_94_layer_call_fn_56045909\ЂY
RЂO
=:
85
inputs_0'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p 

 

 

 
Њ ".+
unknownџџџџџџџџџџџџџџџџџџ
3__inference_bidirectional_94_layer_call_fn_56045926h:Ђ7
0Ђ-

inputs
p

 

 

 
Њ "
unknown
3__inference_bidirectional_94_layer_call_fn_56045943h:Ђ7
0Ђ-

inputs
p 

 

 

 
Њ "
unknownЄ
G__inference_dense_612_layer_call_and_return_conditional_losses_56045803Y"#*Ђ'
 Ђ

inputs
Њ "'Ђ$

tensor_0
 ~
,__inference_dense_612_layer_call_fn_56045788N"#*Ђ'
 Ђ

inputs
Њ "
unknownИ
G__inference_dense_613_layer_call_and_return_conditional_losses_56047192m3Ђ0
)Ђ&
$!
inputsџџџџџџџџџ
Њ "0Ђ-
&#
tensor_0џџџџџџџџџ
 
,__inference_dense_613_layer_call_fn_56047161b3Ђ0
)Ђ&
$!
inputsџџџџџџџџџ
Њ "%"
unknownџџџџџџџџџИ
G__inference_dense_618_layer_call_and_return_conditional_losses_56047232m3Ђ0
)Ђ&
$!
inputsџџџџџџџџџ
Њ "0Ђ-
&#
tensor_0џџџџџџџџџ
 
,__inference_dense_618_layer_call_fn_56047201b3Ђ0
)Ђ&
$!
inputsџџџџџџџџџ
Њ "%"
unknownџџџџџџџџџИ
G__inference_dense_623_layer_call_and_return_conditional_losses_56047272m3Ђ0
)Ђ&
$!
inputsџџџџџџџџџ
Њ "0Ђ-
&#
tensor_0џџџџџџџџџ
 
,__inference_dense_623_layer_call_fn_56047241b3Ђ0
)Ђ&
$!
inputsџџџџџџџџџ
Њ "%"
unknownџџџџџџџџџИ
G__inference_dense_628_layer_call_and_return_conditional_losses_56047312m3Ђ0
)Ђ&
$!
inputsџџџџџџџџџ
Њ "0Ђ-
&#
tensor_0џџџџџџџџџ
 
,__inference_dense_628_layer_call_fn_56047281b3Ђ0
)Ђ&
$!
inputsџџџџџџџџџ
Њ "%"
unknownџџџџџџџџџ
G__inference_dense_629_layer_call_and_return_conditional_losses_56047152T'Ђ$
Ђ

inputs	
Њ "#Ђ 

tensor_0
 y
,__inference_dense_629_layer_call_fn_56047142I'Ђ$
Ђ

inputs	
Њ "
unknownЅ
H__inference_dropout_94_layer_call_and_return_conditional_losses_56047117Y.Ђ+
$Ђ!

inputs
p
Њ "'Ђ$

tensor_0
 Ѕ
H__inference_dropout_94_layer_call_and_return_conditional_losses_56047122Y.Ђ+
$Ђ!

inputs
p 
Њ "'Ђ$

tensor_0
 
-__inference_dropout_94_layer_call_fn_56047100N.Ђ+
$Ђ!

inputs
p
Њ "
unknown
-__inference_dropout_94_layer_call_fn_56047105N.Ђ+
$Ђ!

inputs
p 
Њ "
unknown
H__inference_flatten_94_layer_call_and_return_conditional_losses_56047133R*Ђ'
 Ђ

inputs
Њ "$Ђ!

tensor_0	
 x
-__inference_flatten_94_layer_call_fn_56047127G*Ђ'
 Ђ

inputs
Њ "
unknown	ц
M__inference_forward_lstm_94_layer_call_and_return_conditional_losses_56047499OЂL
EЂB
41
/,
inputs_0џџџџџџџџџџџџџџџџџџ

 
p

 
Њ "9Ђ6
/,
tensor_0џџџџџџџџџџџџџџџџџџ
 ц
M__inference_forward_lstm_94_layer_call_and_return_conditional_losses_56047642OЂL
EЂB
41
/,
inputs_0џџџџџџџџџџџџџџџџџџ

 
p 

 
Њ "9Ђ6
/,
tensor_0џџџџџџџџџџџџџџџџџџ
 ш
M__inference_forward_lstm_94_layer_call_and_return_conditional_losses_56047785QЂN
GЂD
63
inputs'џџџџџџџџџџџџџџџџџџџџџџџџџџџ

 
p

 
Њ "9Ђ6
/,
tensor_0џџџџџџџџџџџџџџџџџџ
 ш
M__inference_forward_lstm_94_layer_call_and_return_conditional_losses_56047928QЂN
GЂD
63
inputs'џџџџџџџџџџџџџџџџџџџџџџџџџџџ

 
p 

 
Њ "9Ђ6
/,
tensor_0џџџџџџџџџџџџџџџџџџ
 Р
2__inference_forward_lstm_94_layer_call_fn_56047323OЂL
EЂB
41
/,
inputs_0џџџџџџџџџџџџџџџџџџ

 
p

 
Њ ".+
unknownџџџџџџџџџџџџџџџџџџР
2__inference_forward_lstm_94_layer_call_fn_56047334OЂL
EЂB
41
/,
inputs_0џџџџџџџџџџџџџџџџџџ

 
p 

 
Њ ".+
unknownџџџџџџџџџџџџџџџџџџТ
2__inference_forward_lstm_94_layer_call_fn_56047345QЂN
GЂD
63
inputs'џџџџџџџџџџџџџџџџџџџџџџџџџџџ

 
p

 
Њ ".+
unknownџџџџџџџџџџџџџџџџџџТ
2__inference_forward_lstm_94_layer_call_fn_56047356QЂN
GЂD
63
inputs'џџџџџџџџџџџџџџџџџџџџџџџџџџџ

 
p 

 
Њ ".+
unknownџџџџџџџџџџџџџџџџџџд
H__inference_lambda_102_layer_call_and_return_conditional_losses_56045821\ЂY
RЂO
EB

inputs_0
!
inputs_1

 
p
Њ "'Ђ$

tensor_0
 д
H__inference_lambda_102_layer_call_and_return_conditional_losses_56045827\ЂY
RЂO
EB

inputs_0
!
inputs_1

 
p 
Њ "'Ђ$

tensor_0
 ­
-__inference_lambda_102_layer_call_fn_56045809|\ЂY
RЂO
EB

inputs_0
!
inputs_1

 
p
Њ "
unknown­
-__inference_lambda_102_layer_call_fn_56045815|\ЂY
RЂO
EB

inputs_0
!
inputs_1

 
p 
Њ "
unknownд
H__inference_lambda_103_layer_call_and_return_conditional_losses_56045845XЂU
NЂK
A>

inputs_0

inputs_1

 
p
Њ "+Ђ(
!
tensor_0
 д
H__inference_lambda_103_layer_call_and_return_conditional_losses_56045851XЂU
NЂK
A>

inputs_0

inputs_1

 
p 
Њ "+Ђ(
!
tensor_0
 ­
-__inference_lambda_103_layer_call_fn_56045833|XЂU
NЂK
A>

inputs_0

inputs_1

 
p
Њ " 
unknown­
-__inference_lambda_103_layer_call_fn_56045839|XЂU
NЂK
A>

inputs_0

inputs_1

 
p 
Њ " 
unknownд
H__inference_lambda_104_layer_call_and_return_conditional_losses_56045869\ЂY
RЂO
EB
!
inputs_0

inputs_1

 
p
Њ "'Ђ$

tensor_0
 д
H__inference_lambda_104_layer_call_and_return_conditional_losses_56045875\ЂY
RЂO
EB
!
inputs_0

inputs_1

 
p 
Њ "'Ђ$

tensor_0
 ­
-__inference_lambda_104_layer_call_fn_56045857|\ЂY
RЂO
EB
!
inputs_0

inputs_1

 
p
Њ "
unknown­
-__inference_lambda_104_layer_call_fn_56045863|\ЂY
RЂO
EB
!
inputs_0

inputs_1

 
p 
Њ "
unknownу
G__inference_lstm_cell_layer_call_and_return_conditional_losses_56048618Ђ}
vЂs
 
inputsџџџџџџџџџ
KЂH
"
states_0џџџџџџџџџ
"
states_1џџџџџџџџџ
p
Њ "Ђ
~Ђ{
$!

tensor_0_0џџџџџџџџџ
SP
&#
tensor_0_1_0џџџџџџџџџ
&#
tensor_0_1_1џџџџџџџџџ
 у
G__inference_lstm_cell_layer_call_and_return_conditional_losses_56048650Ђ}
vЂs
 
inputsџџџџџџџџџ
KЂH
"
states_0џџџџџџџџџ
"
states_1џџџџџџџџџ
p 
Њ "Ђ
~Ђ{
$!

tensor_0_0џџџџџџџџџ
SP
&#
tensor_0_1_0џџџџџџџџџ
&#
tensor_0_1_1џџџџџџџџџ
 у
G__inference_lstm_cell_layer_call_and_return_conditional_losses_56048716Ђ}
vЂs
 
inputsџџџџџџџџџ
KЂH
"
states_0џџџџџџџџџ
"
states_1џџџџџџџџџ
p
Њ "Ђ
~Ђ{
$!

tensor_0_0џџџџџџџџџ
SP
&#
tensor_0_1_0џџџџџџџџџ
&#
tensor_0_1_1џџџџџџџџџ
 у
G__inference_lstm_cell_layer_call_and_return_conditional_losses_56048748Ђ}
vЂs
 
inputsџџџџџџџџџ
KЂH
"
states_0џџџџџџџџџ
"
states_1џџџџџџџџџ
p 
Њ "Ђ
~Ђ{
$!

tensor_0_0џџџџџџџџџ
SP
&#
tensor_0_1_0џџџџџџџџџ
&#
tensor_0_1_1џџџџџџџџџ
 Ж
,__inference_lstm_cell_layer_call_fn_56048569Ђ}
vЂs
 
inputsџџџџџџџџџ
KЂH
"
states_0џџџџџџџџџ
"
states_1џџџџџџџџџ
p
Њ "xЂu
"
tensor_0џџџџџџџџџ
OL
$!

tensor_1_0џџџџџџџџџ
$!

tensor_1_1џџџџџџџџџЖ
,__inference_lstm_cell_layer_call_fn_56048586Ђ}
vЂs
 
inputsџџџџџџџџџ
KЂH
"
states_0џџџџџџџџџ
"
states_1џџџџџџџџџ
p 
Њ "xЂu
"
tensor_0џџџџџџџџџ
OL
$!

tensor_1_0џџџџџџџџџ
$!

tensor_1_1џџџџџџџџџЖ
,__inference_lstm_cell_layer_call_fn_56048667Ђ}
vЂs
 
inputsџџџџџџџџџ
KЂH
"
states_0џџџџџџџџџ
"
states_1џџџџџџџџџ
p
Њ "xЂu
"
tensor_0џџџџџџџџџ
OL
$!

tensor_1_0џџџџџџџџџ
$!

tensor_1_1џџџџџџџџџЖ
,__inference_lstm_cell_layer_call_fn_56048684Ђ}
vЂs
 
inputsџџџџџџџџџ
KЂH
"
states_0џџџџџџџџџ
"
states_1џџџџџџџџџ
p 
Њ "xЂu
"
tensor_0џџџџџџџџџ
OL
$!

tensor_1_0џџџџџџџџџ
$!

tensor_1_1џџџџџџџџџЮ
L__inference_sequential_424_layer_call_and_return_conditional_losses_56043106~DЂA
:Ђ7
-*
dense_613_inputџџџџџџџџџ
p

 
Њ "0Ђ-
&#
tensor_0џџџџџџџџџ
 Ю
L__inference_sequential_424_layer_call_and_return_conditional_losses_56043115~DЂA
:Ђ7
-*
dense_613_inputџџџџџџџџџ
p 

 
Њ "0Ђ-
&#
tensor_0џџџџџџџџџ
 Ј
1__inference_sequential_424_layer_call_fn_56043124sDЂA
:Ђ7
-*
dense_613_inputџџџџџџџџџ
p

 
Њ "%"
unknownџџџџџџџџџЈ
1__inference_sequential_424_layer_call_fn_56043133sDЂA
:Ђ7
-*
dense_613_inputџџџџџџџџџ
p 

 
Њ "%"
unknownџџџџџџџџџЮ
L__inference_sequential_429_layer_call_and_return_conditional_losses_56043182~DЂA
:Ђ7
-*
dense_618_inputџџџџџџџџџ
p

 
Њ "0Ђ-
&#
tensor_0џџџџџџџџџ
 Ю
L__inference_sequential_429_layer_call_and_return_conditional_losses_56043191~DЂA
:Ђ7
-*
dense_618_inputџџџџџџџџџ
p 

 
Њ "0Ђ-
&#
tensor_0џџџџџџџџџ
 Ј
1__inference_sequential_429_layer_call_fn_56043200sDЂA
:Ђ7
-*
dense_618_inputџџџџџџџџџ
p

 
Њ "%"
unknownџџџџџџџџџЈ
1__inference_sequential_429_layer_call_fn_56043209sDЂA
:Ђ7
-*
dense_618_inputџџџџџџџџџ
p 

 
Њ "%"
unknownџџџџџџџџџЮ
L__inference_sequential_434_layer_call_and_return_conditional_losses_56043258~DЂA
:Ђ7
-*
dense_623_inputџџџџџџџџџ
p

 
Њ "0Ђ-
&#
tensor_0џџџџџџџџџ
 Ю
L__inference_sequential_434_layer_call_and_return_conditional_losses_56043267~DЂA
:Ђ7
-*
dense_623_inputџџџџџџџџџ
p 

 
Њ "0Ђ-
&#
tensor_0џџџџџџџџџ
 Ј
1__inference_sequential_434_layer_call_fn_56043276sDЂA
:Ђ7
-*
dense_623_inputџџџџџџџџџ
p

 
Њ "%"
unknownџџџџџџџџџЈ
1__inference_sequential_434_layer_call_fn_56043285sDЂA
:Ђ7
-*
dense_623_inputџџџџџџџџџ
p 

 
Њ "%"
unknownџџџџџџџџџЮ
L__inference_sequential_439_layer_call_and_return_conditional_losses_56043334~DЂA
:Ђ7
-*
dense_628_inputџџџџџџџџџ
p

 
Њ "0Ђ-
&#
tensor_0џџџџџџџџџ
 Ю
L__inference_sequential_439_layer_call_and_return_conditional_losses_56043343~DЂA
:Ђ7
-*
dense_628_inputџџџџџџџџџ
p 

 
Њ "0Ђ-
&#
tensor_0џџџџџџџџџ
 Ј
1__inference_sequential_439_layer_call_fn_56043352sDЂA
:Ђ7
-*
dense_628_inputџџџџџџџџџ
p

 
Њ "%"
unknownџџџџџџџџџЈ
1__inference_sequential_439_layer_call_fn_56043361sDЂA
:Ђ7
-*
dense_628_inputџџџџџџџџџ
p 

 
Њ "%"
unknownџџџџџџџџџЕ
&__inference_signature_wrapper_56045779""#6Ђ3
Ђ 
,Њ)
'
input_5
input_5",Њ)
'
	dense_629
	dense_629Я
M__inference_topk_bilstm_moe_layer_call_and_return_conditional_losses_56045177~""#3Ђ0
)Ђ&

input_5
p

 
Њ "#Ђ 

tensor_0
 Я
M__inference_topk_bilstm_moe_layer_call_and_return_conditional_losses_56045552~""#3Ђ0
)Ђ&

input_5
p 

 
Њ "#Ђ 

tensor_0
 Љ
2__inference_topk_bilstm_moe_layer_call_fn_56045593s""#3Ђ0
)Ђ&

input_5
p

 
Њ "
unknownЉ
2__inference_topk_bilstm_moe_layer_call_fn_56045634s""#3Ђ0
)Ђ&

input_5
p 

 
Њ "
unknown