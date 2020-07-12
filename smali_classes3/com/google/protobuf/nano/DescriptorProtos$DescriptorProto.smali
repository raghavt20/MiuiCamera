.class public final Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "DescriptorProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/nano/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DescriptorProto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ReservedRange;,
        Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano<",
        "Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;


# instance fields
.field public enumType:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

.field public extension:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

.field public extensionRange:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;

.field public field:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

.field public name:Ljava/lang/String;

.field public nestedType:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

.field public oneofDecl:[Lcom/google/protobuf/nano/DescriptorProtos$OneofDescriptorProto;

.field public options:Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;

.field public reservedName:[Ljava/lang/String;

.field public reservedRange:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ReservedRange;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->clear()Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    return-void
.end method

.method public static emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    .line 4
    sput-object v1, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    check-cast v0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;
    .locals 2

    const-string v0, ""

    .line 1
    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->name:Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->field:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    .line 3
    invoke-static {}, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->extension:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    .line 4
    invoke-static {}, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->nestedType:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    .line 5
    invoke-static {}, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->enumType:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    .line 6
    invoke-static {}, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;->emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->extensionRange:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;

    .line 7
    invoke-static {}, Lcom/google/protobuf/nano/DescriptorProtos$OneofDescriptorProto;->emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$OneofDescriptorProto;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->oneofDecl:[Lcom/google/protobuf/nano/DescriptorProtos$OneofDescriptorProto;

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;

    .line 9
    invoke-static {}, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ReservedRange;->emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ReservedRange;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->reservedRange:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ReservedRange;

    .line 10
    sget-object v1, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->reservedName:[Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/google/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lcom/google/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 7

    .line 1
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->name:Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->name:Ljava/lang/String;

    .line 4
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->field:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    array-length v1, v1

    if-lez v1, :cond_3

    move v1, v0

    move v0, v3

    .line 6
    :goto_0
    iget-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->field:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    array-length v5, v4

    if-ge v0, v5, :cond_2

    .line 7
    aget-object v4, v4, v0

    if-eqz v4, :cond_1

    const/4 v5, 0x2

    .line 8
    invoke-static {v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 9
    :cond_3
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->nestedType:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    if-eqz v1, :cond_6

    array-length v1, v1

    if-lez v1, :cond_6

    move v1, v0

    move v0, v3

    .line 10
    :goto_1
    iget-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->nestedType:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    array-length v5, v4

    if-ge v0, v5, :cond_5

    .line 11
    aget-object v4, v4, v0

    if-eqz v4, :cond_4

    const/4 v5, 0x3

    .line 12
    invoke-static {v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    move v0, v1

    .line 13
    :cond_6
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->enumType:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    if-eqz v1, :cond_9

    array-length v1, v1

    if-lez v1, :cond_9

    move v1, v0

    move v0, v3

    .line 14
    :goto_2
    iget-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->enumType:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    array-length v5, v4

    if-ge v0, v5, :cond_8

    .line 15
    aget-object v4, v4, v0

    if-eqz v4, :cond_7

    const/4 v5, 0x4

    .line 16
    invoke-static {v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_8
    move v0, v1

    .line 17
    :cond_9
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->extensionRange:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;

    if-eqz v1, :cond_c

    array-length v1, v1

    if-lez v1, :cond_c

    move v1, v0

    move v0, v3

    .line 18
    :goto_3
    iget-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->extensionRange:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;

    array-length v5, v4

    if-ge v0, v5, :cond_b

    .line 19
    aget-object v4, v4, v0

    if-eqz v4, :cond_a

    const/4 v5, 0x5

    .line 20
    invoke-static {v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_b
    move v0, v1

    .line 21
    :cond_c
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->extension:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    if-eqz v1, :cond_f

    array-length v1, v1

    if-lez v1, :cond_f

    move v1, v0

    move v0, v3

    .line 22
    :goto_4
    iget-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->extension:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    array-length v5, v4

    if-ge v0, v5, :cond_e

    .line 23
    aget-object v4, v4, v0

    if-eqz v4, :cond_d

    const/4 v5, 0x6

    .line 24
    invoke-static {v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_e
    move v0, v1

    .line 25
    :cond_f
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;

    if-eqz v1, :cond_10

    const/4 v4, 0x7

    .line 26
    invoke-static {v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 27
    :cond_10
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->oneofDecl:[Lcom/google/protobuf/nano/DescriptorProtos$OneofDescriptorProto;

    if-eqz v1, :cond_13

    array-length v1, v1

    if-lez v1, :cond_13

    move v1, v0

    move v0, v3

    .line 28
    :goto_5
    iget-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->oneofDecl:[Lcom/google/protobuf/nano/DescriptorProtos$OneofDescriptorProto;

    array-length v5, v4

    if-ge v0, v5, :cond_12

    .line 29
    aget-object v4, v4, v0

    if-eqz v4, :cond_11

    const/16 v5, 0x8

    .line 30
    invoke-static {v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_12
    move v0, v1

    .line 31
    :cond_13
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->reservedRange:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ReservedRange;

    if-eqz v1, :cond_16

    array-length v1, v1

    if-lez v1, :cond_16

    move v1, v0

    move v0, v3

    .line 32
    :goto_6
    iget-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->reservedRange:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ReservedRange;

    array-length v5, v4

    if-ge v0, v5, :cond_15

    .line 33
    aget-object v4, v4, v0

    if-eqz v4, :cond_14

    const/16 v5, 0x9

    .line 34
    invoke-static {v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_15
    move v0, v1

    .line 35
    :cond_16
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->reservedName:[Ljava/lang/String;

    if-eqz v1, :cond_19

    array-length v1, v1

    if-lez v1, :cond_19

    move v1, v3

    move v4, v1

    .line 36
    :goto_7
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->reservedName:[Ljava/lang/String;

    array-length v6, v5

    if-ge v3, v6, :cond_18

    .line 37
    aget-object v5, v5, v3

    if-eqz v5, :cond_17

    add-int/lit8 v4, v4, 0x1

    .line 38
    invoke-static {v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v1, v5

    :cond_17
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_18
    add-int/2addr v0, v1

    mul-int/2addr v4, v2

    add-int/2addr v0, v4

    :cond_19
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    .line 3
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :sswitch_0
    const/16 v0, 0x52

    .line 4
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 5
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->reservedName:[Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    array-length v2, v2

    :goto_1
    add-int/2addr v0, v2

    .line 6
    new-array v0, v0, [Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 7
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->reservedName:[Ljava/lang/String;

    invoke-static {v3, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    :cond_2
    :goto_2
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ge v2, v1, :cond_3

    .line 9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 10
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 11
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 12
    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->reservedName:[Ljava/lang/String;

    goto :goto_0

    :sswitch_1
    const/16 v0, 0x4a

    .line 13
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 14
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->reservedRange:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ReservedRange;

    if-nez v2, :cond_4

    move v2, v1

    goto :goto_3

    :cond_4
    array-length v2, v2

    :goto_3
    add-int/2addr v0, v2

    .line 15
    new-array v0, v0, [Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ReservedRange;

    if-eqz v2, :cond_5

    .line 16
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->reservedRange:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ReservedRange;

    invoke-static {v3, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 17
    :cond_5
    :goto_4
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ge v2, v1, :cond_6

    .line 18
    new-instance v1, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ReservedRange;

    invoke-direct {v1}, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ReservedRange;-><init>()V

    aput-object v1, v0, v2

    .line 19
    aget-object v1, v0, v2

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 20
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 21
    :cond_6
    new-instance v1, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ReservedRange;

    invoke-direct {v1}, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ReservedRange;-><init>()V

    aput-object v1, v0, v2

    .line 22
    aget-object v1, v0, v2

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 23
    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->reservedRange:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ReservedRange;

    goto :goto_0

    :sswitch_2
    const/16 v0, 0x42

    .line 24
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 25
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->oneofDecl:[Lcom/google/protobuf/nano/DescriptorProtos$OneofDescriptorProto;

    if-nez v2, :cond_7

    move v2, v1

    goto :goto_5

    :cond_7
    array-length v2, v2

    :goto_5
    add-int/2addr v0, v2

    .line 26
    new-array v0, v0, [Lcom/google/protobuf/nano/DescriptorProtos$OneofDescriptorProto;

    if-eqz v2, :cond_8

    .line 27
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->oneofDecl:[Lcom/google/protobuf/nano/DescriptorProtos$OneofDescriptorProto;

    invoke-static {v3, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 28
    :cond_8
    :goto_6
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ge v2, v1, :cond_9

    .line 29
    new-instance v1, Lcom/google/protobuf/nano/DescriptorProtos$OneofDescriptorProto;

    invoke-direct {v1}, Lcom/google/protobuf/nano/DescriptorProtos$OneofDescriptorProto;-><init>()V

    aput-object v1, v0, v2

    .line 30
    aget-object v1, v0, v2

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 31
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 32
    :cond_9
    new-instance v1, Lcom/google/protobuf/nano/DescriptorProtos$OneofDescriptorProto;

    invoke-direct {v1}, Lcom/google/protobuf/nano/DescriptorProtos$OneofDescriptorProto;-><init>()V

    aput-object v1, v0, v2

    .line 33
    aget-object v1, v0, v2

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 34
    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->oneofDecl:[Lcom/google/protobuf/nano/DescriptorProtos$OneofDescriptorProto;

    goto/16 :goto_0

    .line 35
    :sswitch_3
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;

    if-nez v0, :cond_a

    .line 36
    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;

    .line 37
    :cond_a
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_4
    const/16 v0, 0x32

    .line 38
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 39
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->extension:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    if-nez v2, :cond_b

    move v2, v1

    goto :goto_7

    :cond_b
    array-length v2, v2

    :goto_7
    add-int/2addr v0, v2

    .line 40
    new-array v0, v0, [Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    if-eqz v2, :cond_c

    .line 41
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->extension:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    invoke-static {v3, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 42
    :cond_c
    :goto_8
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ge v2, v1, :cond_d

    .line 43
    new-instance v1, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    invoke-direct {v1}, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;-><init>()V

    aput-object v1, v0, v2

    .line 44
    aget-object v1, v0, v2

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 45
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 46
    :cond_d
    new-instance v1, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    invoke-direct {v1}, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;-><init>()V

    aput-object v1, v0, v2

    .line 47
    aget-object v1, v0, v2

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 48
    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->extension:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    goto/16 :goto_0

    :sswitch_5
    const/16 v0, 0x2a

    .line 49
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 50
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->extensionRange:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;

    if-nez v2, :cond_e

    move v2, v1

    goto :goto_9

    :cond_e
    array-length v2, v2

    :goto_9
    add-int/2addr v0, v2

    .line 51
    new-array v0, v0, [Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;

    if-eqz v2, :cond_f

    .line 52
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->extensionRange:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;

    invoke-static {v3, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 53
    :cond_f
    :goto_a
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ge v2, v1, :cond_10

    .line 54
    new-instance v1, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;

    invoke-direct {v1}, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;-><init>()V

    aput-object v1, v0, v2

    .line 55
    aget-object v1, v0, v2

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 56
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 57
    :cond_10
    new-instance v1, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;

    invoke-direct {v1}, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;-><init>()V

    aput-object v1, v0, v2

    .line 58
    aget-object v1, v0, v2

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 59
    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->extensionRange:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;

    goto/16 :goto_0

    :sswitch_6
    const/16 v0, 0x22

    .line 60
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 61
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->enumType:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    if-nez v2, :cond_11

    move v2, v1

    goto :goto_b

    :cond_11
    array-length v2, v2

    :goto_b
    add-int/2addr v0, v2

    .line 62
    new-array v0, v0, [Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    if-eqz v2, :cond_12

    .line 63
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->enumType:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    invoke-static {v3, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    :cond_12
    :goto_c
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ge v2, v1, :cond_13

    .line 65
    new-instance v1, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    invoke-direct {v1}, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;-><init>()V

    aput-object v1, v0, v2

    .line 66
    aget-object v1, v0, v2

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 67
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 68
    :cond_13
    new-instance v1, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    invoke-direct {v1}, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;-><init>()V

    aput-object v1, v0, v2

    .line 69
    aget-object v1, v0, v2

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 70
    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->enumType:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    goto/16 :goto_0

    :sswitch_7
    const/16 v0, 0x1a

    .line 71
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 72
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->nestedType:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    if-nez v2, :cond_14

    move v2, v1

    goto :goto_d

    :cond_14
    array-length v2, v2

    :goto_d
    add-int/2addr v0, v2

    .line 73
    new-array v0, v0, [Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    if-eqz v2, :cond_15

    .line 74
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->nestedType:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    invoke-static {v3, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 75
    :cond_15
    :goto_e
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ge v2, v1, :cond_16

    .line 76
    new-instance v1, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    invoke-direct {v1}, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;-><init>()V

    aput-object v1, v0, v2

    .line 77
    aget-object v1, v0, v2

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 78
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 79
    :cond_16
    new-instance v1, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    invoke-direct {v1}, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;-><init>()V

    aput-object v1, v0, v2

    .line 80
    aget-object v1, v0, v2

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 81
    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->nestedType:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    goto/16 :goto_0

    :sswitch_8
    const/16 v0, 0x12

    .line 82
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 83
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->field:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    if-nez v2, :cond_17

    move v2, v1

    goto :goto_f

    :cond_17
    array-length v2, v2

    :goto_f
    add-int/2addr v0, v2

    .line 84
    new-array v0, v0, [Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    if-eqz v2, :cond_18

    .line 85
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->field:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    invoke-static {v3, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 86
    :cond_18
    :goto_10
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ge v2, v1, :cond_19

    .line 87
    new-instance v1, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    invoke-direct {v1}, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;-><init>()V

    aput-object v1, v0, v2

    .line 88
    aget-object v1, v0, v2

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 89
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 90
    :cond_19
    new-instance v1, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    invoke-direct {v1}, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;-><init>()V

    aput-object v1, v0, v2

    .line 91
    aget-object v1, v0, v2

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 92
    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->field:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    goto/16 :goto_0

    .line 93
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->name:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_a
    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_a
        0xa -> :sswitch_9
        0x12 -> :sswitch_8
        0x1a -> :sswitch_7
        0x22 -> :sswitch_6
        0x2a -> :sswitch_5
        0x32 -> :sswitch_4
        0x3a -> :sswitch_3
        0x42 -> :sswitch_2
        0x4a -> :sswitch_1
        0x52 -> :sswitch_0
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    move-result-object p0

    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "output"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->name:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->field:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    array-length v0, v0

    if-lez v0, :cond_2

    move v0, v1

    .line 4
    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->field:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 5
    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    const/4 v3, 0x2

    .line 6
    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->nestedType:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    if-eqz v0, :cond_4

    array-length v0, v0

    if-lez v0, :cond_4

    move v0, v1

    .line 8
    :goto_1
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->nestedType:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    array-length v3, v2

    if-ge v0, v3, :cond_4

    .line 9
    aget-object v2, v2, v0

    if-eqz v2, :cond_3

    const/4 v3, 0x3

    .line 10
    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 11
    :cond_4
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->enumType:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    if-eqz v0, :cond_6

    array-length v0, v0

    if-lez v0, :cond_6

    move v0, v1

    .line 12
    :goto_2
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->enumType:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    array-length v3, v2

    if-ge v0, v3, :cond_6

    .line 13
    aget-object v2, v2, v0

    if-eqz v2, :cond_5

    const/4 v3, 0x4

    .line 14
    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 15
    :cond_6
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->extensionRange:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;

    if-eqz v0, :cond_8

    array-length v0, v0

    if-lez v0, :cond_8

    move v0, v1

    .line 16
    :goto_3
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->extensionRange:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ExtensionRange;

    array-length v3, v2

    if-ge v0, v3, :cond_8

    .line 17
    aget-object v2, v2, v0

    if-eqz v2, :cond_7

    const/4 v3, 0x5

    .line 18
    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 19
    :cond_8
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->extension:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    if-eqz v0, :cond_a

    array-length v0, v0

    if-lez v0, :cond_a

    move v0, v1

    .line 20
    :goto_4
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->extension:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    array-length v3, v2

    if-ge v0, v3, :cond_a

    .line 21
    aget-object v2, v2, v0

    if-eqz v2, :cond_9

    const/4 v3, 0x6

    .line 22
    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 23
    :cond_a
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;

    if-eqz v0, :cond_b

    const/4 v2, 0x7

    .line 24
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 25
    :cond_b
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->oneofDecl:[Lcom/google/protobuf/nano/DescriptorProtos$OneofDescriptorProto;

    if-eqz v0, :cond_d

    array-length v0, v0

    if-lez v0, :cond_d

    move v0, v1

    .line 26
    :goto_5
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->oneofDecl:[Lcom/google/protobuf/nano/DescriptorProtos$OneofDescriptorProto;

    array-length v3, v2

    if-ge v0, v3, :cond_d

    .line 27
    aget-object v2, v2, v0

    if-eqz v2, :cond_c

    const/16 v3, 0x8

    .line 28
    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 29
    :cond_d
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->reservedRange:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ReservedRange;

    if-eqz v0, :cond_f

    array-length v0, v0

    if-lez v0, :cond_f

    move v0, v1

    .line 30
    :goto_6
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->reservedRange:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto$ReservedRange;

    array-length v3, v2

    if-ge v0, v3, :cond_f

    .line 31
    aget-object v2, v2, v0

    if-eqz v2, :cond_e

    const/16 v3, 0x9

    .line 32
    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 33
    :cond_f
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->reservedName:[Ljava/lang/String;

    if-eqz v0, :cond_11

    array-length v0, v0

    if-lez v0, :cond_11

    .line 34
    :goto_7
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->reservedName:[Ljava/lang/String;

    array-length v2, v0

    if-ge v1, v2, :cond_11

    .line 35
    aget-object v0, v0, v1

    if-eqz v0, :cond_10

    const/16 v2, 0xa

    .line 36
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 37
    :cond_11
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
