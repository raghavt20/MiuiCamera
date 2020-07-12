.class public final Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "DescriptorProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/nano/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MethodDescriptorProto"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano<",
        "Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;


# instance fields
.field public clientStreaming:Z

.field public inputType:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public options:Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;

.field public outputType:Ljava/lang/String;

.field public serverStreaming:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;->clear()Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;

    return-void
.end method

.method public static emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;

    .line 4
    sput-object v1, Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;

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
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;
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
    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;
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
    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    check-cast v0, Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;
    .locals 2

    const-string v0, ""

    .line 1
    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;->name:Ljava/lang/String;

    .line 2
    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;->inputType:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;->outputType:Ljava/lang/String;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;

    const/4 v1, 0x0

    .line 5
    iput-boolean v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;->clientStreaming:Z

    .line 6
    iput-boolean v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;->serverStreaming:Z

    .line 7
    iput-object v0, p0, Lcom/google/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lcom/google/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;->name:Ljava/lang/String;

    const-string v2, ""

    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 3
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;->name:Ljava/lang/String;

    .line 4
    invoke-static {v1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;->inputType:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x2

    .line 6
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;->inputType:Ljava/lang/String;

    .line 7
    invoke-static {v1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8
    :cond_1
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;->outputType:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x3

    .line 9
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;->outputType:Ljava/lang/String;

    .line 10
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11
    :cond_2
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;

    if-eqz v1, :cond_3

    const/4 v2, 0x4

    .line 12
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 13
    :cond_3
    iget-boolean v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;->clientStreaming:Z

    if-eqz v1, :cond_4

    const/4 v2, 0x5

    .line 14
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 15
    :cond_4
    iget-boolean p0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;->serverStreaming:Z

    if-eqz p0, :cond_5

    const/4 v1, 0x6

    .line 16
    invoke-static {v1, p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result p0

    add-int/2addr v0, p0

    :cond_5
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;
    .locals 2
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

    if-eqz v0, :cond_8

    const/16 v1, 0xa

    if-eq v0, v1, :cond_7

    const/16 v1, 0x12

    if-eq v0, v1, :cond_6

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_5

    const/16 v1, 0x22

    if-eq v0, v1, :cond_3

    const/16 v1, 0x28

    if-eq v0, v1, :cond_2

    const/16 v1, 0x30

    if-eq v0, v1, :cond_1

    .line 3
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 4
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;->serverStreaming:Z

    goto :goto_0

    .line 5
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;->clientStreaming:Z

    goto :goto_0

    .line 6
    :cond_3
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;

    if-nez v0, :cond_4

    .line 7
    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;

    .line 8
    :cond_4
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 9
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;->outputType:Ljava/lang/String;

    goto :goto_0

    .line 10
    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;->inputType:Ljava/lang/String;

    goto :goto_0

    .line 11
    :cond_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;->name:Ljava/lang/String;

    goto :goto_0

    :cond_8
    return-object p0
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
    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;

    move-result-object p0

    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
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
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;->name:Ljava/lang/String;

    const-string v1, ""

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;->inputType:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 4
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;->inputType:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;->outputType:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    .line 6
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;->outputType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 8
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 9
    :cond_3
    iget-boolean v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;->clientStreaming:Z

    if-eqz v0, :cond_4

    const/4 v1, 0x5

    .line 10
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 11
    :cond_4
    iget-boolean v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodDescriptorProto;->serverStreaming:Z

    if-eqz v0, :cond_5

    const/4 v1, 0x6

    .line 12
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 13
    :cond_5
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
