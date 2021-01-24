.class public final Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "DescriptorProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/nano/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FieldOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;,
        Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$JSType;,
        Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$CType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano<",
        "Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;


# instance fields
.field public ctype:I
    .annotation build Lcom/google/protobuf/nano/NanoEnumValue;
        legacy = false
        value = Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$CType;
    .end annotation
.end field

.field public deprecated:Z

.field public deprecatedRawMessage:Z

.field public enforceUtf8:Z

.field public jstype:I
    .annotation build Lcom/google/protobuf/nano/NanoEnumValue;
        legacy = false
        value = Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$JSType;
    .end annotation
.end field

.field public lazy:Z

.field public packed:Z

.field public uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

.field public upgradedOption:[Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;

.field public weak:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->clear()Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;

    return-void
.end method

.method public static checkCTypeOrThrow(I)I
    .locals 3
    .annotation build Lcom/google/protobuf/nano/NanoEnumValue;
        legacy = false
        value = Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$CType;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    if-ltz p0, :cond_0

    const/4 v0, 0x2

    if-gt p0, v0, :cond_0

    return p0

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x25

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is not a valid enum CType"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkCTypeOrThrow([I)[I
    .locals 3
    .annotation build Lcom/google/protobuf/nano/NanoEnumValue;
        legacy = false
        value = Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$CType;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    .line 3
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p0, v1

    .line 4
    invoke-static {v2}, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->checkCTypeOrThrow(I)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static checkJSTypeOrThrow(I)I
    .locals 3
    .annotation build Lcom/google/protobuf/nano/NanoEnumValue;
        legacy = false
        value = Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$JSType;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    if-ltz p0, :cond_0

    const/4 v0, 0x2

    if-gt p0, v0, :cond_0

    return p0

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x26

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is not a valid enum JSType"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkJSTypeOrThrow([I)[I
    .locals 3
    .annotation build Lcom/google/protobuf/nano/NanoEnumValue;
        legacy = false
        value = Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$JSType;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    .line 3
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p0, v1

    .line 4
    invoke-static {v2}, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->checkJSTypeOrThrow(I)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;

    .line 4
    sput-object v1, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;

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
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;
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
    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;
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
    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;

    return-object p0
.end method


# virtual methods
.method public clear()Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->ctype:I

    .line 2
    iput-boolean v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->packed:Z

    .line 3
    iput v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->jstype:I

    .line 4
    iput-boolean v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->lazy:Z

    .line 5
    iput-boolean v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->deprecated:Z

    .line 6
    iput-boolean v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->weak:Z

    .line 7
    invoke-static {}, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;->emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->upgradedOption:[Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;

    .line 8
    iput-boolean v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->deprecatedRawMessage:Z

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->enforceUtf8:Z

    .line 10
    invoke-static {}, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/google/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lcom/google/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 6

    .line 1
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 2
    iget v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->ctype:I

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4
    :cond_0
    iget-boolean v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->packed:Z

    if-eqz v1, :cond_1

    const/4 v3, 0x2

    .line 5
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 6
    :cond_1
    iget-boolean v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->deprecated:Z

    if-eqz v1, :cond_2

    const/4 v3, 0x3

    .line 7
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 8
    :cond_2
    iget-boolean v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->lazy:Z

    if-eqz v1, :cond_3

    const/4 v3, 0x5

    .line 9
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 10
    :cond_3
    iget v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->jstype:I

    if-eqz v1, :cond_4

    const/4 v3, 0x6

    .line 11
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 12
    :cond_4
    iget-boolean v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->weak:Z

    if-eqz v1, :cond_5

    const/16 v3, 0xa

    .line 13
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 14
    :cond_5
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->upgradedOption:[Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;

    const/4 v3, 0x0

    if-eqz v1, :cond_7

    array-length v1, v1

    if-lez v1, :cond_7

    move v1, v3

    .line 15
    :goto_0
    iget-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->upgradedOption:[Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;

    array-length v5, v4

    if-ge v1, v5, :cond_7

    .line 16
    aget-object v4, v4, v1

    if-eqz v4, :cond_6

    const/16 v5, 0xb

    .line 17
    invoke-static {v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v0, v4

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 18
    :cond_7
    iget-boolean v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->deprecatedRawMessage:Z

    if-eqz v1, :cond_8

    const/16 v4, 0xc

    .line 19
    invoke-static {v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 20
    :cond_8
    iget-boolean v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->enforceUtf8:Z

    if-eq v1, v2, :cond_9

    const/16 v2, 0xd

    .line 21
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 22
    :cond_9
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    if-eqz v1, :cond_b

    array-length v1, v1

    if-lez v1, :cond_b

    .line 23
    :goto_1
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    array-length v2, v1

    if-ge v3, v2, :cond_b

    .line 24
    aget-object v1, v1, v3

    if-eqz v1, :cond_a

    const/16 v2, 0x3e7

    .line 25
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_b
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;
    .locals 5
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
    const/16 v0, 0x1f3a

    .line 4
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 5
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    array-length v2, v2

    :goto_1
    add-int/2addr v0, v2

    .line 6
    new-array v3, v0, [Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    if-eqz v2, :cond_2

    .line 7
    iget-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    invoke-static {v4, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    :goto_2
    add-int/lit8 v1, v0, -0x1

    if-ge v2, v1, :cond_3

    .line 8
    new-instance v1, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    invoke-direct {v1}, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;-><init>()V

    aput-object v1, v3, v2

    .line 9
    aget-object v1, v3, v2

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 10
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 11
    :cond_3
    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;-><init>()V

    aput-object v0, v3, v2

    .line 12
    aget-object v0, v3, v2

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 13
    iput-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    goto :goto_0

    .line 14
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->enforceUtf8:Z

    goto :goto_0

    .line 15
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->deprecatedRawMessage:Z

    goto :goto_0

    :sswitch_3
    const/16 v0, 0x5a

    .line 16
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 17
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->upgradedOption:[Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;

    if-nez v2, :cond_4

    move v2, v1

    goto :goto_3

    :cond_4
    array-length v2, v2

    :goto_3
    add-int/2addr v0, v2

    .line 18
    new-array v3, v0, [Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;

    if-eqz v2, :cond_5

    .line 19
    iget-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->upgradedOption:[Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;

    invoke-static {v4, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    :goto_4
    add-int/lit8 v1, v0, -0x1

    if-ge v2, v1, :cond_6

    .line 20
    new-instance v1, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;

    invoke-direct {v1}, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;-><init>()V

    aput-object v1, v3, v2

    .line 21
    aget-object v1, v3, v2

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 22
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 23
    :cond_6
    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;-><init>()V

    aput-object v0, v3, v2

    .line 24
    aget-object v0, v3, v2

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 25
    iput-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->upgradedOption:[Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;

    goto/16 :goto_0

    .line 26
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->weak:Z

    goto/16 :goto_0

    .line 27
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v1

    .line 28
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    invoke-static {v2}, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->checkJSTypeOrThrow(I)I

    move-result v2

    iput v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->jstype:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 29
    :catch_0
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 30
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto/16 :goto_0

    .line 31
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->lazy:Z

    goto/16 :goto_0

    .line 32
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->deprecated:Z

    goto/16 :goto_0

    .line 33
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->packed:Z

    goto/16 :goto_0

    .line 34
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v1

    .line 35
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    invoke-static {v2}, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->checkCTypeOrThrow(I)I

    move-result v2

    iput v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->ctype:I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 36
    :catch_1
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 37
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto/16 :goto_0

    :sswitch_a
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_a
        0x8 -> :sswitch_9
        0x10 -> :sswitch_8
        0x18 -> :sswitch_7
        0x28 -> :sswitch_6
        0x30 -> :sswitch_5
        0x50 -> :sswitch_4
        0x5a -> :sswitch_3
        0x60 -> :sswitch_2
        0x68 -> :sswitch_1
        0x1f3a -> :sswitch_0
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
    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;

    move-result-object p0

    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 5
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
    iget v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->ctype:I

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->packed:Z

    if-eqz v0, :cond_1

    const/4 v2, 0x2

    .line 4
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 5
    :cond_1
    iget-boolean v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->deprecated:Z

    if-eqz v0, :cond_2

    const/4 v2, 0x3

    .line 6
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 7
    :cond_2
    iget-boolean v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->lazy:Z

    if-eqz v0, :cond_3

    const/4 v2, 0x5

    .line 8
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 9
    :cond_3
    iget v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->jstype:I

    if-eqz v0, :cond_4

    const/4 v2, 0x6

    .line 10
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 11
    :cond_4
    iget-boolean v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->weak:Z

    if-eqz v0, :cond_5

    const/16 v2, 0xa

    .line 12
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 13
    :cond_5
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->upgradedOption:[Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    array-length v0, v0

    if-lez v0, :cond_7

    move v0, v2

    .line 14
    :goto_0
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->upgradedOption:[Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions$UpgradedOption;

    array-length v4, v3

    if-ge v0, v4, :cond_7

    .line 15
    aget-object v3, v3, v0

    if-eqz v3, :cond_6

    const/16 v4, 0xb

    .line 16
    invoke-virtual {p1, v4, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 17
    :cond_7
    iget-boolean v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->deprecatedRawMessage:Z

    if-eqz v0, :cond_8

    const/16 v3, 0xc

    .line 18
    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 19
    :cond_8
    iget-boolean v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->enforceUtf8:Z

    if-eq v0, v1, :cond_9

    const/16 v1, 0xd

    .line 20
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 21
    :cond_9
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    if-eqz v0, :cond_b

    array-length v0, v0

    if-lez v0, :cond_b

    .line 22
    :goto_1
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    array-length v1, v0

    if-ge v2, v1, :cond_b

    .line 23
    aget-object v0, v0, v2

    if-eqz v0, :cond_a

    const/16 v1, 0x3e7

    .line 24
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 25
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
