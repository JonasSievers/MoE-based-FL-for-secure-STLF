��
��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
�
BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
$
DisableCopyOnRead
resource�
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
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �

NoOp
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
dtypetype�
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
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
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
�
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
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
L

StringJoin
inputs*N

output"

Nint("
	separatorstring 
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.13.02v2.13.0-rc2-7-g1cb1a030a628��	
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_2
[
count_2/Read/ReadVariableOpReadVariableOpcount_2*
_output_shapes
: *
dtype0
b
total_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_2
[
total_2/Read/ReadVariableOpReadVariableOptotal_2*
_output_shapes
: *
dtype0
b
count_3VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_3
[
count_3/Read/ReadVariableOpReadVariableOpcount_3*
_output_shapes
: *
dtype0
b
total_3VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_3
[
total_3/Read/ReadVariableOpReadVariableOptotal_3*
_output_shapes
: *
dtype0
�
Adam/v/dense_1025/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/v/dense_1025/bias
}
*Adam/v/dense_1025/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_1025/bias*
_output_shapes
:*
dtype0
�
Adam/m/dense_1025/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/m/dense_1025/bias
}
*Adam/m/dense_1025/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_1025/bias*
_output_shapes
:*
dtype0
�
Adam/v/dense_1025/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*)
shared_nameAdam/v/dense_1025/kernel
�
,Adam/v/dense_1025/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_1025/kernel*
_output_shapes
:	�*
dtype0
�
Adam/m/dense_1025/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*)
shared_nameAdam/m/dense_1025/kernel
�
,Adam/m/dense_1025/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_1025/kernel*
_output_shapes
:	�*
dtype0
�
Adam/v/dense_1024/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/v/dense_1024/bias
}
*Adam/v/dense_1024/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_1024/bias*
_output_shapes
: *
dtype0
�
Adam/m/dense_1024/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/m/dense_1024/bias
}
*Adam/m/dense_1024/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_1024/bias*
_output_shapes
: *
dtype0
�
Adam/v/dense_1024/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *)
shared_nameAdam/v/dense_1024/kernel
�
,Adam/v/dense_1024/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_1024/kernel*
_output_shapes

:  *
dtype0
�
Adam/m/dense_1024/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *)
shared_nameAdam/m/dense_1024/kernel
�
,Adam/m/dense_1024/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_1024/kernel*
_output_shapes

:  *
dtype0
�
Adam/v/dense_1023/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/v/dense_1023/bias
}
*Adam/v/dense_1023/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_1023/bias*
_output_shapes
: *
dtype0
�
Adam/m/dense_1023/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/m/dense_1023/bias
}
*Adam/m/dense_1023/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_1023/bias*
_output_shapes
: *
dtype0
�
Adam/v/dense_1023/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *)
shared_nameAdam/v/dense_1023/kernel
�
,Adam/v/dense_1023/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_1023/kernel*
_output_shapes

:  *
dtype0
�
Adam/m/dense_1023/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *)
shared_nameAdam/m/dense_1023/kernel
�
,Adam/m/dense_1023/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_1023/kernel*
_output_shapes

:  *
dtype0
�
Adam/v/dense_1022/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/v/dense_1022/bias
}
*Adam/v/dense_1022/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_1022/bias*
_output_shapes
: *
dtype0
�
Adam/m/dense_1022/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/m/dense_1022/bias
}
*Adam/m/dense_1022/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_1022/bias*
_output_shapes
: *
dtype0
�
Adam/v/dense_1022/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *)
shared_nameAdam/v/dense_1022/kernel
�
,Adam/v/dense_1022/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_1022/kernel*
_output_shapes

:  *
dtype0
�
Adam/m/dense_1022/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *)
shared_nameAdam/m/dense_1022/kernel
�
,Adam/m/dense_1022/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_1022/kernel*
_output_shapes

:  *
dtype0
�
Adam/v/dense_1021/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/v/dense_1021/bias
}
*Adam/v/dense_1021/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_1021/bias*
_output_shapes
: *
dtype0
�
Adam/m/dense_1021/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/m/dense_1021/bias
}
*Adam/m/dense_1021/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_1021/bias*
_output_shapes
: *
dtype0
�
Adam/v/dense_1021/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *)
shared_nameAdam/v/dense_1021/kernel
�
,Adam/v/dense_1021/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_1021/kernel*
_output_shapes

:  *
dtype0
�
Adam/m/dense_1021/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *)
shared_nameAdam/m/dense_1021/kernel
�
,Adam/m/dense_1021/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_1021/kernel*
_output_shapes

:  *
dtype0
�
Adam/v/dense_1020/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/v/dense_1020/bias
}
*Adam/v/dense_1020/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_1020/bias*
_output_shapes
: *
dtype0
�
Adam/m/dense_1020/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/m/dense_1020/bias
}
*Adam/m/dense_1020/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_1020/bias*
_output_shapes
: *
dtype0
�
Adam/v/dense_1020/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *)
shared_nameAdam/v/dense_1020/kernel
�
,Adam/v/dense_1020/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_1020/kernel*
_output_shapes

: *
dtype0
�
Adam/m/dense_1020/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *)
shared_nameAdam/m/dense_1020/kernel
�
,Adam/m/dense_1020/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_1020/kernel*
_output_shapes

: *
dtype0
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
f
	iterationVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	
v
dense_1025/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_namedense_1025/bias
o
#dense_1025/bias/Read/ReadVariableOpReadVariableOpdense_1025/bias*
_output_shapes
:*
dtype0

dense_1025/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*"
shared_namedense_1025/kernel
x
%dense_1025/kernel/Read/ReadVariableOpReadVariableOpdense_1025/kernel*
_output_shapes
:	�*
dtype0
v
dense_1024/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_namedense_1024/bias
o
#dense_1024/bias/Read/ReadVariableOpReadVariableOpdense_1024/bias*
_output_shapes
: *
dtype0
~
dense_1024/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *"
shared_namedense_1024/kernel
w
%dense_1024/kernel/Read/ReadVariableOpReadVariableOpdense_1024/kernel*
_output_shapes

:  *
dtype0
v
dense_1023/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_namedense_1023/bias
o
#dense_1023/bias/Read/ReadVariableOpReadVariableOpdense_1023/bias*
_output_shapes
: *
dtype0
~
dense_1023/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *"
shared_namedense_1023/kernel
w
%dense_1023/kernel/Read/ReadVariableOpReadVariableOpdense_1023/kernel*
_output_shapes

:  *
dtype0
v
dense_1022/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_namedense_1022/bias
o
#dense_1022/bias/Read/ReadVariableOpReadVariableOpdense_1022/bias*
_output_shapes
: *
dtype0
~
dense_1022/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *"
shared_namedense_1022/kernel
w
%dense_1022/kernel/Read/ReadVariableOpReadVariableOpdense_1022/kernel*
_output_shapes

:  *
dtype0
v
dense_1021/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_namedense_1021/bias
o
#dense_1021/bias/Read/ReadVariableOpReadVariableOpdense_1021/bias*
_output_shapes
: *
dtype0
~
dense_1021/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *"
shared_namedense_1021/kernel
w
%dense_1021/kernel/Read/ReadVariableOpReadVariableOpdense_1021/kernel*
_output_shapes

:  *
dtype0
v
dense_1020/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_namedense_1020/bias
o
#dense_1020/bias/Read/ReadVariableOpReadVariableOpdense_1020/bias*
_output_shapes
: *
dtype0
~
dense_1020/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *"
shared_namedense_1020/kernel
w
%dense_1020/kernel/Read/ReadVariableOpReadVariableOpdense_1020/kernel*
_output_shapes

: *
dtype0
r
serving_default_input_261Placeholder*"
_output_shapes
:*
dtype0*
shape:
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_261dense_1020/kerneldense_1020/biasdense_1021/kerneldense_1021/biasdense_1022/kerneldense_1022/biasdense_1023/kerneldense_1023/biasdense_1024/kerneldense_1024/biasdense_1025/kerneldense_1025/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� */
f*R(
&__inference_signature_wrapper_23446244

NoOpNoOp
�W
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�V
value�VB�V B�V
�
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer_with_weights-4
layer-5
layer-6
layer-7
	layer_with_weights-5
	layer-8

	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
* 
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias*
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
* &call_and_return_all_conditional_losses

!kernel
"bias*
�
#	variables
$trainable_variables
%regularization_losses
&	keras_api
'__call__
*(&call_and_return_all_conditional_losses

)kernel
*bias*
�
+	variables
,trainable_variables
-regularization_losses
.	keras_api
/__call__
*0&call_and_return_all_conditional_losses

1kernel
2bias*
�
3	variables
4trainable_variables
5regularization_losses
6	keras_api
7__call__
*8&call_and_return_all_conditional_losses

9kernel
:bias*
�
;	variables
<trainable_variables
=regularization_losses
>	keras_api
?__call__
*@&call_and_return_all_conditional_losses
A_random_generator* 
�
B	variables
Ctrainable_variables
Dregularization_losses
E	keras_api
F__call__
*G&call_and_return_all_conditional_losses* 
�
H	variables
Itrainable_variables
Jregularization_losses
K	keras_api
L__call__
*M&call_and_return_all_conditional_losses

Nkernel
Obias*
Z
0
1
!2
"3
)4
*5
16
27
98
:9
N10
O11*
Z
0
1
!2
"3
)4
*5
16
27
98
:9
N10
O11*
* 
�
Pnon_trainable_variables

Qlayers
Rmetrics
Slayer_regularization_losses
Tlayer_metrics

	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

Utrace_0
Vtrace_1* 

Wtrace_0
Xtrace_1* 
* 
�
Y
_variables
Z_iterations
[_learning_rate
\_index_dict
]
_momentums
^_velocities
__update_step_xla*

`serving_default* 

0
1*

0
1*
* 
�
anon_trainable_variables

blayers
cmetrics
dlayer_regularization_losses
elayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

ftrace_0* 

gtrace_0* 
a[
VARIABLE_VALUEdense_1020/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEdense_1020/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*

!0
"1*

!0
"1*
* 
�
hnon_trainable_variables

ilayers
jmetrics
klayer_regularization_losses
llayer_metrics
	variables
trainable_variables
regularization_losses
__call__
* &call_and_return_all_conditional_losses
& "call_and_return_conditional_losses*

mtrace_0* 

ntrace_0* 
a[
VARIABLE_VALUEdense_1021/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEdense_1021/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

)0
*1*

)0
*1*
* 
�
onon_trainable_variables

players
qmetrics
rlayer_regularization_losses
slayer_metrics
#	variables
$trainable_variables
%regularization_losses
'__call__
*(&call_and_return_all_conditional_losses
&("call_and_return_conditional_losses*

ttrace_0* 

utrace_0* 
a[
VARIABLE_VALUEdense_1022/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEdense_1022/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

10
21*

10
21*
* 
�
vnon_trainable_variables

wlayers
xmetrics
ylayer_regularization_losses
zlayer_metrics
+	variables
,trainable_variables
-regularization_losses
/__call__
*0&call_and_return_all_conditional_losses
&0"call_and_return_conditional_losses*

{trace_0* 

|trace_0* 
a[
VARIABLE_VALUEdense_1023/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEdense_1023/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*

90
:1*

90
:1*
* 
�
}non_trainable_variables

~layers
metrics
 �layer_regularization_losses
�layer_metrics
3	variables
4trainable_variables
5regularization_losses
7__call__
*8&call_and_return_all_conditional_losses
&8"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
a[
VARIABLE_VALUEdense_1024/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEdense_1024/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
;	variables
<trainable_variables
=regularization_losses
?__call__
*@&call_and_return_all_conditional_losses
&@"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
B	variables
Ctrainable_variables
Dregularization_losses
F__call__
*G&call_and_return_all_conditional_losses
&G"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

N0
O1*

N0
O1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
H	variables
Itrainable_variables
Jregularization_losses
L__call__
*M&call_and_return_all_conditional_losses
&M"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
a[
VARIABLE_VALUEdense_1025/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEdense_1025/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
C
0
1
2
3
4
5
6
7
	8*
$
�0
�1
�2
�3*
* 
* 
* 
* 
* 
* 
�
Z0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21
�22
�23
�24*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
f
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11*
f
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11*
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
* 
* 
* 
* 
<
�	variables
�	keras_api

�total

�count*
<
�	variables
�	keras_api

�total

�count*
M
�	variables
�	keras_api

�total

�count
�
_fn_kwargs*
M
�	variables
�	keras_api

�total

�count
�
_fn_kwargs*
c]
VARIABLE_VALUEAdam/m/dense_1020/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/v/dense_1020/kernel1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/dense_1020/bias1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/dense_1020/bias1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/m/dense_1021/kernel1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/v/dense_1021/kernel1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/dense_1021/bias1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/dense_1021/bias1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/m/dense_1022/kernel1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUEAdam/v/dense_1022/kernel2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/dense_1022/bias2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/dense_1022/bias2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUEAdam/m/dense_1023/kernel2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUEAdam/v/dense_1023/kernel2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/dense_1023/bias2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/dense_1023/bias2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUEAdam/m/dense_1024/kernel2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUEAdam/v/dense_1024/kernel2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/dense_1024/bias2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/dense_1024/bias2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUEAdam/m/dense_1025/kernel2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUEAdam/v/dense_1025/kernel2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/dense_1025/bias2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/dense_1025/bias2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
UO
VARIABLE_VALUEtotal_34keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_34keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
UO
VARIABLE_VALUEtotal_24keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_24keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

�0
�1*

�	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�	
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenamedense_1020/kerneldense_1020/biasdense_1021/kerneldense_1021/biasdense_1022/kerneldense_1022/biasdense_1023/kerneldense_1023/biasdense_1024/kerneldense_1024/biasdense_1025/kerneldense_1025/bias	iterationlearning_rateAdam/m/dense_1020/kernelAdam/v/dense_1020/kernelAdam/m/dense_1020/biasAdam/v/dense_1020/biasAdam/m/dense_1021/kernelAdam/v/dense_1021/kernelAdam/m/dense_1021/biasAdam/v/dense_1021/biasAdam/m/dense_1022/kernelAdam/v/dense_1022/kernelAdam/m/dense_1022/biasAdam/v/dense_1022/biasAdam/m/dense_1023/kernelAdam/v/dense_1023/kernelAdam/m/dense_1023/biasAdam/v/dense_1023/biasAdam/m/dense_1024/kernelAdam/v/dense_1024/kernelAdam/m/dense_1024/biasAdam/v/dense_1024/biasAdam/m/dense_1025/kernelAdam/v/dense_1025/kernelAdam/m/dense_1025/biasAdam/v/dense_1025/biastotal_3count_3total_2count_2total_1count_1totalcountConst*;
Tin4
220*
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
GPU 2J 8� **
f%R#
!__inference__traced_save_23446719
�	
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_1020/kerneldense_1020/biasdense_1021/kerneldense_1021/biasdense_1022/kerneldense_1022/biasdense_1023/kerneldense_1023/biasdense_1024/kerneldense_1024/biasdense_1025/kerneldense_1025/bias	iterationlearning_rateAdam/m/dense_1020/kernelAdam/v/dense_1020/kernelAdam/m/dense_1020/biasAdam/v/dense_1020/biasAdam/m/dense_1021/kernelAdam/v/dense_1021/kernelAdam/m/dense_1021/biasAdam/v/dense_1021/biasAdam/m/dense_1022/kernelAdam/v/dense_1022/kernelAdam/m/dense_1022/biasAdam/v/dense_1022/biasAdam/m/dense_1023/kernelAdam/v/dense_1023/kernelAdam/m/dense_1023/biasAdam/v/dense_1023/biasAdam/m/dense_1024/kernelAdam/v/dense_1024/kernelAdam/m/dense_1024/biasAdam/v/dense_1024/biasAdam/m/dense_1025/kernelAdam/v/dense_1025/kernelAdam/m/dense_1025/biasAdam/v/dense_1025/biastotal_3count_3total_2count_2total_1count_1totalcount*:
Tin3
12/*
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
GPU 2J 8� *-
f(R&
$__inference__traced_restore_23446866��
�
�
.__inference_Dense_model_layer_call_fn_23446114
	input_261
unknown: 
	unknown_0: 
	unknown_1:  
	unknown_2: 
	unknown_3:  
	unknown_4: 
	unknown_5:  
	unknown_6: 
	unknown_7:  
	unknown_8: 
	unknown_9:	�

unknown_10:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCall	input_261unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_Dense_model_layer_call_and_return_conditional_losses_23446044f
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:($
"
_user_specified_name
23446110:($
"
_user_specified_name
23446108:(
$
"
_user_specified_name
23446106:(	$
"
_user_specified_name
23446104:($
"
_user_specified_name
23446102:($
"
_user_specified_name
23446100:($
"
_user_specified_name
23446098:($
"
_user_specified_name
23446096:($
"
_user_specified_name
23446094:($
"
_user_specified_name
23446092:($
"
_user_specified_name
23446090:($
"
_user_specified_name
23446088:M I
"
_output_shapes
:
#
_user_specified_name	input_261
�
�
H__inference_dense_1021_layer_call_and_return_conditional_losses_23446292

inputs3
!tensordot_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Tensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:  *
dtype0h
Tensordot/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"�      p
Tensordot/ReshapeReshapeinputs Tensordot/Reshape/shape:output:0*
T0*
_output_shapes
:	� �
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*
_output_shapes
:	� d
Tensordot/shapeConst*
_output_shapes
:*
dtype0*!
valueB"          w
	TensordotReshapeTensordot/MatMul:product:0Tensordot/shape:output:0*
T0*"
_output_shapes
: r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0s
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*"
_output_shapes
: K
ReluReluBiasAdd:output:0*
T0*"
_output_shapes
: \
IdentityIdentityRelu:activations:0^NoOp*
T0*"
_output_shapes
: V
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*%
_input_shapes
: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:J F
"
_output_shapes
: 
 
_user_specified_nameinputs
�,
�
I__inference_Dense_model_layer_call_and_return_conditional_losses_23446044
	input_261%
dense_1020_23445923: !
dense_1020_23445925: %
dense_1021_23445943:  !
dense_1021_23445945: %
dense_1022_23445963:  !
dense_1022_23445965: %
dense_1023_23445983:  !
dense_1023_23445985: %
dense_1024_23446003:  !
dense_1024_23446005: &
dense_1025_23446038:	�!
dense_1025_23446040:
identity��"dense_1020/StatefulPartitionedCall�"dense_1021/StatefulPartitionedCall�"dense_1022/StatefulPartitionedCall�"dense_1023/StatefulPartitionedCall�"dense_1024/StatefulPartitionedCall�"dense_1025/StatefulPartitionedCall�#dropout_260/StatefulPartitionedCall�
"dense_1020/StatefulPartitionedCallStatefulPartitionedCall	input_261dense_1020_23445923dense_1020_23445925*
Tin
2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
: *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dense_1020_layer_call_and_return_conditional_losses_23445922�
"dense_1021/StatefulPartitionedCallStatefulPartitionedCall+dense_1020/StatefulPartitionedCall:output:0dense_1021_23445943dense_1021_23445945*
Tin
2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
: *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dense_1021_layer_call_and_return_conditional_losses_23445942�
"dense_1022/StatefulPartitionedCallStatefulPartitionedCall+dense_1021/StatefulPartitionedCall:output:0dense_1022_23445963dense_1022_23445965*
Tin
2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
: *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dense_1022_layer_call_and_return_conditional_losses_23445962�
"dense_1023/StatefulPartitionedCallStatefulPartitionedCall+dense_1022/StatefulPartitionedCall:output:0dense_1023_23445983dense_1023_23445985*
Tin
2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
: *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dense_1023_layer_call_and_return_conditional_losses_23445982�
"dense_1024/StatefulPartitionedCallStatefulPartitionedCall+dense_1023/StatefulPartitionedCall:output:0dense_1024_23446003dense_1024_23446005*
Tin
2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
: *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dense_1024_layer_call_and_return_conditional_losses_23446002�
#dropout_260/StatefulPartitionedCallStatefulPartitionedCall+dense_1024/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_dropout_260_layer_call_and_return_conditional_losses_23446019�
flatten_260/PartitionedCallPartitionedCall,dropout_260/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	�* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_flatten_260_layer_call_and_return_conditional_losses_23446026�
"dense_1025/StatefulPartitionedCallStatefulPartitionedCall$flatten_260/PartitionedCall:output:0dense_1025_23446038dense_1025_23446040*
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
GPU 2J 8� *Q
fLRJ
H__inference_dense_1025_layer_call_and_return_conditional_losses_23446037q
IdentityIdentity+dense_1025/StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:�
NoOpNoOp#^dense_1020/StatefulPartitionedCall#^dense_1021/StatefulPartitionedCall#^dense_1022/StatefulPartitionedCall#^dense_1023/StatefulPartitionedCall#^dense_1024/StatefulPartitionedCall#^dense_1025/StatefulPartitionedCall$^dropout_260/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:: : : : : : : : : : : : 2H
"dense_1020/StatefulPartitionedCall"dense_1020/StatefulPartitionedCall2H
"dense_1021/StatefulPartitionedCall"dense_1021/StatefulPartitionedCall2H
"dense_1022/StatefulPartitionedCall"dense_1022/StatefulPartitionedCall2H
"dense_1023/StatefulPartitionedCall"dense_1023/StatefulPartitionedCall2H
"dense_1024/StatefulPartitionedCall"dense_1024/StatefulPartitionedCall2H
"dense_1025/StatefulPartitionedCall"dense_1025/StatefulPartitionedCall2J
#dropout_260/StatefulPartitionedCall#dropout_260/StatefulPartitionedCall:($
"
_user_specified_name
23446040:($
"
_user_specified_name
23446038:(
$
"
_user_specified_name
23446005:(	$
"
_user_specified_name
23446003:($
"
_user_specified_name
23445985:($
"
_user_specified_name
23445983:($
"
_user_specified_name
23445965:($
"
_user_specified_name
23445963:($
"
_user_specified_name
23445945:($
"
_user_specified_name
23445943:($
"
_user_specified_name
23445925:($
"
_user_specified_name
23445923:M I
"
_output_shapes
:
#
_user_specified_name	input_261
�	
�
H__inference_dense_1025_layer_call_and_return_conditional_losses_23446037

inputs1
matmul_readvariableop_resource:	�-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
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
:	�: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:G C

_output_shapes
:	�
 
_user_specified_nameinputs
�
�
H__inference_dense_1020_layer_call_and_return_conditional_losses_23446268

inputs3
!tensordot_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Tensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

: *
dtype0h
Tensordot/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"�     p
Tensordot/ReshapeReshapeinputs Tensordot/Reshape/shape:output:0*
T0*
_output_shapes
:	��
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*
_output_shapes
:	� d
Tensordot/shapeConst*
_output_shapes
:*
dtype0*!
valueB"          w
	TensordotReshapeTensordot/MatMul:product:0Tensordot/shape:output:0*
T0*"
_output_shapes
: r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0s
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*"
_output_shapes
: K
ReluReluBiasAdd:output:0*
T0*"
_output_shapes
: \
IdentityIdentityRelu:activations:0^NoOp*
T0*"
_output_shapes
: V
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*%
_input_shapes
:: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:J F
"
_output_shapes
:
 
_user_specified_nameinputs
�
g
.__inference_dropout_260_layer_call_fn_23446369

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_dropout_260_layer_call_and_return_conditional_losses_23446019j
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*"
_output_shapes
: <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: 22
StatefulPartitionedCallStatefulPartitionedCall:J F
"
_output_shapes
: 
 
_user_specified_nameinputs
�
�
H__inference_dense_1023_layer_call_and_return_conditional_losses_23446340

inputs3
!tensordot_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Tensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:  *
dtype0h
Tensordot/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"�      p
Tensordot/ReshapeReshapeinputs Tensordot/Reshape/shape:output:0*
T0*
_output_shapes
:	� �
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*
_output_shapes
:	� d
Tensordot/shapeConst*
_output_shapes
:*
dtype0*!
valueB"          w
	TensordotReshapeTensordot/MatMul:product:0Tensordot/shape:output:0*
T0*"
_output_shapes
: r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0s
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*"
_output_shapes
: K
ReluReluBiasAdd:output:0*
T0*"
_output_shapes
: \
IdentityIdentityRelu:activations:0^NoOp*
T0*"
_output_shapes
: V
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*%
_input_shapes
: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:J F
"
_output_shapes
: 
 
_user_specified_nameinputs
�
�
&__inference_signature_wrapper_23446244
	input_261
unknown: 
	unknown_0: 
	unknown_1:  
	unknown_2: 
	unknown_3:  
	unknown_4: 
	unknown_5:  
	unknown_6: 
	unknown_7:  
	unknown_8: 
	unknown_9:	�

unknown_10:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCall	input_261unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *,
f'R%
#__inference__wrapped_model_23445905f
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:($
"
_user_specified_name
23446240:($
"
_user_specified_name
23446238:(
$
"
_user_specified_name
23446236:(	$
"
_user_specified_name
23446234:($
"
_user_specified_name
23446232:($
"
_user_specified_name
23446230:($
"
_user_specified_name
23446228:($
"
_user_specified_name
23446226:($
"
_user_specified_name
23446224:($
"
_user_specified_name
23446222:($
"
_user_specified_name
23446220:($
"
_user_specified_name
23446218:M I
"
_output_shapes
:
#
_user_specified_name	input_261
��
�)
!__inference__traced_save_23446719
file_prefix:
(read_disablecopyonread_dense_1020_kernel: 6
(read_1_disablecopyonread_dense_1020_bias: <
*read_2_disablecopyonread_dense_1021_kernel:  6
(read_3_disablecopyonread_dense_1021_bias: <
*read_4_disablecopyonread_dense_1022_kernel:  6
(read_5_disablecopyonread_dense_1022_bias: <
*read_6_disablecopyonread_dense_1023_kernel:  6
(read_7_disablecopyonread_dense_1023_bias: <
*read_8_disablecopyonread_dense_1024_kernel:  6
(read_9_disablecopyonread_dense_1024_bias: >
+read_10_disablecopyonread_dense_1025_kernel:	�7
)read_11_disablecopyonread_dense_1025_bias:-
#read_12_disablecopyonread_iteration:	 1
'read_13_disablecopyonread_learning_rate: D
2read_14_disablecopyonread_adam_m_dense_1020_kernel: D
2read_15_disablecopyonread_adam_v_dense_1020_kernel: >
0read_16_disablecopyonread_adam_m_dense_1020_bias: >
0read_17_disablecopyonread_adam_v_dense_1020_bias: D
2read_18_disablecopyonread_adam_m_dense_1021_kernel:  D
2read_19_disablecopyonread_adam_v_dense_1021_kernel:  >
0read_20_disablecopyonread_adam_m_dense_1021_bias: >
0read_21_disablecopyonread_adam_v_dense_1021_bias: D
2read_22_disablecopyonread_adam_m_dense_1022_kernel:  D
2read_23_disablecopyonread_adam_v_dense_1022_kernel:  >
0read_24_disablecopyonread_adam_m_dense_1022_bias: >
0read_25_disablecopyonread_adam_v_dense_1022_bias: D
2read_26_disablecopyonread_adam_m_dense_1023_kernel:  D
2read_27_disablecopyonread_adam_v_dense_1023_kernel:  >
0read_28_disablecopyonread_adam_m_dense_1023_bias: >
0read_29_disablecopyonread_adam_v_dense_1023_bias: D
2read_30_disablecopyonread_adam_m_dense_1024_kernel:  D
2read_31_disablecopyonread_adam_v_dense_1024_kernel:  >
0read_32_disablecopyonread_adam_m_dense_1024_bias: >
0read_33_disablecopyonread_adam_v_dense_1024_bias: E
2read_34_disablecopyonread_adam_m_dense_1025_kernel:	�E
2read_35_disablecopyonread_adam_v_dense_1025_kernel:	�>
0read_36_disablecopyonread_adam_m_dense_1025_bias:>
0read_37_disablecopyonread_adam_v_dense_1025_bias:+
!read_38_disablecopyonread_total_3: +
!read_39_disablecopyonread_count_3: +
!read_40_disablecopyonread_total_2: +
!read_41_disablecopyonread_count_2: +
!read_42_disablecopyonread_total_1: +
!read_43_disablecopyonread_count_1: )
read_44_disablecopyonread_total: )
read_45_disablecopyonread_count: 
savev2_const
identity_93��MergeV2Checkpoints�Read/DisableCopyOnRead�Read/ReadVariableOp�Read_1/DisableCopyOnRead�Read_1/ReadVariableOp�Read_10/DisableCopyOnRead�Read_10/ReadVariableOp�Read_11/DisableCopyOnRead�Read_11/ReadVariableOp�Read_12/DisableCopyOnRead�Read_12/ReadVariableOp�Read_13/DisableCopyOnRead�Read_13/ReadVariableOp�Read_14/DisableCopyOnRead�Read_14/ReadVariableOp�Read_15/DisableCopyOnRead�Read_15/ReadVariableOp�Read_16/DisableCopyOnRead�Read_16/ReadVariableOp�Read_17/DisableCopyOnRead�Read_17/ReadVariableOp�Read_18/DisableCopyOnRead�Read_18/ReadVariableOp�Read_19/DisableCopyOnRead�Read_19/ReadVariableOp�Read_2/DisableCopyOnRead�Read_2/ReadVariableOp�Read_20/DisableCopyOnRead�Read_20/ReadVariableOp�Read_21/DisableCopyOnRead�Read_21/ReadVariableOp�Read_22/DisableCopyOnRead�Read_22/ReadVariableOp�Read_23/DisableCopyOnRead�Read_23/ReadVariableOp�Read_24/DisableCopyOnRead�Read_24/ReadVariableOp�Read_25/DisableCopyOnRead�Read_25/ReadVariableOp�Read_26/DisableCopyOnRead�Read_26/ReadVariableOp�Read_27/DisableCopyOnRead�Read_27/ReadVariableOp�Read_28/DisableCopyOnRead�Read_28/ReadVariableOp�Read_29/DisableCopyOnRead�Read_29/ReadVariableOp�Read_3/DisableCopyOnRead�Read_3/ReadVariableOp�Read_30/DisableCopyOnRead�Read_30/ReadVariableOp�Read_31/DisableCopyOnRead�Read_31/ReadVariableOp�Read_32/DisableCopyOnRead�Read_32/ReadVariableOp�Read_33/DisableCopyOnRead�Read_33/ReadVariableOp�Read_34/DisableCopyOnRead�Read_34/ReadVariableOp�Read_35/DisableCopyOnRead�Read_35/ReadVariableOp�Read_36/DisableCopyOnRead�Read_36/ReadVariableOp�Read_37/DisableCopyOnRead�Read_37/ReadVariableOp�Read_38/DisableCopyOnRead�Read_38/ReadVariableOp�Read_39/DisableCopyOnRead�Read_39/ReadVariableOp�Read_4/DisableCopyOnRead�Read_4/ReadVariableOp�Read_40/DisableCopyOnRead�Read_40/ReadVariableOp�Read_41/DisableCopyOnRead�Read_41/ReadVariableOp�Read_42/DisableCopyOnRead�Read_42/ReadVariableOp�Read_43/DisableCopyOnRead�Read_43/ReadVariableOp�Read_44/DisableCopyOnRead�Read_44/ReadVariableOp�Read_45/DisableCopyOnRead�Read_45/ReadVariableOp�Read_5/DisableCopyOnRead�Read_5/ReadVariableOp�Read_6/DisableCopyOnRead�Read_6/ReadVariableOp�Read_7/DisableCopyOnRead�Read_7/ReadVariableOp�Read_8/DisableCopyOnRead�Read_8/ReadVariableOp�Read_9/DisableCopyOnRead�Read_9/ReadVariableOpw
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
_temp/part�
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
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: z
Read/DisableCopyOnReadDisableCopyOnRead(read_disablecopyonread_dense_1020_kernel"/device:CPU:0*
_output_shapes
 �
Read/ReadVariableOpReadVariableOp(read_disablecopyonread_dense_1020_kernel^Read/DisableCopyOnRead"/device:CPU:0*
_output_shapes

: *
dtype0i
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

: a

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*
_output_shapes

: |
Read_1/DisableCopyOnReadDisableCopyOnRead(read_1_disablecopyonread_dense_1020_bias"/device:CPU:0*
_output_shapes
 �
Read_1/ReadVariableOpReadVariableOp(read_1_disablecopyonread_dense_1020_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0i

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
: ~
Read_2/DisableCopyOnReadDisableCopyOnRead*read_2_disablecopyonread_dense_1021_kernel"/device:CPU:0*
_output_shapes
 �
Read_2/ReadVariableOpReadVariableOp*read_2_disablecopyonread_dense_1021_kernel^Read_2/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:  *
dtype0m

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:  c

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*
_output_shapes

:  |
Read_3/DisableCopyOnReadDisableCopyOnRead(read_3_disablecopyonread_dense_1021_bias"/device:CPU:0*
_output_shapes
 �
Read_3/ReadVariableOpReadVariableOp(read_3_disablecopyonread_dense_1021_bias^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0i

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes
: ~
Read_4/DisableCopyOnReadDisableCopyOnRead*read_4_disablecopyonread_dense_1022_kernel"/device:CPU:0*
_output_shapes
 �
Read_4/ReadVariableOpReadVariableOp*read_4_disablecopyonread_dense_1022_kernel^Read_4/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:  *
dtype0m

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:  c

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*
_output_shapes

:  |
Read_5/DisableCopyOnReadDisableCopyOnRead(read_5_disablecopyonread_dense_1022_bias"/device:CPU:0*
_output_shapes
 �
Read_5/ReadVariableOpReadVariableOp(read_5_disablecopyonread_dense_1022_bias^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0j
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes
: ~
Read_6/DisableCopyOnReadDisableCopyOnRead*read_6_disablecopyonread_dense_1023_kernel"/device:CPU:0*
_output_shapes
 �
Read_6/ReadVariableOpReadVariableOp*read_6_disablecopyonread_dense_1023_kernel^Read_6/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:  *
dtype0n
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:  e
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*
_output_shapes

:  |
Read_7/DisableCopyOnReadDisableCopyOnRead(read_7_disablecopyonread_dense_1023_bias"/device:CPU:0*
_output_shapes
 �
Read_7/ReadVariableOpReadVariableOp(read_7_disablecopyonread_dense_1023_bias^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0j
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes
: ~
Read_8/DisableCopyOnReadDisableCopyOnRead*read_8_disablecopyonread_dense_1024_kernel"/device:CPU:0*
_output_shapes
 �
Read_8/ReadVariableOpReadVariableOp*read_8_disablecopyonread_dense_1024_kernel^Read_8/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:  *
dtype0n
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:  e
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*
_output_shapes

:  |
Read_9/DisableCopyOnReadDisableCopyOnRead(read_9_disablecopyonread_dense_1024_bias"/device:CPU:0*
_output_shapes
 �
Read_9/ReadVariableOpReadVariableOp(read_9_disablecopyonread_dense_1024_bias^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0j
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_10/DisableCopyOnReadDisableCopyOnRead+read_10_disablecopyonread_dense_1025_kernel"/device:CPU:0*
_output_shapes
 �
Read_10/ReadVariableOpReadVariableOp+read_10_disablecopyonread_dense_1025_kernel^Read_10/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�*
dtype0p
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�f
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*
_output_shapes
:	�~
Read_11/DisableCopyOnReadDisableCopyOnRead)read_11_disablecopyonread_dense_1025_bias"/device:CPU:0*
_output_shapes
 �
Read_11/ReadVariableOpReadVariableOp)read_11_disablecopyonread_dense_1025_bias^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes
:x
Read_12/DisableCopyOnReadDisableCopyOnRead#read_12_disablecopyonread_iteration"/device:CPU:0*
_output_shapes
 �
Read_12/ReadVariableOpReadVariableOp#read_12_disablecopyonread_iteration^Read_12/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	g
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: ]
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0	*
_output_shapes
: |
Read_13/DisableCopyOnReadDisableCopyOnRead'read_13_disablecopyonread_learning_rate"/device:CPU:0*
_output_shapes
 �
Read_13/ReadVariableOpReadVariableOp'read_13_disablecopyonread_learning_rate^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_14/DisableCopyOnReadDisableCopyOnRead2read_14_disablecopyonread_adam_m_dense_1020_kernel"/device:CPU:0*
_output_shapes
 �
Read_14/ReadVariableOpReadVariableOp2read_14_disablecopyonread_adam_m_dense_1020_kernel^Read_14/DisableCopyOnRead"/device:CPU:0*
_output_shapes

: *
dtype0o
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

: e
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*
_output_shapes

: �
Read_15/DisableCopyOnReadDisableCopyOnRead2read_15_disablecopyonread_adam_v_dense_1020_kernel"/device:CPU:0*
_output_shapes
 �
Read_15/ReadVariableOpReadVariableOp2read_15_disablecopyonread_adam_v_dense_1020_kernel^Read_15/DisableCopyOnRead"/device:CPU:0*
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

: �
Read_16/DisableCopyOnReadDisableCopyOnRead0read_16_disablecopyonread_adam_m_dense_1020_bias"/device:CPU:0*
_output_shapes
 �
Read_16/ReadVariableOpReadVariableOp0read_16_disablecopyonread_adam_m_dense_1020_bias^Read_16/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_17/DisableCopyOnReadDisableCopyOnRead0read_17_disablecopyonread_adam_v_dense_1020_bias"/device:CPU:0*
_output_shapes
 �
Read_17/ReadVariableOpReadVariableOp0read_17_disablecopyonread_adam_v_dense_1020_bias^Read_17/DisableCopyOnRead"/device:CPU:0*
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
: �
Read_18/DisableCopyOnReadDisableCopyOnRead2read_18_disablecopyonread_adam_m_dense_1021_kernel"/device:CPU:0*
_output_shapes
 �
Read_18/ReadVariableOpReadVariableOp2read_18_disablecopyonread_adam_m_dense_1021_kernel^Read_18/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:  *
dtype0o
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:  e
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*
_output_shapes

:  �
Read_19/DisableCopyOnReadDisableCopyOnRead2read_19_disablecopyonread_adam_v_dense_1021_kernel"/device:CPU:0*
_output_shapes
 �
Read_19/ReadVariableOpReadVariableOp2read_19_disablecopyonread_adam_v_dense_1021_kernel^Read_19/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:  *
dtype0o
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:  e
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*
_output_shapes

:  �
Read_20/DisableCopyOnReadDisableCopyOnRead0read_20_disablecopyonread_adam_m_dense_1021_bias"/device:CPU:0*
_output_shapes
 �
Read_20/ReadVariableOpReadVariableOp0read_20_disablecopyonread_adam_m_dense_1021_bias^Read_20/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_40IdentityRead_20/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_21/DisableCopyOnReadDisableCopyOnRead0read_21_disablecopyonread_adam_v_dense_1021_bias"/device:CPU:0*
_output_shapes
 �
Read_21/ReadVariableOpReadVariableOp0read_21_disablecopyonread_adam_v_dense_1021_bias^Read_21/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_42IdentityRead_21/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_22/DisableCopyOnReadDisableCopyOnRead2read_22_disablecopyonread_adam_m_dense_1022_kernel"/device:CPU:0*
_output_shapes
 �
Read_22/ReadVariableOpReadVariableOp2read_22_disablecopyonread_adam_m_dense_1022_kernel^Read_22/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:  *
dtype0o
Identity_44IdentityRead_22/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:  e
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0*
_output_shapes

:  �
Read_23/DisableCopyOnReadDisableCopyOnRead2read_23_disablecopyonread_adam_v_dense_1022_kernel"/device:CPU:0*
_output_shapes
 �
Read_23/ReadVariableOpReadVariableOp2read_23_disablecopyonread_adam_v_dense_1022_kernel^Read_23/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:  *
dtype0o
Identity_46IdentityRead_23/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:  e
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*
_output_shapes

:  �
Read_24/DisableCopyOnReadDisableCopyOnRead0read_24_disablecopyonread_adam_m_dense_1022_bias"/device:CPU:0*
_output_shapes
 �
Read_24/ReadVariableOpReadVariableOp0read_24_disablecopyonread_adam_m_dense_1022_bias^Read_24/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_48IdentityRead_24/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_49IdentityIdentity_48:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_25/DisableCopyOnReadDisableCopyOnRead0read_25_disablecopyonread_adam_v_dense_1022_bias"/device:CPU:0*
_output_shapes
 �
Read_25/ReadVariableOpReadVariableOp0read_25_disablecopyonread_adam_v_dense_1022_bias^Read_25/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_50IdentityRead_25/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_51IdentityIdentity_50:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_26/DisableCopyOnReadDisableCopyOnRead2read_26_disablecopyonread_adam_m_dense_1023_kernel"/device:CPU:0*
_output_shapes
 �
Read_26/ReadVariableOpReadVariableOp2read_26_disablecopyonread_adam_m_dense_1023_kernel^Read_26/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:  *
dtype0o
Identity_52IdentityRead_26/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:  e
Identity_53IdentityIdentity_52:output:0"/device:CPU:0*
T0*
_output_shapes

:  �
Read_27/DisableCopyOnReadDisableCopyOnRead2read_27_disablecopyonread_adam_v_dense_1023_kernel"/device:CPU:0*
_output_shapes
 �
Read_27/ReadVariableOpReadVariableOp2read_27_disablecopyonread_adam_v_dense_1023_kernel^Read_27/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:  *
dtype0o
Identity_54IdentityRead_27/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:  e
Identity_55IdentityIdentity_54:output:0"/device:CPU:0*
T0*
_output_shapes

:  �
Read_28/DisableCopyOnReadDisableCopyOnRead0read_28_disablecopyonread_adam_m_dense_1023_bias"/device:CPU:0*
_output_shapes
 �
Read_28/ReadVariableOpReadVariableOp0read_28_disablecopyonread_adam_m_dense_1023_bias^Read_28/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_56IdentityRead_28/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_57IdentityIdentity_56:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_29/DisableCopyOnReadDisableCopyOnRead0read_29_disablecopyonread_adam_v_dense_1023_bias"/device:CPU:0*
_output_shapes
 �
Read_29/ReadVariableOpReadVariableOp0read_29_disablecopyonread_adam_v_dense_1023_bias^Read_29/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_58IdentityRead_29/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_59IdentityIdentity_58:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_30/DisableCopyOnReadDisableCopyOnRead2read_30_disablecopyonread_adam_m_dense_1024_kernel"/device:CPU:0*
_output_shapes
 �
Read_30/ReadVariableOpReadVariableOp2read_30_disablecopyonread_adam_m_dense_1024_kernel^Read_30/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:  *
dtype0o
Identity_60IdentityRead_30/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:  e
Identity_61IdentityIdentity_60:output:0"/device:CPU:0*
T0*
_output_shapes

:  �
Read_31/DisableCopyOnReadDisableCopyOnRead2read_31_disablecopyonread_adam_v_dense_1024_kernel"/device:CPU:0*
_output_shapes
 �
Read_31/ReadVariableOpReadVariableOp2read_31_disablecopyonread_adam_v_dense_1024_kernel^Read_31/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:  *
dtype0o
Identity_62IdentityRead_31/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:  e
Identity_63IdentityIdentity_62:output:0"/device:CPU:0*
T0*
_output_shapes

:  �
Read_32/DisableCopyOnReadDisableCopyOnRead0read_32_disablecopyonread_adam_m_dense_1024_bias"/device:CPU:0*
_output_shapes
 �
Read_32/ReadVariableOpReadVariableOp0read_32_disablecopyonread_adam_m_dense_1024_bias^Read_32/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_64IdentityRead_32/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_65IdentityIdentity_64:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_33/DisableCopyOnReadDisableCopyOnRead0read_33_disablecopyonread_adam_v_dense_1024_bias"/device:CPU:0*
_output_shapes
 �
Read_33/ReadVariableOpReadVariableOp0read_33_disablecopyonread_adam_v_dense_1024_bias^Read_33/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_66IdentityRead_33/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_67IdentityIdentity_66:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_34/DisableCopyOnReadDisableCopyOnRead2read_34_disablecopyonread_adam_m_dense_1025_kernel"/device:CPU:0*
_output_shapes
 �
Read_34/ReadVariableOpReadVariableOp2read_34_disablecopyonread_adam_m_dense_1025_kernel^Read_34/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�*
dtype0p
Identity_68IdentityRead_34/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�f
Identity_69IdentityIdentity_68:output:0"/device:CPU:0*
T0*
_output_shapes
:	��
Read_35/DisableCopyOnReadDisableCopyOnRead2read_35_disablecopyonread_adam_v_dense_1025_kernel"/device:CPU:0*
_output_shapes
 �
Read_35/ReadVariableOpReadVariableOp2read_35_disablecopyonread_adam_v_dense_1025_kernel^Read_35/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�*
dtype0p
Identity_70IdentityRead_35/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�f
Identity_71IdentityIdentity_70:output:0"/device:CPU:0*
T0*
_output_shapes
:	��
Read_36/DisableCopyOnReadDisableCopyOnRead0read_36_disablecopyonread_adam_m_dense_1025_bias"/device:CPU:0*
_output_shapes
 �
Read_36/ReadVariableOpReadVariableOp0read_36_disablecopyonread_adam_m_dense_1025_bias^Read_36/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_72IdentityRead_36/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_73IdentityIdentity_72:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_37/DisableCopyOnReadDisableCopyOnRead0read_37_disablecopyonread_adam_v_dense_1025_bias"/device:CPU:0*
_output_shapes
 �
Read_37/ReadVariableOpReadVariableOp0read_37_disablecopyonread_adam_v_dense_1025_bias^Read_37/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_74IdentityRead_37/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_75IdentityIdentity_74:output:0"/device:CPU:0*
T0*
_output_shapes
:v
Read_38/DisableCopyOnReadDisableCopyOnRead!read_38_disablecopyonread_total_3"/device:CPU:0*
_output_shapes
 �
Read_38/ReadVariableOpReadVariableOp!read_38_disablecopyonread_total_3^Read_38/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_76IdentityRead_38/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_77IdentityIdentity_76:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_39/DisableCopyOnReadDisableCopyOnRead!read_39_disablecopyonread_count_3"/device:CPU:0*
_output_shapes
 �
Read_39/ReadVariableOpReadVariableOp!read_39_disablecopyonread_count_3^Read_39/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_78IdentityRead_39/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_79IdentityIdentity_78:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_40/DisableCopyOnReadDisableCopyOnRead!read_40_disablecopyonread_total_2"/device:CPU:0*
_output_shapes
 �
Read_40/ReadVariableOpReadVariableOp!read_40_disablecopyonread_total_2^Read_40/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_80IdentityRead_40/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_81IdentityIdentity_80:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_41/DisableCopyOnReadDisableCopyOnRead!read_41_disablecopyonread_count_2"/device:CPU:0*
_output_shapes
 �
Read_41/ReadVariableOpReadVariableOp!read_41_disablecopyonread_count_2^Read_41/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_82IdentityRead_41/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_83IdentityIdentity_82:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_42/DisableCopyOnReadDisableCopyOnRead!read_42_disablecopyonread_total_1"/device:CPU:0*
_output_shapes
 �
Read_42/ReadVariableOpReadVariableOp!read_42_disablecopyonread_total_1^Read_42/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_84IdentityRead_42/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_85IdentityIdentity_84:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_43/DisableCopyOnReadDisableCopyOnRead!read_43_disablecopyonread_count_1"/device:CPU:0*
_output_shapes
 �
Read_43/ReadVariableOpReadVariableOp!read_43_disablecopyonread_count_1^Read_43/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_86IdentityRead_43/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_87IdentityIdentity_86:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_44/DisableCopyOnReadDisableCopyOnReadread_44_disablecopyonread_total"/device:CPU:0*
_output_shapes
 �
Read_44/ReadVariableOpReadVariableOpread_44_disablecopyonread_total^Read_44/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_88IdentityRead_44/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_89IdentityIdentity_88:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_45/DisableCopyOnReadDisableCopyOnReadread_45_disablecopyonread_count"/device:CPU:0*
_output_shapes
 �
Read_45/ReadVariableOpReadVariableOpread_45_disablecopyonread_count^Read_45/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_90IdentityRead_45/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_91IdentityIdentity_90:output:0"/device:CPU:0*
T0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:/*
dtype0*�
value�B�/B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:/*
dtype0*q
valuehBf/B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �	
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0Identity_55:output:0Identity_57:output:0Identity_59:output:0Identity_61:output:0Identity_63:output:0Identity_65:output:0Identity_67:output:0Identity_69:output:0Identity_71:output:0Identity_73:output:0Identity_75:output:0Identity_77:output:0Identity_79:output:0Identity_81:output:0Identity_83:output:0Identity_85:output:0Identity_87:output:0Identity_89:output:0Identity_91:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *=
dtypes3
12/	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_92Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_93IdentityIdentity_92:output:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_24/DisableCopyOnRead^Read_24/ReadVariableOp^Read_25/DisableCopyOnRead^Read_25/ReadVariableOp^Read_26/DisableCopyOnRead^Read_26/ReadVariableOp^Read_27/DisableCopyOnRead^Read_27/ReadVariableOp^Read_28/DisableCopyOnRead^Read_28/ReadVariableOp^Read_29/DisableCopyOnRead^Read_29/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_30/DisableCopyOnRead^Read_30/ReadVariableOp^Read_31/DisableCopyOnRead^Read_31/ReadVariableOp^Read_32/DisableCopyOnRead^Read_32/ReadVariableOp^Read_33/DisableCopyOnRead^Read_33/ReadVariableOp^Read_34/DisableCopyOnRead^Read_34/ReadVariableOp^Read_35/DisableCopyOnRead^Read_35/ReadVariableOp^Read_36/DisableCopyOnRead^Read_36/ReadVariableOp^Read_37/DisableCopyOnRead^Read_37/ReadVariableOp^Read_38/DisableCopyOnRead^Read_38/ReadVariableOp^Read_39/DisableCopyOnRead^Read_39/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_40/DisableCopyOnRead^Read_40/ReadVariableOp^Read_41/DisableCopyOnRead^Read_41/ReadVariableOp^Read_42/DisableCopyOnRead^Read_42/ReadVariableOp^Read_43/DisableCopyOnRead^Read_43/ReadVariableOp^Read_44/DisableCopyOnRead^Read_44/ReadVariableOp^Read_45/DisableCopyOnRead^Read_45/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*
_output_shapes
 "#
identity_93Identity_93:output:0*(
_construction_contextkEagerRuntime*s
_input_shapesb
`: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2(
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
Read_17/ReadVariableOpRead_17/ReadVariableOp26
Read_18/DisableCopyOnReadRead_18/DisableCopyOnRead20
Read_18/ReadVariableOpRead_18/ReadVariableOp26
Read_19/DisableCopyOnReadRead_19/DisableCopyOnRead20
Read_19/ReadVariableOpRead_19/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp26
Read_20/DisableCopyOnReadRead_20/DisableCopyOnRead20
Read_20/ReadVariableOpRead_20/ReadVariableOp26
Read_21/DisableCopyOnReadRead_21/DisableCopyOnRead20
Read_21/ReadVariableOpRead_21/ReadVariableOp26
Read_22/DisableCopyOnReadRead_22/DisableCopyOnRead20
Read_22/ReadVariableOpRead_22/ReadVariableOp26
Read_23/DisableCopyOnReadRead_23/DisableCopyOnRead20
Read_23/ReadVariableOpRead_23/ReadVariableOp26
Read_24/DisableCopyOnReadRead_24/DisableCopyOnRead20
Read_24/ReadVariableOpRead_24/ReadVariableOp26
Read_25/DisableCopyOnReadRead_25/DisableCopyOnRead20
Read_25/ReadVariableOpRead_25/ReadVariableOp26
Read_26/DisableCopyOnReadRead_26/DisableCopyOnRead20
Read_26/ReadVariableOpRead_26/ReadVariableOp26
Read_27/DisableCopyOnReadRead_27/DisableCopyOnRead20
Read_27/ReadVariableOpRead_27/ReadVariableOp26
Read_28/DisableCopyOnReadRead_28/DisableCopyOnRead20
Read_28/ReadVariableOpRead_28/ReadVariableOp26
Read_29/DisableCopyOnReadRead_29/DisableCopyOnRead20
Read_29/ReadVariableOpRead_29/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp26
Read_30/DisableCopyOnReadRead_30/DisableCopyOnRead20
Read_30/ReadVariableOpRead_30/ReadVariableOp26
Read_31/DisableCopyOnReadRead_31/DisableCopyOnRead20
Read_31/ReadVariableOpRead_31/ReadVariableOp26
Read_32/DisableCopyOnReadRead_32/DisableCopyOnRead20
Read_32/ReadVariableOpRead_32/ReadVariableOp26
Read_33/DisableCopyOnReadRead_33/DisableCopyOnRead20
Read_33/ReadVariableOpRead_33/ReadVariableOp26
Read_34/DisableCopyOnReadRead_34/DisableCopyOnRead20
Read_34/ReadVariableOpRead_34/ReadVariableOp26
Read_35/DisableCopyOnReadRead_35/DisableCopyOnRead20
Read_35/ReadVariableOpRead_35/ReadVariableOp26
Read_36/DisableCopyOnReadRead_36/DisableCopyOnRead20
Read_36/ReadVariableOpRead_36/ReadVariableOp26
Read_37/DisableCopyOnReadRead_37/DisableCopyOnRead20
Read_37/ReadVariableOpRead_37/ReadVariableOp26
Read_38/DisableCopyOnReadRead_38/DisableCopyOnRead20
Read_38/ReadVariableOpRead_38/ReadVariableOp26
Read_39/DisableCopyOnReadRead_39/DisableCopyOnRead20
Read_39/ReadVariableOpRead_39/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp26
Read_40/DisableCopyOnReadRead_40/DisableCopyOnRead20
Read_40/ReadVariableOpRead_40/ReadVariableOp26
Read_41/DisableCopyOnReadRead_41/DisableCopyOnRead20
Read_41/ReadVariableOpRead_41/ReadVariableOp26
Read_42/DisableCopyOnReadRead_42/DisableCopyOnRead20
Read_42/ReadVariableOpRead_42/ReadVariableOp26
Read_43/DisableCopyOnReadRead_43/DisableCopyOnRead20
Read_43/ReadVariableOpRead_43/ReadVariableOp26
Read_44/DisableCopyOnReadRead_44/DisableCopyOnRead20
Read_44/ReadVariableOpRead_44/ReadVariableOp26
Read_45/DisableCopyOnReadRead_45/DisableCopyOnRead20
Read_45/ReadVariableOpRead_45/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:=/9

_output_shapes
: 

_user_specified_nameConst:%.!

_user_specified_namecount:%-!

_user_specified_nametotal:',#
!
_user_specified_name	count_1:'+#
!
_user_specified_name	total_1:'*#
!
_user_specified_name	count_2:')#
!
_user_specified_name	total_2:'(#
!
_user_specified_name	count_3:''#
!
_user_specified_name	total_3:6&2
0
_user_specified_nameAdam/v/dense_1025/bias:6%2
0
_user_specified_nameAdam/m/dense_1025/bias:8$4
2
_user_specified_nameAdam/v/dense_1025/kernel:8#4
2
_user_specified_nameAdam/m/dense_1025/kernel:6"2
0
_user_specified_nameAdam/v/dense_1024/bias:6!2
0
_user_specified_nameAdam/m/dense_1024/bias:8 4
2
_user_specified_nameAdam/v/dense_1024/kernel:84
2
_user_specified_nameAdam/m/dense_1024/kernel:62
0
_user_specified_nameAdam/v/dense_1023/bias:62
0
_user_specified_nameAdam/m/dense_1023/bias:84
2
_user_specified_nameAdam/v/dense_1023/kernel:84
2
_user_specified_nameAdam/m/dense_1023/kernel:62
0
_user_specified_nameAdam/v/dense_1022/bias:62
0
_user_specified_nameAdam/m/dense_1022/bias:84
2
_user_specified_nameAdam/v/dense_1022/kernel:84
2
_user_specified_nameAdam/m/dense_1022/kernel:62
0
_user_specified_nameAdam/v/dense_1021/bias:62
0
_user_specified_nameAdam/m/dense_1021/bias:84
2
_user_specified_nameAdam/v/dense_1021/kernel:84
2
_user_specified_nameAdam/m/dense_1021/kernel:62
0
_user_specified_nameAdam/v/dense_1020/bias:62
0
_user_specified_nameAdam/m/dense_1020/bias:84
2
_user_specified_nameAdam/v/dense_1020/kernel:84
2
_user_specified_nameAdam/m/dense_1020/kernel:-)
'
_user_specified_namelearning_rate:)%
#
_user_specified_name	iteration:/+
)
_user_specified_namedense_1025/bias:1-
+
_user_specified_namedense_1025/kernel:/
+
)
_user_specified_namedense_1024/bias:1	-
+
_user_specified_namedense_1024/kernel:/+
)
_user_specified_namedense_1023/bias:1-
+
_user_specified_namedense_1023/kernel:/+
)
_user_specified_namedense_1022/bias:1-
+
_user_specified_namedense_1022/kernel:/+
)
_user_specified_namedense_1021/bias:1-
+
_user_specified_namedense_1021/kernel:/+
)
_user_specified_namedense_1020/bias:1-
+
_user_specified_namedense_1020/kernel:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
g
I__inference_dropout_260_layer_call_and_return_conditional_losses_23446076

inputs

identity_1I
IdentityIdentityinputs*
T0*"
_output_shapes
: V

Identity_1IdentityIdentity:output:0*
T0*"
_output_shapes
: "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: :J F
"
_output_shapes
: 
 
_user_specified_nameinputs
�
�
H__inference_dense_1023_layer_call_and_return_conditional_losses_23445982

inputs3
!tensordot_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Tensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:  *
dtype0h
Tensordot/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"�      p
Tensordot/ReshapeReshapeinputs Tensordot/Reshape/shape:output:0*
T0*
_output_shapes
:	� �
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*
_output_shapes
:	� d
Tensordot/shapeConst*
_output_shapes
:*
dtype0*!
valueB"          w
	TensordotReshapeTensordot/MatMul:product:0Tensordot/shape:output:0*
T0*"
_output_shapes
: r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0s
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*"
_output_shapes
: K
ReluReluBiasAdd:output:0*
T0*"
_output_shapes
: \
IdentityIdentityRelu:activations:0^NoOp*
T0*"
_output_shapes
: V
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*%
_input_shapes
: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:J F
"
_output_shapes
: 
 
_user_specified_nameinputs
�b
�
#__inference__wrapped_model_23445905
	input_261J
8dense_model_dense_1020_tensordot_readvariableop_resource: D
6dense_model_dense_1020_biasadd_readvariableop_resource: J
8dense_model_dense_1021_tensordot_readvariableop_resource:  D
6dense_model_dense_1021_biasadd_readvariableop_resource: J
8dense_model_dense_1022_tensordot_readvariableop_resource:  D
6dense_model_dense_1022_biasadd_readvariableop_resource: J
8dense_model_dense_1023_tensordot_readvariableop_resource:  D
6dense_model_dense_1023_biasadd_readvariableop_resource: J
8dense_model_dense_1024_tensordot_readvariableop_resource:  D
6dense_model_dense_1024_biasadd_readvariableop_resource: H
5dense_model_dense_1025_matmul_readvariableop_resource:	�D
6dense_model_dense_1025_biasadd_readvariableop_resource:
identity��-Dense_model/dense_1020/BiasAdd/ReadVariableOp�/Dense_model/dense_1020/Tensordot/ReadVariableOp�-Dense_model/dense_1021/BiasAdd/ReadVariableOp�/Dense_model/dense_1021/Tensordot/ReadVariableOp�-Dense_model/dense_1022/BiasAdd/ReadVariableOp�/Dense_model/dense_1022/Tensordot/ReadVariableOp�-Dense_model/dense_1023/BiasAdd/ReadVariableOp�/Dense_model/dense_1023/Tensordot/ReadVariableOp�-Dense_model/dense_1024/BiasAdd/ReadVariableOp�/Dense_model/dense_1024/Tensordot/ReadVariableOp�-Dense_model/dense_1025/BiasAdd/ReadVariableOp�,Dense_model/dense_1025/MatMul/ReadVariableOp�
/Dense_model/dense_1020/Tensordot/ReadVariableOpReadVariableOp8dense_model_dense_1020_tensordot_readvariableop_resource*
_output_shapes

: *
dtype0
.Dense_model/dense_1020/Tensordot/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"�     �
(Dense_model/dense_1020/Tensordot/ReshapeReshape	input_2617Dense_model/dense_1020/Tensordot/Reshape/shape:output:0*
T0*
_output_shapes
:	��
'Dense_model/dense_1020/Tensordot/MatMulMatMul1Dense_model/dense_1020/Tensordot/Reshape:output:07Dense_model/dense_1020/Tensordot/ReadVariableOp:value:0*
T0*
_output_shapes
:	� {
&Dense_model/dense_1020/Tensordot/shapeConst*
_output_shapes
:*
dtype0*!
valueB"          �
 Dense_model/dense_1020/TensordotReshape1Dense_model/dense_1020/Tensordot/MatMul:product:0/Dense_model/dense_1020/Tensordot/shape:output:0*
T0*"
_output_shapes
: �
-Dense_model/dense_1020/BiasAdd/ReadVariableOpReadVariableOp6dense_model_dense_1020_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
Dense_model/dense_1020/BiasAddBiasAdd)Dense_model/dense_1020/Tensordot:output:05Dense_model/dense_1020/BiasAdd/ReadVariableOp:value:0*
T0*"
_output_shapes
: y
Dense_model/dense_1020/ReluRelu'Dense_model/dense_1020/BiasAdd:output:0*
T0*"
_output_shapes
: �
/Dense_model/dense_1021/Tensordot/ReadVariableOpReadVariableOp8dense_model_dense_1021_tensordot_readvariableop_resource*
_output_shapes

:  *
dtype0
.Dense_model/dense_1021/Tensordot/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"�      �
(Dense_model/dense_1021/Tensordot/ReshapeReshape)Dense_model/dense_1020/Relu:activations:07Dense_model/dense_1021/Tensordot/Reshape/shape:output:0*
T0*
_output_shapes
:	� �
'Dense_model/dense_1021/Tensordot/MatMulMatMul1Dense_model/dense_1021/Tensordot/Reshape:output:07Dense_model/dense_1021/Tensordot/ReadVariableOp:value:0*
T0*
_output_shapes
:	� {
&Dense_model/dense_1021/Tensordot/shapeConst*
_output_shapes
:*
dtype0*!
valueB"          �
 Dense_model/dense_1021/TensordotReshape1Dense_model/dense_1021/Tensordot/MatMul:product:0/Dense_model/dense_1021/Tensordot/shape:output:0*
T0*"
_output_shapes
: �
-Dense_model/dense_1021/BiasAdd/ReadVariableOpReadVariableOp6dense_model_dense_1021_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
Dense_model/dense_1021/BiasAddBiasAdd)Dense_model/dense_1021/Tensordot:output:05Dense_model/dense_1021/BiasAdd/ReadVariableOp:value:0*
T0*"
_output_shapes
: y
Dense_model/dense_1021/ReluRelu'Dense_model/dense_1021/BiasAdd:output:0*
T0*"
_output_shapes
: �
/Dense_model/dense_1022/Tensordot/ReadVariableOpReadVariableOp8dense_model_dense_1022_tensordot_readvariableop_resource*
_output_shapes

:  *
dtype0
.Dense_model/dense_1022/Tensordot/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"�      �
(Dense_model/dense_1022/Tensordot/ReshapeReshape)Dense_model/dense_1021/Relu:activations:07Dense_model/dense_1022/Tensordot/Reshape/shape:output:0*
T0*
_output_shapes
:	� �
'Dense_model/dense_1022/Tensordot/MatMulMatMul1Dense_model/dense_1022/Tensordot/Reshape:output:07Dense_model/dense_1022/Tensordot/ReadVariableOp:value:0*
T0*
_output_shapes
:	� {
&Dense_model/dense_1022/Tensordot/shapeConst*
_output_shapes
:*
dtype0*!
valueB"          �
 Dense_model/dense_1022/TensordotReshape1Dense_model/dense_1022/Tensordot/MatMul:product:0/Dense_model/dense_1022/Tensordot/shape:output:0*
T0*"
_output_shapes
: �
-Dense_model/dense_1022/BiasAdd/ReadVariableOpReadVariableOp6dense_model_dense_1022_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
Dense_model/dense_1022/BiasAddBiasAdd)Dense_model/dense_1022/Tensordot:output:05Dense_model/dense_1022/BiasAdd/ReadVariableOp:value:0*
T0*"
_output_shapes
: y
Dense_model/dense_1022/ReluRelu'Dense_model/dense_1022/BiasAdd:output:0*
T0*"
_output_shapes
: �
/Dense_model/dense_1023/Tensordot/ReadVariableOpReadVariableOp8dense_model_dense_1023_tensordot_readvariableop_resource*
_output_shapes

:  *
dtype0
.Dense_model/dense_1023/Tensordot/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"�      �
(Dense_model/dense_1023/Tensordot/ReshapeReshape)Dense_model/dense_1022/Relu:activations:07Dense_model/dense_1023/Tensordot/Reshape/shape:output:0*
T0*
_output_shapes
:	� �
'Dense_model/dense_1023/Tensordot/MatMulMatMul1Dense_model/dense_1023/Tensordot/Reshape:output:07Dense_model/dense_1023/Tensordot/ReadVariableOp:value:0*
T0*
_output_shapes
:	� {
&Dense_model/dense_1023/Tensordot/shapeConst*
_output_shapes
:*
dtype0*!
valueB"          �
 Dense_model/dense_1023/TensordotReshape1Dense_model/dense_1023/Tensordot/MatMul:product:0/Dense_model/dense_1023/Tensordot/shape:output:0*
T0*"
_output_shapes
: �
-Dense_model/dense_1023/BiasAdd/ReadVariableOpReadVariableOp6dense_model_dense_1023_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
Dense_model/dense_1023/BiasAddBiasAdd)Dense_model/dense_1023/Tensordot:output:05Dense_model/dense_1023/BiasAdd/ReadVariableOp:value:0*
T0*"
_output_shapes
: y
Dense_model/dense_1023/ReluRelu'Dense_model/dense_1023/BiasAdd:output:0*
T0*"
_output_shapes
: �
/Dense_model/dense_1024/Tensordot/ReadVariableOpReadVariableOp8dense_model_dense_1024_tensordot_readvariableop_resource*
_output_shapes

:  *
dtype0
.Dense_model/dense_1024/Tensordot/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"�      �
(Dense_model/dense_1024/Tensordot/ReshapeReshape)Dense_model/dense_1023/Relu:activations:07Dense_model/dense_1024/Tensordot/Reshape/shape:output:0*
T0*
_output_shapes
:	� �
'Dense_model/dense_1024/Tensordot/MatMulMatMul1Dense_model/dense_1024/Tensordot/Reshape:output:07Dense_model/dense_1024/Tensordot/ReadVariableOp:value:0*
T0*
_output_shapes
:	� {
&Dense_model/dense_1024/Tensordot/shapeConst*
_output_shapes
:*
dtype0*!
valueB"          �
 Dense_model/dense_1024/TensordotReshape1Dense_model/dense_1024/Tensordot/MatMul:product:0/Dense_model/dense_1024/Tensordot/shape:output:0*
T0*"
_output_shapes
: �
-Dense_model/dense_1024/BiasAdd/ReadVariableOpReadVariableOp6dense_model_dense_1024_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
Dense_model/dense_1024/BiasAddBiasAdd)Dense_model/dense_1024/Tensordot:output:05Dense_model/dense_1024/BiasAdd/ReadVariableOp:value:0*
T0*"
_output_shapes
: y
Dense_model/dense_1024/ReluRelu'Dense_model/dense_1024/BiasAdd:output:0*
T0*"
_output_shapes
: �
 Dense_model/dropout_260/IdentityIdentity)Dense_model/dense_1024/Relu:activations:0*
T0*"
_output_shapes
: n
Dense_model/flatten_260/ConstConst*
_output_shapes
:*
dtype0*
valueB"����   �
Dense_model/flatten_260/ReshapeReshape)Dense_model/dropout_260/Identity:output:0&Dense_model/flatten_260/Const:output:0*
T0*
_output_shapes
:	��
,Dense_model/dense_1025/MatMul/ReadVariableOpReadVariableOp5dense_model_dense_1025_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
Dense_model/dense_1025/MatMulMatMul(Dense_model/flatten_260/Reshape:output:04Dense_model/dense_1025/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:�
-Dense_model/dense_1025/BiasAdd/ReadVariableOpReadVariableOp6dense_model_dense_1025_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
Dense_model/dense_1025/BiasAddBiasAdd'Dense_model/dense_1025/MatMul:product:05Dense_model/dense_1025/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:m
IdentityIdentity'Dense_model/dense_1025/BiasAdd:output:0^NoOp*
T0*
_output_shapes

:�
NoOpNoOp.^Dense_model/dense_1020/BiasAdd/ReadVariableOp0^Dense_model/dense_1020/Tensordot/ReadVariableOp.^Dense_model/dense_1021/BiasAdd/ReadVariableOp0^Dense_model/dense_1021/Tensordot/ReadVariableOp.^Dense_model/dense_1022/BiasAdd/ReadVariableOp0^Dense_model/dense_1022/Tensordot/ReadVariableOp.^Dense_model/dense_1023/BiasAdd/ReadVariableOp0^Dense_model/dense_1023/Tensordot/ReadVariableOp.^Dense_model/dense_1024/BiasAdd/ReadVariableOp0^Dense_model/dense_1024/Tensordot/ReadVariableOp.^Dense_model/dense_1025/BiasAdd/ReadVariableOp-^Dense_model/dense_1025/MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:: : : : : : : : : : : : 2^
-Dense_model/dense_1020/BiasAdd/ReadVariableOp-Dense_model/dense_1020/BiasAdd/ReadVariableOp2b
/Dense_model/dense_1020/Tensordot/ReadVariableOp/Dense_model/dense_1020/Tensordot/ReadVariableOp2^
-Dense_model/dense_1021/BiasAdd/ReadVariableOp-Dense_model/dense_1021/BiasAdd/ReadVariableOp2b
/Dense_model/dense_1021/Tensordot/ReadVariableOp/Dense_model/dense_1021/Tensordot/ReadVariableOp2^
-Dense_model/dense_1022/BiasAdd/ReadVariableOp-Dense_model/dense_1022/BiasAdd/ReadVariableOp2b
/Dense_model/dense_1022/Tensordot/ReadVariableOp/Dense_model/dense_1022/Tensordot/ReadVariableOp2^
-Dense_model/dense_1023/BiasAdd/ReadVariableOp-Dense_model/dense_1023/BiasAdd/ReadVariableOp2b
/Dense_model/dense_1023/Tensordot/ReadVariableOp/Dense_model/dense_1023/Tensordot/ReadVariableOp2^
-Dense_model/dense_1024/BiasAdd/ReadVariableOp-Dense_model/dense_1024/BiasAdd/ReadVariableOp2b
/Dense_model/dense_1024/Tensordot/ReadVariableOp/Dense_model/dense_1024/Tensordot/ReadVariableOp2^
-Dense_model/dense_1025/BiasAdd/ReadVariableOp-Dense_model/dense_1025/BiasAdd/ReadVariableOp2\
,Dense_model/dense_1025/MatMul/ReadVariableOp,Dense_model/dense_1025/MatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:M I
"
_output_shapes
:
#
_user_specified_name	input_261
��
�
$__inference__traced_restore_23446866
file_prefix4
"assignvariableop_dense_1020_kernel: 0
"assignvariableop_1_dense_1020_bias: 6
$assignvariableop_2_dense_1021_kernel:  0
"assignvariableop_3_dense_1021_bias: 6
$assignvariableop_4_dense_1022_kernel:  0
"assignvariableop_5_dense_1022_bias: 6
$assignvariableop_6_dense_1023_kernel:  0
"assignvariableop_7_dense_1023_bias: 6
$assignvariableop_8_dense_1024_kernel:  0
"assignvariableop_9_dense_1024_bias: 8
%assignvariableop_10_dense_1025_kernel:	�1
#assignvariableop_11_dense_1025_bias:'
assignvariableop_12_iteration:	 +
!assignvariableop_13_learning_rate: >
,assignvariableop_14_adam_m_dense_1020_kernel: >
,assignvariableop_15_adam_v_dense_1020_kernel: 8
*assignvariableop_16_adam_m_dense_1020_bias: 8
*assignvariableop_17_adam_v_dense_1020_bias: >
,assignvariableop_18_adam_m_dense_1021_kernel:  >
,assignvariableop_19_adam_v_dense_1021_kernel:  8
*assignvariableop_20_adam_m_dense_1021_bias: 8
*assignvariableop_21_adam_v_dense_1021_bias: >
,assignvariableop_22_adam_m_dense_1022_kernel:  >
,assignvariableop_23_adam_v_dense_1022_kernel:  8
*assignvariableop_24_adam_m_dense_1022_bias: 8
*assignvariableop_25_adam_v_dense_1022_bias: >
,assignvariableop_26_adam_m_dense_1023_kernel:  >
,assignvariableop_27_adam_v_dense_1023_kernel:  8
*assignvariableop_28_adam_m_dense_1023_bias: 8
*assignvariableop_29_adam_v_dense_1023_bias: >
,assignvariableop_30_adam_m_dense_1024_kernel:  >
,assignvariableop_31_adam_v_dense_1024_kernel:  8
*assignvariableop_32_adam_m_dense_1024_bias: 8
*assignvariableop_33_adam_v_dense_1024_bias: ?
,assignvariableop_34_adam_m_dense_1025_kernel:	�?
,assignvariableop_35_adam_v_dense_1025_kernel:	�8
*assignvariableop_36_adam_m_dense_1025_bias:8
*assignvariableop_37_adam_v_dense_1025_bias:%
assignvariableop_38_total_3: %
assignvariableop_39_count_3: %
assignvariableop_40_total_2: %
assignvariableop_41_count_2: %
assignvariableop_42_total_1: %
assignvariableop_43_count_1: #
assignvariableop_44_total: #
assignvariableop_45_count: 
identity_47��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_38�AssignVariableOp_39�AssignVariableOp_4�AssignVariableOp_40�AssignVariableOp_41�AssignVariableOp_42�AssignVariableOp_43�AssignVariableOp_44�AssignVariableOp_45�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:/*
dtype0*�
value�B�/B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:/*
dtype0*q
valuehBf/B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�:::::::::::::::::::::::::::::::::::::::::::::::*=
dtypes3
12/	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp"assignvariableop_dense_1020_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp"assignvariableop_1_dense_1020_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp$assignvariableop_2_dense_1021_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp"assignvariableop_3_dense_1021_biasIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp$assignvariableop_4_dense_1022_kernelIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp"assignvariableop_5_dense_1022_biasIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp$assignvariableop_6_dense_1023_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp"assignvariableop_7_dense_1023_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp$assignvariableop_8_dense_1024_kernelIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp"assignvariableop_9_dense_1024_biasIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp%assignvariableop_10_dense_1025_kernelIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp#assignvariableop_11_dense_1025_biasIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_12AssignVariableOpassignvariableop_12_iterationIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp!assignvariableop_13_learning_rateIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp,assignvariableop_14_adam_m_dense_1020_kernelIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp,assignvariableop_15_adam_v_dense_1020_kernelIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp*assignvariableop_16_adam_m_dense_1020_biasIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp*assignvariableop_17_adam_v_dense_1020_biasIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp,assignvariableop_18_adam_m_dense_1021_kernelIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp,assignvariableop_19_adam_v_dense_1021_kernelIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp*assignvariableop_20_adam_m_dense_1021_biasIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp*assignvariableop_21_adam_v_dense_1021_biasIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp,assignvariableop_22_adam_m_dense_1022_kernelIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp,assignvariableop_23_adam_v_dense_1022_kernelIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOp*assignvariableop_24_adam_m_dense_1022_biasIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp*assignvariableop_25_adam_v_dense_1022_biasIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOp,assignvariableop_26_adam_m_dense_1023_kernelIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOp,assignvariableop_27_adam_v_dense_1023_kernelIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOp*assignvariableop_28_adam_m_dense_1023_biasIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_v_dense_1023_biasIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOp,assignvariableop_30_adam_m_dense_1024_kernelIdentity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOp,assignvariableop_31_adam_v_dense_1024_kernelIdentity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOp*assignvariableop_32_adam_m_dense_1024_biasIdentity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOp*assignvariableop_33_adam_v_dense_1024_biasIdentity_33:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_34AssignVariableOp,assignvariableop_34_adam_m_dense_1025_kernelIdentity_34:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_35AssignVariableOp,assignvariableop_35_adam_v_dense_1025_kernelIdentity_35:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_36AssignVariableOp*assignvariableop_36_adam_m_dense_1025_biasIdentity_36:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_37AssignVariableOp*assignvariableop_37_adam_v_dense_1025_biasIdentity_37:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_38AssignVariableOpassignvariableop_38_total_3Identity_38:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_39AssignVariableOpassignvariableop_39_count_3Identity_39:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_40AssignVariableOpassignvariableop_40_total_2Identity_40:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_41AssignVariableOpassignvariableop_41_count_2Identity_41:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_42AssignVariableOpassignvariableop_42_total_1Identity_42:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_43AssignVariableOpassignvariableop_43_count_1Identity_43:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_44AssignVariableOpassignvariableop_44_totalIdentity_44:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_45AssignVariableOpassignvariableop_45_countIdentity_45:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �
Identity_46Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_47IdentityIdentity_46:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
_output_shapes
 "#
identity_47Identity_47:output:0*(
_construction_contextkEagerRuntime*q
_input_shapes`
^: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92$
AssignVariableOpAssignVariableOp:%.!

_user_specified_namecount:%-!

_user_specified_nametotal:',#
!
_user_specified_name	count_1:'+#
!
_user_specified_name	total_1:'*#
!
_user_specified_name	count_2:')#
!
_user_specified_name	total_2:'(#
!
_user_specified_name	count_3:''#
!
_user_specified_name	total_3:6&2
0
_user_specified_nameAdam/v/dense_1025/bias:6%2
0
_user_specified_nameAdam/m/dense_1025/bias:8$4
2
_user_specified_nameAdam/v/dense_1025/kernel:8#4
2
_user_specified_nameAdam/m/dense_1025/kernel:6"2
0
_user_specified_nameAdam/v/dense_1024/bias:6!2
0
_user_specified_nameAdam/m/dense_1024/bias:8 4
2
_user_specified_nameAdam/v/dense_1024/kernel:84
2
_user_specified_nameAdam/m/dense_1024/kernel:62
0
_user_specified_nameAdam/v/dense_1023/bias:62
0
_user_specified_nameAdam/m/dense_1023/bias:84
2
_user_specified_nameAdam/v/dense_1023/kernel:84
2
_user_specified_nameAdam/m/dense_1023/kernel:62
0
_user_specified_nameAdam/v/dense_1022/bias:62
0
_user_specified_nameAdam/m/dense_1022/bias:84
2
_user_specified_nameAdam/v/dense_1022/kernel:84
2
_user_specified_nameAdam/m/dense_1022/kernel:62
0
_user_specified_nameAdam/v/dense_1021/bias:62
0
_user_specified_nameAdam/m/dense_1021/bias:84
2
_user_specified_nameAdam/v/dense_1021/kernel:84
2
_user_specified_nameAdam/m/dense_1021/kernel:62
0
_user_specified_nameAdam/v/dense_1020/bias:62
0
_user_specified_nameAdam/m/dense_1020/bias:84
2
_user_specified_nameAdam/v/dense_1020/kernel:84
2
_user_specified_nameAdam/m/dense_1020/kernel:-)
'
_user_specified_namelearning_rate:)%
#
_user_specified_name	iteration:/+
)
_user_specified_namedense_1025/bias:1-
+
_user_specified_namedense_1025/kernel:/
+
)
_user_specified_namedense_1024/bias:1	-
+
_user_specified_namedense_1024/kernel:/+
)
_user_specified_namedense_1023/bias:1-
+
_user_specified_namedense_1023/kernel:/+
)
_user_specified_namedense_1022/bias:1-
+
_user_specified_namedense_1022/kernel:/+
)
_user_specified_namedense_1021/bias:1-
+
_user_specified_namedense_1021/kernel:/+
)
_user_specified_namedense_1020/bias:1-
+
_user_specified_namedense_1020/kernel:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
e
I__inference_flatten_260_layer_call_and_return_conditional_losses_23446402

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"����   T
ReshapeReshapeinputsConst:output:0*
T0*
_output_shapes
:	�P
IdentityIdentityReshape:output:0*
T0*
_output_shapes
:	�"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: :J F
"
_output_shapes
: 
 
_user_specified_nameinputs
�
�
-__inference_dense_1020_layer_call_fn_23446253

inputs
unknown: 
	unknown_0: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
: *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dense_1020_layer_call_and_return_conditional_losses_23445922j
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*"
_output_shapes
: <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*%
_input_shapes
:: : 22
StatefulPartitionedCallStatefulPartitionedCall:($
"
_user_specified_name
23446249:($
"
_user_specified_name
23446247:J F
"
_output_shapes
:
 
_user_specified_nameinputs
�
g
I__inference_dropout_260_layer_call_and_return_conditional_losses_23446391

inputs

identity_1I
IdentityIdentityinputs*
T0*"
_output_shapes
: V

Identity_1IdentityIdentity:output:0*
T0*"
_output_shapes
: "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: :J F
"
_output_shapes
: 
 
_user_specified_nameinputs
�
J
.__inference_dropout_260_layer_call_fn_23446374

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_dropout_260_layer_call_and_return_conditional_losses_23446076[
IdentityIdentityPartitionedCall:output:0*
T0*"
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: :J F
"
_output_shapes
: 
 
_user_specified_nameinputs
�
J
.__inference_flatten_260_layer_call_fn_23446396

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	�* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_flatten_260_layer_call_and_return_conditional_losses_23446026X
IdentityIdentityPartitionedCall:output:0*
T0*
_output_shapes
:	�"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: :J F
"
_output_shapes
: 
 
_user_specified_nameinputs
�
e
I__inference_flatten_260_layer_call_and_return_conditional_losses_23446026

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"����   T
ReshapeReshapeinputsConst:output:0*
T0*
_output_shapes
:	�P
IdentityIdentityReshape:output:0*
T0*
_output_shapes
:	�"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: :J F
"
_output_shapes
: 
 
_user_specified_nameinputs
�
�
-__inference_dense_1023_layer_call_fn_23446325

inputs
unknown:  
	unknown_0: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
: *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dense_1023_layer_call_and_return_conditional_losses_23445982j
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*"
_output_shapes
: <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*%
_input_shapes
: : : 22
StatefulPartitionedCallStatefulPartitionedCall:($
"
_user_specified_name
23446321:($
"
_user_specified_name
23446319:J F
"
_output_shapes
: 
 
_user_specified_nameinputs
�
�
H__inference_dense_1024_layer_call_and_return_conditional_losses_23446364

inputs3
!tensordot_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Tensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:  *
dtype0h
Tensordot/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"�      p
Tensordot/ReshapeReshapeinputs Tensordot/Reshape/shape:output:0*
T0*
_output_shapes
:	� �
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*
_output_shapes
:	� d
Tensordot/shapeConst*
_output_shapes
:*
dtype0*!
valueB"          w
	TensordotReshapeTensordot/MatMul:product:0Tensordot/shape:output:0*
T0*"
_output_shapes
: r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0s
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*"
_output_shapes
: K
ReluReluBiasAdd:output:0*
T0*"
_output_shapes
: \
IdentityIdentityRelu:activations:0^NoOp*
T0*"
_output_shapes
: V
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*%
_input_shapes
: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:J F
"
_output_shapes
: 
 
_user_specified_nameinputs
�*
�
I__inference_Dense_model_layer_call_and_return_conditional_losses_23446085
	input_261%
dense_1020_23446047: !
dense_1020_23446049: %
dense_1021_23446052:  !
dense_1021_23446054: %
dense_1022_23446057:  !
dense_1022_23446059: %
dense_1023_23446062:  !
dense_1023_23446064: %
dense_1024_23446067:  !
dense_1024_23446069: &
dense_1025_23446079:	�!
dense_1025_23446081:
identity��"dense_1020/StatefulPartitionedCall�"dense_1021/StatefulPartitionedCall�"dense_1022/StatefulPartitionedCall�"dense_1023/StatefulPartitionedCall�"dense_1024/StatefulPartitionedCall�"dense_1025/StatefulPartitionedCall�
"dense_1020/StatefulPartitionedCallStatefulPartitionedCall	input_261dense_1020_23446047dense_1020_23446049*
Tin
2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
: *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dense_1020_layer_call_and_return_conditional_losses_23445922�
"dense_1021/StatefulPartitionedCallStatefulPartitionedCall+dense_1020/StatefulPartitionedCall:output:0dense_1021_23446052dense_1021_23446054*
Tin
2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
: *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dense_1021_layer_call_and_return_conditional_losses_23445942�
"dense_1022/StatefulPartitionedCallStatefulPartitionedCall+dense_1021/StatefulPartitionedCall:output:0dense_1022_23446057dense_1022_23446059*
Tin
2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
: *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dense_1022_layer_call_and_return_conditional_losses_23445962�
"dense_1023/StatefulPartitionedCallStatefulPartitionedCall+dense_1022/StatefulPartitionedCall:output:0dense_1023_23446062dense_1023_23446064*
Tin
2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
: *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dense_1023_layer_call_and_return_conditional_losses_23445982�
"dense_1024/StatefulPartitionedCallStatefulPartitionedCall+dense_1023/StatefulPartitionedCall:output:0dense_1024_23446067dense_1024_23446069*
Tin
2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
: *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dense_1024_layer_call_and_return_conditional_losses_23446002�
dropout_260/PartitionedCallPartitionedCall+dense_1024/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_dropout_260_layer_call_and_return_conditional_losses_23446076�
flatten_260/PartitionedCallPartitionedCall$dropout_260/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	�* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_flatten_260_layer_call_and_return_conditional_losses_23446026�
"dense_1025/StatefulPartitionedCallStatefulPartitionedCall$flatten_260/PartitionedCall:output:0dense_1025_23446079dense_1025_23446081*
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
GPU 2J 8� *Q
fLRJ
H__inference_dense_1025_layer_call_and_return_conditional_losses_23446037q
IdentityIdentity+dense_1025/StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:�
NoOpNoOp#^dense_1020/StatefulPartitionedCall#^dense_1021/StatefulPartitionedCall#^dense_1022/StatefulPartitionedCall#^dense_1023/StatefulPartitionedCall#^dense_1024/StatefulPartitionedCall#^dense_1025/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:: : : : : : : : : : : : 2H
"dense_1020/StatefulPartitionedCall"dense_1020/StatefulPartitionedCall2H
"dense_1021/StatefulPartitionedCall"dense_1021/StatefulPartitionedCall2H
"dense_1022/StatefulPartitionedCall"dense_1022/StatefulPartitionedCall2H
"dense_1023/StatefulPartitionedCall"dense_1023/StatefulPartitionedCall2H
"dense_1024/StatefulPartitionedCall"dense_1024/StatefulPartitionedCall2H
"dense_1025/StatefulPartitionedCall"dense_1025/StatefulPartitionedCall:($
"
_user_specified_name
23446081:($
"
_user_specified_name
23446079:(
$
"
_user_specified_name
23446069:(	$
"
_user_specified_name
23446067:($
"
_user_specified_name
23446064:($
"
_user_specified_name
23446062:($
"
_user_specified_name
23446059:($
"
_user_specified_name
23446057:($
"
_user_specified_name
23446054:($
"
_user_specified_name
23446052:($
"
_user_specified_name
23446049:($
"
_user_specified_name
23446047:M I
"
_output_shapes
:
#
_user_specified_name	input_261
�

h
I__inference_dropout_260_layer_call_and_return_conditional_losses_23446019

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?_
dropout/MulMulinputsdropout/Const:output:0*
T0*"
_output_shapes
: b
dropout/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"          �
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*"
_output_shapes
: *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*"
_output_shapes
: T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*"
_output_shapes
: \
IdentityIdentitydropout/SelectV2:output:0*
T0*"
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: :J F
"
_output_shapes
: 
 
_user_specified_nameinputs
�
�
-__inference_dense_1022_layer_call_fn_23446301

inputs
unknown:  
	unknown_0: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
: *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dense_1022_layer_call_and_return_conditional_losses_23445962j
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*"
_output_shapes
: <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*%
_input_shapes
: : : 22
StatefulPartitionedCallStatefulPartitionedCall:($
"
_user_specified_name
23446297:($
"
_user_specified_name
23446295:J F
"
_output_shapes
: 
 
_user_specified_nameinputs
�
�
H__inference_dense_1022_layer_call_and_return_conditional_losses_23445962

inputs3
!tensordot_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Tensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:  *
dtype0h
Tensordot/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"�      p
Tensordot/ReshapeReshapeinputs Tensordot/Reshape/shape:output:0*
T0*
_output_shapes
:	� �
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*
_output_shapes
:	� d
Tensordot/shapeConst*
_output_shapes
:*
dtype0*!
valueB"          w
	TensordotReshapeTensordot/MatMul:product:0Tensordot/shape:output:0*
T0*"
_output_shapes
: r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0s
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*"
_output_shapes
: K
ReluReluBiasAdd:output:0*
T0*"
_output_shapes
: \
IdentityIdentityRelu:activations:0^NoOp*
T0*"
_output_shapes
: V
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*%
_input_shapes
: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:J F
"
_output_shapes
: 
 
_user_specified_nameinputs
�
�
-__inference_dense_1021_layer_call_fn_23446277

inputs
unknown:  
	unknown_0: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
: *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dense_1021_layer_call_and_return_conditional_losses_23445942j
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*"
_output_shapes
: <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*%
_input_shapes
: : : 22
StatefulPartitionedCallStatefulPartitionedCall:($
"
_user_specified_name
23446273:($
"
_user_specified_name
23446271:J F
"
_output_shapes
: 
 
_user_specified_nameinputs
�
�
-__inference_dense_1025_layer_call_fn_23446411

inputs
unknown:	�
	unknown_0:
identity��StatefulPartitionedCall�
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
GPU 2J 8� *Q
fLRJ
H__inference_dense_1025_layer_call_and_return_conditional_losses_23446037f
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
:	�: : 22
StatefulPartitionedCallStatefulPartitionedCall:($
"
_user_specified_name
23446407:($
"
_user_specified_name
23446405:G C

_output_shapes
:	�
 
_user_specified_nameinputs
�

h
I__inference_dropout_260_layer_call_and_return_conditional_losses_23446386

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?_
dropout/MulMulinputsdropout/Const:output:0*
T0*"
_output_shapes
: b
dropout/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"          �
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*"
_output_shapes
: *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*"
_output_shapes
: T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*"
_output_shapes
: \
IdentityIdentitydropout/SelectV2:output:0*
T0*"
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: :J F
"
_output_shapes
: 
 
_user_specified_nameinputs
�
�
.__inference_Dense_model_layer_call_fn_23446143
	input_261
unknown: 
	unknown_0: 
	unknown_1:  
	unknown_2: 
	unknown_3:  
	unknown_4: 
	unknown_5:  
	unknown_6: 
	unknown_7:  
	unknown_8: 
	unknown_9:	�

unknown_10:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCall	input_261unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_Dense_model_layer_call_and_return_conditional_losses_23446085f
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:($
"
_user_specified_name
23446139:($
"
_user_specified_name
23446137:(
$
"
_user_specified_name
23446135:(	$
"
_user_specified_name
23446133:($
"
_user_specified_name
23446131:($
"
_user_specified_name
23446129:($
"
_user_specified_name
23446127:($
"
_user_specified_name
23446125:($
"
_user_specified_name
23446123:($
"
_user_specified_name
23446121:($
"
_user_specified_name
23446119:($
"
_user_specified_name
23446117:M I
"
_output_shapes
:
#
_user_specified_name	input_261
�	
�
H__inference_dense_1025_layer_call_and_return_conditional_losses_23446421

inputs1
matmul_readvariableop_resource:	�-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
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
:	�: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:G C

_output_shapes
:	�
 
_user_specified_nameinputs
�
�
H__inference_dense_1021_layer_call_and_return_conditional_losses_23445942

inputs3
!tensordot_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Tensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:  *
dtype0h
Tensordot/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"�      p
Tensordot/ReshapeReshapeinputs Tensordot/Reshape/shape:output:0*
T0*
_output_shapes
:	� �
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*
_output_shapes
:	� d
Tensordot/shapeConst*
_output_shapes
:*
dtype0*!
valueB"          w
	TensordotReshapeTensordot/MatMul:product:0Tensordot/shape:output:0*
T0*"
_output_shapes
: r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0s
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*"
_output_shapes
: K
ReluReluBiasAdd:output:0*
T0*"
_output_shapes
: \
IdentityIdentityRelu:activations:0^NoOp*
T0*"
_output_shapes
: V
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*%
_input_shapes
: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:J F
"
_output_shapes
: 
 
_user_specified_nameinputs
�
�
-__inference_dense_1024_layer_call_fn_23446349

inputs
unknown:  
	unknown_0: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *"
_output_shapes
: *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dense_1024_layer_call_and_return_conditional_losses_23446002j
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*"
_output_shapes
: <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*%
_input_shapes
: : : 22
StatefulPartitionedCallStatefulPartitionedCall:($
"
_user_specified_name
23446345:($
"
_user_specified_name
23446343:J F
"
_output_shapes
: 
 
_user_specified_nameinputs
�
�
H__inference_dense_1022_layer_call_and_return_conditional_losses_23446316

inputs3
!tensordot_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Tensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:  *
dtype0h
Tensordot/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"�      p
Tensordot/ReshapeReshapeinputs Tensordot/Reshape/shape:output:0*
T0*
_output_shapes
:	� �
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*
_output_shapes
:	� d
Tensordot/shapeConst*
_output_shapes
:*
dtype0*!
valueB"          w
	TensordotReshapeTensordot/MatMul:product:0Tensordot/shape:output:0*
T0*"
_output_shapes
: r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0s
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*"
_output_shapes
: K
ReluReluBiasAdd:output:0*
T0*"
_output_shapes
: \
IdentityIdentityRelu:activations:0^NoOp*
T0*"
_output_shapes
: V
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*%
_input_shapes
: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:J F
"
_output_shapes
: 
 
_user_specified_nameinputs
�
�
H__inference_dense_1024_layer_call_and_return_conditional_losses_23446002

inputs3
!tensordot_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Tensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:  *
dtype0h
Tensordot/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"�      p
Tensordot/ReshapeReshapeinputs Tensordot/Reshape/shape:output:0*
T0*
_output_shapes
:	� �
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*
_output_shapes
:	� d
Tensordot/shapeConst*
_output_shapes
:*
dtype0*!
valueB"          w
	TensordotReshapeTensordot/MatMul:product:0Tensordot/shape:output:0*
T0*"
_output_shapes
: r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0s
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*"
_output_shapes
: K
ReluReluBiasAdd:output:0*
T0*"
_output_shapes
: \
IdentityIdentityRelu:activations:0^NoOp*
T0*"
_output_shapes
: V
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*%
_input_shapes
: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:J F
"
_output_shapes
: 
 
_user_specified_nameinputs
�
�
H__inference_dense_1020_layer_call_and_return_conditional_losses_23445922

inputs3
!tensordot_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Tensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

: *
dtype0h
Tensordot/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"�     p
Tensordot/ReshapeReshapeinputs Tensordot/Reshape/shape:output:0*
T0*
_output_shapes
:	��
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*
_output_shapes
:	� d
Tensordot/shapeConst*
_output_shapes
:*
dtype0*!
valueB"          w
	TensordotReshapeTensordot/MatMul:product:0Tensordot/shape:output:0*
T0*"
_output_shapes
: r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0s
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*"
_output_shapes
: K
ReluReluBiasAdd:output:0*
T0*"
_output_shapes
: \
IdentityIdentityRelu:activations:0^NoOp*
T0*"
_output_shapes
: V
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*%
_input_shapes
:: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:J F
"
_output_shapes
:
 
_user_specified_nameinputs"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
:
	input_261-
serving_default_input_261:05

dense_1025'
StatefulPartitionedCall:0tensorflow/serving/predict:��
�
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer_with_weights-4
layer-5
layer-6
layer-7
	layer_with_weights-5
	layer-8

	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_network
"
_tf_keras_input_layer
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
* &call_and_return_all_conditional_losses

!kernel
"bias"
_tf_keras_layer
�
#	variables
$trainable_variables
%regularization_losses
&	keras_api
'__call__
*(&call_and_return_all_conditional_losses

)kernel
*bias"
_tf_keras_layer
�
+	variables
,trainable_variables
-regularization_losses
.	keras_api
/__call__
*0&call_and_return_all_conditional_losses

1kernel
2bias"
_tf_keras_layer
�
3	variables
4trainable_variables
5regularization_losses
6	keras_api
7__call__
*8&call_and_return_all_conditional_losses

9kernel
:bias"
_tf_keras_layer
�
;	variables
<trainable_variables
=regularization_losses
>	keras_api
?__call__
*@&call_and_return_all_conditional_losses
A_random_generator"
_tf_keras_layer
�
B	variables
Ctrainable_variables
Dregularization_losses
E	keras_api
F__call__
*G&call_and_return_all_conditional_losses"
_tf_keras_layer
�
H	variables
Itrainable_variables
Jregularization_losses
K	keras_api
L__call__
*M&call_and_return_all_conditional_losses

Nkernel
Obias"
_tf_keras_layer
v
0
1
!2
"3
)4
*5
16
27
98
:9
N10
O11"
trackable_list_wrapper
v
0
1
!2
"3
)4
*5
16
27
98
:9
N10
O11"
trackable_list_wrapper
 "
trackable_list_wrapper
�
Pnon_trainable_variables

Qlayers
Rmetrics
Slayer_regularization_losses
Tlayer_metrics

	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
Utrace_0
Vtrace_12�
.__inference_Dense_model_layer_call_fn_23446114
.__inference_Dense_model_layer_call_fn_23446143�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zUtrace_0zVtrace_1
�
Wtrace_0
Xtrace_12�
I__inference_Dense_model_layer_call_and_return_conditional_losses_23446044
I__inference_Dense_model_layer_call_and_return_conditional_losses_23446085�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zWtrace_0zXtrace_1
�B�
#__inference__wrapped_model_23445905	input_261"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
Y
_variables
Z_iterations
[_learning_rate
\_index_dict
]
_momentums
^_velocities
__update_step_xla"
experimentalOptimizer
,
`serving_default"
signature_map
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
anon_trainable_variables

blayers
cmetrics
dlayer_regularization_losses
elayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
ftrace_02�
-__inference_dense_1020_layer_call_fn_23446253�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zftrace_0
�
gtrace_02�
H__inference_dense_1020_layer_call_and_return_conditional_losses_23446268�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zgtrace_0
#:! 2dense_1020/kernel
: 2dense_1020/bias
.
!0
"1"
trackable_list_wrapper
.
!0
"1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
hnon_trainable_variables

ilayers
jmetrics
klayer_regularization_losses
llayer_metrics
	variables
trainable_variables
regularization_losses
__call__
* &call_and_return_all_conditional_losses
& "call_and_return_conditional_losses"
_generic_user_object
�
mtrace_02�
-__inference_dense_1021_layer_call_fn_23446277�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zmtrace_0
�
ntrace_02�
H__inference_dense_1021_layer_call_and_return_conditional_losses_23446292�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zntrace_0
#:!  2dense_1021/kernel
: 2dense_1021/bias
.
)0
*1"
trackable_list_wrapper
.
)0
*1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
onon_trainable_variables

players
qmetrics
rlayer_regularization_losses
slayer_metrics
#	variables
$trainable_variables
%regularization_losses
'__call__
*(&call_and_return_all_conditional_losses
&("call_and_return_conditional_losses"
_generic_user_object
�
ttrace_02�
-__inference_dense_1022_layer_call_fn_23446301�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zttrace_0
�
utrace_02�
H__inference_dense_1022_layer_call_and_return_conditional_losses_23446316�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zutrace_0
#:!  2dense_1022/kernel
: 2dense_1022/bias
.
10
21"
trackable_list_wrapper
.
10
21"
trackable_list_wrapper
 "
trackable_list_wrapper
�
vnon_trainable_variables

wlayers
xmetrics
ylayer_regularization_losses
zlayer_metrics
+	variables
,trainable_variables
-regularization_losses
/__call__
*0&call_and_return_all_conditional_losses
&0"call_and_return_conditional_losses"
_generic_user_object
�
{trace_02�
-__inference_dense_1023_layer_call_fn_23446325�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z{trace_0
�
|trace_02�
H__inference_dense_1023_layer_call_and_return_conditional_losses_23446340�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z|trace_0
#:!  2dense_1023/kernel
: 2dense_1023/bias
.
90
:1"
trackable_list_wrapper
.
90
:1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
}non_trainable_variables

~layers
metrics
 �layer_regularization_losses
�layer_metrics
3	variables
4trainable_variables
5regularization_losses
7__call__
*8&call_and_return_all_conditional_losses
&8"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
-__inference_dense_1024_layer_call_fn_23446349�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
H__inference_dense_1024_layer_call_and_return_conditional_losses_23446364�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
#:!  2dense_1024/kernel
: 2dense_1024/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
;	variables
<trainable_variables
=regularization_losses
?__call__
*@&call_and_return_all_conditional_losses
&@"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
.__inference_dropout_260_layer_call_fn_23446369
.__inference_dropout_260_layer_call_fn_23446374�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
I__inference_dropout_260_layer_call_and_return_conditional_losses_23446386
I__inference_dropout_260_layer_call_and_return_conditional_losses_23446391�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
B	variables
Ctrainable_variables
Dregularization_losses
F__call__
*G&call_and_return_all_conditional_losses
&G"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
.__inference_flatten_260_layer_call_fn_23446396�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
I__inference_flatten_260_layer_call_and_return_conditional_losses_23446402�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
N0
O1"
trackable_list_wrapper
.
N0
O1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
H	variables
Itrainable_variables
Jregularization_losses
L__call__
*M&call_and_return_all_conditional_losses
&M"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
-__inference_dense_1025_layer_call_fn_23446411�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
H__inference_dense_1025_layer_call_and_return_conditional_losses_23446421�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
$:"	�2dense_1025/kernel
:2dense_1025/bias
 "
trackable_list_wrapper
_
0
1
2
3
4
5
6
7
	8"
trackable_list_wrapper
@
�0
�1
�2
�3"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
.__inference_Dense_model_layer_call_fn_23446114	input_261"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
.__inference_Dense_model_layer_call_fn_23446143	input_261"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
I__inference_Dense_model_layer_call_and_return_conditional_losses_23446044	input_261"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
I__inference_Dense_model_layer_call_and_return_conditional_losses_23446085	input_261"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
Z0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21
�22
�23
�24"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11"
trackable_list_wrapper
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11"
trackable_list_wrapper
�2��
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
�B�
&__inference_signature_wrapper_23446244	input_261"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
-__inference_dense_1020_layer_call_fn_23446253inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
H__inference_dense_1020_layer_call_and_return_conditional_losses_23446268inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
-__inference_dense_1021_layer_call_fn_23446277inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
H__inference_dense_1021_layer_call_and_return_conditional_losses_23446292inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
-__inference_dense_1022_layer_call_fn_23446301inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
H__inference_dense_1022_layer_call_and_return_conditional_losses_23446316inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
-__inference_dense_1023_layer_call_fn_23446325inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
H__inference_dense_1023_layer_call_and_return_conditional_losses_23446340inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
-__inference_dense_1024_layer_call_fn_23446349inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
H__inference_dense_1024_layer_call_and_return_conditional_losses_23446364inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
.__inference_dropout_260_layer_call_fn_23446369inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
.__inference_dropout_260_layer_call_fn_23446374inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
I__inference_dropout_260_layer_call_and_return_conditional_losses_23446386inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
I__inference_dropout_260_layer_call_and_return_conditional_losses_23446391inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
.__inference_flatten_260_layer_call_fn_23446396inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
I__inference_flatten_260_layer_call_and_return_conditional_losses_23446402inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
-__inference_dense_1025_layer_call_fn_23446411inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
H__inference_dense_1025_layer_call_and_return_conditional_losses_23446421inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
R
�	variables
�	keras_api

�total

�count"
_tf_keras_metric
R
�	variables
�	keras_api

�total

�count"
_tf_keras_metric
c
�	variables
�	keras_api

�total

�count
�
_fn_kwargs"
_tf_keras_metric
c
�	variables
�	keras_api

�total

�count
�
_fn_kwargs"
_tf_keras_metric
(:& 2Adam/m/dense_1020/kernel
(:& 2Adam/v/dense_1020/kernel
":  2Adam/m/dense_1020/bias
":  2Adam/v/dense_1020/bias
(:&  2Adam/m/dense_1021/kernel
(:&  2Adam/v/dense_1021/kernel
":  2Adam/m/dense_1021/bias
":  2Adam/v/dense_1021/bias
(:&  2Adam/m/dense_1022/kernel
(:&  2Adam/v/dense_1022/kernel
":  2Adam/m/dense_1022/bias
":  2Adam/v/dense_1022/bias
(:&  2Adam/m/dense_1023/kernel
(:&  2Adam/v/dense_1023/kernel
":  2Adam/m/dense_1023/bias
":  2Adam/v/dense_1023/bias
(:&  2Adam/m/dense_1024/kernel
(:&  2Adam/v/dense_1024/kernel
":  2Adam/m/dense_1024/bias
":  2Adam/v/dense_1024/bias
):'	�2Adam/m/dense_1025/kernel
):'	�2Adam/v/dense_1025/kernel
": 2Adam/m/dense_1025/bias
": 2Adam/v/dense_1025/bias
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper�
I__inference_Dense_model_layer_call_and_return_conditional_losses_23446044j!")*129:NO5�2
+�(
�
	input_261
p

 
� "#� 
�
tensor_0
� �
I__inference_Dense_model_layer_call_and_return_conditional_losses_23446085j!")*129:NO5�2
+�(
�
	input_261
p 

 
� "#� 
�
tensor_0
� �
.__inference_Dense_model_layer_call_fn_23446114_!")*129:NO5�2
+�(
�
	input_261
p

 
� "�
unknown�
.__inference_Dense_model_layer_call_fn_23446143_!")*129:NO5�2
+�(
�
	input_261
p 

 
� "�
unknown�
#__inference__wrapped_model_23445905m!")*129:NO-�*
#� 
�
	input_261
� ".�+
)

dense_1025�

dense_1025�
H__inference_dense_1020_layer_call_and_return_conditional_losses_23446268Y*�'
 �
�
inputs
� "'�$
�
tensor_0 
� 
-__inference_dense_1020_layer_call_fn_23446253N*�'
 �
�
inputs
� "�
unknown �
H__inference_dense_1021_layer_call_and_return_conditional_losses_23446292Y!"*�'
 �
�
inputs 
� "'�$
�
tensor_0 
� 
-__inference_dense_1021_layer_call_fn_23446277N!"*�'
 �
�
inputs 
� "�
unknown �
H__inference_dense_1022_layer_call_and_return_conditional_losses_23446316Y)**�'
 �
�
inputs 
� "'�$
�
tensor_0 
� 
-__inference_dense_1022_layer_call_fn_23446301N)**�'
 �
�
inputs 
� "�
unknown �
H__inference_dense_1023_layer_call_and_return_conditional_losses_23446340Y12*�'
 �
�
inputs 
� "'�$
�
tensor_0 
� 
-__inference_dense_1023_layer_call_fn_23446325N12*�'
 �
�
inputs 
� "�
unknown �
H__inference_dense_1024_layer_call_and_return_conditional_losses_23446364Y9:*�'
 �
�
inputs 
� "'�$
�
tensor_0 
� 
-__inference_dense_1024_layer_call_fn_23446349N9:*�'
 �
�
inputs 
� "�
unknown �
H__inference_dense_1025_layer_call_and_return_conditional_losses_23446421RNO'�$
�
�
inputs	�
� "#� 
�
tensor_0
� x
-__inference_dense_1025_layer_call_fn_23446411GNO'�$
�
�
inputs	�
� "�
unknown�
I__inference_dropout_260_layer_call_and_return_conditional_losses_23446386Y.�+
$�!
�
inputs 
p
� "'�$
�
tensor_0 
� �
I__inference_dropout_260_layer_call_and_return_conditional_losses_23446391Y.�+
$�!
�
inputs 
p 
� "'�$
�
tensor_0 
� �
.__inference_dropout_260_layer_call_fn_23446369N.�+
$�!
�
inputs 
p
� "�
unknown �
.__inference_dropout_260_layer_call_fn_23446374N.�+
$�!
�
inputs 
p 
� "�
unknown �
I__inference_flatten_260_layer_call_and_return_conditional_losses_23446402R*�'
 �
�
inputs 
� "$�!
�
tensor_0	�
� y
.__inference_flatten_260_layer_call_fn_23446396G*�'
 �
�
inputs 
� "�
unknown	��
&__inference_signature_wrapper_23446244z!")*129:NO:�7
� 
0�-
+
	input_261�
	input_261".�+
)

dense_1025�

dense_1025