.class public Lcom/ss/android/ttve/common/TEProgramObject$ShaderObject;
.super Ljava/lang/Object;
.source "TEProgramObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/ttve/common/TEProgramObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShaderObject"
.end annotation


# instance fields
.field private mShaderID:I

.field private mShaderType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/ss/android/ttve/common/TEProgramObject$ShaderObject;->mShaderType:I

    .line 3
    iput v0, p0, Lcom/ss/android/ttve/common/TEProgramObject$ShaderObject;->mShaderID:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/ss/android/ttve/common/TEProgramObject$ShaderObject;->init(Ljava/lang/String;I)Z

    return-void
.end method

.method public static loadShader(ILjava/lang/String;)I
    .locals 4

    .line 1
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    const-string v1, "TEProgramObject"

    if-eqz v0, :cond_0

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "before glCreateShader, glError: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result p0

    .line 4
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "after glCreateShader, glError: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz p0, :cond_3

    .line 6
    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 7
    invoke-static {p0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 8
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result p1

    if-eqz p1, :cond_2

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "after glCompileShader, glError: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 p1, 0x1

    new-array v0, p1, [I

    const/4 v2, 0x0

    aput v2, v0, v2

    const v3, 0x8b81

    .line 10
    invoke-static {p0, v3, v0, v2}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 11
    aget v0, v0, v2

    if-eq v0, p1, :cond_3

    .line 12
    invoke-static {p0}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object p1

    .line 13
    invoke-static {v1, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-static {p0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    return v2

    :cond_3
    return p0
.end method


# virtual methods
.method public getShaderID()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ss/android/ttve/common/TEProgramObject$ShaderObject;->mShaderID:I

    return p0
.end method

.method public init(Ljava/lang/String;I)Z
    .locals 0

    .line 1
    iput p2, p0, Lcom/ss/android/ttve/common/TEProgramObject$ShaderObject;->mShaderType:I

    .line 2
    invoke-static {p2, p1}, Lcom/ss/android/ttve/common/TEProgramObject$ShaderObject;->loadShader(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/ss/android/ttve/common/TEProgramObject$ShaderObject;->mShaderID:I

    if-eqz p1, :cond_1

    if-nez p1, :cond_0

    const-string p0, "TEProgramObject"

    const-string p1, "glCreateShader Failed!..."

    .line 3
    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0

    .line 4
    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "Shader Create Failed!"

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method

.method public final release()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/android/ttve/common/TEProgramObject$ShaderObject;->mShaderID:I

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/ss/android/ttve/common/TEProgramObject$ShaderObject;->mShaderID:I

    return-void
.end method
